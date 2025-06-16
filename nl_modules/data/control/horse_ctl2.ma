//Maya ASCII 2023 scene
//Name: horse_ctl2.ma
//Last modified: Tue, Jun 10, 2025 05:16:08 PM
//Codeset: 1252
requires maya "2023";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 26100)";
fileInfo "UUID" "A7B3354E-4913-F73F-0E7F-92A9DFD15C0A";
createNode transform -n "CHR";
	rename -uid "8AA9B1F0-4500-A48E-46A8-C9B2AA988FCE";
	setAttr -cb on ".ro";
createNode transform -n "CTL" -p "CHR";
	rename -uid "1DF538A5-4C8C-3F5B-14FC-78B1FD4EDBDE";
	setAttr -cb on ".ro";
createNode transform -n "master2_ctl" -p "CTL";
	rename -uid "06230DBC-461D-6D33-B283-DC98BB5A0258";
	addAttr -ci true -sn "proxy" -ln "proxy" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "debug" -ln "debug" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".ovc" 17;
	setAttr -cb on ".ro";
	setAttr -cb on ".proxy";
	setAttr -cb on ".debug";
createNode transform -n "master1_ctl" -p "master2_ctl";
	rename -uid "D1F0256B-41F5-DF88-D73B-83BC77BF73F9";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 18;
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "master_ctl" -p "master1_ctl";
	rename -uid "0B71E51F-4835-C31A-104D-D39924DA12F8";
	addAttr -ci true -sn "globalScale" -ln "globalScale" -dv 1 -min 0 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 18;
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".globalScale";
createNode nurbsCurve -n "master_ctlShapeOrig" -p "master_ctl";
	rename -uid "2DB79513-488F-74BC-3E57-6291D131FAB0";
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
	rename -uid "8976714F-4D30-7E1C-301E-6BAE36675EFC";
	setAttr -cb on ".ro";
createNode transform -n "head0_head_fkc_ofs" -p "head0_ctl_data";
	rename -uid "5DA3F490-437D-012E-2CA6-4DBE121D0BFB";
	setAttr ".t" -type "double3" 2.8421709430404007e-14 188.1119987638576 119.72436898251901 ;
	setAttr -cb on ".ro";
createNode transform -n "head0_head_fkc_ofs1" -p "head0_head_fkc_ofs";
	rename -uid "01530FFD-40F1-09EB-CFB3-2B827F819500";
createNode transform -n "head0_head_fkc" -p "head0_head_fkc_ofs1";
	rename -uid "95DEF904-4389-0AC0-26E8-4BBE71E8F10E";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "neck:COG:master" -at "enum";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -k on ".space";
createNode transform -n "head0_jaw_fkc_ofs" -p "head0_head_fkc";
	rename -uid "FABAF5C4-405E-4371-EC1A-1DBF221105BC";
	setAttr ".t" -type "double3" -1.0376074531262371e-13 -5.2868197599587745 0.5102758793366462 ;
	setAttr -cb on ".ro";
createNode transform -n "head0_jaw_fkc" -p "head0_jaw_fkc_ofs";
	rename -uid "E36D7F43-4FBE-1EC8-4DF2-EB86BB460293";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "head0_jaw_fkcShape1" -p "head0_jaw_fkc";
	rename -uid "E83C0456-4550-CA2F-8424-65942BCCC757";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.8092251502619439 -46.432377719435578 24.999561405114818
		1.0426374266805188e-13 -46.432377719435578 22.593301560997475
		-5.809225150261736 -46.432377719435578 24.999561405114818
		-8.2154849943790715 -46.432377719435578 30.808786555376656
		-5.809225150261736 -46.432377719435578 36.618011705638494
		1.0293773854724698e-13 -46.432377719435578 39.024271549755838
		5.8092251502619439 -46.432377719435578 36.618011705638494
		8.2154849943792776 -46.432377719435578 30.808786555376656
		5.8092251502619439 -46.432377719435578 24.999561405114818
		1.0426374266805188e-13 -46.432377719435578 22.593301560997475
		-5.809225150261736 -46.432377719435578 24.999561405114818
		;
createNode nurbsCurve -n "head0_head_fkcShape1" -p "head0_head_fkc";
	rename -uid "0498A785-406A-6E67-CA80-5A8D291DD4A0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.6745074043169721 20.114387644821278 -7.6745074043169126
		4.2491100729213146e-16 20.114387644821278 -6.9393233638950704
		-7.6745074043169721 20.114387644821278 -7.6745074043168984
		-6.9393233638951637 20.114387644821278 7.1054273576010019e-14
		-7.6745074043169721 20.114387644821278 7.6745074043170405
		-6.9511676738194098e-16 20.114387644821278 6.9393233638952267
		7.6745074043169721 20.114387644821278 7.6745074043170405
		6.9393233638951637 20.114387644821278 7.1054273576010019e-14
		7.6745074043169721 20.114387644821278 -7.6745074043169126
		4.2491100729213146e-16 20.114387644821278 -6.9393233638950704
		-7.6745074043169721 20.114387644821278 -7.6745074043168984
		;
createNode transform -n "head0_anchorF1" -p "master_ctl";
	rename -uid "CF2BE517-434C-FBFC-C712-358BC8551DB3";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "head0_anchorF1Shape" -p "head0_anchorF1";
	rename -uid "B3FF5526-42D4-BD6C-6F6E-C3AA6CC6659F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 11.120097569510092 11.120097569510092 11.120097569510092 ;
createNode transform -n "lfLegQd0_ctl_data" -p "master_ctl";
	rename -uid "467BA620-4B4A-0828-8D60-F682582A7199";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_FK" -p "lfLegQd0_ctl_data";
	rename -uid "9938215F-4AC6-8778-6D66-1ABFAC657D65";
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd0_hip_fk" -p "lfLegQd0_FK";
	rename -uid "06B282FE-4C0C-B791-5768-25994CC89BB4";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 179.55545550998519 40.556921681718727 -91.203111579680325 ;
	setAttr ".radi" 2.9368808413984033;
createNode joint -n "lfLegQd0_upr_fk" -p "lfLegQd0_hip_fk";
	rename -uid "470C882D-4250-198D-F559-AF98411FFBAE";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.1972115281031708 49.999141523866179 1.1394186714719132 ;
	setAttr ".radi" 2.9368808413984033;
createNode joint -n "lfLegQd0_lwr_fk" -p "lfLegQd0_upr_fk";
	rename -uid "6C98E939-4A85-D921-2AC7-B18AC335D6F6";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -39.261411046839399 0 ;
	setAttr ".radi" 2.9368808413984033;
createNode joint -n "lfLegQd0_palm_fk" -p "lfLegQd0_lwr_fk";
	rename -uid "DE1D82D4-4B91-86EA-082C-A6AC44C39E14";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 2.9108749191792378 29.928640724604964 -2.6539098559829717 ;
	setAttr ".radi" 2.9368808413984033;
createNode joint -n "lfLegQd0_digit_fk" -p "lfLegQd0_palm_fk";
	rename -uid "BDD25B25-46F2-AD7A-508D-C8B1510EDA4A";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 25.349753547664605 0 ;
	setAttr ".radi" 2.9368808413984033;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_1_ofs" -p "lfLegQd0_digit_fk";
	rename -uid "CBA4BED2-4DDB-A745-8585-91B4590D5F36";
	setAttr ".t" -type "double3" 10.074464736819685 -1.3998000980564029e-08 2.1316282072803006e-14 ;
	setAttr ".r" -type "double3" 0 7.6074146487727399 0 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ball_fkc_SPACE_1" -p "lfLegQd0_ball_fkc_SPACE_1_ofs";
	rename -uid "495619F9-4B53-F2DA-FB4F-AFBEFB5B482B";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ball_fk_SPACE_2_ofs" -p "lfLegQd0_digit_fk";
	rename -uid "D39241C0-498E-E917-2571-A38D612CDA64";
	setAttr ".t" -type "double3" 10.074464736819671 -1.3998000980564029e-08 2.1316282072803006e-14 ;
	setAttr ".r" -type "double3" 0 7.6074146487727399 0 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ball_fk_SPACE_2" -p "lfLegQd0_ball_fk_SPACE_2_ofs";
	rename -uid "FC2F9D59-4EB3-3BCD-11E2-F18BD4D40995";
	setAttr ".t" -type "double3" 0 0 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ball_fk_ofs" -p "lfLegQd0_digit_fk";
	rename -uid "E11B936D-4EF1-F80B-3AFE-04AB0AD72439";
	setAttr ".t" -type "double3" 10.074464736819671 -1.3998004533277708e-08 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd0_ball_fk" -p "lfLegQd0_ball_fk_ofs";
	rename -uid "41307FB6-405F-8124-B493-FFA8B44245C2";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 0 ;
	setAttr ".r" -type "double3" 0 -2.5444437451708134e-14 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.33914608183678e-13 9.5416640443905535e-15 7.1992366991695208e-15 ;
	setAttr ".radi" 2.9368808413984033;
createNode joint -n "lfLegQd0_tip_fk" -p "lfLegQd0_ball_fk";
	rename -uid "B64C6673-4854-35A6-F438-D5B501772880";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.469369336234735 1.2789769243681803e-13 -2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 57.042831803562628 0 ;
	setAttr ".radi" 2.9368808413984033;
createNode transform -n "lfLegQd0_upr_fkc_ofs" -p "lfLegQd0_FK";
	rename -uid "CD88FAC2-4F2C-CFB5-8559-08B9EAF71ADB";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_upr_fkc" -p "lfLegQd0_upr_fkc_ofs";
	rename -uid "A7B73976-4671-734F-216C-449EB041EF85";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999967 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd0_upr_fkcShape1" -p "lfLegQd0_upr_fkc";
	rename -uid "D1D6842A-4AA0-547E-08BF-52A11AC6D0B0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.1201332376160169e-16 -15.20160701514984 -15.201607015149857
		4.4125347410476508e-16 -8.4166055343604623e-16 -13.745359952306941
		3.1201332376160149e-16 15.20160701514984 -15.201607015149847
		-1.8008994487854598e-31 13.74535995230698 -5.3372859923520861e-15
		-3.1201332376160159e-16 15.20160701514984 15.20160701514984
		-4.4125347410476553e-16 1.376882107304712e-15 13.745359952306954
		-3.1201332376160149e-16 -15.20160701514984 15.201607015149847
		-2.6313818336251087e-31 -13.74535995230698 -2.7502742216615277e-15
		3.1201332376160169e-16 -15.20160701514984 -15.201607015149857
		4.4125347410476508e-16 -8.4166055343604623e-16 -13.745359952306941
		3.1201332376160149e-16 15.20160701514984 -15.201607015149847
		;
createNode transform -n "lfLegQd0_lwr_fkc_ofs" -p "lfLegQd0_FK";
	rename -uid "C47A4430-4088-DBDB-666B-E59EE8B76905";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_lwr_fkc" -p "lfLegQd0_lwr_fkc_ofs";
	rename -uid "80DFB4BC-405D-20DC-BBA8-9B928AE1BA34";
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
createNode nurbsCurve -n "lfLegQd0_lwr_fkcShape1" -p "lfLegQd0_lwr_fkc";
	rename -uid "9D66314F-4EEA-01A3-D34E-3D8C941BD9ED";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.1201332376160169e-16 -15.20160701514984 -15.201607015149857
		4.4125347410476508e-16 -8.4166055343604623e-16 -13.745359952306941
		3.1201332376160149e-16 15.20160701514984 -15.201607015149847
		-1.8008994487854598e-31 13.74535995230698 -5.3372859923520861e-15
		-3.1201332376160159e-16 15.20160701514984 15.20160701514984
		-4.4125347410476553e-16 1.376882107304712e-15 13.745359952306954
		-3.1201332376160149e-16 -15.20160701514984 15.201607015149847
		-2.6313818336251087e-31 -13.74535995230698 -2.7502742216615277e-15
		3.1201332376160169e-16 -15.20160701514984 -15.201607015149857
		4.4125347410476508e-16 -8.4166055343604623e-16 -13.745359952306941
		3.1201332376160149e-16 15.20160701514984 -15.201607015149847
		;
createNode transform -n "lfLegQd0_palm_fkc_ofs" -p "lfLegQd0_FK";
	rename -uid "BB3EB237-4E3E-5743-78E7-A4B1987991EA";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_palm_fkc" -p "lfLegQd0_palm_fkc_ofs";
	rename -uid "88D46520-49BD-FD0F-ABF9-C29D4AD1E868";
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
	rename -uid "FA2B6842-4C16-E537-8B04-D39A78D9FA86";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.1201332376160169e-16 -15.20160701514984 -15.201607015149857
		4.4125347410476508e-16 -8.4166055343604623e-16 -13.745359952306941
		3.1201332376160149e-16 15.20160701514984 -15.201607015149847
		-1.8008994487854598e-31 13.74535995230698 -5.3372859923520861e-15
		-3.1201332376160159e-16 15.20160701514984 15.20160701514984
		-4.4125347410476553e-16 1.376882107304712e-15 13.745359952306954
		-3.1201332376160149e-16 -15.20160701514984 15.201607015149847
		-2.6313818336251087e-31 -13.74535995230698 -2.7502742216615277e-15
		3.1201332376160169e-16 -15.20160701514984 -15.201607015149857
		4.4125347410476508e-16 -8.4166055343604623e-16 -13.745359952306941
		3.1201332376160149e-16 15.20160701514984 -15.201607015149847
		;
createNode transform -n "lfLegQd0_digit_fkc_ofs" -p "lfLegQd0_FK";
	rename -uid "88FFEFBE-46D0-F441-15D4-4D8EDB25B901";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_digit_fkc" -p "lfLegQd0_digit_fkc_ofs";
	rename -uid "3CFE294A-444A-DE89-31F6-D2AF3C60B35E";
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
createNode transform -n "lfLegQd0_ikc_matcher" -p "lfLegQd0_digit_fkc";
	rename -uid "25A7D25B-4FCA-0B53-4E8D-D2A064F033C9";
	setAttr ".t" -type "double3" 1.2079226507921703e-13 2.8421709430404007e-14 7.1054273576010019e-14 ;
	setAttr ".r" -type "double3" -154.65024645233538 0 -90.000000000000028 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode nurbsCurve -n "lfLegQd0_digit_fkcShape1" -p "lfLegQd0_digit_fkc";
	rename -uid "6F0E8A4C-4399-FC0E-3B36-C3B0452C2885";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.1201332376160169e-16 -15.20160701514984 -15.201607015149857
		4.4125347410476508e-16 -8.4166055343604623e-16 -13.745359952306941
		3.1201332376160149e-16 15.20160701514984 -15.201607015149847
		-1.8008994487854598e-31 13.74535995230698 -5.3372859923520861e-15
		-3.1201332376160159e-16 15.20160701514984 15.20160701514984
		-4.4125347410476553e-16 1.376882107304712e-15 13.745359952306954
		-3.1201332376160149e-16 -15.20160701514984 15.201607015149847
		-2.6313818336251087e-31 -13.74535995230698 -2.7502742216615277e-15
		3.1201332376160169e-16 -15.20160701514984 -15.201607015149857
		4.4125347410476508e-16 -8.4166055343604623e-16 -13.745359952306941
		3.1201332376160149e-16 15.20160701514984 -15.201607015149847
		;
createNode transform -n "lfLegQd0_quadScap_ofs" -p "lfLegQd0_FK";
	rename -uid "FCA138FB-4B4E-41BE-2AAA-F78282FB8DD9";
	setAttr ".t" -type "double3" 20.472510035860839 144.65784394883966 -38.911484483207012 ;
	setAttr ".r" -type "double3" -0.44454449001480451 139.44307831828127 88.796888420319647 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_quadScap" -p "lfLegQd0_quadScap_ofs";
	rename -uid "13FB2DD2-4A4C-26EB-2C47-14B3A755F00C";
	setAttr ".t" -type "double3" 1.4210854715202004e-14 7.1054273576010019e-15 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 8.7465253740246579e-16 -1.3358329662146772e-14 1.1290969119195487e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "lfLegQd0_hip_fkc_ofs" -p "lfLegQd0_quadScap";
	rename -uid "CCEC23C8-4C1D-F657-1357-F8992113F4C3";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 -1.0658141036401503e-14 4.2632564145606011e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "lfLegQd0_hip_fkc" -p "lfLegQd0_hip_fkc_ofs";
	rename -uid "A661C331-4C0E-FF7D-AF26-3E8D021C802C";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "autoAim" -ln "autoAim" -dv 0.3 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -k on ".autoAim";
createNode nurbsCurve -n "lfLegQd0_hip_fkcShape1" -p "lfLegQd0_hip_fkc";
	rename -uid "455BD15C-46D7-0E4E-E4D7-518B97EF20D2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.6008035075749198 -29.368808413984034 -7.6008035075749287
		4.2083027671802312e-16 -29.368808413984034 -6.8726799761534707
		-7.6008035075749198 -29.368808413984034 -7.6008035075749234
		-6.8726799761534902 -29.368808413984034 -2.6686429961760431e-15
		-7.6008035075749198 -29.368808413984034 7.6008035075749198
		-6.8844105365235599e-16 -29.368808413984034 6.8726799761534769
		7.6008035075749198 -29.368808413984034 7.6008035075749234
		6.8726799761534902 -29.368808413984034 -1.3751371108307638e-15
		7.6008035075749198 -29.368808413984034 -7.6008035075749287
		4.2083027671802312e-16 -29.368808413984034 -6.8726799761534707
		-7.6008035075749198 -29.368808413984034 -7.6008035075749234
		;
	setAttr ".adot" yes;
createNode joint -n "lfLegQd0_autoAim" -p "lfLegQd0_quadScap_ofs";
	rename -uid "41374717-42E5-290A-01F2-CE96B2499BDC";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 2.8421709430404007e-14 7.1054273576010019e-15 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 82.3940633997194 25.856571386687023 1.3565191641306404 ;
	setAttr ".radi" 4.4053212620976048;
createNode joint -n "lfLegQd0_autoAim_end" -p "lfLegQd0_autoAim";
	rename -uid "BF7B5D8A-47D3-FDAD-1757-8EBCE7C76A7C";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 129.48117859460774 4.2632564145606011e-14 3.907985046680551e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -6.3611093629270249e-15 8.4483483726374606e-15 -1.5604596405930373e-14 ;
	setAttr ".radi" 4.4053212620976048;
createNode ikEffector -n "effector6" -p "lfLegQd0_autoAim";
	rename -uid "8FA1D5B9-4B18-9E5A-B5F8-D3A9780425EE";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegQd0_ballOfsG" -p "lfLegQd0_FK";
	rename -uid "67444D4A-4702-B5F5-1E5E-A4BE5FF78ED8";
	setAttr ".t" -type "double3" 15.523391965755252 19.503393508597028 -71.73292687065387 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ball_fkc_ofs" -p "lfLegQd0_ballOfsG";
	rename -uid "E5955B4A-4746-85CA-5238-07B299C05AEB";
	setAttr ".t" -type "double3" -4.8162519306060858e-08 -9.1043989099677756 4.3133094472361222 ;
	setAttr ".r" -type "double3" 0 212.95716819643735 89.999999999999929 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "lfLegQd0_ball_fkc_ofs1" -p "lfLegQd0_ball_fkc_ofs";
	rename -uid "C6545263-4F8C-4273-FD37-0CADA6C2F0B9";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode transform -n "lfLegQd0_ball_fkc" -p "lfLegQd0_ball_fkc_ofs1";
	rename -uid "D64CC57F-498D-36E2-EEBC-10962550CE53";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode ikHandle -n "lfLegQd0_3_ikh" -p "lfLegQd0_ball_fkc";
	rename -uid "CA3E75D0-44D0-91C8-7117-6B9613A4EE76";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.469369336234841 1.2612133559741778e-13 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000009 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.5440119296780449 -1.7398086161742275e-17 -0.83907748174287866 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_ball_fk_SPACE_1_ofs" -p "lfLegQd0_ball_fkc";
	rename -uid "1F58EE53-492D-1533-3ABB-C181E7CD2B5B";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -8.8817841970012523e-15 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
createNode transform -n "lfLegQd0_ball_fk_SPACE_1" -p "lfLegQd0_ball_fk_SPACE_1_ofs";
	rename -uid "95BA35B3-4154-134B-D94F-09AE320F53E5";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999967 0.99999999999999978 ;
createNode nurbsCurve -n "lfLegQd0_ball_fkcShape1" -p "lfLegQd0_ball_fkc";
	rename -uid "6A104208-416C-72B2-DAA8-0098E6337377";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.5600666188080084e-16 -7.6008035075749198 -7.6008035075749287
		2.2062673705238254e-16 -4.2083027671802312e-16 -6.8726799761534707
		1.5600666188080075e-16 7.6008035075749198 -7.6008035075749234
		-9.0044972439272991e-32 6.8726799761534902 -2.6686429961760431e-15
		-1.5600666188080079e-16 7.6008035075749198 7.6008035075749198
		-2.2062673705238276e-16 6.8844105365235599e-16 6.8726799761534769
		-1.5600666188080075e-16 -7.6008035075749198 7.6008035075749234
		-1.3156909168125543e-31 -6.8726799761534902 -1.3751371108307638e-15
		1.5600666188080084e-16 -7.6008035075749198 -7.6008035075749287
		2.2062673705238254e-16 -4.2083027671802312e-16 -6.8726799761534707
		1.5600666188080075e-16 7.6008035075749198 -7.6008035075749234
		;
createNode transform -n "lfLegQd0_IK" -p "lfLegQd0_ctl_data";
	rename -uid "1040A285-4BBC-2DC3-7DAB-7189EC1F55E6";
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd0_hip_ik" -p "lfLegQd0_IK";
	rename -uid "DA701FC6-41DE-B53E-6907-E49B6AD3C318";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 179.55545550998519 40.556921681718727 -91.203111579680325 ;
	setAttr ".radi" 4.4053212620976048;
createNode joint -n "lfLegQd0_upr_ik" -p "lfLegQd0_hip_ik";
	rename -uid "D155A055-49FD-AFE0-232E-71A5C1221AC9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 17.681170403062751 -7.1054273576010019e-15 0 ;
	setAttr ".r" -type "double3" -3.0756560246191808e-15 -1.8211614282110064e-05 6.8642177903440125e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.1972115281031708 49.999141523866179 1.1394186714719132 ;
	setAttr ".radi" 4.4053212620976048;
createNode joint -n "lfLegQd0_lwr_ik" -p "lfLegQd0_upr_ik";
	rename -uid "928F4359-4F83-1139-7836-75A5AE642912";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 33.413653182606801 3.5527136788005009e-15 -1.7763568394002505e-14 ;
	setAttr ".r" -type "double3" -2.183041265821006e-20 2.9249532055522284e-05 8.9058075923217039e-20 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -39.261411046839399 0 ;
	setAttr ".radi" 4.4053212620976048;
createNode joint -n "lfLegQd0_palm_ik" -p "lfLegQd0_lwr_ik";
	rename -uid "1DF898B6-426B-8BF1-49FD-18B4A49CDBEF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 52.361233699535859 3.907985046680551e-14 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 4.606881403986694e-07 -8.4940705123091639e-06 1.3362869614784435e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 2.9108749191792378 29.928640724604964 -2.6539098559829717 ;
	setAttr ".radi" 4.4053212620976048;
createNode joint -n "lfLegQd0_digit_ik" -p "lfLegQd0_palm_ik";
	rename -uid "3D2FC5E6-4BE7-C7CB-3F98-CCA7DE2934C7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 33.446580381212527 1.3998276315874136e-08 0.87208095837004862 ;
	setAttr ".r" -type "double3" 5.1520374739753903e-08 1.5310966429985711e-05 1.3219096885159297e-06 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 25.349753547664605 0 ;
	setAttr ".radi" 4.4053212620976048;
createNode joint -n "lfLegQd0_ball_ik" -p "lfLegQd0_digit_ik";
	rename -uid "502B6178-4157-B5E3-C4BA-9A92C74E2918";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.074464736819671 -1.3998011638705066e-08 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 1.0350603199475543e-07 -1.3439739024743841e-05 -3.8459826721678178e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 7.6074146487727461 0 ;
	setAttr ".radi" 4.4053212620976048;
createNode joint -n "lfLegQd0_tip_ik" -p "lfLegQd0_ball_ik";
	rename -uid "CE7DB6DB-4A62-E962-21A3-0D8426702397";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.469369336234735 1.2789769243681803e-13 -2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 57.042831803562628 0 ;
	setAttr ".radi" 4.4053212620976048;
createNode ikEffector -n "effector4" -p "lfLegQd0_ball_ik";
	rename -uid "3D524D71-4BF2-20A3-D3F4-AF84616142F7";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector3" -p "lfLegQd0_digit_ik";
	rename -uid "68D9F216-4DEA-BE1F-095A-A880F9C340F9";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector2" -p "lfLegQd0_palm_ik";
	rename -uid "05AB50C0-4C42-A435-6562-9A96B700A8EA";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector1" -p "lfLegQd0_lwr_ik";
	rename -uid "C8E7592D-492D-AA29-4A55-F6BD46903B76";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "lfLegQd0_softJ" -p "lfLegQd0_hip_ik";
	rename -uid "971FC448-488A-17FE-C2D6-9BB063DA6887";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 17.681170403062751 -2.1316282072803006e-14 -2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 78.798557212786918 25.889347981847042 2.5920082035222243 ;
createNode joint -n "lfLegQd0_softJ_end" -p "lfLegQd0_softJ";
	rename -uid "062C94B3-44A2-4116-1099-9586972D0784";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 81.039833068847656 4.2632564145606011e-14 -4.9737991503207013e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 3.180554681463516e-15 6.1126285284376953e-15 -9.4174236271458816e-15 ;
createNode ikEffector -n "effector5" -p "lfLegQd0_softJ";
	rename -uid "87C900D4-4F5F-30C6-F536-00A157B2EE8B";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegQd0_pvc_SPACE_1_ofs" -p "lfLegQd0_softJ";
	rename -uid "E15453FA-46F3-CEE6-D589-E494C92E1FCC";
	setAttr ".t" -type "double3" 28.424184261466223 -54.762031103210155 -8.5927311880951223 ;
	setAttr ".r" -type "double3" 11.984951041713231 260.89327196857221 74.996974091956844 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "lfLegQd0_pvc_SPACE_1" -p "lfLegQd0_pvc_SPACE_1_ofs";
	rename -uid "9537AF2E-4792-B1FB-5FF6-999E1023A597";
	setAttr ".t" -type "double3" 0 1.4210854715202004e-14 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "lfLegQd0_ikCstG" -p "lfLegQd0_IK";
	rename -uid "86FDC0EC-440D-82DE-AB41-EFBA3909A522";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_heelRollG" -p "lfLegQd0_ikCstG";
	rename -uid "1B75D8E6-4F84-6E8D-316B-D2B7CC681DD8";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 52.949980659511873 -2.4358432339674607 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_heelRollG_ctl" -p "lfLegQd0_heelRollG";
	rename -uid "7F6EB3CA-4C89-7941-5203-DFBABF108A7C";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_toeRollG" -p "lfLegQd0_heelRollG_ctl";
	rename -uid "B5D92179-47AE-067C-7C13-64BF2FC8F73E";
	setAttr ".t" -type "double3" -5.3290705182007514e-15 1.1429224997780567e-15 -9.3326704530138898 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_toeRollG_ctl" -p "lfLegQd0_toeRollG";
	rename -uid "077D936D-47FB-00A9-85D2-6497881E103A";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_footRollG" -p "lfLegQd0_toeRollG_ctl";
	rename -uid "9BCE0A8A-449B-C672-2E1D-AEB2F0A652E0";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_outRollG" -p "lfLegQd0_footRollG";
	rename -uid "1176C7CC-407B-C090-6862-20AD15D8CF7D";
	setAttr ".t" -type "double3" 3.5372928082839348 -6.5610205138652419e-16 5.3574798206579004 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_outRollG_ctl" -p "lfLegQd0_outRollG";
	rename -uid "48F3983A-4FEE-D9DD-B3CF-FAA289CA15A2";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_inRollG" -p "lfLegQd0_outRollG_ctl";
	rename -uid "B0A0635A-4C92-FDCE-4631-53B241052AAD";
	setAttr ".t" -type "double3" -7.4397110921252363 1.3770120070899074e-17 -0.11244156340003997 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_inRollG_ctl" -p "lfLegQd0_inRollG";
	rename -uid "63854C55-4BB7-5493-41A6-F8A9543E79B5";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_ballRollG" -p "lfLegQd0_inRollG_ctl";
	rename -uid "3B96809A-43FC-3363-F0BF-CB9CBE34C515";
	setAttr ".t" -type "double3" 3.9024182838410582 -10.398994598629104 3.0822471071108453 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ballG_ikc" -p "lfLegQd0_ballRollG";
	rename -uid "CDECD2D8-46EB-BF0B-E50D-25AD721D2A48";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_extraRollG_ofs" -p "lfLegQd0_ballG_ikc";
	rename -uid "3868C446-41DD-FFC6-62FA-84962E10965C";
	setAttr ".t" -type "double3" -1.3998008085991387e-08 -9.1044056796702328 4.3133092809826792 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_extraRollG_ofs1" -p "lfLegQd0_extraRollG_ofs";
	rename -uid "D86211BE-411B-8599-A041-4C9B292A4A00";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 0 0 ;
	setAttr ".r" -type "double3" -10.806237388709734 7.9513867036587919e-16 87.650336709919841 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "lfLegQd0_extraRollG" -p "lfLegQd0_extraRollG_ofs1";
	rename -uid "A5149124-45C1-3CEF-9078-5EBB696BBB1D";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_extra_ikc" -p "lfLegQd0_extraRollG";
	rename -uid "F08482BA-4988-B1CD-99B6-AE9D20B11708";
	addAttr -ci true -sn "palmAim" -ln "palmAim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "palmAimRatio" -ln "palmAimRatio" -dv 0.5 -min -2 -max 2 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".palmAim";
	setAttr -k on ".palmAimRatio";
createNode transform -n "lfLegQd0_extraRollG_ofs2" -p "lfLegQd0_extra_ikc";
	rename -uid "3E13714D-442D-F34E-043C-7791CF20C8DB";
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd0_X_ikh" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "BE6AB058-4091-DA72-80DB-A09FCCD2DF36";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.0198066269804258e-14 -4.9737991503207013e-14 0 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999957 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 1.224646799147353e-16 -1 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_dist_loc1" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "93A760EB-4354-3842-73EA-D9BC21512E8D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.3998281644944655e-08 -33.446580381212556 -0.87208095837003441 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
createNode locator -n "lfLegQd0_dist_loc1Shape" -p "lfLegQd0_dist_loc1";
	rename -uid "0B8F1C84-48CC-1DC9-1F9B-AB8EDB0B59DB";
	setAttr -k off ".v";
createNode transform -n "lfLegQd0_softJ_posGrp" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "F2593E89-4856-B170-F525-5B994329DE75";
	setAttr ".t" -type "double3" 1.3998288750372012e-08 -33.44658038121257 -0.87208095837003441 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
createNode transform -n "lfLegQd0_1_ikh_ofs" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "0443FECD-47B5-1BDA-98BB-61BC8AE6EF23";
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
createNode ikHandle -n "lfLegQd0_1_ikh" -p "lfLegQd0_1_ikh_ofs";
	rename -uid "21EF535F-4386-16DB-3DB3-048864FEE662";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode nurbsCurve -n "lfLegQd0_extra_ikcShape1" -p "lfLegQd0_extra_ikc";
	rename -uid "52122186-42A2-9A50-2A59-0097749D229E";
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
		8.7670297560301442 -14.684404206992017 0
		8.1399704600920817 -11.312718190741441 0
		6.2300640041746194 -8.4543402028173986 0
		3.371686016250576 -6.5444337468999354 0
		0 -5.9175800326187158 0
		-3.371686016250576 -6.5444337468999354 0
		-6.2300640041746194 -8.4543402028173986 0
		-8.1399704600920817 -11.312718190741441 0
		-8.7670297560301442 -14.684404622367405 0
		-8.1399704600920817 -18.056090223242592 0
		-6.2300640041746194 -20.914468211166636 0
		-3.371686016250576 -22.824374667084101 0
		3.5010321209739841e-07 -23.451228381365318 -0.059612806722576718
		3.371686016250576 -22.824374667084101 0
		6.2300640041746194 -20.914468211166636 0
		8.1399704600920817 -18.056090223242592 0
		8.7670297560301442 -14.684404206992017 0
		8.0996764553510356 -14.661590751794636 -3.3549223005755113
		6.1992267556483105 -14.642250099419863 -6.1990916591309562
		3.3549986594766241 -14.629327118995539 -8.0995002425023142
		3.5010321209739841e-07 -14.624789050764791 -8.7668359218965524
		-3.3549986594766241 -14.629327118995539 -8.0995002425023142
		-6.1992267556483105 -14.642250099419863 -6.1990916591309562
		-8.0996764553510356 -14.661590751794636 -3.3549223005755113
		-8.7670297560301442 -14.684404622367405 0
		-8.0996764553510356 -14.707218484516025 3.3549105530522634
		-6.1992267556483105 -14.726559136890797 6.1990857853693315
		-3.3549986594766241 -14.739482117315122 8.0994884949790666
		3.5010321209739841e-07 -14.744019950595407 8.7668241743733013
		3.3549986594766241 -14.739482117315122 8.0994884949790666
		6.1992267556483105 -14.726559136890797 6.1990857853693315
		8.0996764553510356 -14.707218484516025 3.3549105530522634
		8.7670297560301442 -14.684404206992017 0
		8.0996764553510356 -14.661590751794636 -3.3549223005755113
		6.1992267556483105 -14.642250099419863 -6.1990916591309562
		3.3549986594766241 -14.629327118995539 -8.0995002425023142
		3.5010321209739841e-07 -14.624789050764791 -8.7668359218965524
		3.5010321209739841e-07 -11.274409517429326 -8.0766806785928438
		3.5010321209739841e-07 -8.4431683082084366 -6.1569356719550834
		3.5010321209739841e-07 -6.5621020218651047 -3.2998440378267082
		0 -5.9175800326187158 0
		3.5010321209739841e-07 -6.6077294021607962 3.4099946895626903
		3.5010321209739841e-07 -8.5274744087985592 6.2412300250219577
		3.5010321209739841e-07 -11.384560169165308 8.1223021851269124
		3.5010321209739841e-07 -14.744019950595407 8.7668241743733013
		3.5010321209739841e-07 -18.094398896554708 8.0766689310695963
		3.5010321209739841e-07 -20.925640105775599 6.156923924431835
		3.5010321209739841e-07 -22.806706392118929 3.2998322903034598
		3.5010321209739841e-07 -23.451228381365318 -0.059612806722576718
		3.5010321209739841e-07 -22.761079011823238 -3.4100064370859386
		3.5010321209739841e-07 -20.841334005185473 -6.2412417725452043
		3.5010321209739841e-07 -17.984248244818726 -8.1223139326501599
		3.5010321209739841e-07 -14.624789050764791 -8.7668359218965524
		;
createNode nurbsCurve -n "lfLegQd0_ballG_ikcShape1" -p "lfLegQd0_ballG_ikc";
	rename -uid "F20B8583-4FA2-FA9D-1A09-A990C8FD93A6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 25 0 no 3
		26 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		26
		9.0949050292498113e-17 -13.199093466670753 -8.0287305223426304e-16
		8.7850033849505627e-17 -13.249704425536939 -0.38442669003091562
		7.8764187309291071e-17 -13.398087615859705 -0.74265531181005195
		6.4310685573528493e-17 -13.634131115567854 -1.0502732081253221
		4.5474525146249057e-17 -13.941748836831385 -1.2863168245346308
		2.3539345036869279e-17 -14.299977516961102 -1.4346998981562378
		-2.7850932807213142e-32 -14.684404206992017 -1.4853106236201039
		-2.3539345036869279e-17 -15.068830897022933 -1.4346998981562378
		-4.5474525146249057e-17 -15.427059577152649 -1.2863168245346308
		-6.4310685573528493e-17 -15.73467729841618 -1.0502732081253221
		-7.8764187309291071e-17 -15.970721731733605 -0.74265531181005195
		-8.7850033849505627e-17 -16.119103988447094 -0.38442669003091562
		-9.0949050292498113e-17 -16.169714947313281 -4.3889724901176889e-16
		-8.7850033849505627e-17 -16.119103988447094 0.38442669003091562
		-7.8764187309291071e-17 -15.970721731733605 0.74265531181005195
		-6.4310685573528493e-17 -15.73467729841618 1.0502732081253221
		-4.5474525146249057e-17 -15.427059577152649 1.2863168245346308
		-2.3539345036869279e-17 -15.068830897022933 1.4346998981562378
		6.8045131698696499e-32 -14.684404206992017 1.4853106236201039
		2.3539345036869279e-17 -14.299977516961102 1.4346998981562378
		4.5474525146249057e-17 -13.941748836831385 1.2863168245346308
		6.4310685573528493e-17 -13.634131115567854 1.0502732081253221
		7.8764187309291071e-17 -13.398087615859705 0.74265531181005195
		8.7850033849505627e-17 -13.249704425536939 0.38442669003091562
		9.0949050292498113e-17 -13.199093466670753 -8.0287305223426304e-16
		0 0 0
		;
createNode transform -n "lfLegQd0_toe_wiggle_grp" -p "lfLegQd0_inRollG_ctl";
	rename -uid "5F78A795-41F5-6A8F-3394-68B022210BA8";
	setAttr ".t" -type "double3" 3.9024182838410582 -10.398994598629104 3.0822471071108453 ;
	setAttr ".r" -type "double3" -179.99999999999989 32.957168196437379 90 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode ikHandle -n "lfLegQd0_2_ikh" -p "lfLegQd0_toe_wiggle_grp";
	rename -uid "70B5A429-40C9-4526-FC11-CCA7B9D1A73B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.2632564145606011e-14 2.8421709430404007e-14 2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -179.99999999999997 7.6074146487727639 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.54401192967804524 1.7320908514804308e-15 0.83907748174287788 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_2_ofs" -p "lfLegQd0_toe_wiggle_grp";
	rename -uid "FDC0EA4E-4416-607D-9473-B0A3932BC297";
	setAttr ".t" -type "double3" -1.5631940186722204e-13 3.0198066269804258e-14 5.6843418860808015e-14 ;
	setAttr ".r" -type "double3" 179.99999999999977 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999933 ;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_2" -p "lfLegQd0_ball_fkc_SPACE_2_ofs";
	rename -uid "7F07CEBA-4657-950B-D6E2-77A0B1F169F7";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode nurbsCurve -n "lfLegQd0_inRollG_ctlShape1" -p "lfLegQd0_inRollG_ctl";
	rename -uid "22A34106-4DCC-4F62-6673-F9B06A78582A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.90859751030763103
		-0.90859751030763103 0 0
		0 0 -0.90859751030763103
		0.90859751030763103 0 0
		0 0 0.90859751030763103
		0 0.90859751030763103 0
		0.90859751030763103 0 0
		0 0 -0.90859751030763103
		0 0.90859751030763103 0
		-0.90859751030763103 0 0
		0 -0.90859751030763103 0
		0.90859751030763103 0 0
		0 0 0.90859751030763103
		0 -0.90859751030763103 0
		0 0 -0.90859751030763103
		;
createNode nurbsCurve -n "lfLegQd0_outRollG_ctlShape1" -p "lfLegQd0_outRollG_ctl";
	rename -uid "D0ACF9EE-4506-1DD4-691C-E8AA6DCB5C9E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.90859751030763103
		-0.90859751030763103 0 0
		0 0 -0.90859751030763103
		0.90859751030763103 0 0
		0 0 0.90859751030763103
		0 0.90859751030763103 0
		0.90859751030763103 0 0
		0 0 -0.90859751030763103
		0 0.90859751030763103 0
		-0.90859751030763103 0 0
		0 -0.90859751030763103 0
		0.90859751030763103 0 0
		0 0 0.90859751030763103
		0 -0.90859751030763103 0
		0 0 -0.90859751030763103
		;
createNode nurbsCurve -n "lfLegQd0_toeRollG_ctlShape1" -p "lfLegQd0_toeRollG_ctl";
	rename -uid "FD388751-4631-5D71-DAAA-578929084F25";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.90859751030763103
		-0.90859751030763103 0 0
		0 0 -0.90859751030763103
		0.90859751030763103 0 0
		0 0 0.90859751030763103
		0 0.90859751030763103 0
		0.90859751030763103 0 0
		0 0 -0.90859751030763103
		0 0.90859751030763103 0
		-0.90859751030763103 0 0
		0 -0.90859751030763103 0
		0.90859751030763103 0 0
		0 0 0.90859751030763103
		0 -0.90859751030763103 0
		0 0 -0.90859751030763103
		;
createNode nurbsCurve -n "lfLegQd0_heelRollG_ctlShape1" -p "lfLegQd0_heelRollG_ctl";
	rename -uid "B7AD1B6A-4BA6-40BD-4911-468939336DAF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.90859751030763103
		-0.90859751030763103 0 0
		0 0 -0.90859751030763103
		0.90859751030763103 0 0
		0 0 0.90859751030763103
		0 0.90859751030763103 0
		0.90859751030763103 0 0
		0 0 -0.90859751030763103
		0 0.90859751030763103 0
		-0.90859751030763103 0 0
		0 -0.90859751030763103 0
		0.90859751030763103 0 0
		0 0 0.90859751030763103
		0 -0.90859751030763103 0
		0 0 -0.90859751030763103
		;
createNode transform -n "lfLegQd0_line_30" -p "lfLegQd0_IK";
	rename -uid "F493A95B-457C-807E-E13D-429B61099F38";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape1" -p "lfLegQd0_line_30";
	rename -uid "7FB68617-4F7E-DFC1-BE55-6B9C0EE84150";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		19.26996522825258 98.280037917405039 -44.921547604324076
		21.943537102018123 89.595871220417649 -4.1002163452172535
		;
createNode transform -n "lfLegQd0_ikc_ofs" -p "lfLegQd0_IK";
	rename -uid "EA4ED732-45DD-3FD0-AA08-9884EBE8B587";
	setAttr ".t" -type "double3" 15.5233919035947 19.503400278299338 -71.732926704400384 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ikc_ofs1" -p "lfLegQd0_ikc_ofs";
	rename -uid "41070D2B-4B95-36D2-8FB6-8A8CF1E20D81";
createNode transform -n "lfLegQd0_ikc" -p "lfLegQd0_ikc_ofs1";
	rename -uid "86116707-4BB6-6707-D3FA-BAAE2EE03FC1";
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
createNode transform -n "lfLegQd0_ikc_gmb" -p "lfLegQd0_ikc";
	rename -uid "DB97C0F2-44A8-BE42-0339-B9B15891EFA7";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
createNode nurbsCurve -n "lfLegQd0_ikc_gmbShapeOrig" -p "lfLegQd0_ikc_gmb";
	rename -uid "370B85A4-45ED-F90F-26F8-4E82DAEF015E";
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
		11.013303155244001 -19.503400278299335 11.013303155244014
		10.80168562328177 -19.503400278299335 13.161892014261808
		10.174965370471908 -19.503400278299335 15.227911808370061
		9.1572269046611297 -19.503400278299335 17.131966555518446
		7.7875813443362354 -19.503400278299335 18.800884499580246
		6.1186634002744311 -19.503400278299335 20.170530059905143
		4.2146086531260476 -19.503400278299335 21.188268525715923
		2.1485888590177931 -19.503400278299335 21.814988778525787
		-1.28573145986189e-15 -19.503400278299335 22.026606310488017
		-2.1485888590177953 -19.503400278299335 21.814988778525787
		-4.2146086531260503 -19.503400278299335 21.188268525715923
		-6.1186634002744347 -19.503400278299335 20.170530059905143
		-7.7875813443362407 -19.503400278299335 18.800884499580249
		-9.157226904661135 -19.503400278299335 17.131966555518449
		-10.174965370471913 -19.503400278299335 15.227911808370061
		-10.801685623281779 -19.503400278299335 13.161892014261806
		-11.01330315524401 -19.503400278299335 11.01330315524401
		-10.801685558329556 -16.205347580843991 11.013303155244012
		-10.174965321290554 -12.993953644924165 11.013303155244012
		-9.1572271127302205 -10.213082849597818 11.013303155244012
		-7.787581342346269 -8.0002941607547733 11.013303155244012
		-6.1186632673181336 -6.3339916919263271 11.013303155244012
		-4.2146085189419997 -5.316253483365994 11.013303155244012
		-2.1485888117708023 -4.6895332463269916 11.013303155244012
		6.7437032312982319e-16 -4.4779156494125374 11.013303155244012
		2.1485888117708023 -4.6895332463269916 11.013303155244012
		4.2146085189419997 -5.316253483365994 11.013303155244012
		6.1186632673181336 -6.3339916919263271 11.013303155244012
		7.787581342346269 -8.0002941607547733 11.013303155244012
		9.1572271127302205 -10.213082849597818 11.013303155244012
		10.174965321290554 -12.993953644924165 11.013303155244012
		10.801685558329556 -16.205347580843991 11.013303155244012
		11.013303155244012 -19.503400278299335 11.013303155244012
		11.013303155244012 -19.503400278299338 -10.35250496592937
		11.013303155244012 -18.842602088984695 -11.013303155244012
		10.801685558329556 -16.205347580843991 -11.013303155244012
		10.174965321290554 -12.993953644924165 -11.013303155244012
		9.1572271127302205 -10.213082849597818 -11.013303155244012
		7.787581342346269 -8.0002941607547733 -11.013303155244012
		6.1186632673181336 -6.3339916919263271 -11.013303155244012
		4.2146085189419997 -5.316253483365994 -11.013303155244012
		2.1485888117708023 -4.6895332463269916 -11.013303155244012
		6.7437032312982319e-16 -4.4779156494125374 -11.013303155244012
		-2.1485888117708023 -4.6895332463269916 -11.013303155244012
		-4.2146085189419997 -5.316253483365994 -11.013303155244012
		-6.1186632673181336 -6.3339916919263271 -11.013303155244012
		-7.787581342346269 -8.0002941607547733 -11.013303155244012
		-9.1572271127302205 -10.213082849597818 -11.013303155244012
		-10.174965321290554 -12.993953644924165 -11.013303155244012
		-10.801685558329556 -16.205347580843991 -11.013303155244012
		-11.013303155244012 -18.842602088984695 -11.013303155244012
		-11.013303155244012 -19.503400278299335 -10.35250496592937
		-11.013303155244012 -19.503400278299335 11.013303155244012
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode transform -n "lfLegQd0_smart_ctl_ofs" -p "lfLegQd0_ikc_gmb";
	rename -uid "CFEA4054-4DCF-45C8-4832-2C98C899A4BD";
	setAttr ".t" -type "double3" 1.3998244341451027e-08 -19.503400278299345 12.640594645351385 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_smart_ctl" -p "lfLegQd0_smart_ctl_ofs";
	rename -uid "DACB85A2-4DAF-943C-02DB-3EB69940163E";
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
	rename -uid "2C312678-4723-8A8E-8D8A-14854519BBBF";
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
		5.0672023383832796 1.0400444125386722e-16 -5.0672023383832858
		2.8055351781201544e-16 1.4708449136825503e-16 -4.5817866507689802
		-5.0672023383832796 1.0400444125386717e-16 -5.0672023383832823
		-4.5817866507689935 -6.0029981626181998e-32 -1.7790953307840288e-15
		-5.0672023383832796 -1.0400444125386721e-16 5.0672023383832796
		-4.5896070243490403e-16 -1.4708449136825518e-16 4.5817866507689846
		5.0672023383832796 -1.0400444125386717e-16 5.0672023383832823
		4.5817866507689935 -8.7712727787503627e-32 -9.1675807388717589e-16
		5.0672023383832796 1.0400444125386722e-16 -5.0672023383832858
		2.8055351781201544e-16 1.4708449136825503e-16 -4.5817866507689802
		-5.0672023383832796 1.0400444125386717e-16 -5.0672023383832823
		;
createNode nurbsCurve -n "lfLegQd0_ikc_gmbShape1" -p "lfLegQd0_ikc_gmb";
	rename -uid "AC3FB9A7-4216-AD95-8371-B2AC85C4FEC6";
	setAttr -k off ".v" no;
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
		8.8106425241952007 -18.000851879286195 9.9119728044991664
		8.6413484986254172 -18.000851879286195 11.630843891713402
		8.1399722963775272 -18.000851879286195 13.283659727000005
		7.3257815237289039 -18.000851879286195 14.806903524718713
		6.230065075468989 -18.000851879286195 16.14203787996815
		4.8949307202195449 -18.000851879286195 17.237754328228071
		3.3716869225008383 -18.000851879286195 18.051945100876694
		1.7188710872142345 -18.000851879286195 18.553321303124587
		-1.028585167889512e-15 -18.000851879286195 18.722615328694371
		-1.7188710872142363 -18.000851879286195 18.553321303124587
		-3.3716869225008406 -18.000851879286195 18.051945100876694
		-4.8949307202195484 -18.000851879286195 17.237754328228071
		-6.2300650754689926 -18.000851879286195 16.142037879968157
		-7.3257815237289083 -18.000851879286195 14.806903524718715
		-8.1399722963775307 -18.000851879286195 13.283659727000005
		-8.6413484986254243 -18.000851879286195 11.6308438917134
		-8.8106425241952078 -18.000851879286195 9.9119728044991628
		-8.6413484466636454 -15.362409721321921 9.9119728044991646
		-8.1399722570324435 -12.79329457258606 9.9119728044991646
		-7.3257816901841766 -10.568597936324982 9.9119728044991646
		-6.2300650738770154 -8.7983669852505457 9.9119728044991646
		-4.8949306138545072 -7.4653250101877893 9.9119728044991646
		-3.3716868151536001 -6.6511344433395232 9.9119728044991646
		-1.7188710494166419 -6.1497582537083204 9.9119728044991646
		5.3949625850385861e-16 -5.9804641761767581 9.9119728044991646
		1.7188710494166419 -6.1497582537083204 9.9119728044991646
		3.3716868151536001 -6.6511344433395232 9.9119728044991646
		4.8949306138545072 -7.4653250101877893 9.9119728044991646
		6.2300650738770154 -8.7983669852505457 9.9119728044991646
		7.3257816901841766 -10.568597936324982 9.9119728044991646
		8.1399722570324435 -12.79329457258606 9.9119728044991646
		8.6413484466636454 -15.362409721321921 9.9119728044991646
		8.8106425241952095 -18.000851879286195 9.9119728044991646
		8.8106425241952095 -18.000851879286198 -7.1806736924395409
		8.8106425241952095 -17.472213327834481 -7.7093122438912545
		8.6413484466636454 -15.362409721321921 -7.7093122438912545
		8.1399722570324435 -12.79329457258606 -7.7093122438912545
		7.3257816901841766 -10.568597936324982 -7.7093122438912545
		6.2300650738770154 -8.7983669852505457 -7.7093122438912545
		4.8949306138545072 -7.4653250101877893 -7.7093122438912545
		3.3716868151536001 -6.6511344433395232 -7.7093122438912545
		1.7188710494166419 -6.1497582537083204 -7.7093122438912545
		5.3949625850385861e-16 -5.9804641761767581 -7.7093122438912545
		-1.7188710494166419 -6.1497582537083204 -7.7093122438912545
		-3.3716868151536001 -6.6511344433395232 -7.7093122438912545
		-4.8949306138545072 -7.4653250101877893 -7.7093122438912545
		-6.2300650738770154 -8.7983669852505457 -7.7093122438912545
		-7.3257816901841766 -10.568597936324982 -7.7093122438912545
		-8.1399722570324435 -12.79329457258606 -7.7093122438912545
		-8.6413484466636454 -15.362409721321921 -7.7093122438912545
		-8.8106425241952095 -17.472213327834481 -7.7093122438912545
		-8.8106425241952095 -18.000851879286195 -7.1806736924395409
		-8.8106425241952095 -18.000851879286195 9.9119728044991646
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode ikHandle -n "lfLegQd0_autoAimJ_ikh" -p "lfLegQd0_ikc";
	rename -uid "BF298513-485B-93A1-9E9F-BD9339CA7D07";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 8.8817841970012523e-15 -2.8421709430404007e-14 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -98.866795211467036 14.683789664808227 -92.264529372065823 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "lfLegQd0_ikcShape1" -p "lfLegQd0_ikc";
	rename -uid "156B3362-4691-B2B6-5587-FB8E5992244B";
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
		11.013303155244001 -19.503400278299335 11.013303155244014
		10.80168562328177 -19.503400278299335 13.161892014261808
		10.174965370471908 -19.503400278299335 15.227911808370061
		9.1572269046611297 -19.503400278299335 17.131966555518446
		7.7875813443362354 -19.503400278299335 18.800884499580246
		6.1186634002744311 -19.503400278299335 20.170530059905143
		4.2146086531260476 -19.503400278299335 21.188268525715923
		2.1485888590177931 -19.503400278299335 21.814988778525787
		-1.28573145986189e-15 -19.503400278299335 22.026606310488017
		-2.1485888590177953 -19.503400278299335 21.814988778525787
		-4.2146086531260503 -19.503400278299335 21.188268525715923
		-6.1186634002744347 -19.503400278299335 20.170530059905143
		-7.7875813443362407 -19.503400278299335 18.800884499580249
		-9.157226904661135 -19.503400278299335 17.131966555518449
		-10.174965370471913 -19.503400278299335 15.227911808370061
		-10.801685623281779 -19.503400278299335 13.161892014261806
		-11.01330315524401 -19.503400278299335 11.01330315524401
		-10.801685558329556 -16.205347580843991 11.013303155244012
		-10.174965321290554 -12.993953644924165 11.013303155244012
		-9.1572271127302205 -10.213082849597818 11.013303155244012
		-7.787581342346269 -8.0002941607547733 11.013303155244012
		-6.1186632673181336 -6.3339916919263271 11.013303155244012
		-4.2146085189419997 -5.316253483365994 11.013303155244012
		-2.1485888117708023 -4.6895332463269916 11.013303155244012
		6.7437032312982319e-16 -4.4779156494125374 11.013303155244012
		2.1485888117708023 -4.6895332463269916 11.013303155244012
		4.2146085189419997 -5.316253483365994 11.013303155244012
		6.1186632673181336 -6.3339916919263271 11.013303155244012
		7.787581342346269 -8.0002941607547733 11.013303155244012
		9.1572271127302205 -10.213082849597818 11.013303155244012
		10.174965321290554 -12.993953644924165 11.013303155244012
		10.801685558329556 -16.205347580843991 11.013303155244012
		11.013303155244012 -19.503400278299335 11.013303155244012
		11.013303155244012 -19.503400278299338 -10.35250496592937
		11.013303155244012 -18.842602088984695 -11.013303155244012
		10.801685558329556 -16.205347580843991 -11.013303155244012
		10.174965321290554 -12.993953644924165 -11.013303155244012
		9.1572271127302205 -10.213082849597818 -11.013303155244012
		7.787581342346269 -8.0002941607547733 -11.013303155244012
		6.1186632673181336 -6.3339916919263271 -11.013303155244012
		4.2146085189419997 -5.316253483365994 -11.013303155244012
		2.1485888117708023 -4.6895332463269916 -11.013303155244012
		6.7437032312982319e-16 -4.4779156494125374 -11.013303155244012
		-2.1485888117708023 -4.6895332463269916 -11.013303155244012
		-4.2146085189419997 -5.316253483365994 -11.013303155244012
		-6.1186632673181336 -6.3339916919263271 -11.013303155244012
		-7.787581342346269 -8.0002941607547733 -11.013303155244012
		-9.1572271127302205 -10.213082849597818 -11.013303155244012
		-10.174965321290554 -12.993953644924165 -11.013303155244012
		-10.801685558329556 -16.205347580843991 -11.013303155244012
		-11.013303155244012 -18.842602088984695 -11.013303155244012
		-11.013303155244012 -19.503400278299335 -10.35250496592937
		-11.013303155244012 -19.503400278299335 11.013303155244012
		;
createNode transform -n "lfLegQd0_pvc_ofs" -p "lfLegQd0_IK";
	rename -uid "D0369921-4346-DA5F-CF7A-A599F6ABEBF5";
	setAttr ".t" -type "double3" 21.943537102018126 89.595871220417649 -4.1002163452172571 ;
	setAttr ".r" -type "double3" 11.984909460277844 3.7472038499647318 6.7504238017155845e-06 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_pvc_ofs1" -p "lfLegQd0_pvc_ofs";
	rename -uid "7A05A8B7-4330-9254-DFA9-8BB79C14702C";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd0_pvc" -p "lfLegQd0_pvc_ofs1";
	rename -uid "DE8F710A-4766-B5DD-BD1C-289BAB6385D5";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-14 -2.8421709430404007e-14 ;
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
	rename -uid "6DC3E905-4CCC-A697-D628-3B9C5476E440";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 3.6343900412305241
		-3.6343900412305241 0 0
		0 0 -3.6343900412305241
		3.6343900412305241 0 0
		0 0 3.6343900412305241
		0 3.6343900412305241 0
		3.6343900412305241 0 0
		0 0 -3.6343900412305241
		0 3.6343900412305241 0
		-3.6343900412305241 0 0
		0 -3.6343900412305241 0
		3.6343900412305241 0 0
		0 0 3.6343900412305241
		0 -3.6343900412305241 0
		0 0 -3.6343900412305241
		;
createNode transform -n "lfLegQd0_extraRollG_ofs_loc" -p "lfLegQd0_IK";
	rename -uid "9EA5F227-4B49-D9D9-8583-22B3532EFF88";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -4.2905979382142503 -170.54963926061941 88.399679234136272 ;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd0_extraRollG_ofs_locShape" -p "lfLegQd0_extraRollG_ofs_loc";
	rename -uid "B1A98DCF-4905-BA0E-E841-7982D1FD6F01";
	setAttr -k off ".v";
createNode transform -n "lfLegQd0_setting" -p "lfLegQd0_ctl_data";
	rename -uid "F1796D43-430A-33F8-EA28-318E27B33E21";
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
	rename -uid "1EC703DA-4672-F12E-E175-B9B8D034E637";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-7.3422021034960085 -1.1192291273494405e-32 1.8278398362768518e-16
		-7.2011237055530382 8.7708747203854322e-17 -1.4323925411805349
		-6.7833102141937021 1.7204690468369882e-16 -2.8097391876797393
		-6.1048180751534815 2.4977338548678802e-16 -4.079108844878756
		-5.1917208948975118 3.1790121067182449e-16 -5.1917208948975118
		-4.079108844878756 3.7381230005233272e-16 -6.1048180751534815
		-2.8097391876797393 4.1535797847438031e-16 -6.7833102141937021
		-1.4323925411805349 4.4094167024018869e-16 -7.2011237055530382
		4.4958021541988212e-16 4.4958021541988212e-16 -7.3422021034960085
		1.4323925411805349 4.4094167024018869e-16 -7.2011237055530382
		2.8097391876797393 4.1535797847438031e-16 -6.7833102141937021
		4.079108844878756 3.7381230005233272e-16 -6.1048180751534815
		5.1917208948975118 3.1790121067182449e-16 -5.1917208948975118
		6.1048180751534815 2.4977338548678802e-16 -4.079108844878756
		6.7833102141937021 1.7204690468369882e-16 -2.8097391876797393
		7.2011237055530382 8.7708747203854322e-17 -1.4323925411805349
		7.3422021034960085 4.862736318778659e-32 -7.9414508176483024e-16
		7.0627565089483344 8.6023452341849398e-17 -1.404869506314
		6.2669614991967606 1.5895061505323582e-16 -2.5958604474487559
		5.0759703830102652 2.0767898923719016e-16 -3.391655107096851
		3.6711010517480043 2.2479010770994106e-16 -3.6711010517480043
		2.2662315454340041 2.0767898923719016e-16 -3.391655107096851
		1.0752406042992482 1.5895061505323582e-16 -2.5958604474487559
		0.27944594465115297 8.6023452341849398e-17 -1.404869506314
		0 4.862736318778659e-32 -7.9414508176483024e-16
		-0.27944594465115297 -8.6023452341849398e-17 1.404869506314
		-1.0752406042992482 -1.5895061505323582e-16 2.5958604474487559
		-2.2662315454340041 -2.0767898923719016e-16 3.391655107096851
		-3.6711010517480043 -2.2479010770994106e-16 3.6711010517480043
		-5.0759703830102652 -2.0767898923719016e-16 3.391655107096851
		-6.2669614991967606 -1.5895061505323582e-16 2.5958604474487559
		-7.0627565089483344 -8.6023452341849398e-17 1.404869506314
		-7.3422021034960085 -1.1192291273494405e-32 1.8278398362768518e-16
		-7.2011237055530382 -8.7708747203854322e-17 1.4323925411805349
		-6.7833102141937021 -1.7204690468369882e-16 2.8097391876797393
		-6.1048180751534815 -2.4977338548678802e-16 4.079108844878756
		-5.1917208948975118 -3.1790121067182449e-16 5.1917208948975118
		-4.079108844878756 -3.7381230005233272e-16 6.1048180751534815
		-2.8097391876797393 -4.1535797847438031e-16 6.7833102141937021
		-1.4323925411805349 -4.4094167024018869e-16 7.2011237055530382
		-8.5715430675750839e-16 -4.4958021541988212e-16 7.3422021034960085
		1.4323925411805349 -4.4094167024018869e-16 7.2011237055530382
		2.8097391876797393 -4.1535797847438031e-16 6.7833102141937021
		4.079108844878756 -3.7381230005233272e-16 6.1048180751534815
		5.1917208948975118 -3.1790121067182449e-16 5.1917208948975118
		6.1048180751534815 -2.4977338548678802e-16 4.079108844878756
		6.7833102141937021 -1.7204690468369882e-16 2.8097391876797393
		7.2011237055530382 -8.7708747203854322e-17 1.4323925411805349
		7.3422021034960085 4.862736318778659e-32 -7.9414508176483024e-16
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_anchorF1" -p "master_ctl";
	rename -uid "D4FC8509-4EE3-3BF6-5EFB-509997AFC963";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd0_anchorF1Shape" -p "lfLegQd0_anchorF1";
	rename -uid "592B8FD3-433D-70D5-FB8F-6D9D138B71D4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 22.026606310488024 22.026606310488024 22.026606310488024 ;
createNode transform -n "lfLegQd1_ctl_data" -p "master_ctl";
	rename -uid "DCCE4A97-41AE-8968-5651-60B8949F7AD1";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_FK" -p "lfLegQd1_ctl_data";
	rename -uid "5C0158EE-4706-0522-C00B-889F2B9D36B9";
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd1_hip_fk" -p "lfLegQd1_FK";
	rename -uid "456E4FF1-40B2-6A03-BC89-A3BC1BA96627";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 178.13758397033899 -25.04241983987502 -81.628065413254305 ;
	setAttr ".radi" 3.1092320474293955;
createNode joint -n "lfLegQd1_upr_fk" -p "lfLegQd1_hip_fk";
	rename -uid "C07F87ED-4EC9-B1CA-D655-F68BB42F420C";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 177.77341520201895 -56.661015281513897 10.224746785676922 ;
	setAttr ".radi" 3.1092320474293955;
createNode joint -n "lfLegQd1_lwr_fk" -p "lfLegQd1_upr_fk";
	rename -uid "F700C416-4008-7F4E-B9B5-18AA022F1307";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -29.861134866726214 0 ;
	setAttr ".radi" 3.1092320474293955;
createNode joint -n "lfLegQd1_palm_fk" -p "lfLegQd1_lwr_fk";
	rename -uid "E71249DD-4509-A3CE-FB04-D6A66099E3D1";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 179.23342805838215 -1.7821319713137598 0.51119245241118505 ;
	setAttr ".radi" 3.1092320474293955;
createNode joint -n "lfLegQd1_digit_fk" -p "lfLegQd1_palm_fk";
	rename -uid "89188B1E-47DB-43BC-F91D-34A4CC4BB961";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 34.189215079406672 0 ;
	setAttr ".radi" 3.1092320474293955;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_1_ofs" -p "lfLegQd1_digit_fk";
	rename -uid "E8FBCDE8-41AC-105B-0BA4-01B87BE21049";
	setAttr ".t" -type "double3" 9.4777716629219064 -1.4931186953504039e-08 -2.1316282072803006e-14 ;
	setAttr ".r" -type "double3" 0 -0.42943726992018927 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999956 ;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_1" -p "lfLegQd1_ball_fkc_SPACE_1_ofs";
	rename -uid "0DE68AB5-4916-FBC7-A76D-D7A8BD75B727";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "lfLegQd1_ball_fk_SPACE_2_ofs" -p "lfLegQd1_digit_fk";
	rename -uid "91C1903F-4A5A-969D-69F2-588B9EB7EFFB";
	setAttr ".t" -type "double3" 9.4777716629218851 -1.4931192282574557e-08 -5.6843418860808015e-14 ;
	setAttr ".r" -type "double3" 0 -0.42943726992021158 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 0.99999999999999967 ;
createNode transform -n "lfLegQd1_ball_fk_SPACE_2" -p "lfLegQd1_ball_fk_SPACE_2_ofs";
	rename -uid "1E923E15-4AA9-4396-8C29-B7B626E72DF1";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
createNode transform -n "lfLegQd1_ball_fk_ofs" -p "lfLegQd1_digit_fk";
	rename -uid "6B676ABA-49C0-351F-22E4-F580FAC3A9CB";
	setAttr ".t" -type "double3" 9.4777716629218958 -1.4931192282574557e-08 -4.9737991503207013e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 0.99999999999999967 ;
createNode joint -n "lfLegQd1_ball_fk" -p "lfLegQd1_ball_fk_ofs";
	rename -uid "4CF4DE0A-43F9-7FB9-1A98-BC9550B7A2F0";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 0 2.4351121779955051e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.3803948979137533e-13 0 -3.1825154502045838e-14 ;
	setAttr ".radi" 3.1092320474293955;
createNode joint -n "lfLegQd1_tip_fk" -p "lfLegQd1_ball_fk";
	rename -uid "0E0991D2-4370-150B-7214-CE9D9EF4E414";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 11.188850594819129 2.0961010704922955e-13 -2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 56.240222190513528 0 ;
	setAttr ".radi" 3.1092320474293955;
createNode transform -n "lfLegQd1_upr_fkc_ofs" -p "lfLegQd1_FK";
	rename -uid "A20657BB-4DC5-3696-CC05-3E99A0A1F8A9";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_upr_fkc" -p "lfLegQd1_upr_fkc_ofs";
	rename -uid "32B1D7FB-4E2C-65C0-AED5-44B0DC41FA9C";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd1_upr_fkcShape1" -p "lfLegQd1_upr_fkc";
	rename -uid "A541A8C7-478B-D9A2-5A5B-D5A8B9834969";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3032386325984192e-16 -16.093715154417328 -16.093715154417346
		4.671484873975447e-16 -8.9105350442289787e-16 -14.552008057233861
		3.3032386325984173e-16 16.093715154417328 -16.093715154417335
		-1.9065854499209134e-31 14.552008057233904 -5.6505052638824204e-15
		-3.3032386325984182e-16 16.093715154417328 16.093715154417328
		-4.671484873975452e-16 1.4576845996671419e-15 14.552008057233875
		-3.3032386325984173e-16 -16.093715154417328 16.093715154417335
		-2.7858047935765193e-31 -14.552008057233904 -2.9116743957297443e-15
		3.3032386325984192e-16 -16.093715154417328 -16.093715154417346
		4.671484873975447e-16 -8.9105350442289787e-16 -14.552008057233861
		3.3032386325984173e-16 16.093715154417328 -16.093715154417335
		;
createNode transform -n "lfLegQd1_lwr_fkc_ofs" -p "lfLegQd1_FK";
	rename -uid "26E4C6E4-4E44-4CAF-4939-A6AD727E5CB3";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_lwr_fkc" -p "lfLegQd1_lwr_fkc_ofs";
	rename -uid "92521A7A-4397-28E6-3092-6ABECA44A0DC";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd1_lwr_fkcShape1" -p "lfLegQd1_lwr_fkc";
	rename -uid "F631255C-4F01-9662-35F2-7C8C7B6D10A3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3032386325984192e-16 -16.093715154417328 -16.093715154417346
		4.671484873975447e-16 -8.9105350442289787e-16 -14.552008057233861
		3.3032386325984173e-16 16.093715154417328 -16.093715154417335
		-1.9065854499209134e-31 14.552008057233904 -5.6505052638824204e-15
		-3.3032386325984182e-16 16.093715154417328 16.093715154417328
		-4.671484873975452e-16 1.4576845996671419e-15 14.552008057233875
		-3.3032386325984173e-16 -16.093715154417328 16.093715154417335
		-2.7858047935765193e-31 -14.552008057233904 -2.9116743957297443e-15
		3.3032386325984192e-16 -16.093715154417328 -16.093715154417346
		4.671484873975447e-16 -8.9105350442289787e-16 -14.552008057233861
		3.3032386325984173e-16 16.093715154417328 -16.093715154417335
		;
createNode transform -n "lfLegQd1_palm_fkc_ofs" -p "lfLegQd1_FK";
	rename -uid "94CA0F29-4E54-B8A3-0FDD-46832549E802";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_palm_fkc" -p "lfLegQd1_palm_fkc_ofs";
	rename -uid "6ED8F1E6-4D69-1009-96D3-D19189862D12";
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
	rename -uid "ECB3B3A4-40C4-F113-F018-A29717AB1DB2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3032386325984192e-16 -16.093715154417328 -16.093715154417346
		4.671484873975447e-16 -8.9105350442289787e-16 -14.552008057233861
		3.3032386325984173e-16 16.093715154417328 -16.093715154417335
		-1.9065854499209134e-31 14.552008057233904 -5.6505052638824204e-15
		-3.3032386325984182e-16 16.093715154417328 16.093715154417328
		-4.671484873975452e-16 1.4576845996671419e-15 14.552008057233875
		-3.3032386325984173e-16 -16.093715154417328 16.093715154417335
		-2.7858047935765193e-31 -14.552008057233904 -2.9116743957297443e-15
		3.3032386325984192e-16 -16.093715154417328 -16.093715154417346
		4.671484873975447e-16 -8.9105350442289787e-16 -14.552008057233861
		3.3032386325984173e-16 16.093715154417328 -16.093715154417335
		;
createNode transform -n "lfLegQd1_digit_fkc_ofs" -p "lfLegQd1_FK";
	rename -uid "B0DC50E5-4DB9-BEC4-3560-AB85C04CD1C1";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_digit_fkc" -p "lfLegQd1_digit_fkc_ofs";
	rename -uid "ACE56897-4008-238F-11C3-CB971D997D95";
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
createNode transform -n "lfLegQd1_ikc_matcher" -p "lfLegQd1_digit_fkc";
	rename -uid "789DF36A-40DE-C7B0-A884-B08773B1A244";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 -7.9936057773011271e-14 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -145.81078492059331 0 -89.999999999999744 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode nurbsCurve -n "lfLegQd1_digit_fkcShape1" -p "lfLegQd1_digit_fkc";
	rename -uid "6028650C-4EAA-91FF-072B-69A73AC0B80E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3032386325984192e-16 -16.093715154417328 -16.093715154417346
		4.671484873975447e-16 -8.9105350442289787e-16 -14.552008057233861
		3.3032386325984173e-16 16.093715154417328 -16.093715154417335
		-1.9065854499209134e-31 14.552008057233904 -5.6505052638824204e-15
		-3.3032386325984182e-16 16.093715154417328 16.093715154417328
		-4.671484873975452e-16 1.4576845996671419e-15 14.552008057233875
		-3.3032386325984173e-16 -16.093715154417328 16.093715154417335
		-2.7858047935765193e-31 -14.552008057233904 -2.9116743957297443e-15
		3.3032386325984192e-16 -16.093715154417328 -16.093715154417346
		4.671484873975447e-16 -8.9105350442289787e-16 -14.552008057233861
		3.3032386325984173e-16 16.093715154417328 -16.093715154417335
		;
createNode transform -n "lfLegQd1_quadScap_ofs" -p "lfLegQd1_FK";
	rename -uid "65D38199-40F3-0CE3-DA1C-1B8875C6E5A3";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_quadScap" -p "lfLegQd1_quadScap_ofs";
	rename -uid "AC8EBE96-4D06-0265-F5FE-75B4796B2747";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "lfLegQd1_hip_fkc_ofs" -p "lfLegQd1_quadScap";
	rename -uid "0080B786-4B89-FF49-93AF-03879E0D8064";
	setAttr ".t" -type "double3" 0 7.1054273576010019e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999967 ;
createNode transform -n "lfLegQd1_hip_fkc" -p "lfLegQd1_hip_fkc_ofs";
	rename -uid "E21AD00D-4CE2-8CE1-C0FE-3184FD57568E";
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
createNode transform -n "lfLegQd1_scap_fkc_ofs" -p "lfLegQd1_hip_fkc";
	rename -uid "C699AD7F-4278-7501-F945-19BCD0BAC4F2";
	setAttr ".t" -type "double3" 47.32629281337671 -1.0658141036401503e-14 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "lfLegQd1_scap_fkc" -p "lfLegQd1_scap_fkc_ofs";
	rename -uid "4ADBC1E3-4A7A-9664-7052-4F9C94DC25AB";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfLegQd1_scap_fkcShape1" -p "lfLegQd1_scap_fkc";
	rename -uid "0CAE9564-4936-9B87-3474-14BA1668EFFA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 6 7 8 9 10 11 14 15 18 19
		10
		-50.525020770727679 0 3.886540059286745
		-50.525020770727679 0 -3.8865400592867436
		-54.411560830014423 0 -5.8298100889301168
		-58.298100889301168 0 -3.886540059286745
		-58.298100889301168 0 3.8865400592867436
		-50.525020770727679 0 3.886540059286745
		-58.298100889301168 0 3.8865400592867436
		-58.298100889301168 0 -3.886540059286745
		-54.411560830014423 0 -5.8298100889301168
		-50.525020770727679 0 -3.8865400592867436
		;
createNode nurbsCurve -n "lfLegQd1_hip_fkcShape1" -p "lfLegQd1_hip_fkc";
	rename -uid "B667A835-4FCA-6198-A357-16814DB203DC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		8.0468575772086641 -31.092320474293956 -8.046857577208673
		4.4552675221144894e-16 -31.092320474293956 -7.2760040286169305
		-8.0468575772086641 -31.092320474293956 -8.0468575772086677
		-7.2760040286169518 -31.092320474293956 -2.8252526319412102e-15
		-8.0468575772086641 -31.092320474293956 8.0468575772086641
		-7.2884229983357096e-16 -31.092320474293956 7.2760040286169376
		8.0468575772086641 -31.092320474293956 8.0468575772086677
		7.2760040286169518 -31.092320474293956 -1.4558371978648721e-15
		8.0468575772086641 -31.092320474293956 -8.046857577208673
		4.4552675221144894e-16 -31.092320474293956 -7.2760040286169305
		-8.0468575772086641 -31.092320474293956 -8.0468575772086677
		;
	setAttr ".adot" yes;
createNode joint -n "lfLegQd1_autoAim" -p "lfLegQd1_quadScap_ofs";
	rename -uid "E09D1329-4EBB-E4B7-9365-EB8D96563F29";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 1.4210854715202004e-14 -1.0658141036401503e-14 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -168.65448346162492 -24.617625774086019 5.9260400345148954 ;
	setAttr ".radi" 4.6638480711440931;
createNode joint -n "lfLegQd1_autoAim_end" -p "lfLegQd1_autoAim";
	rename -uid "3BC801CD-418A-F84C-C4E4-4B940853BC17";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 137.00360069458876 -3.5527136788005009e-15 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.2722218725854059e-14 4.1744780194208675e-15 1.3219180394832736e-14 ;
	setAttr ".radi" 4.6638480711440931;
createNode ikEffector -n "effector12" -p "lfLegQd1_autoAim";
	rename -uid "1532116B-4F50-DE79-DF15-0489B54A140E";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikHandle -n "lfLegQd1_legLock_ikh" -p "lfLegQd1_quadScap_ofs";
	rename -uid "FAE701B9-4B8C-8537-03D4-A98A243CF1CD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.6843418860808015e-14 0 2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -11.345516538375245 24.617625774086015 -174.07395996548513 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999956 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_ballOfsG" -p "lfLegQd1_FK";
	rename -uid "B4FC7004-493E-51A3-049A-58BD0FB8F421";
	setAttr ".t" -type "double3" 15.13693617458677 18.88141594349937 57.92857061018649 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ball_fkc_ofs" -p "lfLegQd1_ballOfsG";
	rename -uid "9BE7522B-46B1-CB70-854A-DDA345F04EB0";
	setAttr ".t" -type "double3" 9.2145100438756344e-09 -7.8398838533381863 5.3258224544618997 ;
	setAttr ".r" -type "double3" 180 -33.759777809486479 -89.999999999999588 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "lfLegQd1_ball_fkc_ofs1" -p "lfLegQd1_ball_fkc_ofs";
	rename -uid "8F4FD28E-4094-286E-230E-078FF3520DEF";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ball_fkc" -p "lfLegQd1_ball_fkc_ofs1";
	rename -uid "C6B3E99D-44BF-6152-E283-A78B8A7BCF76";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode ikHandle -n "lfLegQd1_3_ikh" -p "lfLegQd1_ball_fkc";
	rename -uid "8E312C53-4C99-00AD-CD4F-59968E143144";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 11.188850594819154 4.0500935938325711e-13 -3.5527136788005009e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999967 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.55571211934999942 6.9975954749135767e-17 -0.83137478937452236 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_ball_fk_SPACE_1_ofs" -p "lfLegQd1_ball_fkc";
	rename -uid "FCC1BA60-4475-3D4C-A377-45AA811BD2C2";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -1.7763568394002505e-15 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999978 ;
createNode transform -n "lfLegQd1_ball_fk_SPACE_1" -p "lfLegQd1_ball_fk_SPACE_1_ofs";
	rename -uid "1F8CEF5C-4111-2F89-6AC5-E99A2C7447DE";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode nurbsCurve -n "lfLegQd1_ball_fkcShape1" -p "lfLegQd1_ball_fkc";
	rename -uid "192031E4-4A57-FE94-D58D-658D18E8E28C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.6516193162992096e-16 -8.0468575772086641 -8.046857577208673
		2.3357424369877235e-16 -4.4552675221144894e-16 -7.2760040286169305
		1.6516193162992086e-16 8.0468575772086641 -8.0468575772086677
		-9.5329272496045672e-32 7.2760040286169518 -2.8252526319412102e-15
		-1.6516193162992091e-16 8.0468575772086641 8.0468575772086641
		-2.335742436987726e-16 7.2884229983357096e-16 7.2760040286169376
		-1.6516193162992086e-16 -8.0468575772086641 8.0468575772086677
		-1.3929023967882596e-31 -7.2760040286169518 -1.4558371978648721e-15
		1.6516193162992096e-16 -8.0468575772086641 -8.046857577208673
		2.3357424369877235e-16 -4.4552675221144894e-16 -7.2760040286169305
		1.6516193162992086e-16 8.0468575772086641 -8.0468575772086677
		;
createNode transform -n "lfLegQd1_IK" -p "lfLegQd1_ctl_data";
	rename -uid "35CAE843-41CF-DF0B-8BC3-479C2BF6AC70";
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd1_hip_ik" -p "lfLegQd1_IK";
	rename -uid "BA752416-463C-A195-64BC-C4B04DEDFDD7";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 178.13758397033899 -25.04241983987502 -81.628065413254305 ;
	setAttr ".radi" 4.6638480711440931;
createNode joint -n "lfLegQd1_upr_ik" -p "lfLegQd1_hip_ik";
	rename -uid "D3866B13-44CB-C79C-ADB6-0EA6122A3D71";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 47.326292813376682 -2.8421709430404007e-14 0 ;
	setAttr ".r" -type "double3" 2.8265604935828077e-15 1.2074182697257333e-06 -9.0567090749504451e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 177.77341520201895 -56.661015281513897 10.224746785676922 ;
	setAttr ".radi" 4.6638480711440931;
createNode joint -n "lfLegQd1_lwr_ik" -p "lfLegQd1_upr_ik";
	rename -uid "CA29BAD3-4FBD-2BAA-A1BB-2DA2A59FDFF7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 30.533184530843595 1.4210854715202004e-14 -1.5099033134902129e-14 ;
	setAttr ".r" -type "double3" -8.5243049953641893e-21 -1.898446213858906e-06 -1.6622134706144306e-20 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -29.861134866726214 0 ;
	setAttr ".radi" 4.6638480711440931;
createNode joint -n "lfLegQd1_palm_ik" -p "lfLegQd1_lwr_ik";
	rename -uid "07EC9354-436F-719C-AFB9-039FB9883C87";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 41.934879068019043 -1.8829382497642655e-13 3.5527136788005009e-14 ;
	setAttr ".r" -type "double3" -9.4989044132579554e-09 -2.0849999028810593e-10 -5.5894105391551088e-10 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 179.23342805838215 -1.7821319713137598 0.51119245241118505 ;
	setAttr ".radi" 4.6638480711440931;
createNode joint -n "lfLegQd1_digit_ik" -p "lfLegQd1_palm_ik";
	rename -uid "496BDD31-40B0-1BBF-E676-82905200583A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 26.570854559588629 0.58322756766104611 1.5635004633482836 ;
	setAttr ".r" -type "double3" 1.0184492312170505e-08 -1.604452280145543e-17 7.6338255187591089e-24 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 34.189215079406672 0 ;
	setAttr ".radi" 4.6638480711440931;
createNode joint -n "lfLegQd1_ball_ik" -p "lfLegQd1_digit_ik";
	rename -uid "971A3751-40FD-7EAD-DF3C-D98508E8315A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 9.4777716629219242 -1.4931163860865126e-08 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 1.0154264320477876e-08 1.9022833607468746e-22 -1.9345254499038942e-23 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -0.42943726992022041 0 ;
	setAttr ".radi" 4.6638480711440931;
createNode joint -n "lfLegQd1_tip_ik" -p "lfLegQd1_ball_ik";
	rename -uid "1EE503F3-4E80-AEA6-0C2A-939ECD9F3824";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 11.188850594819129 2.0961010704922955e-13 -2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 56.240222190513528 0 ;
	setAttr ".radi" 4.6638480711440931;
createNode ikEffector -n "effector10" -p "lfLegQd1_ball_ik";
	rename -uid "B1B7F95A-4FB4-A517-2660-B29911F21FA9";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector9" -p "lfLegQd1_digit_ik";
	rename -uid "B9AE65B8-4438-5CA5-0735-0D9795C86C09";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector8" -p "lfLegQd1_palm_ik";
	rename -uid "F23A7817-4853-3047-D477-D9BD0364C3F2";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector7" -p "lfLegQd1_lwr_ik";
	rename -uid "2EBDEC6A-40EF-7191-1850-8A8949EA997C";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "lfLegQd1_softJ" -p "lfLegQd1_hip_ik";
	rename -uid "6016DFAD-4D74-13E9-5FB1-84B3D411FE91";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 47.326292813376639 -3.1974423109204508e-14 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 86.351711141628115 -39.337269771452924 9.3672541287995017 ;
createNode joint -n "lfLegQd1_softJ_end" -p "lfLegQd1_softJ";
	rename -uid "D7FFD1D9-42CA-15C0-D3FA-2C90F59C25E1";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 70.083045959472656 -2.8421709430404007e-14 3.0198066269804258e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 6.3611093629270296e-15 -5.963540027744093e-16 3.1805546814635152e-15 ;
createNode ikEffector -n "effector11" -p "lfLegQd1_softJ";
	rename -uid "991CBA84-4080-B259-41FB-6AA627ED3018";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegQd1_pvc_SPACE_1_ofs" -p "lfLegQd1_softJ";
	rename -uid "9314C379-4CB7-B1B5-A999-3293157BA033";
	setAttr ".t" -type "double3" 42.849083783261321 48.13894294164804 1.7368181085445702 ;
	setAttr ".r" -type "double3" 5.0143687094060363 88.042678074565359 75.680837677661316 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999944 ;
createNode transform -n "lfLegQd1_pvc_SPACE_1" -p "lfLegQd1_pvc_SPACE_1_ofs";
	rename -uid "0E0BBD3B-4D61-B49D-A957-CA930C032763";
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-14 0 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 0.99999999999999944 ;
createNode transform -n "lfLegQd1_ikCstG" -p "lfLegQd1_IK";
	rename -uid "7013FD20-46F0-CB64-E8D3-ED96AA7DAF8A";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_heelRollG" -p "lfLegQd1_ikCstG";
	rename -uid "7014D9D8-42CE-D871-A05B-37B62FB727F3";
	setAttr ".t" -type "double3" -0.58322755272941329 45.452270110617505 -3.2277479209104811 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_heelRollG_ctl" -p "lfLegQd1_heelRollG";
	rename -uid "6705ABF3-47BB-200A-18AD-4E85172DD354";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_toeRollG" -p "lfLegQd1_heelRollG_ctl";
	rename -uid "18EEBC8E-4F72-2370-3724-CEB6F81E0EB7";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 1.1464355750816792e-15 -9.3613568898385253 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_toeRollG_ctl" -p "lfLegQd1_toeRollG";
	rename -uid "54DFEA60-4799-2477-FF72-B2BD962D0F7B";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_footRollG" -p "lfLegQd1_toeRollG_ctl";
	rename -uid "7BCD2AE7-4A88-29A5-7FF8-78BB09D09BE3";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_outRollG" -p "lfLegQd1_footRollG";
	rename -uid "2FA754A9-4C78-8699-0240-B0AD0E2EF16E";
	setAttr ".t" -type "double3" 3.9782605883148552 -6.5994580868347711e-16 5.3888664808739719 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_outRollG_ctl" -p "lfLegQd1_outRollG";
	rename -uid "DA574D1E-4909-3DEC-9921-C3978311558F";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_inRollG" -p "lfLegQd1_outRollG_ctl";
	rename -uid "D7447424-41D1-B41D-6595-C585C9BFCA7F";
	setAttr ".t" -type "double3" -7.5370106831020625 -2.9500702147909741e-17 0.24089151393239661 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_inRollG_ctl" -p "lfLegQd1_inRollG";
	rename -uid "A8AE1D36-483D-1406-CDA0-E8900E498B6F";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_ballRollG" -p "lfLegQd1_inRollG_ctl";
	rename -uid "5A5957D0-43AF-330A-814B-56AF43EF0494";
	setAttr ".t" -type "double3" 3.5587500947869124 -11.0415320901612 3.1970249940001878 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ballG_ikc" -p "lfLegQd1_ballRollG";
	rename -uid "D95CA167-48D7-6474-7C26-7A9D5FBF3146";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_extraRollG_ofs" -p "lfLegQd1_ballG_ikc";
	rename -uid "BEDE4DB5-44A2-CCD9-FD93-0695C3765BDB";
	setAttr ".t" -type "double3" -1.493121182249979e-08 -7.8398834608676768 5.3258222852907195 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_extraRollG_ofs1" -p "lfLegQd1_extraRollG_ofs";
	rename -uid "66DB9D98-45C1-EB10-F15E-9A978F918C17";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 1.7763568394002505e-15 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -11.308441913549864 -7.9513867036587919e-16 89.428054481104851 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
createNode transform -n "lfLegQd1_extraRollG" -p "lfLegQd1_extraRollG_ofs1";
	rename -uid "467AD5C4-4838-FE8D-5D42-2DBC047DE1CF";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_extra_ikc" -p "lfLegQd1_extraRollG";
	rename -uid "36E4302A-4651-4919-AAB5-F68010491023";
	addAttr -ci true -sn "palmAim" -ln "palmAim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "palmAimRatio" -ln "palmAimRatio" -dv 0.5 -min -2 -max 2 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".palmAim";
	setAttr -k on ".palmAimRatio";
createNode transform -n "lfLegQd1_extraRollG_ofs2" -p "lfLegQd1_extra_ikc";
	rename -uid "773F3B0F-490B-88CB-4D4B-8E9ACD29A036";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 0 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd1_X_ikh" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "489D8D18-4AD9-CDED-703C-7DA8B08ADABF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.9277916736609768e-14 2.8421709430404007e-14 0 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999773 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 1.224646799147353e-16 -1 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_dist_loc1" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "CF76747C-420C-8EFB-8663-B3BAF3AE370C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.58322756766087025 -26.570854559588604 -1.5635004633482907 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode locator -n "lfLegQd1_dist_loc1Shape" -p "lfLegQd1_dist_loc1";
	rename -uid "B1E6238A-42C6-4023-9065-67A094D3466C";
	setAttr -k off ".v";
createNode transform -n "lfLegQd1_softJ_posGrp" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "FEF355F1-4F47-C60C-72C5-72B4B0E327C9";
	setAttr ".t" -type "double3" 0.5832275676608667 -26.570854559588582 -1.5635004633482623 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "lfLegQd1_1_ikh_ofs" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "6B13F8FB-4447-42CB-6FF9-729DFD96DC62";
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode ikHandle -n "lfLegQd1_1_ikh" -p "lfLegQd1_1_ikh_ofs";
	rename -uid "5F19304E-470B-5A5E-97CF-9AB56C2367EF";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode nurbsCurve -n "lfLegQd1_extra_ikcShape1" -p "lfLegQd1_extra_ikc";
	rename -uid "C39423CA-4DD4-EE1C-2E54-C1AB2F4C1876";
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
		9.2815239535686178 -15.546160237146978 0
		8.6176656072964573 -11.9766064207912 0
		6.5956760608961629 -8.9504841762508143 0
		3.5695538163557785 -6.9284946298505208 0
		0 -6.2648539298195036 0
		-3.5695538163557785 -6.9284946298505208 0
		-6.5956760608961629 -8.9504841762508143 0
		-8.6176656072964573 -11.9766064207912 0
		-9.2815239535686178 -15.546160676898721 0
		-8.6176656072964573 -19.115714053502757 0
		-6.5956760608961629 -22.141836298043142 0
		-3.5695538163557785 -24.163825844443437 0
		3.7064906128192971e-07 -24.827466544474454 -0.063111191467609948
		3.5695538163557785 -24.163825844443437 0
		6.5956760608961629 -22.141836298043142 0
		8.6176656072964573 -19.115714053502757 0
		9.2815239535686178 -15.546160237146978 0
		8.575006944032312 -15.522007971582633 -3.5518063200065266
		6.5630291247246255 -15.501532310692966 -6.5628861000518732
		3.5518871600389512 -15.4878509436054 -8.5748203901113325
		3.7064906128192971e-07 -15.483046558293754 -9.2813187442555414
		-3.5518871600389512 -15.4878509436054 -8.5748203901113325
		-6.5630291247246255 -15.501532310692966 -6.5628861000518732
		-8.575006944032312 -15.522007971582633 -3.5518063200065266
		-9.2815239535686178 -15.546160676898721 0
		-8.575006944032312 -15.570313373296287 3.5517938830784614
		-6.5630291247246255 -15.590789034185955 6.5628798815878397
		-3.5518871600389512 -15.604470401273522 8.5748079531832673
		3.7064906128192971e-07 -15.609274537846604 9.2813063073274744
		3.5518871600389512 -15.604470401273522 8.5748079531832673
		6.5630291247246255 -15.590789034185955 6.5628798815878397
		8.575006944032312 -15.570313373296287 3.5517938830784614
		9.2815239535686178 -15.546160237146978 0
		8.575006944032312 -15.522007971582633 -3.5518063200065266
		6.5630291247246255 -15.501532310692966 -6.5628861000518732
		3.5518871600389512 -15.4878509436054 -8.5748203901113325
		3.7064906128192971e-07 -15.483046558293754 -9.2813187442555414
		3.7064906128192971e-07 -11.936049598370099 -8.5506616573443921
		3.7064906128192971e-07 -8.938656657660669 -6.5182561836893704
		3.7064906128192971e-07 -6.9471997696608039 -3.4934957827721411
		0 -6.2648539298195036 0
		3.7064906128192971e-07 -6.9955047982666176 3.6101106387768795
		3.7064906128192971e-07 -9.0279102719216411 6.6074973610222782
		3.7064906128192971e-07 -12.052664454374836 8.5989604674861742
		3.7064906128192971e-07 -15.609274537846604 9.2813063073274744
		3.7064906128192971e-07 -19.156270875923859 8.5506492204163287
		3.7064906128192971e-07 -22.153663816633287 6.5182437467613052
		3.7064906128192971e-07 -24.14512070463315 3.4934833458440755
		3.7064906128192971e-07 -24.827466544474454 -0.063111191467609948
		3.7064906128192971e-07 -24.09681567602734 -3.6101230757049452
		3.7064906128192971e-07 -22.064410202372315 -6.6075097979503425
		3.7064906128192971e-07 -19.039656019919118 -8.5989729044142393
		3.7064906128192971e-07 -15.483046558293754 -9.2813187442555414
		;
createNode nurbsCurve -n "lfLegQd1_ballG_ikcShape1" -p "lfLegQd1_ballG_ikc";
	rename -uid "754758B1-4132-69D9-B55E-F387D64A5069";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 25 0 no 3
		26 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		26
		9.6286406267016175e-17 -13.973683857070558 -8.4998975403973054e-16
		9.300552367067805e-17 -14.027264926155725 -0.4069868166534798
		8.3386473131532142e-17 -14.184356001880705 -0.78623812826331962
		6.808476590495926e-17 -14.434251742809204 -1.1119086178875537
		4.8143203133508087e-17 -14.759922047108768 -1.3618044823658344
		2.4920754336523497e-17 -15.139173420493497 -1.5188954345410335
		-2.948536815465669e-32 -15.546160237146978 -1.5724762565266392
		-2.4920754336523497e-17 -15.953147053800457 -1.5188954345410335
		-4.8143203133508087e-17 -16.332398427185186 -1.3618044823658344
		-6.808476590495926e-17 -16.65806873148475 -1.1119086178875537
		-8.3386473131532142e-17 -16.9079654608115 -0.78623812826331962
		-9.300552367067805e-17 -17.065055548138229 -0.4069868166534798
		-9.6286406267016175e-17 -17.118636617223398 -4.6465398695107345e-16
		-9.300552367067805e-17 -17.065055548138229 0.4069868166534798
		-8.3386473131532142e-17 -16.9079654608115 0.78623812826331962
		-6.808476590495926e-17 -16.65806873148475 1.1119086178875537
		-4.8143203133508087e-17 -16.332398427185186 1.3618044823658344
		-2.4920754336523497e-17 -15.953147053800457 1.5188954345410335
		7.2038368450931861e-32 -15.546160237146978 1.5724762565266392
		2.4920754336523497e-17 -15.139173420493497 1.5188954345410335
		4.8143203133508087e-17 -14.759922047108768 1.3618044823658344
		6.808476590495926e-17 -14.434251742809204 1.1119086178875537
		8.3386473131532142e-17 -14.184356001880705 0.78623812826331962
		9.300552367067805e-17 -14.027264926155725 0.4069868166534798
		9.6286406267016175e-17 -13.973683857070558 -8.4998975403973054e-16
		0 0 0
		;
createNode transform -n "lfLegQd1_toe_wiggle_grp" -p "lfLegQd1_inRollG_ctl";
	rename -uid "4C38AD5C-43AD-E892-039B-B0BE0A2981CF";
	setAttr ".t" -type "double3" 3.5587500947869124 -11.0415320901612 3.1970249940001878 ;
	setAttr ".r" -type "double3" 179.99999999999986 33.759777809486465 89.999999999999659 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
createNode ikHandle -n "lfLegQd1_2_ikh" -p "lfLegQd1_toe_wiggle_grp";
	rename -uid "624F8F2C-4E4C-ADC9-E01C-1AAE26A64E8E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -7.9936057773011271e-14 -2.1316282072803006e-14 ;
	setAttr ".r" -type "double3" 179.99999999999997 -0.42943726992023368 -2.2070151398599348e-32 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.55571211934999942 -2.0996270472366292e-15 0.83137478937452269 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_2_ofs" -p "lfLegQd1_toe_wiggle_grp";
	rename -uid "1839A721-4F80-74DA-62F7-328DDE1FF7AA";
	setAttr ".t" -type "double3" -2.4868995751603507e-14 1.0480505352461478e-13 -2.1316282072803006e-14 ;
	setAttr ".r" -type "double3" -179.99999999999966 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_2" -p "lfLegQd1_ball_fkc_SPACE_2_ofs";
	rename -uid "F139DFBB-4845-A0B4-38CF-9C95CAF726A4";
	setAttr ".t" -type "double3" 0 0 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode nurbsCurve -n "lfLegQd1_inRollG_ctlShape1" -p "lfLegQd1_inRollG_ctl";
	rename -uid "37564303-4160-CDC9-E111-B488DBFC3470";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.96191866467346931
		-0.96191866467346931 0 0
		0 0 -0.96191866467346931
		0.96191866467346931 0 0
		0 0 0.96191866467346931
		0 0.96191866467346931 0
		0.96191866467346931 0 0
		0 0 -0.96191866467346931
		0 0.96191866467346931 0
		-0.96191866467346931 0 0
		0 -0.96191866467346931 0
		0.96191866467346931 0 0
		0 0 0.96191866467346931
		0 -0.96191866467346931 0
		0 0 -0.96191866467346931
		;
createNode nurbsCurve -n "lfLegQd1_outRollG_ctlShape1" -p "lfLegQd1_outRollG_ctl";
	rename -uid "DA15C128-49C0-9C9A-1714-7E88102A35B5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.96191866467346931
		-0.96191866467346931 0 0
		0 0 -0.96191866467346931
		0.96191866467346931 0 0
		0 0 0.96191866467346931
		0 0.96191866467346931 0
		0.96191866467346931 0 0
		0 0 -0.96191866467346931
		0 0.96191866467346931 0
		-0.96191866467346931 0 0
		0 -0.96191866467346931 0
		0.96191866467346931 0 0
		0 0 0.96191866467346931
		0 -0.96191866467346931 0
		0 0 -0.96191866467346931
		;
createNode nurbsCurve -n "lfLegQd1_toeRollG_ctlShape1" -p "lfLegQd1_toeRollG_ctl";
	rename -uid "774AFE9A-4781-8D43-4D9E-3F9901F5C041";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.96191866467346931
		-0.96191866467346931 0 0
		0 0 -0.96191866467346931
		0.96191866467346931 0 0
		0 0 0.96191866467346931
		0 0.96191866467346931 0
		0.96191866467346931 0 0
		0 0 -0.96191866467346931
		0 0.96191866467346931 0
		-0.96191866467346931 0 0
		0 -0.96191866467346931 0
		0.96191866467346931 0 0
		0 0 0.96191866467346931
		0 -0.96191866467346931 0
		0 0 -0.96191866467346931
		;
createNode nurbsCurve -n "lfLegQd1_heelRollG_ctlShape1" -p "lfLegQd1_heelRollG_ctl";
	rename -uid "38E3B622-4800-922A-75A0-8298BC4A3EC0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.96191866467346931
		-0.96191866467346931 0 0
		0 0 -0.96191866467346931
		0.96191866467346931 0 0
		0 0 0.96191866467346931
		0 0.96191866467346931 0
		0.96191866467346931 0 0
		0 0 -0.96191866467346931
		0 0.96191866467346931 0
		-0.96191866467346931 0 0
		0 -0.96191866467346931 0
		0.96191866467346931 0 0
		0 0 0.96191866467346931
		0 -0.96191866467346931 0
		0 0 -0.96191866467346931
		;
createNode transform -n "lfLegQd1_line_30" -p "lfLegQd1_IK";
	rename -uid "3E289F24-414A-393A-F3D0-4A9B2EF8EF4D";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape2" -p "lfLegQd1_line_30";
	rename -uid "73ACB8CB-46E6-6D91-143E-D78418B53E9B";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		16.076820852811537 87.365197694958255 60.801042720535783
		16.584956749010114 83.746168715153573 19.555965439770269
		;
createNode transform -n "lfLegQd1_ikc_ofs" -p "lfLegQd1_IK";
	rename -uid "CA753F00-4D19-1203-C7F8-3ABFD6DD259C";
	setAttr ".t" -type "double3" 15.136936168869962 18.881415551028873 57.928570779357692 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ikc_ofs1" -p "lfLegQd1_ikc_ofs";
	rename -uid "FEAE3B60-40E9-59BF-0517-29952424AB3B";
createNode transform -n "lfLegQd1_ikc" -p "lfLegQd1_ikc_ofs1";
	rename -uid "882C1F9D-4616-7B43-32D6-2289CBECF641";
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
createNode transform -n "lfLegQd1_ikc_gmb" -p "lfLegQd1_ikc";
	rename -uid "4E6788C1-455D-0A44-57C7-2F942A555736";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
createNode nurbsCurve -n "lfLegQd1_ikc_gmbShapeOrig" -p "lfLegQd1_ikc_gmb";
	rename -uid "7E6D7812-4DDC-CEFB-B3F9-83BFFE56A293";
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
		11.659620177860223 -18.881415551028869 11.659620177860235
		11.435583845537801 -18.881415551028869 13.934299232944733
		10.772084439180668 -18.881415551028869 16.121563647597043
		9.6946198688803733 -18.881415551028869 18.137358076994094
		8.2445964938244636 -18.881415551028869 19.904216671684694
		6.4777378991338592 -18.881415551028869 21.35424004674061
		4.4619434697368083 -18.881415551028869 22.431704617040904
		2.2746790550844964 -18.881415551028869 23.09520402339804
		-1.3611847654967454e-15 -18.881415551028869 23.319240355720456
		-2.2746790550844991 -18.881415551028869 23.09520402339804
		-4.461943469736811 -18.881415551028869 22.431704617040904
		-6.4777378991338637 -18.881415551028869 21.35424004674061
		-8.2445964938244689 -18.881415551028869 19.904216671684697
		-9.6946198688803786 -18.881415551028869 18.137358076994097
		-10.772084439180674 -18.881415551028869 16.121563647597043
		-11.43558384553781 -18.881415551028869 13.934299232944731
		-11.65962017786023 -18.881415551028869 11.65962017786023
		-11.435583776773859 -15.389816233653619 11.659620177860234
		-10.7720843871131 -11.989961257675779 11.659620177860234
		-9.6946200891600256 -9.0458947246692318 11.659620177860234
		-8.244596491717715 -6.7032482650109966 11.659620177860234
		-6.4777377583750058 -4.9391586350329479 11.659620177860234
		-4.4619433276781528 -3.8616943370798733 11.659620177860234
		-2.2746790050648107 -3.1981949474191147 11.659620177860234
		7.1394582679499477e-16 -2.9741585463327418 11.659620177860234
		2.2746790050648107 -3.1981949474191147 11.659620177860234
		4.4619433276781528 -3.8616943370798733 11.659620177860234
		6.4777377583750058 -4.9391586350329479 11.659620177860234
		8.244596491717715 -6.7032482650109966 11.659620177860234
		9.6946200891600256 -9.0458947246692318 11.659620177860234
		10.7720843871131 -11.989961257675779 11.659620177860234
		11.435583776773859 -15.389816233653619 11.659620177860234
		11.659620177860234 -18.881415551028869 11.659620177860234
		11.659620177860234 -18.881415551028873 -10.960042967188617
		11.659620177860234 -18.181838340357256 -11.659620177860234
		11.435583776773859 -15.389816233653619 -11.659620177860234
		10.7720843871131 -11.989961257675779 -11.659620177860234
		9.6946200891600256 -9.0458947246692318 -11.659620177860234
		8.244596491717715 -6.7032482650109966 -11.659620177860234
		6.4777377583750058 -4.9391586350329479 -11.659620177860234
		4.4619433276781528 -3.8616943370798733 -11.659620177860234
		2.2746790050648107 -3.1981949474191147 -11.659620177860234
		7.1394582679499477e-16 -2.9741585463327418 -11.659620177860234
		-2.2746790050648107 -3.1981949474191147 -11.659620177860234
		-4.4619433276781528 -3.8616943370798733 -11.659620177860234
		-6.4777377583750058 -4.9391586350329479 -11.659620177860234
		-8.244596491717715 -6.7032482650109966 -11.659620177860234
		-9.6946200891600256 -9.0458947246692318 -11.659620177860234
		-10.7720843871131 -11.989961257675779 -11.659620177860234
		-11.435583776773859 -15.389816233653619 -11.659620177860234
		-11.659620177860234 -18.181838340357256 -11.659620177860234
		-11.659620177860234 -18.881415551028869 -10.960042967188617
		-11.659620177860234 -18.881415551028869 11.659620177860234
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode transform -n "lfLegQd1_smart_ctl_ofs" -p "lfLegQd1_ikc_gmb";
	rename -uid "25B8C762-4A44-2751-5354-E9B0CF614246";
	setAttr ".t" -type "double3" 1.493151025044881e-08 -18.881415551028873 14.15260527409729 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_smart_ctl" -p "lfLegQd1_smart_ctl_ofs";
	rename -uid "CB25E63F-4685-14A6-CCCE-4F83540AE540";
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
	rename -uid "4C2158C8-4F58-6913-C26E-10A2997E9D2E";
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
		5.3645717181391097 1.101079544199473e-16 -5.3645717181391159
		2.9701783480763261e-16 1.5571616246584823e-16 -4.8506693524112876
		-5.3645717181391097 1.1010795441994724e-16 -5.3645717181391124
		-4.8506693524113009 -6.3552848330697111e-32 -1.8835017546274735e-15
		-5.3645717181391097 -1.1010795441994727e-16 5.3645717181391097
		-4.8589486655571398e-16 -1.5571616246584838e-16 4.850669352411292
		5.3645717181391097 -1.1010795441994724e-16 5.3645717181391124
		4.8506693524113009 -9.286015978588398e-32 -9.7055813190991477e-16
		5.3645717181391097 1.101079544199473e-16 -5.3645717181391159
		2.9701783480763261e-16 1.5571616246584823e-16 -4.8506693524112876
		-5.3645717181391097 1.1010795441994724e-16 -5.3645717181391124
		;
createNode nurbsCurve -n "lfLegQd1_ikc_gmbShape1" -p "lfLegQd1_ikc_gmb";
	rename -uid "491F8C44-4F2E-39A4-E07D-46A625D0A96D";
	setAttr -k off ".v" no;
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
		9.327696142288179 -17.290689925449868 10.493658170791608
		9.1484670764302418 -17.290689925449868 12.313401414859207
		8.6176675513445353 -17.290689925449868 14.063212946581054
		7.7556958951042994 -17.290689925449868 15.675848490098694
		6.5956771950595714 -17.290689925449868 17.089335365851174
		5.1821903193070877 -17.290689925449868 18.249354065895908
		3.569554775789447 -17.290689925449868 19.111325722136144
		1.8197432440675971 -17.290689925449868 19.642125247221852
		-1.0889478123973965e-15 -17.290689925449868 19.821354313079784
		-1.8197432440675994 -17.290689925449868 19.642125247221852
		-3.5695547757894488 -17.290689925449868 19.111325722136144
		-5.1821903193070913 -17.290689925449868 18.249354065895908
		-6.5956771950595758 -17.290689925449868 17.089335365851177
		-7.7556958951043029 -17.290689925449868 15.675848490098698
		-8.6176675513445389 -17.290689925449868 14.063212946581054
		-9.1484670764302489 -17.290689925449868 12.313401414859204
		-9.3276961422881843 -17.290689925449868 10.493658170791605
		-9.1484670214190871 -14.497410471549665 10.493658170791608
		-8.6176675096904809 -11.777526490767393 10.493658170791608
		-7.7556960713280212 -9.4222732643621558 10.493658170791608
		-6.595677193374172 -7.5481560966355676 10.493658170791608
		-5.182190206700005 -6.136884392653128 10.493658170791608
		-3.5695546621425223 -5.2749129542906683 10.493658170791608
		-1.8197432040518486 -4.7441134425620621 10.493658170791608
		5.7115666143599585e-16 -4.5648843216929631 10.493658170791608
		1.8197432040518486 -4.7441134425620621 10.493658170791608
		3.5695546621425223 -5.2749129542906683 10.493658170791608
		5.182190206700005 -6.136884392653128 10.493658170791608
		6.595677193374172 -7.5481560966355676 10.493658170791608
		7.7556960713280212 -9.4222732643621558 10.493658170791608
		8.6176675096904809 -11.777526490767393 10.493658170791608
		9.1484670214190871 -14.497410471549665 10.493658170791608
		9.3276961422881879 -17.290689925449868 10.493658170791608
		9.3276961422881879 -17.290689925449868 -7.6020723452474739
		9.3276961422881879 -16.731028156912576 -8.1617341137847674
		9.1484670214190871 -14.497410471549665 -8.1617341137847674
		8.6176675096904809 -11.777526490767393 -8.1617341137847674
		7.7556960713280212 -9.4222732643621558 -8.1617341137847674
		6.595677193374172 -7.5481560966355676 -8.1617341137847674
		5.182190206700005 -6.136884392653128 -8.1617341137847674
		3.5695546621425223 -5.2749129542906683 -8.1617341137847674
		1.8197432040518486 -4.7441134425620621 -8.1617341137847674
		5.7115666143599585e-16 -4.5648843216929631 -8.1617341137847674
		-1.8197432040518486 -4.7441134425620621 -8.1617341137847674
		-3.5695546621425223 -5.2749129542906683 -8.1617341137847674
		-5.182190206700005 -6.136884392653128 -8.1617341137847674
		-6.595677193374172 -7.5481560966355676 -8.1617341137847674
		-7.7556960713280212 -9.4222732643621558 -8.1617341137847674
		-8.6176675096904809 -11.777526490767393 -8.1617341137847674
		-9.1484670214190871 -14.497410471549665 -8.1617341137847674
		-9.3276961422881879 -16.731028156912576 -8.1617341137847674
		-9.3276961422881879 -17.290689925449868 -7.6020723452474739
		-9.3276961422881879 -17.290689925449868 10.493658170791608
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode ikHandle -n "lfLegQd1_autoAimJ_ikh" -p "lfLegQd1_ikc";
	rename -uid "EE639594-422C-E605-9661-2C96C8164C93";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.5527136788005009e-15 7.1054273576010019e-15 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 12.171505944884407 -0.47673866666912984 -87.790796088537746 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode joint -n "lfLegQd1_legLock" -p "lfLegQd1_ikc";
	rename -uid "44D86F63-4162-A35E-B2EC-31ACB69A1725";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 167.82849405511544 0.47673866666913073 92.209203911462254 ;
	setAttr ".radi" 3.1092320474293955;
createNode joint -n "lfLegQd1_legLock_end" -p "lfLegQd1_legLock";
	rename -uid "86D48936-44D6-D016-4973-28AE67FD1C0E";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 137.00360069458873 3.5527136788005009e-15 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 3.1092320474293955;
createNode ikEffector -n "effector13" -p "lfLegQd1_legLock";
	rename -uid "7E6FF8B3-49C7-0363-CE87-9B8E68841C85";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode nurbsCurve -n "lfLegQd1_ikcShape1" -p "lfLegQd1_ikc";
	rename -uid "976BB576-45D1-340D-7C8F-FB90D4985EFF";
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
		11.659620177860223 -18.881415551028869 11.659620177860235
		11.435583845537801 -18.881415551028869 13.934299232944733
		10.772084439180668 -18.881415551028869 16.121563647597043
		9.6946198688803733 -18.881415551028869 18.137358076994094
		8.2445964938244636 -18.881415551028869 19.904216671684694
		6.4777378991338592 -18.881415551028869 21.35424004674061
		4.4619434697368083 -18.881415551028869 22.431704617040904
		2.2746790550844964 -18.881415551028869 23.09520402339804
		-1.3611847654967454e-15 -18.881415551028869 23.319240355720456
		-2.2746790550844991 -18.881415551028869 23.09520402339804
		-4.461943469736811 -18.881415551028869 22.431704617040904
		-6.4777378991338637 -18.881415551028869 21.35424004674061
		-8.2445964938244689 -18.881415551028869 19.904216671684697
		-9.6946198688803786 -18.881415551028869 18.137358076994097
		-10.772084439180674 -18.881415551028869 16.121563647597043
		-11.43558384553781 -18.881415551028869 13.934299232944731
		-11.65962017786023 -18.881415551028869 11.65962017786023
		-11.435583776773859 -15.389816233653619 11.659620177860234
		-10.7720843871131 -11.989961257675779 11.659620177860234
		-9.6946200891600256 -9.0458947246692318 11.659620177860234
		-8.244596491717715 -6.7032482650109966 11.659620177860234
		-6.4777377583750058 -4.9391586350329479 11.659620177860234
		-4.4619433276781528 -3.8616943370798733 11.659620177860234
		-2.2746790050648107 -3.1981949474191147 11.659620177860234
		7.1394582679499477e-16 -2.9741585463327418 11.659620177860234
		2.2746790050648107 -3.1981949474191147 11.659620177860234
		4.4619433276781528 -3.8616943370798733 11.659620177860234
		6.4777377583750058 -4.9391586350329479 11.659620177860234
		8.244596491717715 -6.7032482650109966 11.659620177860234
		9.6946200891600256 -9.0458947246692318 11.659620177860234
		10.7720843871131 -11.989961257675779 11.659620177860234
		11.435583776773859 -15.389816233653619 11.659620177860234
		11.659620177860234 -18.881415551028869 11.659620177860234
		11.659620177860234 -18.881415551028873 -10.960042967188617
		11.659620177860234 -18.181838340357256 -11.659620177860234
		11.435583776773859 -15.389816233653619 -11.659620177860234
		10.7720843871131 -11.989961257675779 -11.659620177860234
		9.6946200891600256 -9.0458947246692318 -11.659620177860234
		8.244596491717715 -6.7032482650109966 -11.659620177860234
		6.4777377583750058 -4.9391586350329479 -11.659620177860234
		4.4619433276781528 -3.8616943370798733 -11.659620177860234
		2.2746790050648107 -3.1981949474191147 -11.659620177860234
		7.1394582679499477e-16 -2.9741585463327418 -11.659620177860234
		-2.2746790050648107 -3.1981949474191147 -11.659620177860234
		-4.4619433276781528 -3.8616943370798733 -11.659620177860234
		-6.4777377583750058 -4.9391586350329479 -11.659620177860234
		-8.244596491717715 -6.7032482650109966 -11.659620177860234
		-9.6946200891600256 -9.0458947246692318 -11.659620177860234
		-10.7720843871131 -11.989961257675779 -11.659620177860234
		-11.435583776773859 -15.389816233653619 -11.659620177860234
		-11.659620177860234 -18.181838340357256 -11.659620177860234
		-11.659620177860234 -18.881415551028869 -10.960042967188617
		-11.659620177860234 -18.881415551028869 11.659620177860234
		;
createNode transform -n "lfLegQd1_pvc_ofs" -p "lfLegQd1_IK";
	rename -uid "A20F4958-4916-228D-EE95-B59B4A379A67";
	setAttr ".t" -type "double3" 16.584956749010114 83.746168715153573 19.555965439770269 ;
	setAttr ".r" -type "double3" 5.0141679009995981 179.29415590015134 -6.8602612381926758e-06 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_pvc_ofs1" -p "lfLegQd1_pvc_ofs";
	rename -uid "28D70F65-4506-E322-0EE1-82922504F2C4";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "lfLegQd1_pvc" -p "lfLegQd1_pvc_ofs1";
	rename -uid "46C8BCD2-41E2-AF52-137C-0DA3FB68FD59";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 4.2632564145606011e-14 7.1054273576010019e-15 ;
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".pvPin";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
	setAttr -k on ".space";
createNode nurbsCurve -n "lfLegQd1_pvcShape1" -p "lfLegQd1_pvc";
	rename -uid "A498E904-4564-3A2A-8F2A-B080686BDFB5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 3.8476746586938773
		-3.8476746586938773 0 0
		0 0 -3.8476746586938773
		3.8476746586938773 0 0
		0 0 3.8476746586938773
		0 3.8476746586938773 0
		3.8476746586938773 0 0
		0 0 -3.8476746586938773
		0 3.8476746586938773 0
		-3.8476746586938773 0 0
		0 -3.8476746586938773 0
		3.8476746586938773 0 0
		0 0 3.8476746586938773
		0 -3.8476746586938773 0
		0 0 -3.8476746586938773
		;
createNode transform -n "lfLegQd1_extraRollG_ofs_loc" -p "lfLegQd1_IK";
	rename -uid "65496718-4E7C-3DA1-68B2-8DBAF9B60252";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 0.88177499496762546 31.647002870420192 -90.048308941228953 ;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd1_extraRollG_ofs_locShape" -p "lfLegQd1_extraRollG_ofs_loc";
	rename -uid "EA47903D-4A1E-746D-6C7A-9BB75A1F1FBF";
	setAttr -k off ".v";
createNode transform -n "lfLegQd1_setting" -p "lfLegQd1_ctl_data";
	rename -uid "070BEF44-4FDD-C309-F9D4-7D9B00524B1C";
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
	rename -uid "06AD1910-4281-194C-0DDA-ADBC11C64F56";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-7.773080118573489 -1.1849112235395743e-32 1.9351068372981817e-16
		-7.6237225178492398 9.2855945601203613e-17 -1.5164526700432071
		-7.1813895914087338 1.821434980143344e-16 -2.9746290704434406
		-6.4630800594400171 2.6443136670831896e-16 -4.3184918389166711
		-5.4963976611451431 3.3655728152280007e-16 -5.4963976611451431
		-4.3184918389166711 3.957495199201165e-16 -6.4630800594400171
		-2.9746290704434406 4.3973331148604172e-16 -7.1813895914087338
		-1.5164526700432071 4.6681838528560764e-16 -7.6237225178492398
		4.7596388452999661e-16 4.7596388452999661e-16 -7.773080118573489
		1.5164526700432071 4.6681838528560764e-16 -7.6237225178492398
		2.9746290704434406 4.3973331148604172e-16 -7.1813895914087338
		4.3184918389166711 3.957495199201165e-16 -6.4630800594400171
		5.4963976611451431 3.3655728152280007e-16 -5.4963976611451431
		6.4630800594400171 2.6443136670831896e-16 -4.3184918389166711
		7.1813895914087338 1.821434980143344e-16 -2.9746290704434406
		7.6237225178492398 9.2855945601203613e-17 -1.5164526700432071
		7.773080118573489 5.1481065855386641e-32 -8.4074958157169933e-16
		7.4772352256404542 9.10717490071672e-17 -1.4873144425593843
		6.6347388898593165 1.6827865104898593e-16 -2.7481988305725715
		5.3738543165214567 2.1986665574302086e-16 -3.5906947957043669
		3.8865400592867445 2.3798194226499831e-16 -3.8865400592867445
		2.3992256167273602 2.1986665574302086e-16 -3.5906947957043669
		1.1383412287141728 1.6827865104898593e-16 -2.7481988305725715
		0.29584526358237773 9.10717490071672e-17 -1.4873144425593843
		0 5.1481065855386641e-32 -8.4074958157169933e-16
		-0.29584526358237773 -9.10717490071672e-17 1.4873144425593843
		-1.1383412287141728 -1.6827865104898593e-16 2.7481988305725715
		-2.3992256167273602 -2.1986665574302086e-16 3.5906947957043669
		-3.8865400592867445 -2.3798194226499831e-16 3.8865400592867445
		-5.3738543165214567 -2.1986665574302086e-16 3.5906947957043669
		-6.6347388898593165 -1.6827865104898593e-16 2.7481988305725715
		-7.4772352256404542 -9.10717490071672e-17 1.4873144425593843
		-7.773080118573489 -1.1849112235395743e-32 1.9351068372981817e-16
		-7.6237225178492398 -9.2855945601203613e-17 1.5164526700432071
		-7.1813895914087338 -1.821434980143344e-16 2.9746290704434406
		-6.4630800594400171 -2.6443136670831896e-16 4.3184918389166711
		-5.4963976611451431 -3.3655728152280007e-16 5.4963976611451431
		-4.3184918389166711 -3.957495199201165e-16 6.4630800594400171
		-2.9746290704434406 -4.3973331148604172e-16 7.1813895914087338
		-1.5164526700432071 -4.6681838528560764e-16 7.6237225178492398
		-9.0745651052481298e-16 -4.7596388452999661e-16 7.773080118573489
		1.5164526700432071 -4.6681838528560764e-16 7.6237225178492398
		2.9746290704434406 -4.3973331148604172e-16 7.1813895914087338
		4.3184918389166711 -3.957495199201165e-16 6.4630800594400171
		5.4963976611451431 -3.3655728152280007e-16 5.4963976611451431
		6.4630800594400171 -2.6443136670831896e-16 4.3184918389166711
		7.1813895914087338 -1.821434980143344e-16 2.9746290704434406
		7.6237225178492398 -9.2855945601203613e-17 1.5164526700432071
		7.773080118573489 5.1481065855386641e-32 -8.4074958157169933e-16
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd1_anchorF1" -p "master_ctl";
	rename -uid "56F5FC24-4456-1866-6523-AB8B9C55B382";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd1_anchorF1Shape" -p "lfLegQd1_anchorF1";
	rename -uid "2518C08C-4B71-8EE3-D3C5-4C9FB8F5BFEF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 23.319240355720467 23.319240355720467 23.319240355720467 ;
createNode transform -n "neckQd0_ctl_data" -p "master_ctl";
	rename -uid "A2A87A76-4B6F-9296-0063-699245711283";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_IK" -p "neckQd0_ctl_data";
	rename -uid "B2475CAA-4CF0-CA7C-3BD4-64B5776CBD26";
	setAttr ".t" -type "double3" 2.7268917917981639e-14 139.02262821601732 78.567944539426563 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_cog_ctl_ofs" -p "neckQd0_IK";
	rename -uid "5CAD8F34-4CCA-A795-7810-EBA2F7E2E566";
	setAttr ".r" -type "double3" -26.90976132496036 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "neckQd0_cog_ctl_ofs1" -p "neckQd0_cog_ctl_ofs";
	rename -uid "4B29512B-4124-4974-AA81-29A6E11DA58D";
	setAttr ".t" -type "double3" 6.3108872417680944e-30 1.4210854715202004e-14 2.8421709430404007e-14 ;
createNode transform -n "neckQd0_cog_ctl" -p "neckQd0_cog_ctl_ofs1";
	rename -uid "79005166-4178-9F9A-3C78-6FBAFF285E43";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "chest:COG:master" -at "enum";
	setAttr -l on -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".space";
createNode transform -n "neckQd0_base_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "EC1FC622-4EF3-51EB-8825-A6A73702A87E";
	setAttr ".t" -type "double3" 1.2007539060292739e-17 1.4210854715202004e-14 -2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "neckQd0_base_ctl" -p "neckQd0_base_ctl_ofs";
	rename -uid "E6C09411-428F-C463-5198-F1A662F5688C";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -6.3108872417680944e-30 0 0 ;
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode nurbsCurve -n "neckQd0_base_ctlShape1" -p "neckQd0_base_ctl";
	rename -uid "EF7075FD-4240-5D56-6E55-5B86E397F2D1";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		14.220938820191343 14.220938820191344 8.7078136035088343e-16
		1.2314708096699119e-15 20.11144454919263 1.2314708096699119e-15
		-14.220938820191343 14.220938820191341 8.7078136035088323e-16
		-20.11144454919264 1.0425808368451197e-15 6.3839664234737235e-32
		-14.220938820191343 -14.220938820191343 -8.7078136035088323e-16
		-2.0145771553393662e-15 -20.111444549192644 -1.2314708096699127e-15
		14.220938820191343 -14.220938820191341 -8.7078136035088323e-16
		20.11144454919264 -2.7425905922682541e-15 -1.6793523950964805e-31
		14.220938820191343 14.220938820191344 8.7078136035088343e-16
		1.2314708096699119e-15 20.11144454919263 1.2314708096699119e-15
		-14.220938820191343 14.220938820191341 8.7078136035088323e-16
		;
createNode transform -n "neckQd0_tangent0_ctl_ofs" -p "neckQd0_base_ctl";
	rename -uid "94A2B482-4B8B-73DD-9379-C692004F4868";
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-14 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "neckQd0_tangent0_ctl" -p "neckQd0_tangent0_ctl_ofs";
	rename -uid "A89889B9-4ADA-4B56-EE62-1E8EED0C8DAC";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -6.3108872417680944e-30 0 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "neckQd0_tangent0_ctlShape1" -p "neckQd0_tangent0_ctl";
	rename -uid "7A88EF8C-4A2B-9628-6019-A8967840547D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-4.3025626717040948e-07 2.8910629731491646 -0.61862037145223436
		-5.2470549136062369e-07 3.0892290502033561 -1.1363620194707071
		-5.5326431327341365e-07 2.8436265400848386 -1.5147439728183643
		-5.1059576496410457e-07 2.5562559865719332 -1.6243264349260111
		-4.5048098921349257e-07 2.1513859574909202 -1.6282928654751914
		1.8652878058063048e-07 -2.1388435854120109 -1.6703239407073551
		2.4664355633230376e-07 -2.5437136144929946 -1.6742903712565045
		2.8931210457379383e-07 -2.8310841680059129 -1.5703385326107731
		3.9266693347133855e-07 -3.0892290502033561 -1.1854583092288231
		4.3013136000659628e-07 -2.903605345228081 -0.66466695512828811
		5.5326431340331833e-07 -0.53159642193065082 2.5754986247014342
		5.2686824091388987e-07 -0.26647486746779808 2.8435397144235899
		4.9518729729062803e-07 -0.0009401574861780896 2.9535175220915342
		4.3050027541754806e-07 0.26717486957604908 2.849898165196024
		3.6052838241445144e-07 0.53570305215708625 2.5882155262463202
		-4.3025626717040948e-07 2.8910629731491646 -0.61862037145223436
		;
	setAttr ".adot" yes;
createNode joint -n "neckQd0_0_ikj" -p "neckQd0_tangent0_ctl";
	rename -uid "24D2A7E6-4226-D5F4-A8BF-8886CCB87252";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" -26.909761324960392 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 26.909761324960392 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.89172043660165812 -0.45258663584660663 0
		 0 0.45258663584660663 0.89172043660165812 0 2.7280925457041916e-14 139.02262821601732 78.567944539426534 1;
	setAttr ".radi" 2.4197256852700715;
createNode joint -n "neckQd0_two_ikj" -p "neckQd0_base_ctl";
	rename -uid "0ACB0460-430B-1FE1-F49A-1D92F079CBA2";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -1.2007539060283272e-17 -1.4210854715202004e-14 2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -26.909761324960336 -1.0657845503667284e-14 -7.1008678118380894e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 26.90976132496036 0 0 ;
	setAttr ".radi" 12.098628426350357;
createNode joint -n "neckQd0_two_ikj_end" -p "neckQd0_two_ikj";
	rename -uid "698C0C29-405E-3071-2305-258F0FC78DFB";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -2.7268917917981639e-14 28.671111813179252 50.848967117587961 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 12.098628426350357;
createNode ikEffector -n "effector15" -p "neckQd0_two_ikj";
	rename -uid "23E1DAAC-40E3-B91A-5BCA-C6A2F9A9157D";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "neckQd0_fore_ctl_SPACE_1_ofs" -p "neckQd0_base_ctl";
	rename -uid "3E5BF1E6-446E-3E1C-52BB-A396306B36FE";
	setAttr ".t" -type "double3" -2.7280925457041903e-14 28.671111813179209 50.848967117588018 ;
	setAttr ".r" -type "double3" 26.90976132496036 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_1" -p "neckQd0_fore_ctl_SPACE_1_ofs";
	rename -uid "08631293-4738-5A07-8969-DCAAC19A34A0";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "neckQd0_mid_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "1342CD40-488F-9A54-892C-6CB3D86432C5";
	setAttr ".t" -type "double3" -1.3688765212482573e-14 12.815990081310147 24.232334661057507 ;
	setAttr ".r" -type "double3" -46.032122353468466 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "neckQd0_mid_ctl_ofs1" -p "neckQd0_mid_ctl_ofs";
	rename -uid "0B3F5ADD-4FE9-9F1A-D08F-CFA00CE17BCF";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "neckQd0_mid_ctl_ofs2" -p "neckQd0_mid_ctl_ofs1";
	rename -uid "B316313F-4700-E89A-E2C0-1A99B924A221";
	setAttr ".t" -type "double3" 3.1554436208840472e-30 -1.1546319456101628e-14 -5.6843418860808015e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "neckQd0_mid_ctl" -p "neckQd0_mid_ctl_ofs2";
	rename -uid "33C22EB4-44D7-4969-168D-E5937091C665";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999956 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode joint -n "neckQd0_1_ikj" -p "neckQd0_mid_ctl";
	rename -uid "9BEB89E3-4B7D-9FE5-0898-CCB0A1640056";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 1.5777218104420236e-30 0 0 ;
	setAttr ".r" -type "double3" -72.941883678428809 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 72.941883678428809 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.29334155430340447 -0.95600770526124002 0
		 0 0.95600770526124002 0.29334155430340447 0 1.3580152705499064e-14 161.41813930976278 94.376066747318589 1;
	setAttr ".radi" 2.4197256852700715;
createNode nurbsCurve -n "neckQd0_mid_ctlShape1" -p "neckQd0_mid_ctl";
	rename -uid "52397A20-40CA-2A04-9342-C3B919A0E2D8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		14.220938820191343 14.220938820191344 8.7078136035088343e-16
		1.2314708096699119e-15 20.11144454919263 1.2314708096699119e-15
		-14.220938820191343 14.220938820191341 8.7078136035088323e-16
		-20.11144454919264 1.0425808368451197e-15 6.3839664234737235e-32
		-14.220938820191343 -14.220938820191343 -8.7078136035088323e-16
		-2.0145771553393662e-15 -20.111444549192644 -1.2314708096699127e-15
		14.220938820191343 -14.220938820191341 -8.7078136035088323e-16
		20.11144454919264 -2.7425905922682541e-15 -1.6793523950964805e-31
		14.220938820191343 14.220938820191344 8.7078136035088343e-16
		1.2314708096699119e-15 20.11144454919263 1.2314708096699119e-15
		-14.220938820191343 14.220938820191341 8.7078136035088323e-16
		;
createNode transform -n "neckQd0_fore_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "E586D9CD-4922-0CE8-E2FA-7593899DB76A";
	setAttr ".t" -type "double3" -2.7268917917981623e-14 28.671111813179252 50.848967117587989 ;
	setAttr ".r" -type "double3" 26.90976132496036 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "neckQd0_fore_ctl_ofs1" -p "neckQd0_fore_ctl_ofs";
	rename -uid "7EF40AA0-456D-DD3D-1404-328D8112030C";
createNode transform -n "neckQd0_fore_ctl" -p "neckQd0_fore_ctl_ofs1";
	rename -uid "0C118BD3-43E1-7B7E-CAEE-F7A527B21E67";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 2 -at "double";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "neckBase:COG:master" 
		-at "enum";
	addAttr -ci true -sn "posSpace" -ln "posSpace" -min 0 -max 2 -en "neckBase:COG:master" 
		-at "enum";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
	setAttr -k on ".space";
	setAttr -k on ".posSpace";
createNode transform -n "neckQd0_tangent1_ctl_ofs" -p "neckQd0_fore_ctl";
	rename -uid "44C94D12-4912-14DB-31C5-D0A0B93758C1";
	setAttr ".t" -type "double3" 0 -2.8421709430404007e-14 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "neckQd0_tangent1_ctl" -p "neckQd0_tangent1_ctl_ofs";
	rename -uid "4C210B49-44F7-D192-384A-9A96E4A871D0";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode joint -n "neckQd0_2_ikj" -p "neckQd0_tangent1_ctl";
	rename -uid "8F019565-47F1-83A6-C616-05BC42652718";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.99999999999999978 0 0 0 0 0.99999999999999978 0
		 1.2621774483536189e-29 187.60280752394431 110.93484565675679 1;
	setAttr ".radi" 2.4197256852700715;
createNode ikHandle -n "neckQd0_two_ikj_ikh" -p "neckQd0_tangent1_ctl";
	rename -uid "6CF29E9F-4639-9F34-9486-B39F904C80EE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.2621774483536189e-29 0 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -26.90976132496036 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 1.0000000000000002 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "neckQd0_tangent1_ctlShape1" -p "neckQd0_tangent1_ctl";
	rename -uid "C3586F94-4AE9-463F-81A6-1486880B6318";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-4.3025626717040948e-07 -2.8910629731491646 0.6186203714522347
		-5.2470549136062369e-07 -3.0892290502033561 1.1363620194707076
		-5.5326431327341365e-07 -2.8436265400848386 1.5147439728183647
		-5.1059576496410457e-07 -2.5562559865719332 1.6243264349260116
		-4.5048098921349257e-07 -2.1513859574909202 1.6282928654751916
		1.8652878058063048e-07 2.1388435854120114 1.6703239407073549
		2.4664355633230376e-07 2.5437136144929946 1.6742903712565043
		2.8931210457379383e-07 2.8310841680059129 1.5703385326107728
		3.9266693347133855e-07 3.0892290502033561 1.1854583092288227
		4.3013136000659628e-07 2.903605345228081 0.66466695512828777
		5.5326431340331833e-07 0.53159642193065049 -2.5754986247014342
		5.2686824091388987e-07 0.26647486746779775 -2.8435397144235899
		4.9518729729062803e-07 0.00094015748617772791 -2.9535175220915342
		4.3050027541754806e-07 -0.26717486957604941 -2.849898165196024
		3.6052838241445144e-07 -0.53570305215708658 -2.5882155262463202
		-4.3025626717040948e-07 -2.8910629731491646 0.6186203714522347
		;
	setAttr ".adot" yes;
createNode transform -n "neckQd0_anchorToRbj" -p "neckQd0_fore_ctl";
	rename -uid "5EE27490-4443-2F2A-4BDC-6DBE14AA1432";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode locator -n "neckQd0_anchorToRbjShape" -p "neckQd0_anchorToRbj";
	rename -uid "DE7EFF75-4D52-4515-1389-A58BB601919B";
	setAttr -k off ".v";
createNode transform -n "head0_head_fkc_SPACE_1_ofs" -p "neckQd0_anchorToRbj";
	rename -uid "EDCC40EE-4258-3C2E-3DF1-FBAFD9ABB7DF";
	setAttr ".t" -type "double3" 2.8421709430404007e-14 0.50919123991326387 8.7895233257621754 ;
createNode transform -n "head0_head_fkc_SPACE_1" -p "head0_head_fkc_SPACE_1_ofs";
	rename -uid "8701B8DD-46D7-8BB9-A770-FAAA32E41E06";
createNode nurbsCurve -n "neckQd0_fore_ctlShape1" -p "neckQd0_fore_ctl";
	rename -uid "28F0B409-4B10-50DE-F79B-27B54AD1C625";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		14.504153480237731 20.467486720061142 35.179291959752476
		1.2559959546780957e-15 28.411400929276354 35.179291959752476
		-14.504153480237731 20.467486720061139 35.179291959752476
		-20.511970562493126 1.1313723295866525e-14 -4.9538513203740333e-15
		-14.504153480237731 -19.178305422215736 -6.1281838377933756e-15
		-2.0546981200239616e-15 -27.122219631430966 -6.6146082932442038e-15
		14.504153480237731 -19.178305422215736 -6.1281838377933756e-15
		20.511970562493126 6.2090551258642043e-15 -4.9538513203740333e-15
		14.504153480237731 20.467486720061142 35.179291959752476
		1.2559959546780957e-15 28.411400929276354 35.179291959752476
		-14.504153480237731 20.467486720061139 35.179291959752476
		;
createNode nurbsCurve -n "neckQd0_cog_ctlShape1" -p "neckQd0_cog_ctl";
	rename -uid "F4CB9277-4DC1-BBF7-175D-D599E9081559";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		31.311892564242672 31.311892564242726 -4.2340285410276963e-14
		1.7336315034644807e-15 28.312351033318475 -4.207407975856536e-14
		-31.311892564242672 31.311892564242704 -4.2340285410276969e-14
		-28.312351033318542 2.5204463838935732e-14 -4.2982962705019494e-14
		-31.311892564242672 -31.311892564242658 -4.3625639999762025e-14
		-2.8360675667110275e-15 -28.312351033318475 -4.3891845651473627e-14
		31.311892564242672 -31.311892564242672 -4.3625639999762025e-14
		28.312351033318542 1.987580124783167e-14 -4.2982962705019494e-14
		31.311892564242672 31.311892564242726 -4.2340285410276963e-14
		1.7336315034644807e-15 28.312351033318475 -4.207407975856536e-14
		-31.311892564242672 31.311892564242704 -4.2340285410276969e-14
		;
createNode transform -n "neckQd0_setting" -p "neckQd0_IK";
	rename -uid "D7401180-44D1-34D9-0F4B-AF88202D7828";
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
	rename -uid "55E5792B-4224-6EEC-18BE-F8890A7CC991";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-4.5369856598813838 6.0493142131751787 1.1294817288942967e-16
		-4.4498087258548029 6.0493142131751787 -0.88512197390517866
		-4.1916281702011142 6.0493142131751787 -1.7362292978069718
		-3.7723657933588881 6.0493142131751787 -2.5206141254948764
		-3.2081333254284701 6.0493142131751787 -3.2081333254284701
		-2.5206141254948764 6.0493142131751787 -3.7723657933588881
		-1.7362292978069718 6.0493142131751787 -4.1916281702011142
		-0.88512197390517866 6.0493142131751787 -4.4498087258548029
		2.7781024842058783e-16 6.0493142131751787 -4.5369856598813838
		0.88512197390517866 6.0493142131751787 -4.4498087258548029
		1.7362292978069718 6.0493142131751787 -4.1916281702011142
		2.5206141254948764 6.0493142131751787 -3.7723657933588881
		3.2081333254284701 6.0493142131751787 -3.2081333254284701
		3.7723657933588881 6.0493142131751787 -2.5206141254948764
		4.1916281702011142 6.0493142131751787 -1.7362292978069718
		4.4498087258548029 6.0493142131751787 -0.88512197390517866
		4.5369856598813838 6.0493142131751787 -4.9072809452041294e-16
		4.364307131381584 6.0493142131751787 -0.86811459481840214
		3.8725594926549269 6.0493142131751787 -1.604066662714235
		3.1366073165889268 6.0493142131751787 -2.0958140851005571
		2.2684928299406919 6.0493142131751787 -2.2684928299406919
		1.40037823512229 6.0493142131751787 -2.0958140851005571
		0.66442616722645687 6.0493142131751787 -1.604066662714235
		0.17267874484013476 6.0493142131751787 -0.86811459481840214
		0 6.0493142131751787 -4.9072809452041294e-16
		-0.17267874484013476 6.0493142131751787 0.86811459481840214
		-0.66442616722645687 6.0493142131751787 1.604066662714235
		-1.40037823512229 6.0493142131751787 2.0958140851005571
		-2.2684928299406919 6.0493142131751787 2.2684928299406919
		-3.1366073165889268 6.0493142131751787 2.0958140851005571
		-3.8725594926549269 6.0493142131751787 1.604066662714235
		-4.364307131381584 6.0493142131751787 0.86811459481840214
		-4.5369856598813838 6.0493142131751787 1.1294817288942967e-16
		-4.4498087258548029 6.0493142131751787 0.88512197390517866
		-4.1916281702011142 6.0493142131751787 1.7362292978069718
		-3.7723657933588881 6.0493142131751787 2.5206141254948764
		-3.2081333254284701 6.0493142131751787 3.2081333254284701
		-2.5206141254948764 6.0493142131751787 3.7723657933588881
		-1.7362292978069718 6.0493142131751787 4.1916281702011142
		-0.88512197390517866 6.0493142131751787 4.4498087258548029
		-5.2966354552031142e-16 6.0493142131751787 4.5369856598813838
		0.88512197390517866 6.0493142131751787 4.4498087258548029
		1.7362292978069718 6.0493142131751787 4.1916281702011142
		2.5206141254948764 6.0493142131751787 3.7723657933588881
		3.2081333254284701 6.0493142131751787 3.2081333254284701
		3.7723657933588881 6.0493142131751787 2.5206141254948764
		4.1916281702011142 6.0493142131751787 1.7362292978069718
		4.4498087258548029 6.0493142131751787 0.88512197390517866
		4.5369856598813838 6.0493142131751787 -4.9072809452041294e-16
		;
	setAttr ".adot" yes;
createNode transform -n "neckQd0_anchorF1" -p "master_ctl";
	rename -uid "DA8E5B05-465C-4D0C-2352-45A873196EB8";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "neckQd0_anchorF1Shape" -p "neckQd0_anchorF1";
	rename -uid "B9631763-42B0-454A-CF17-D0A7A2AD643E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 9.0739713197627676 9.0739713197627676 9.0739713197627676 ;
createNode transform -n "neckQd0_anchorM1" -p "master_ctl";
	rename -uid "EE55E898-4E1B-2B70-7567-65B93E9CDBD6";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "neckQd0_anchorM1Shape" -p "neckQd0_anchorM1";
	rename -uid "D12E7CDD-41EC-D777-C525-CBA38A7766C6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 9.0739713197627676 9.0739713197627676 9.0739713197627676 ;
createNode transform -n "rtLegQd0_ctl_data" -p "master_ctl";
	rename -uid "CE41E977-467C-FFAB-7ED1-0081834473B4";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_FK" -p "rtLegQd0_ctl_data";
	rename -uid "805AF46B-4F57-8E79-D4C2-44814E6B220E";
	setAttr -cb on ".ro";
createNode joint -n "rtLegQd0_hip_fk" -p "rtLegQd0_FK";
	rename -uid "68B87C96-4729-948A-BF35-C99230631200";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -0.4445444900148342 -40.556921681718677 91.203111579680282 ;
	setAttr ".radi" 2.9368808413984091;
createNode joint -n "rtLegQd0_upr_fk" -p "rtLegQd0_hip_fk";
	rename -uid "DF9DCF3C-4E69-50AF-E5A1-A8A6CF665D6F";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.1972115281030429 49.99914152386615 1.1394186714720711 ;
	setAttr ".radi" 2.9368808413984091;
createNode joint -n "rtLegQd0_lwr_fk" -p "rtLegQd0_upr_fk";
	rename -uid "08FECA9A-476D-902B-0F80-049BF1B4081B";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -39.26141104683942 0 ;
	setAttr ".radi" 2.9368808413984091;
createNode joint -n "rtLegQd0_palm_fk" -p "rtLegQd0_lwr_fk";
	rename -uid "0D1F2CA2-45C4-92F5-1FFB-A2BE2512646C";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 2.9108749191793124 29.928640724604978 -2.653909855982886 ;
	setAttr ".radi" 2.9368808413984091;
createNode joint -n "rtLegQd0_digit_fk" -p "rtLegQd0_palm_fk";
	rename -uid "4654B418-47E2-C027-4CC7-BCB93BD0059C";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 25.349753547664722 0 ;
	setAttr ".radi" 2.9368808413984091;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_1_ofs" -p "rtLegQd0_digit_fk";
	rename -uid "F69C6C03-48C3-1CAC-8975-D0A01C61FDF9";
	setAttr ".t" -type "double3" -10.074464736819664 1.4005614445977699e-08 2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 0 7.6074146487726635 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_1" -p "rtLegQd0_ball_fkc_SPACE_1_ofs";
	rename -uid "94B84CBD-44DD-818D-BCFB-92B05C992BD8";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "rtLegQd0_ball_fk_SPACE_2_ofs" -p "rtLegQd0_digit_fk";
	rename -uid "93E4F82E-4693-EB88-642A-F5803F76256E";
	setAttr ".t" -type "double3" -10.074464736819685 1.4005614445977699e-08 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 0 7.6074146487726635 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
createNode transform -n "rtLegQd0_ball_fk_SPACE_2" -p "rtLegQd0_ball_fk_SPACE_2_ofs";
	rename -uid "D0CC4423-4CC0-4293-A691-D4BD8A2ED3B9";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1.0000000000000002 ;
createNode transform -n "rtLegQd0_ball_fk_ofs" -p "rtLegQd0_digit_fk";
	rename -uid "EB78E269-4287-F62B-BE0D-8780A10F62B9";
	setAttr ".t" -type "double3" -10.074464736819692 1.4005612669620859e-08 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
createNode joint -n "rtLegQd0_ball_fk" -p "rtLegQd0_ball_fk_ofs";
	rename -uid "8E4F34A7-49A9-9907-F060-3DB4040D0B40";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -5.3290705182007514e-15 0 ;
	setAttr ".r" -type "double3" 0 4.7708320221952752e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.7176984860369976e-13 3.1805546814635168e-15 1.1228542637141664e-14 ;
	setAttr ".radi" 2.9368808413984091;
createNode joint -n "rtLegQd0_tip_fk" -p "rtLegQd0_ball_fk";
	rename -uid "09FEB3D6-40E8-1EA9-21F2-269BBFFB9A43";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -10.469369336234713 -3.8546943414985435e-13 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 57.042831803562613 0 ;
	setAttr ".radi" 2.9368808413984091;
createNode transform -n "rtLegQd0_upr_fkc_ofs" -p "rtLegQd0_FK";
	rename -uid "96276635-44CF-0A52-8781-C4B85AEE1333";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_upr_fkc" -p "rtLegQd0_upr_fkc_ofs";
	rename -uid "99EBEA97-40B2-1F43-F2A3-CD970522A26A";
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
createNode nurbsCurve -n "rtLegQd0_upr_fkcShape1" -p "rtLegQd0_upr_fkc";
	rename -uid "6B1E0C8D-484C-AFAC-874C-E1ACE3E54E4A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.1201332376160228e-16 -15.20160701514987 -15.201607015149888
		4.4125347410476592e-16 -8.4166055343604791e-16 -13.745359952306968
		3.1201332376160208e-16 15.20160701514987 -15.201607015149877
		-1.8008994487854635e-31 13.745359952307007 -5.3372859923520964e-15
		-3.1201332376160223e-16 15.20160701514987 15.20160701514987
		-4.4125347410476637e-16 1.3768821073047147e-15 13.74535995230698
		-3.1201332376160208e-16 -15.20160701514987 15.201607015149877
		-2.6313818336251139e-31 -13.745359952307007 -2.7502742216615328e-15
		3.1201332376160228e-16 -15.20160701514987 -15.201607015149888
		4.4125347410476592e-16 -8.4166055343604791e-16 -13.745359952306968
		3.1201332376160208e-16 15.20160701514987 -15.201607015149877
		;
createNode transform -n "rtLegQd0_lwr_fkc_ofs" -p "rtLegQd0_FK";
	rename -uid "558F1717-427A-19C5-D445-0F84BE5FB9B9";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_lwr_fkc" -p "rtLegQd0_lwr_fkc_ofs";
	rename -uid "C4189C8F-4310-968A-1630-EC9BDAFA53E0";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd0_lwr_fkcShape1" -p "rtLegQd0_lwr_fkc";
	rename -uid "9F0D01A3-47A8-D6BE-7819-AAB03692028D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.1201332376160228e-16 -15.20160701514987 -15.201607015149888
		4.4125347410476592e-16 -8.4166055343604791e-16 -13.745359952306968
		3.1201332376160208e-16 15.20160701514987 -15.201607015149877
		-1.8008994487854635e-31 13.745359952307007 -5.3372859923520964e-15
		-3.1201332376160223e-16 15.20160701514987 15.20160701514987
		-4.4125347410476637e-16 1.3768821073047147e-15 13.74535995230698
		-3.1201332376160208e-16 -15.20160701514987 15.201607015149877
		-2.6313818336251139e-31 -13.745359952307007 -2.7502742216615328e-15
		3.1201332376160228e-16 -15.20160701514987 -15.201607015149888
		4.4125347410476592e-16 -8.4166055343604791e-16 -13.745359952306968
		3.1201332376160208e-16 15.20160701514987 -15.201607015149877
		;
createNode transform -n "rtLegQd0_palm_fkc_ofs" -p "rtLegQd0_FK";
	rename -uid "3584DD0F-4C99-1543-5C7F-58804E9F044A";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_palm_fkc" -p "rtLegQd0_palm_fkc_ofs";
	rename -uid "31FE2681-48E8-093E-3EEA-148D83ED896C";
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
	rename -uid "E791FEE6-4F32-5CB3-2318-C4A0A46F4754";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.1201332376160228e-16 -15.20160701514987 -15.201607015149888
		4.4125347410476592e-16 -8.4166055343604791e-16 -13.745359952306968
		3.1201332376160208e-16 15.20160701514987 -15.201607015149877
		-1.8008994487854635e-31 13.745359952307007 -5.3372859923520964e-15
		-3.1201332376160223e-16 15.20160701514987 15.20160701514987
		-4.4125347410476637e-16 1.3768821073047147e-15 13.74535995230698
		-3.1201332376160208e-16 -15.20160701514987 15.201607015149877
		-2.6313818336251139e-31 -13.745359952307007 -2.7502742216615328e-15
		3.1201332376160228e-16 -15.20160701514987 -15.201607015149888
		4.4125347410476592e-16 -8.4166055343604791e-16 -13.745359952306968
		3.1201332376160208e-16 15.20160701514987 -15.201607015149877
		;
createNode transform -n "rtLegQd0_digit_fkc_ofs" -p "rtLegQd0_FK";
	rename -uid "5EAABC9E-4D88-AF15-77A0-7D81387C0638";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_digit_fkc" -p "rtLegQd0_digit_fkc_ofs";
	rename -uid "8128BA99-4C94-9E6F-2276-13A1C336A9B5";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode transform -n "rtLegQd0_ikc_matcher" -p "rtLegQd0_digit_fkc";
	rename -uid "C44ADED2-466A-E40A-80E7-43836CB13270";
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 0 ;
	setAttr ".r" -type "double3" 25.349753547664722 1.5902773407317584e-15 -90.000000000000128 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999967 0.99999999999999967 ;
createNode nurbsCurve -n "rtLegQd0_digit_fkcShape1" -p "rtLegQd0_digit_fkc";
	rename -uid "4DD6E3FB-416F-CC12-74EF-31A36F867973";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.1201332376160228e-16 -15.20160701514987 -15.201607015149888
		4.4125347410476592e-16 -8.4166055343604791e-16 -13.745359952306968
		3.1201332376160208e-16 15.20160701514987 -15.201607015149877
		-1.8008994487854635e-31 13.745359952307007 -5.3372859923520964e-15
		-3.1201332376160223e-16 15.20160701514987 15.20160701514987
		-4.4125347410476637e-16 1.3768821073047147e-15 13.74535995230698
		-3.1201332376160208e-16 -15.20160701514987 15.201607015149877
		-2.6313818336251139e-31 -13.745359952307007 -2.7502742216615328e-15
		3.1201332376160228e-16 -15.20160701514987 -15.201607015149888
		4.4125347410476592e-16 -8.4166055343604791e-16 -13.745359952306968
		3.1201332376160208e-16 15.20160701514987 -15.201607015149877
		;
createNode transform -n "rtLegQd0_quadScap_ofs" -p "rtLegQd0_FK";
	rename -uid "4DDA705A-4C75-1C83-5E10-898DEEF8E8B9";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_quadScap" -p "rtLegQd0_quadScap_ofs";
	rename -uid "51F71C4C-40B3-BB0A-1963-E2A8ACC373CC";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "rtLegQd0_hip_fkc_ofs" -p "rtLegQd0_quadScap";
	rename -uid "075F750B-4118-4B5F-FBC9-63815584E851";
	setAttr ".t" -type "double3" 1.4210854715202004e-14 -7.1054273576010019e-15 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd0_hip_fkc" -p "rtLegQd0_hip_fkc_ofs";
	rename -uid "9DA7CE5D-4886-A7BA-FB79-7D846D11ADA3";
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
createNode nurbsCurve -n "rtLegQd0_hip_fkcShape1" -p "rtLegQd0_hip_fkc";
	rename -uid "8BF90280-42A6-43CD-33DE-5BA6A281E22B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-7.6008035075749349 29.368808413984091 7.6008035075749438
		-4.2083027671802395e-16 29.368808413984091 6.872679976153484
		7.6008035075749349 29.368808413984091 7.6008035075749385
		6.8726799761535036 29.368808413984091 2.6686429961760482e-15
		7.6008035075749349 29.368808413984091 -7.6008035075749349
		6.8844105365235737e-16 29.368808413984091 -6.8726799761534902
		-7.6008035075749349 29.368808413984091 -7.6008035075749385
		-6.8726799761535036 29.368808413984091 1.3751371108307664e-15
		-7.6008035075749349 29.368808413984091 7.6008035075749438
		-4.2083027671802395e-16 29.368808413984091 6.872679976153484
		7.6008035075749349 29.368808413984091 7.6008035075749385
		;
	setAttr ".adot" yes;
createNode joint -n "rtLegQd0_autoAim" -p "rtLegQd0_quadScap_ofs";
	rename -uid "BFBDF09F-4696-5A91-0AC6-BA8281964ABF";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0 0 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -2.5444437451708134e-14 5.5851701051990014e-30 4.1888775788992493e-30 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 82.394063399708813 25.856571386686912 1.3565191641343393 ;
	setAttr ".radi" 4.4053212620976137;
createNode joint -n "rtLegQd0_autoAim_end" -p "rtLegQd0_autoAim";
	rename -uid "8B872F51-4891-375C-E1D4-C5B997C04528";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -129.48117859460811 2.8421709430404007e-14 2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.5902773407317584e-14 -9.9392333795735565e-17 -2.4102640945465713e-15 ;
	setAttr ".radi" 4.4053212620976137;
createNode ikEffector -n "effector21" -p "rtLegQd0_autoAim";
	rename -uid "D8E7ED5F-4F84-B2D8-8849-EA9272ED071A";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegQd0_ballOfsG" -p "rtLegQd0_FK";
	rename -uid "FA22BE7F-4A18-71AD-DCA6-FD97214EFB76";
	setAttr ".t" -type "double3" -15.523391963176577 19.503393516111906 -71.732926909484391 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fkc_ofs" -p "rtLegQd0_ballOfsG";
	rename -uid "9CA8B376-4F96-3253-E9D4-4FB5ABCE2D36";
	setAttr ".t" -type "double3" 4.5583700369888902e-08 -9.1043989174827633 4.3133094860666716 ;
	setAttr ".r" -type "double3" 0 32.957168196437422 90.000000000000142 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "rtLegQd0_ball_fkc_ofs1" -p "rtLegQd0_ball_fkc_ofs";
	rename -uid "FD23116C-4D20-60BC-A7BA-99AC576EECEF";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fkc" -p "rtLegQd0_ball_fkc_ofs1";
	rename -uid "9806F259-4B3C-8308-954B-CE89929C114C";
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
createNode ikHandle -n "rtLegQd0_3_ikh" -p "rtLegQd0_ball_fkc";
	rename -uid "57C8D92C-4344-62EA-9FAB-8692A2429293";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -10.469369336234827 -3.7481129311345285e-13 3.5527136788005009e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.54401192967804557 1.5856615372037163e-17 0.83907748174287744 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_ball_fk_SPACE_1_ofs" -p "rtLegQd0_ball_fkc";
	rename -uid "AF221A3C-45AA-4BFF-8D95-74A737A9E2BF";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 5.3290705182007514e-15 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fk_SPACE_1" -p "rtLegQd0_ball_fk_SPACE_1_ofs";
	rename -uid "F920BEAA-4699-DABE-5A89-19AFB3AEAE0C";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode nurbsCurve -n "rtLegQd0_ball_fkcShape1" -p "rtLegQd0_ball_fkc";
	rename -uid "1F620BAD-4F09-F881-FBF6-83A8544CBB11";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.5600666188080114e-16 -7.6008035075749349 -7.6008035075749438
		2.2062673705238296e-16 -4.2083027671802395e-16 -6.872679976153484
		1.5600666188080104e-16 7.6008035075749349 -7.6008035075749385
		-9.0044972439273177e-32 6.8726799761535036 -2.6686429961760482e-15
		-1.5600666188080111e-16 7.6008035075749349 7.6008035075749349
		-2.2062673705238318e-16 6.8844105365235737e-16 6.8726799761534902
		-1.5600666188080104e-16 -7.6008035075749349 7.6008035075749385
		-1.3156909168125572e-31 -6.8726799761535036 -1.3751371108307664e-15
		1.5600666188080114e-16 -7.6008035075749349 -7.6008035075749438
		2.2062673705238296e-16 -4.2083027671802395e-16 -6.872679976153484
		1.5600666188080104e-16 7.6008035075749349 -7.6008035075749385
		;
createNode transform -n "rtLegQd0_IK" -p "rtLegQd0_ctl_data";
	rename -uid "8B3C7376-4195-C153-B906-CD9599611EFC";
	setAttr -cb on ".ro";
createNode joint -n "rtLegQd0_hip_ik" -p "rtLegQd0_IK";
	rename -uid "DF7F328E-4869-F200-3070-AC94973B88AB";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -0.4445444900148342 -40.556921681718677 91.203111579680282 ;
	setAttr ".radi" 4.4053212620976137;
createNode joint -n "rtLegQd0_upr_ik" -p "rtLegQd0_hip_ik";
	rename -uid "CE9E2D3E-4D2D-2CC5-8D8D-0A8D1E5A9186";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -17.68117040306268 -1.0658141036401503e-14 -4.2632564145606011e-14 ;
	setAttr ".r" -type "double3" 3.0758205386872174e-15 -1.8211614282110064e-05 -6.8645654245885525e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.1972115281030429 49.99914152386615 1.1394186714720711 ;
	setAttr ".radi" 4.4053212620976137;
createNode joint -n "rtLegQd0_lwr_ik" -p "rtLegQd0_upr_ik";
	rename -uid "8892179B-40FA-CC35-348D-D18D9F03EE21";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -33.4136531826069 2.1316282072803006e-14 0 ;
	setAttr ".r" -type "double3" -7.9383315682451448e-21 2.924953092262891e-05 3.1163994696781127e-21 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -39.26141104683942 0 ;
	setAttr ".radi" 4.4053212620976137;
createNode joint -n "rtLegQd0_palm_ik" -p "rtLegQd0_lwr_ik";
	rename -uid "32054B85-45AC-A749-0002-72B8F3B14AB6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -52.361233699535909 -1.4210854715202004e-14 4.2632564145606011e-14 ;
	setAttr ".r" -type "double3" 4.6072023907348337e-07 -8.407834061969807e-06 1.3239470599299745e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 2.9108749191793124 29.928640724604978 -2.653909855982886 ;
	setAttr ".radi" 4.4053212620976137;
createNode joint -n "rtLegQd0_digit_ik" -p "rtLegQd0_palm_ik";
	rename -uid "DC00631E-4A1D-22A1-8493-089D7CB65CA6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -33.446580381212527 -1.4005593129695626e-08 -0.87208095837004862 ;
	setAttr ".r" -type "double3" 5.1520168072333578e-08 1.5022191294562952e-05 1.326557079787365e-06 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 25.349753547664722 0 ;
	setAttr ".radi" 4.4053212620976137;
createNode joint -n "rtLegQd0_ball_ik" -p "rtLegQd0_digit_ik";
	rename -uid "A637661F-4B8E-6485-E934-B9A3F5F4A259";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -10.074464736819678 1.4005614445977699e-08 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 1.041212790100965e-07 -1.3275761145634533e-05 -3.9381499492376504e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 7.6074146487726635 0 ;
	setAttr ".radi" 4.4053212620976137;
createNode joint -n "rtLegQd0_tip_ik" -p "rtLegQd0_ball_ik";
	rename -uid "39479695-48E2-42D1-D6B5-4EACE94FA36E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -10.469369336234713 -3.8546943414985435e-13 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 57.042831803562613 0 ;
	setAttr ".radi" 4.4053212620976137;
createNode ikEffector -n "effector19" -p "rtLegQd0_ball_ik";
	rename -uid "9F57338E-498B-A736-9763-49BB4469AD03";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector18" -p "rtLegQd0_digit_ik";
	rename -uid "AB6D2C71-41DD-BEF0-AB77-EE9D25914DAE";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector17" -p "rtLegQd0_palm_ik";
	rename -uid "E9268BDC-40AE-C98D-D061-348CFD6C1024";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector16" -p "rtLegQd0_lwr_ik";
	rename -uid "AC2ACA3A-4ED2-339A-D29C-EEBF831E62C7";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "rtLegQd0_softJ" -p "rtLegQd0_hip_ik";
	rename -uid "2BC92656-4CDC-F3FF-6B0D-709F22313E48";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -17.681170403062708 -1.0658141036401503e-14 -7.1054273576010019e-14 ;
	setAttr ".r" -type "double3" 2.5444437451708134e-14 -1.3385536108980434e-29 4.4618453696601411e-30 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 78.798557212787003 25.889347981847028 2.5920082035223211 ;
createNode joint -n "rtLegQd0_softJ_end" -p "rtLegQd0_softJ";
	rename -uid "727BCD38-4AF7-6FC7-7E4B-BE9FDA22BE3F";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -81.039833068847656 4.2632564145606011e-14 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -6.3611093629270335e-15 -4.9696166897867715e-17 -2.3357198441997701e-15 ;
createNode ikEffector -n "effector20" -p "rtLegQd0_softJ";
	rename -uid "E06F9F88-4177-BA2B-8448-BCBB63C73D30";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegQd0_pvc_SPACE_1_ofs" -p "rtLegQd0_softJ";
	rename -uid "FB2F974A-429A-4F1A-8BE4-B3ADA78C6999";
	setAttr ".t" -type "double3" -28.424184261466166 54.762031103210347 8.5927311880936763 ;
	setAttr ".r" -type "double3" 11.984909019107683 -80.893273398500142 -105.00298334899053 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "rtLegQd0_pvc_SPACE_1" -p "rtLegQd0_pvc_SPACE_1_ofs";
	rename -uid "C9E40C4C-41DB-7800-6857-5CBCB5FF5C53";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -1.4210854715202004e-14 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd0_ikCstG" -p "rtLegQd0_IK";
	rename -uid "B2BC74E3-4321-AC91-3595-EB958C4CDB76";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_heelRollG" -p "rtLegQd0_ikCstG";
	rename -uid "D5E71286-4850-DC42-81A1-D89493CDE2A0";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -52.94998065951183 2.4358432339674749 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_heelRollG_ctl" -p "rtLegQd0_heelRollG";
	rename -uid "6CA975DB-4A8A-1000-75C5-20A5996CBDA7";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_toeRollG" -p "rtLegQd0_heelRollG_ctl";
	rename -uid "0EA3F133-4D1C-5A5C-15CF-86B106594EE7";
	setAttr ".t" -type "double3" 5.3290705182007514e-15 0 9.3326704530138898 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_toeRollG_ctl" -p "rtLegQd0_toeRollG";
	rename -uid "75290B22-4746-C801-9648-58AB829389D0";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_footRollG" -p "rtLegQd0_toeRollG_ctl";
	rename -uid "EFE58393-49FE-5EDB-15A6-8D8BB9B455CA";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_outRollG" -p "rtLegQd0_footRollG";
	rename -uid "7A96AEF0-44C8-266D-686E-9380AA5C0971";
	setAttr ".t" -type "double3" -3.5372928082839348 0 -5.3574798206579004 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_outRollG_ctl" -p "rtLegQd0_outRollG";
	rename -uid "DE0084EA-48B1-C38D-74D3-57AEBB7743A6";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_inRollG" -p "rtLegQd0_outRollG_ctl";
	rename -uid "D8B621C4-4B9B-E304-F14C-6CA9EC06888C";
	setAttr ".t" -type "double3" 7.4397110921252363 0 0.11244156340003997 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_inRollG_ctl" -p "rtLegQd0_inRollG";
	rename -uid "6DBBF1E5-45F8-2D06-AB8B-D2A5D281EEEE";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_ballRollG" -p "rtLegQd0_inRollG_ctl";
	rename -uid "4DD041E6-401B-2CDD-2CCC-16AC73024DC9";
	setAttr ".t" -type "double3" -3.9024182838412571 10.39899459862907 -3.0822471071108026 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ballG_ikc" -p "rtLegQd0_ballRollG";
	rename -uid "5D4A03AC-4569-5301-5029-22A74F5AF131";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_extraRollG_ofs" -p "rtLegQd0_ballG_ikc";
	rename -uid "54A26249-4CB8-C018-E583-89A6CF360D38";
	setAttr ".t" -type "double3" 1.4005589576981947e-08 9.1044056796702257 -4.313309280982736 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_extraRollG_ofs1" -p "rtLegQd0_extraRollG_ofs";
	rename -uid "956519EC-4786-217F-3FE3-7BBEDC3EA447";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 0 ;
	setAttr ".r" -type "double3" 169.19376261129028 0 92.34966329008391 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "rtLegQd0_extraRollG" -p "rtLegQd0_extraRollG_ofs1";
	rename -uid "F2D04C6B-477D-5BCD-BB5D-7A9E5910AD26";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_extra_ikc" -p "rtLegQd0_extraRollG";
	rename -uid "56E61729-41E4-A293-FC80-808A6F67FBEE";
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
createNode transform -n "rtLegQd0_extraRollG_ofs2" -p "rtLegQd0_extra_ikc";
	rename -uid "474FFF6D-4EDB-E8F4-20E7-2D87B176E6A6";
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd0_X_ikh" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "A9064240-4B31-E743-C771-6BB7DA49AFE7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -7.1054273576010019e-15 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 0 0 90.000000000000085 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 1.0000000000000002 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_dist_loc1" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "30C6D621-4B7F-702B-D81E-0DB54181A502";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.4005633985902932e-08 33.446580381212527 0.87208095837004862 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode locator -n "rtLegQd0_dist_loc1Shape" -p "rtLegQd0_dist_loc1";
	rename -uid "42376BA8-4B11-3846-B8F2-8BBE7F59C784";
	setAttr -k off ".v";
createNode transform -n "rtLegQd0_softJ_posGrp" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "B7FE14DB-48B8-704F-B22F-AFB2EBD86A00";
	setAttr ".t" -type "double3" -1.4005637538616611e-08 33.446580381212506 0.8720809583700202 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "rtLegQd0_1_ikh_ofs" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "3F585C75-44CF-FEE1-B89D-2BB929AC18B4";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode ikHandle -n "rtLegQd0_1_ikh" -p "rtLegQd0_1_ikh_ofs";
	rename -uid "32CC8640-4154-611F-CAD8-3E8EC15881B4";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode nurbsCurve -n "rtLegQd0_extra_ikcShape1" -p "rtLegQd0_extra_ikc";
	rename -uid "2C6EDACB-40BA-F5BE-80BB-3DA5E219E5A6";
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
		8.767029756030162 14.684404206992046 0
		8.1399704600920977 18.056090223242627 0
		6.2300640041746318 20.914468211166678 0
		3.3716860162505826 22.824374667084143 0
		0 23.451228381365365 0
		-3.3716860162505826 22.824374667084143 0
		-6.2300640041746318 20.914468211166678 0
		-8.1399704600920977 18.056090223242627 0
		-8.767029756030162 14.684403791616658 0
		-8.1399704600920977 11.312718190741464 0
		-6.2300640041746318 8.4543402028174128 0
		-3.3716860162505826 6.5444337468999478 0
		3.5010321209739915e-07 5.9175800326187264 -0.059612806722576836
		3.3716860162505826 6.5444337468999478 0
		6.2300640041746318 8.4543402028174128 0
		8.1399704600920977 11.312718190741464 0
		8.767029756030162 14.684404206992046 0
		8.0996764553510516 14.707217662189427 -3.354922300575518
		6.1992267556483229 14.726558314564199 -6.1990916591309686
		3.3549986594766308 14.739481294988524 -8.0995002425023301
		3.5010321209739915e-07 14.744019363219271 -8.7668359218965701
		-3.3549986594766308 14.739481294988524 -8.0995002425023301
		-6.1992267556483229 14.726558314564199 -6.1990916591309686
		-8.0996764553510516 14.707217662189427 -3.354922300575518
		-8.767029756030162 14.684403791616658 0
		-8.0996764553510516 14.661589929468038 3.35491055305227
		-6.1992267556483229 14.642249277093265 6.199085785369344
		-3.3549986594766308 14.629326296668939 8.0994884949790826
		3.5010321209739915e-07 14.624788463388656 8.7668241743733191
		3.3549986594766308 14.629326296668939 8.0994884949790826
		6.1992267556483229 14.642249277093265 6.199085785369344
		8.0996764553510516 14.661589929468038 3.35491055305227
		8.767029756030162 14.684404206992046 0
		8.0996764553510516 14.707217662189427 -3.354922300575518
		6.1992267556483229 14.726558314564199 -6.1990916591309686
		3.3549986594766308 14.739481294988524 -8.0995002425023301
		3.5010321209739915e-07 14.744019363219271 -8.7668359218965701
		3.5010321209739915e-07 18.094398896554743 -8.0766806785928598
		3.5010321209739915e-07 20.925640105775638 -6.1569356719550958
		3.5010321209739915e-07 22.806706392118976 -3.2998440378267149
		0 23.451228381365365 0
		3.5010321209739915e-07 22.761079011823284 3.4099946895626969
		3.5010321209739915e-07 20.841334005185516 6.2412300250219701
		3.5010321209739915e-07 17.984248244818762 8.1223021851269284
		3.5010321209739915e-07 14.624788463388656 8.7668241743733191
		3.5010321209739915e-07 11.274409517429348 8.0766689310696123
		3.5010321209739915e-07 8.4431683082084525 6.1569239244318474
		3.5010321209739915e-07 6.5621020218651172 3.2998322903034665
		3.5010321209739915e-07 5.9175800326187264 -0.059612806722576836
		3.5010321209739915e-07 6.6077294021608086 -3.4100064370859453
		3.5010321209739915e-07 8.5274744087985752 -6.2412417725452167
		3.5010321209739915e-07 11.384560169165331 -8.1223139326501776
		3.5010321209739915e-07 14.744019363219271 -8.7668359218965701
		;
createNode nurbsCurve -n "rtLegQd0_ballG_ikcShape1" -p "rtLegQd0_ballG_ikc";
	rename -uid "B705AA52-4471-E126-9460-47AAF5660E01";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 25 0 no 3
		26 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		26
		-9.0949050292498286e-17 13.19909346667078 8.0287305223426462e-16
		-8.7850033849505799e-17 13.249704425536965 0.3844266900309164
		-7.8764187309291219e-17 13.398087615859732 0.7426553118100534
		-6.4310685573528617e-17 13.634131115567881 1.0502732081253241
		-4.5474525146249143e-17 13.941748836831412 1.2863168245346333
		-2.3539345036869325e-17 14.299977516961128 1.4346998981562404
		2.7850932807213192e-32 14.684404206992046 1.4853106236201068
		2.3539345036869325e-17 15.068830897022963 1.4346998981562404
		4.5474525146249143e-17 15.427059577152679 1.2863168245346333
		6.4310685573528617e-17 15.73467729841621 1.0502732081253241
		7.8764187309291219e-17 15.970721731733637 0.7426553118100534
		8.7850033849505799e-17 16.119103988447126 0.3844266900309164
		9.0949050292498286e-17 16.169714947313313 4.3889724901176973e-16
		8.7850033849505799e-17 16.119103988447126 -0.3844266900309164
		7.8764187309291219e-17 15.970721731733637 -0.7426553118100534
		6.4310685573528617e-17 15.73467729841621 -1.0502732081253241
		4.5474525146249143e-17 15.427059577152679 -1.2863168245346333
		2.3539345036869325e-17 15.068830897022963 -1.4346998981562404
		-6.804513169869663e-32 14.684404206992046 -1.4853106236201068
		-2.3539345036869325e-17 14.299977516961128 -1.4346998981562404
		-4.5474525146249143e-17 13.941748836831412 -1.2863168245346333
		-6.4310685573528617e-17 13.634131115567881 -1.0502732081253241
		-7.8764187309291219e-17 13.398087615859732 -0.7426553118100534
		-8.7850033849505799e-17 13.249704425536965 -0.3844266900309164
		-9.0949050292498286e-17 13.19909346667078 8.0287305223426462e-16
		0 0 0
		;
createNode transform -n "rtLegQd0_toe_wiggle_grp" -p "rtLegQd0_inRollG_ctl";
	rename -uid "E092D563-4F2D-B6BB-AB02-FA83C0588E21";
	setAttr ".t" -type "double3" -3.9024182838412571 10.39899459862907 -3.0822471071108026 ;
	setAttr ".r" -type "double3" 0 32.957168196437401 90.000000000000156 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
createNode ikHandle -n "rtLegQd0_2_ikh" -p "rtLegQd0_toe_wiggle_grp";
	rename -uid "6D6F6771-4178-63D5-6D21-0ABAA93CD9E2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -7.1054273576010019e-15 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 0 -7.6074146487726493 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.54401192967804557 -3.0829415794134307e-18 0.83907748174287788 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_2_ofs" -p "rtLegQd0_toe_wiggle_grp";
	rename -uid "6E27363F-497A-2DF1-D96E-5A8F736F46C1";
	setAttr ".t" -type "double3" 9.9475983006414026e-14 -2.6645352591003757e-14 -4.2632564145606011e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000004 ;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_2" -p "rtLegQd0_ball_fkc_SPACE_2_ofs";
	rename -uid "D397F31A-4208-C51D-F177-7EAD1CBF7500";
	setAttr ".t" -type "double3" 0 -5.3290705182007514e-15 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1.0000000000000002 ;
createNode nurbsCurve -n "rtLegQd0_inRollG_ctlShape1" -p "rtLegQd0_inRollG_ctl";
	rename -uid "0DA349CB-40A0-D85D-845B-A3A30C2A00CE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.90859751030763281
		-0.90859751030763281 0 0
		0 0 -0.90859751030763281
		0.90859751030763281 0 0
		0 0 0.90859751030763281
		0 0.90859751030763281 0
		0.90859751030763281 0 0
		0 0 -0.90859751030763281
		0 0.90859751030763281 0
		-0.90859751030763281 0 0
		0 -0.90859751030763281 0
		0.90859751030763281 0 0
		0 0 0.90859751030763281
		0 -0.90859751030763281 0
		0 0 -0.90859751030763281
		;
createNode nurbsCurve -n "rtLegQd0_outRollG_ctlShape1" -p "rtLegQd0_outRollG_ctl";
	rename -uid "ADB2DB1C-4730-7913-58D4-41B911627E3F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.90859751030763281
		-0.90859751030763281 0 0
		0 0 -0.90859751030763281
		0.90859751030763281 0 0
		0 0 0.90859751030763281
		0 0.90859751030763281 0
		0.90859751030763281 0 0
		0 0 -0.90859751030763281
		0 0.90859751030763281 0
		-0.90859751030763281 0 0
		0 -0.90859751030763281 0
		0.90859751030763281 0 0
		0 0 0.90859751030763281
		0 -0.90859751030763281 0
		0 0 -0.90859751030763281
		;
createNode nurbsCurve -n "rtLegQd0_toeRollG_ctlShape1" -p "rtLegQd0_toeRollG_ctl";
	rename -uid "2B07FB6D-45CA-9502-3856-E9AAEDDBA595";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.90859751030763281
		-0.90859751030763281 0 0
		0 0 -0.90859751030763281
		0.90859751030763281 0 0
		0 0 0.90859751030763281
		0 0.90859751030763281 0
		0.90859751030763281 0 0
		0 0 -0.90859751030763281
		0 0.90859751030763281 0
		-0.90859751030763281 0 0
		0 -0.90859751030763281 0
		0.90859751030763281 0 0
		0 0 0.90859751030763281
		0 -0.90859751030763281 0
		0 0 -0.90859751030763281
		;
createNode nurbsCurve -n "rtLegQd0_heelRollG_ctlShape1" -p "rtLegQd0_heelRollG_ctl";
	rename -uid "E8D0AD38-4C13-CFE7-775F-488F32E012D7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.90859751030763281
		-0.90859751030763281 0 0
		0 0 -0.90859751030763281
		0.90859751030763281 0 0
		0 0 0.90859751030763281
		0 0.90859751030763281 0
		0.90859751030763281 0 0
		0 0 -0.90859751030763281
		0 0.90859751030763281 0
		-0.90859751030763281 0 0
		0 -0.90859751030763281 0
		0.90859751030763281 0 0
		0 0 0.90859751030763281
		0 -0.90859751030763281 0
		0 0 -0.90859751030763281
		;
createNode transform -n "rtLegQd0_line_53" -p "rtLegQd0_IK";
	rename -uid "B3C46E30-4631-3730-CF96-F29896FE014E";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape3" -p "rtLegQd0_line_53";
	rename -uid "B65F23DC-43C0-B7CC-91EC-BD87FE108AD7";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-19.269965228252573 98.280037917404968 -44.921547604324026
		-21.943537102019544 89.595871220417649 -4.100216345217337
		;
createNode transform -n "rtLegQd0_ikc_ofs" -p "rtLegQd0_IK";
	rename -uid "38B6063F-43C3-89F5-6256-3894756F9CA9";
	setAttr ".t" -type "double3" -15.523391903587317 19.503400278299296 -71.732926704400398 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ikc_ofs1" -p "rtLegQd0_ikc_ofs";
	rename -uid "4D060BCF-4563-9FE7-DCE9-B3826C447E94";
createNode transform -n "rtLegQd0_ikc" -p "rtLegQd0_ikc_ofs1";
	rename -uid "4BF855D4-4A5A-0282-B868-C0A4342A5701";
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
createNode transform -n "rtLegQd0_ikc_gmb" -p "rtLegQd0_ikc";
	rename -uid "86204ABE-4E77-7A13-3245-1296AEF98E25";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
createNode nurbsCurve -n "rtLegQd0_ikc_gmbShapeOrig" -p "rtLegQd0_ikc_gmb";
	rename -uid "3113DE0D-4F39-83C2-129A-39AB172E1AD9";
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
		11.013303155244024 -19.503400278299292 11.013303155244037
		10.801685623281793 -19.503400278299292 13.161892014261834
		10.174965370471929 -19.503400278299292 15.227911808370093
		9.1572269046611474 -19.503400278299292 17.131966555518481
		7.7875813443362514 -19.503400278299292 18.800884499580285
		6.1186634002744427 -19.503400278299292 20.170530059905186
		4.2146086531260556 -19.503400278299292 21.188268525715966
		2.1485888590177975 -19.503400278299292 21.814988778525834
		-1.2857314598618926e-15 -19.503400278299292 22.026606310488059
		-2.1485888590177997 -19.503400278299292 21.814988778525834
		-4.2146086531260591 -19.503400278299292 21.188268525715966
		-6.1186634002744471 -19.503400278299292 20.170530059905186
		-7.7875813443362558 -19.503400278299292 18.800884499580288
		-9.1572269046611527 -19.503400278299292 17.131966555518481
		-10.174965370471934 -19.503400278299292 15.227911808370093
		-10.8016856232818 -19.503400278299292 13.161892014261833
		-11.013303155244031 -19.503400278299292 11.013303155244031
		-10.801685558329579 -16.205347580843942 11.013303155244035
		-10.174965321290573 -12.993953644924108 11.013303155244035
		-9.15722711273024 -10.213082849597757 11.013303155244035
		-7.7875813423462841 -8.0002941607547076 11.013303155244035
		-6.118663267318146 -6.3339916919262578 11.013303155244035
		-4.2146085189420077 -5.316253483365923 11.013303155244035
		-2.1485888117708067 -4.6895332463269188 11.013303155244035
		6.7437032312982447e-16 -4.4779156494124646 11.013303155244035
		2.1485888117708067 -4.6895332463269188 11.013303155244035
		4.2146085189420077 -5.316253483365923 11.013303155244035
		6.118663267318146 -6.3339916919262578 11.013303155244035
		7.7875813423462841 -8.0002941607547076 11.013303155244035
		9.15722711273024 -10.213082849597757 11.013303155244035
		10.174965321290573 -12.993953644924108 11.013303155244035
		10.801685558329579 -16.205347580843942 11.013303155244035
		11.013303155244035 -19.503400278299292 11.013303155244035
		11.013303155244035 -19.503400278299296 -10.352504965929391
		11.013303155244035 -18.842602088984648 -11.013303155244035
		10.801685558329579 -16.205347580843942 -11.013303155244035
		10.174965321290573 -12.993953644924108 -11.013303155244035
		9.15722711273024 -10.213082849597757 -11.013303155244035
		7.7875813423462841 -8.0002941607547076 -11.013303155244035
		6.118663267318146 -6.3339916919262578 -11.013303155244035
		4.2146085189420077 -5.316253483365923 -11.013303155244035
		2.1485888117708067 -4.6895332463269188 -11.013303155244035
		6.7437032312982447e-16 -4.4779156494124646 -11.013303155244035
		-2.1485888117708067 -4.6895332463269188 -11.013303155244035
		-4.2146085189420077 -5.316253483365923 -11.013303155244035
		-6.118663267318146 -6.3339916919262578 -11.013303155244035
		-7.7875813423462841 -8.0002941607547076 -11.013303155244035
		-9.15722711273024 -10.213082849597757 -11.013303155244035
		-10.174965321290573 -12.993953644924108 -11.013303155244035
		-10.801685558329579 -16.205347580843942 -11.013303155244035
		-11.013303155244035 -18.842602088984648 -11.013303155244035
		-11.013303155244035 -19.503400278299292 -10.352504965929391
		-11.013303155244035 -19.503400278299292 11.013303155244035
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode transform -n "rtLegQd0_smart_ctl_ofs" -p "rtLegQd0_ikc_gmb";
	rename -uid "5EDA939A-4B60-0A98-415C-9BA393F86A4B";
	setAttr ".t" -type "double3" -1.4005630433189253e-08 -19.503400278299303 12.640594645351428 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_smart_ctl" -p "rtLegQd0_smart_ctl_ofs";
	rename -uid "AD27C073-48EB-F582-F75C-ADB45280F19D";
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
	rename -uid "8F5DB513-48DC-0E6B-A83F-8BB77267C55D";
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
		5.0672023383832894 1.0400444125386743e-16 -5.0672023383832956
		2.8055351781201599e-16 1.4708449136825532e-16 -4.5817866507689891
		-5.0672023383832894 1.0400444125386737e-16 -5.067202338383292
		-4.5817866507690024 -6.0029981626182118e-32 -1.7790953307840324e-15
		-5.0672023383832894 -1.0400444125386741e-16 5.0672023383832894
		-4.5896070243490491e-16 -1.4708449136825547e-16 4.5817866507689935
		5.0672023383832894 -1.0400444125386737e-16 5.067202338383292
		4.5817866507690024 -8.7712727787503791e-32 -9.1675807388717767e-16
		5.0672023383832894 1.0400444125386743e-16 -5.0672023383832956
		2.8055351781201599e-16 1.4708449136825532e-16 -4.5817866507689891
		-5.0672023383832894 1.0400444125386737e-16 -5.067202338383292
		;
createNode nurbsCurve -n "rtLegQd0_ikc_gmbShape1" -p "rtLegQd0_ikc_gmb";
	rename -uid "8BA2A1F2-4243-6484-EB18-F68D76B3DC0E";
	setAttr -k off ".v" no;
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
		8.8106425241952202 -18.000851879286159 9.9119728044991842
		8.641348498625435 -18.000851879286159 11.630843891713424
		8.1399722963775432 -18.000851879286159 13.28365972700003
		7.3257815237289181 -18.000851879286159 14.806903524718741
		6.2300650754690015 -18.000851879286159 16.142037879968186
		4.8949307202195547 -18.000851879286159 17.237754328228103
		3.3716869225008446 -18.000851879286159 18.051945100876729
		1.7188710872142381 -18.000851879286159 18.553321303124623
		-1.0285851678895142e-15 -18.000851879286159 18.722615328694403
		-1.7188710872142399 -18.000851879286159 18.553321303124623
		-3.3716869225008477 -18.000851879286159 18.051945100876729
		-4.8949307202195582 -18.000851879286159 17.237754328228103
		-6.230065075469005 -18.000851879286159 16.142037879968186
		-7.3257815237289226 -18.000851879286159 14.806903524718741
		-8.1399722963775485 -18.000851879286159 13.28365972700003
		-8.6413484986254403 -18.000851879286159 11.630843891713422
		-8.8106425241952255 -18.000851879286159 9.9119728044991806
		-8.6413484466636632 -15.362409721321882 9.9119728044991842
		-8.1399722570324595 -12.793294572586015 9.9119728044991842
		-7.3257816901841926 -10.568597936324934 9.9119728044991842
		-6.2300650738770278 -8.7983669852504942 9.9119728044991842
		-4.894930613854517 -7.4653250101877342 9.9119728044991842
		-3.3716868151536064 -6.6511344433394664 9.9119728044991842
		-1.7188710494166455 -6.1497582537082627 9.9119728044991842
		5.3949625850385959e-16 -5.9804641761766995 9.9119728044991842
		1.7188710494166455 -6.1497582537082627 9.9119728044991842
		3.3716868151536064 -6.6511344433394664 9.9119728044991842
		4.894930613854517 -7.4653250101877342 9.9119728044991842
		6.2300650738770278 -8.7983669852504942 9.9119728044991842
		7.3257816901841926 -10.568597936324934 9.9119728044991842
		8.1399722570324595 -12.793294572586015 9.9119728044991842
		8.6413484466636632 -15.362409721321882 9.9119728044991842
		8.8106425241952291 -18.000851879286159 9.9119728044991842
		8.8106425241952291 -18.000851879286166 -7.1806736924395587
		8.8106425241952291 -17.472213327834446 -7.709312243891274
		8.6413484466636632 -15.362409721321882 -7.709312243891274
		8.1399722570324595 -12.793294572586015 -7.709312243891274
		7.3257816901841926 -10.568597936324934 -7.709312243891274
		6.2300650738770278 -8.7983669852504942 -7.709312243891274
		4.894930613854517 -7.4653250101877342 -7.709312243891274
		3.3716868151536064 -6.6511344433394664 -7.709312243891274
		1.7188710494166455 -6.1497582537082627 -7.709312243891274
		5.3949625850385959e-16 -5.9804641761766995 -7.709312243891274
		-1.7188710494166455 -6.1497582537082627 -7.709312243891274
		-3.3716868151536064 -6.6511344433394664 -7.709312243891274
		-4.894930613854517 -7.4653250101877342 -7.709312243891274
		-6.2300650738770278 -8.7983669852504942 -7.709312243891274
		-7.3257816901841926 -10.568597936324934 -7.709312243891274
		-8.1399722570324595 -12.793294572586015 -7.709312243891274
		-8.6413484466636632 -15.362409721321882 -7.709312243891274
		-8.8106425241952291 -17.472213327834446 -7.709312243891274
		-8.8106425241952291 -18.000851879286159 -7.1806736924395587
		-8.8106425241952291 -18.000851879286159 9.9119728044991842
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode ikHandle -n "rtLegQd0_autoAimJ_ikh" -p "rtLegQd0_ikc";
	rename -uid "B4384E1C-4B0F-135E-DB08-DA990B1DD1B8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -4.2632564145606011e-14 0 ;
	setAttr ".r" -type "double3" 81.13320478851989 -14.683789664808227 92.264529372069148 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "rtLegQd0_ikcShape1" -p "rtLegQd0_ikc";
	rename -uid "3DA0F75E-4DDD-F0C2-871B-5DB4BA0AD7AA";
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
		11.013303155244024 -19.503400278299292 11.013303155244037
		10.801685623281793 -19.503400278299292 13.161892014261834
		10.174965370471929 -19.503400278299292 15.227911808370093
		9.1572269046611474 -19.503400278299292 17.131966555518481
		7.7875813443362514 -19.503400278299292 18.800884499580285
		6.1186634002744427 -19.503400278299292 20.170530059905186
		4.2146086531260556 -19.503400278299292 21.188268525715966
		2.1485888590177975 -19.503400278299292 21.814988778525834
		-1.2857314598618926e-15 -19.503400278299292 22.026606310488059
		-2.1485888590177997 -19.503400278299292 21.814988778525834
		-4.2146086531260591 -19.503400278299292 21.188268525715966
		-6.1186634002744471 -19.503400278299292 20.170530059905186
		-7.7875813443362558 -19.503400278299292 18.800884499580288
		-9.1572269046611527 -19.503400278299292 17.131966555518481
		-10.174965370471934 -19.503400278299292 15.227911808370093
		-10.8016856232818 -19.503400278299292 13.161892014261833
		-11.013303155244031 -19.503400278299292 11.013303155244031
		-10.801685558329579 -16.205347580843942 11.013303155244035
		-10.174965321290573 -12.993953644924108 11.013303155244035
		-9.15722711273024 -10.213082849597757 11.013303155244035
		-7.7875813423462841 -8.0002941607547076 11.013303155244035
		-6.118663267318146 -6.3339916919262578 11.013303155244035
		-4.2146085189420077 -5.316253483365923 11.013303155244035
		-2.1485888117708067 -4.6895332463269188 11.013303155244035
		6.7437032312982447e-16 -4.4779156494124646 11.013303155244035
		2.1485888117708067 -4.6895332463269188 11.013303155244035
		4.2146085189420077 -5.316253483365923 11.013303155244035
		6.118663267318146 -6.3339916919262578 11.013303155244035
		7.7875813423462841 -8.0002941607547076 11.013303155244035
		9.15722711273024 -10.213082849597757 11.013303155244035
		10.174965321290573 -12.993953644924108 11.013303155244035
		10.801685558329579 -16.205347580843942 11.013303155244035
		11.013303155244035 -19.503400278299292 11.013303155244035
		11.013303155244035 -19.503400278299296 -10.352504965929391
		11.013303155244035 -18.842602088984648 -11.013303155244035
		10.801685558329579 -16.205347580843942 -11.013303155244035
		10.174965321290573 -12.993953644924108 -11.013303155244035
		9.15722711273024 -10.213082849597757 -11.013303155244035
		7.7875813423462841 -8.0002941607547076 -11.013303155244035
		6.118663267318146 -6.3339916919262578 -11.013303155244035
		4.2146085189420077 -5.316253483365923 -11.013303155244035
		2.1485888117708067 -4.6895332463269188 -11.013303155244035
		6.7437032312982447e-16 -4.4779156494124646 -11.013303155244035
		-2.1485888117708067 -4.6895332463269188 -11.013303155244035
		-4.2146085189420077 -5.316253483365923 -11.013303155244035
		-6.118663267318146 -6.3339916919262578 -11.013303155244035
		-7.7875813423462841 -8.0002941607547076 -11.013303155244035
		-9.15722711273024 -10.213082849597757 -11.013303155244035
		-10.174965321290573 -12.993953644924108 -11.013303155244035
		-10.801685558329579 -16.205347580843942 -11.013303155244035
		-11.013303155244035 -18.842602088984648 -11.013303155244035
		-11.013303155244035 -19.503400278299292 -10.352504965929391
		-11.013303155244035 -19.503400278299292 11.013303155244035
		;
createNode transform -n "rtLegQd0_pvc_ofs" -p "rtLegQd0_IK";
	rename -uid "1EFBF589-4AD0-8519-9113-3CAC8462A9ED";
	setAttr ".t" -type "double3" -21.94353710201954 89.595871220417663 -4.1002163452173299 ;
	setAttr ".r" -type "double3" 11.98490901910761 -3.7472052798902009 4.9802639351729992e-17 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_pvc_ofs1" -p "rtLegQd0_pvc_ofs";
	rename -uid "3633D586-47AE-9AE6-C475-6A805ACDF26E";
createNode transform -n "rtLegQd0_pvc" -p "rtLegQd0_pvc_ofs1";
	rename -uid "FBBF01DB-4118-9DD9-D227-DC94B9188A25";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -1.4210854715202004e-14 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".pvPin";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
	setAttr -k on ".space";
createNode nurbsCurve -n "rtLegQd0_pvcShape1" -p "rtLegQd0_pvc";
	rename -uid "9EF64895-46CF-4BEC-BAE0-95B96C03269E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 3.6343900412305312
		-3.6343900412305312 0 0
		0 0 -3.6343900412305312
		3.6343900412305312 0 0
		0 0 3.6343900412305312
		0 3.6343900412305312 0
		3.6343900412305312 0 0
		0 0 -3.6343900412305312
		0 3.6343900412305312 0
		-3.6343900412305312 0 0
		0 -3.6343900412305312 0
		3.6343900412305312 0 0
		0 0 3.6343900412305312
		0 -3.6343900412305312 0
		0 0 -3.6343900412305312
		;
createNode transform -n "rtLegQd0_extraRollG_ofs_loc" -p "rtLegQd0_IK";
	rename -uid "F7C8F04A-4D9A-23A3-FE68-85A84DC1123A";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -4.2905979384627715 9.4503607592826935 91.600320764350059 ;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd0_extraRollG_ofs_locShape" -p "rtLegQd0_extraRollG_ofs_loc";
	rename -uid "F25E575D-4CB3-AD86-E223-9BA729517356";
	setAttr -k off ".v";
createNode transform -n "rtLegQd0_setting" -p "rtLegQd0_ctl_data";
	rename -uid "E1301B5C-4E0B-3659-2B87-6F955B37600E";
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
	rename -uid "4A685B74-409F-2A95-E443-A68081D09389";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-7.3422021034960228 -1.1192291273494427e-32 1.8278398362768555e-16
		-7.2011237055530524 8.7708747203854495e-17 -1.4323925411805376
		-6.7833102141937154 1.7204690468369912e-16 -2.8097391876797446
		-6.1048180751534931 2.4977338548678851e-16 -4.079108844878764
		-5.1917208948975224 3.1790121067182508e-16 -5.1917208948975224
		-4.079108844878764 3.7381230005233346e-16 -6.1048180751534931
		-2.8097391876797446 4.1535797847438115e-16 -6.7833102141937154
		-1.4323925411805376 4.4094167024018958e-16 -7.2011237055530524
		4.4958021541988301e-16 4.4958021541988301e-16 -7.3422021034960228
		1.4323925411805376 4.4094167024018958e-16 -7.2011237055530524
		2.8097391876797446 4.1535797847438115e-16 -6.7833102141937154
		4.079108844878764 3.7381230005233346e-16 -6.1048180751534931
		5.1917208948975224 3.1790121067182508e-16 -5.1917208948975224
		6.1048180751534931 2.4977338548678851e-16 -4.079108844878764
		6.7833102141937154 1.7204690468369912e-16 -2.8097391876797446
		7.2011237055530524 8.7708747203854495e-17 -1.4323925411805376
		7.3422021034960228 4.8627363187786688e-32 -7.9414508176483182e-16
		7.0627565089483477 8.6023452341849558e-17 -1.4048695063140026
		6.2669614991967721 1.5895061505323612e-16 -2.5958604474487612
		5.0759703830102749 2.0767898923719057e-16 -3.3916551070968577
		3.6711010517480114 2.2479010770994151e-16 -3.6711010517480114
		2.2662315454340085 2.0767898923719057e-16 -3.3916551070968577
		1.0752406042992502 1.5895061505323612e-16 -2.5958604474487612
		0.27944594465115352 8.6023452341849558e-17 -1.4048695063140026
		0 4.8627363187786688e-32 -7.9414508176483182e-16
		-0.27944594465115352 -8.6023452341849558e-17 1.4048695063140026
		-1.0752406042992502 -1.5895061505323612e-16 2.5958604474487612
		-2.2662315454340085 -2.0767898923719057e-16 3.3916551070968577
		-3.6711010517480114 -2.2479010770994151e-16 3.6711010517480114
		-5.0759703830102749 -2.0767898923719057e-16 3.3916551070968577
		-6.2669614991967721 -1.5895061505323612e-16 2.5958604474487612
		-7.0627565089483477 -8.6023452341849558e-17 1.4048695063140026
		-7.3422021034960228 -1.1192291273494427e-32 1.8278398362768555e-16
		-7.2011237055530524 -8.7708747203854495e-17 1.4323925411805376
		-6.7833102141937154 -1.7204690468369912e-16 2.8097391876797446
		-6.1048180751534931 -2.4977338548678851e-16 4.079108844878764
		-5.1917208948975224 -3.1790121067182508e-16 5.1917208948975224
		-4.079108844878764 -3.7381230005233346e-16 6.1048180751534931
		-2.8097391876797446 -4.1535797847438115e-16 6.7833102141937154
		-1.4323925411805376 -4.4094167024018958e-16 7.2011237055530524
		-8.5715430675751006e-16 -4.4958021541988301e-16 7.3422021034960228
		1.4323925411805376 -4.4094167024018958e-16 7.2011237055530524
		2.8097391876797446 -4.1535797847438115e-16 6.7833102141937154
		4.079108844878764 -3.7381230005233346e-16 6.1048180751534931
		5.1917208948975224 -3.1790121067182508e-16 5.1917208948975224
		6.1048180751534931 -2.4977338548678851e-16 4.079108844878764
		6.7833102141937154 -1.7204690468369912e-16 2.8097391876797446
		7.2011237055530524 -8.7708747203854495e-17 1.4323925411805376
		7.3422021034960228 4.8627363187786688e-32 -7.9414508176483182e-16
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_anchorF1" -p "master_ctl";
	rename -uid "6B04465A-4E16-A435-F0D4-F79A7C0B331A";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd0_anchorF1Shape" -p "rtLegQd0_anchorF1";
	rename -uid "BCD1A14B-4704-060F-96DB-8FA4DAA1B536";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 22.02660631048807 22.02660631048807 22.02660631048807 ;
createNode transform -n "rtLegQd1_ctl_data" -p "master_ctl";
	rename -uid "597FC522-41FB-9A0B-F01F-C4ADD1824092";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_FK" -p "rtLegQd1_ctl_data";
	rename -uid "C1BBCC6F-41F0-A108-2E84-0CB2E35AF9AA";
	setAttr -cb on ".ro";
createNode joint -n "rtLegQd1_hip_fk" -p "rtLegQd1_FK";
	rename -uid "95FB98F1-4030-807E-1BFE-6590C7F31C4B";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.8624160296610111 25.042419839875052 81.628065413254305 ;
	setAttr ".radi" 3.1092320474293969;
createNode joint -n "rtLegQd1_upr_fk" -p "rtLegQd1_hip_fk";
	rename -uid "614B3EEB-4C9B-4FF5-4457-829B59D9EAA5";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 177.77341520201932 -56.66101528151389 10.224746785676928 ;
	setAttr ".radi" 3.1092320474293969;
createNode joint -n "rtLegQd1_lwr_fk" -p "rtLegQd1_upr_fk";
	rename -uid "6F4AF273-4F7A-C9F9-B7BC-53AE1FC45CB6";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -29.861134866726143 0 ;
	setAttr ".radi" 3.1092320474293969;
createNode joint -n "rtLegQd1_palm_fk" -p "rtLegQd1_lwr_fk";
	rename -uid "E7DEC1D0-4B41-7522-5639-589550AA7D2D";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 179.23342805838215 -1.7821319713137702 0.51119245241123557 ;
	setAttr ".radi" 3.1092320474293969;
createNode joint -n "rtLegQd1_digit_fk" -p "rtLegQd1_palm_fk";
	rename -uid "4008601B-4BF4-6893-7F33-F592C3C46276";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 34.189215079406694 0 ;
	setAttr ".radi" 3.1092320474293969;
createNode transform -n "rtLegQd1_ball_fkc_SPACE_1_ofs" -p "rtLegQd1_digit_fk";
	rename -uid "25DBE7B3-46D3-BF0E-DD44-B6AC615D9437";
	setAttr ".t" -type "double3" -9.4777716629218993 1.4937899806000132e-08 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 0 -0.42943726992023057 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1 ;
createNode transform -n "rtLegQd1_ball_fkc_SPACE_1" -p "rtLegQd1_ball_fkc_SPACE_1_ofs";
	rename -uid "BDC78706-490A-8542-C76B-BC98E4685C60";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -1.7763568394002505e-15 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999967 1 ;
createNode transform -n "rtLegQd1_ball_fk_SPACE_2_ofs" -p "rtLegQd1_digit_fk";
	rename -uid "D3170271-4132-5523-D5D6-94BB4372E3F1";
	setAttr ".t" -type "double3" -9.4777716629218922 1.4937889147859096e-08 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 0 -0.42943726992023684 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "rtLegQd1_ball_fk_SPACE_2" -p "rtLegQd1_ball_fk_SPACE_2_ofs";
	rename -uid "B2DB250F-4BE0-997B-559E-60AD51B0DBD2";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999967 1 ;
createNode transform -n "rtLegQd1_ball_fk_ofs" -p "rtLegQd1_digit_fk";
	rename -uid "A1248425-42B2-F6BF-8D9A-068BB7202166";
	setAttr ".t" -type "double3" -9.4777716629218958 1.4937890924215935e-08 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode joint -n "rtLegQd1_ball_fk" -p "rtLegQd1_ball_fk_ofs";
	rename -uid "0D8C80CD-402F-0630-9E57-3AB450522B33";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 0 8.9453100416161403e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 2.161790384206708e-13 -9.5416640443905503e-15 1.5579350556867603e-15 ;
	setAttr ".radi" 3.1092320474293969;
createNode joint -n "rtLegQd1_tip_fk" -p "rtLegQd1_ball_fk";
	rename -uid "1CAB0433-415D-AA81-FF3E-8C93ED12E15E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -11.188850594819147 -4.5474735088646412e-13 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 56.240222190513528 0 ;
	setAttr ".radi" 3.1092320474293969;
createNode transform -n "rtLegQd1_upr_fkc_ofs" -p "rtLegQd1_FK";
	rename -uid "41FA3285-4DEA-95BC-6BF8-45B964CA3344";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_upr_fkc" -p "rtLegQd1_upr_fkc_ofs";
	rename -uid "B0C8612D-4A43-7F27-7807-8AB6B705064A";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd1_upr_fkcShape1" -p "rtLegQd1_upr_fkc";
	rename -uid "368E0343-4392-37F5-3054-BFBDF569156F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3032386325984202e-16 -16.093715154417335 -16.093715154417353
		4.671484873975449e-16 -8.9105350442289827e-16 -14.552008057233868
		3.3032386325984187e-16 16.093715154417335 -16.093715154417342
		-1.9065854499209141e-31 14.552008057233909 -5.6505052638824228e-15
		-3.3032386325984197e-16 16.093715154417335 16.093715154417335
		-4.6714848739754539e-16 1.4576845996671425e-15 14.552008057233882
		-3.3032386325984187e-16 -16.093715154417335 16.093715154417342
		-2.7858047935765206e-31 -14.552008057233909 -2.9116743957297455e-15
		3.3032386325984202e-16 -16.093715154417335 -16.093715154417353
		4.671484873975449e-16 -8.9105350442289827e-16 -14.552008057233868
		3.3032386325984187e-16 16.093715154417335 -16.093715154417342
		;
createNode transform -n "rtLegQd1_lwr_fkc_ofs" -p "rtLegQd1_FK";
	rename -uid "94CAB519-49CF-E2CD-DF0F-FDA14C4C4516";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_lwr_fkc" -p "rtLegQd1_lwr_fkc_ofs";
	rename -uid "D93BFFA4-4CAB-5EA6-35AC-98A7272A3475";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd1_lwr_fkcShape1" -p "rtLegQd1_lwr_fkc";
	rename -uid "2446823E-48E0-F979-15A0-68AC9A70C30C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3032386325984202e-16 -16.093715154417335 -16.093715154417353
		4.671484873975449e-16 -8.9105350442289827e-16 -14.552008057233868
		3.3032386325984187e-16 16.093715154417335 -16.093715154417342
		-1.9065854499209141e-31 14.552008057233909 -5.6505052638824228e-15
		-3.3032386325984197e-16 16.093715154417335 16.093715154417335
		-4.6714848739754539e-16 1.4576845996671425e-15 14.552008057233882
		-3.3032386325984187e-16 -16.093715154417335 16.093715154417342
		-2.7858047935765206e-31 -14.552008057233909 -2.9116743957297455e-15
		3.3032386325984202e-16 -16.093715154417335 -16.093715154417353
		4.671484873975449e-16 -8.9105350442289827e-16 -14.552008057233868
		3.3032386325984187e-16 16.093715154417335 -16.093715154417342
		;
createNode transform -n "rtLegQd1_palm_fkc_ofs" -p "rtLegQd1_FK";
	rename -uid "C910C954-41F4-9E59-122C-5881906AC183";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_palm_fkc" -p "rtLegQd1_palm_fkc_ofs";
	rename -uid "B7917F90-4267-1FAA-F545-E7B6987782BD";
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
	rename -uid "6536E5F7-47B7-7318-C5CB-AAB4CA97C579";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3032386325984202e-16 -16.093715154417335 -16.093715154417353
		4.671484873975449e-16 -8.9105350442289827e-16 -14.552008057233868
		3.3032386325984187e-16 16.093715154417335 -16.093715154417342
		-1.9065854499209141e-31 14.552008057233909 -5.6505052638824228e-15
		-3.3032386325984197e-16 16.093715154417335 16.093715154417335
		-4.6714848739754539e-16 1.4576845996671425e-15 14.552008057233882
		-3.3032386325984187e-16 -16.093715154417335 16.093715154417342
		-2.7858047935765206e-31 -14.552008057233909 -2.9116743957297455e-15
		3.3032386325984202e-16 -16.093715154417335 -16.093715154417353
		4.671484873975449e-16 -8.9105350442289827e-16 -14.552008057233868
		3.3032386325984187e-16 16.093715154417335 -16.093715154417342
		;
createNode transform -n "rtLegQd1_digit_fkc_ofs" -p "rtLegQd1_FK";
	rename -uid "C35DC8B8-4C5A-A5CC-00C2-E1B41FF60F10";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_digit_fkc" -p "rtLegQd1_digit_fkc_ofs";
	rename -uid "255E16C0-472D-08BE-0FF6-BEB445BFE826";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode transform -n "rtLegQd1_ikc_matcher" -p "rtLegQd1_digit_fkc";
	rename -uid "8C0D0070-4C1C-75F9-C92B-BD8A0037FF0F";
	setAttr ".t" -type "double3" -2.4868995751603507e-14 4.0856207306205761e-14 -7.1054273576010019e-14 ;
	setAttr ".r" -type "double3" 34.189215079406715 3.1805546814635168e-15 -89.999999999999915 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999989 1.0000000000000002 ;
createNode nurbsCurve -n "rtLegQd1_digit_fkcShape1" -p "rtLegQd1_digit_fkc";
	rename -uid "C46376BE-4EBD-3493-ADB2-A79FDFF6407D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3032386325984202e-16 -16.093715154417335 -16.093715154417353
		4.671484873975449e-16 -8.9105350442289827e-16 -14.552008057233868
		3.3032386325984187e-16 16.093715154417335 -16.093715154417342
		-1.9065854499209141e-31 14.552008057233909 -5.6505052638824228e-15
		-3.3032386325984197e-16 16.093715154417335 16.093715154417335
		-4.6714848739754539e-16 1.4576845996671425e-15 14.552008057233882
		-3.3032386325984187e-16 -16.093715154417335 16.093715154417342
		-2.7858047935765206e-31 -14.552008057233909 -2.9116743957297455e-15
		3.3032386325984202e-16 -16.093715154417335 -16.093715154417353
		4.671484873975449e-16 -8.9105350442289827e-16 -14.552008057233868
		3.3032386325984187e-16 16.093715154417335 -16.093715154417342
		;
createNode transform -n "rtLegQd1_quadScap_ofs" -p "rtLegQd1_FK";
	rename -uid "21909974-4752-006A-C616-C881A7662009";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_quadScap" -p "rtLegQd1_quadScap_ofs";
	rename -uid "B90D959A-475E-87A2-465B-528A83503323";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "rtLegQd1_hip_fkc_ofs" -p "rtLegQd1_quadScap";
	rename -uid "75E50532-4CC4-FF8F-263A-3BB757A92FEE";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000002 ;
createNode transform -n "rtLegQd1_hip_fkc" -p "rtLegQd1_hip_fkc_ofs";
	rename -uid "183C2414-48ED-01A5-E846-25A0E1B4631B";
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
createNode transform -n "rtLegQd1_scap_fkc_ofs" -p "rtLegQd1_hip_fkc";
	rename -uid "6846EF86-4261-FC72-0A97-45A2D00DF68C";
	setAttr ".t" -type "double3" -47.326292813376739 1.0658141036401503e-14 4.2632564145606011e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999967 ;
createNode transform -n "rtLegQd1_scap_fkc" -p "rtLegQd1_scap_fkc_ofs";
	rename -uid "DE5B5D3D-4793-8B14-8D0D-63B0B52780DB";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 0 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtLegQd1_scap_fkcShape1" -p "rtLegQd1_scap_fkc";
	rename -uid "643E390F-4F7F-07E3-1C85-F2AC814AE4EF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 6 7 8 9 10 11 14 15 18 19
		10
		58.298100889301189 0 -3.8865400592867467
		58.298100889301189 0 3.8865400592867454
		54.411560830014444 0 5.8298100889301194
		50.5250207707277 0 3.8865400592867467
		50.5250207707277 0 -3.8865400592867454
		58.298100889301189 0 -3.8865400592867467
		50.5250207707277 0 -3.8865400592867454
		50.5250207707277 0 3.8865400592867467
		54.411560830014444 0 5.8298100889301194
		58.298100889301189 0 3.8865400592867454
		;
createNode nurbsCurve -n "rtLegQd1_hip_fkcShape1" -p "rtLegQd1_hip_fkc";
	rename -uid "23256BEF-4ABC-5706-7C11-EB99129FBD56";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-8.0468575772086677 31.09232047429397 8.0468575772086766
		-4.4552675221144913e-16 31.09232047429397 7.2760040286169341
		8.0468575772086677 31.09232047429397 8.0468575772086712
		7.2760040286169545 31.09232047429397 2.8252526319412114e-15
		8.0468575772086677 31.09232047429397 -8.0468575772086677
		7.2884229983357126e-16 31.09232047429397 -7.2760040286169412
		-8.0468575772086677 31.09232047429397 -8.0468575772086712
		-7.2760040286169545 31.09232047429397 1.4558371978648727e-15
		-8.0468575772086677 31.09232047429397 8.0468575772086766
		-4.4552675221144913e-16 31.09232047429397 7.2760040286169341
		8.0468575772086677 31.09232047429397 8.0468575772086712
		;
	setAttr ".adot" yes;
createNode joint -n "rtLegQd1_autoAim" -p "rtLegQd1_quadScap_ofs";
	rename -uid "973423C8-476E-464A-771E-4B9E965B4EE7";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -4.2632564145606011e-14 0 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -168.65448346161116 -24.617625774086012 5.9260400345178876 ;
	setAttr ".radi" 4.6638480711440948;
createNode joint -n "rtLegQd1_autoAim_end" -p "rtLegQd1_autoAim";
	rename -uid "7FDF05C8-40C7-52AB-86F1-A793595AB5F1";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -137.00360069458856 1.7763568394002505e-14 -2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.1805546814635168e-15 7.9513867036587919e-16 -1.5902773407317584e-15 ;
	setAttr ".radi" 4.6638480711440948;
createNode ikEffector -n "effector27" -p "rtLegQd1_autoAim";
	rename -uid "00BE62C7-4CCB-7073-0F8F-77AD331FC676";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikHandle -n "rtLegQd1_legLock_ikh" -p "rtLegQd1_quadScap_ofs";
	rename -uid "81359790-42DD-DFA8-6FFF-2D89790EA78A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.4210854715202004e-14 0 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -11.345516538388678 24.617625774086004 -174.07395996548212 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_ballOfsG" -p "rtLegQd1_FK";
	rename -uid "61815AFC-4AA7-897A-5621-CCB99FE6D4E2";
	setAttr ".t" -type "double3" -15.136936167920339 18.881415854091522 57.928571057625334 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fkc_ofs" -p "rtLegQd1_ballOfsG";
	rename -uid "2B934827-4973-2010-DF81-9DA795C7F490";
	setAttr ".t" -type "double3" -1.5880972981108243e-08 -7.8398837639303061 5.3258220070230777 ;
	setAttr ".r" -type "double3" 0 33.759777809486465 89.999999999999901 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fkc_ofs1" -p "rtLegQd1_ball_fkc_ofs";
	rename -uid "8266E993-4079-1A60-40C8-67B97A59E9CA";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fkc" -p "rtLegQd1_ball_fkc_ofs1";
	rename -uid "2253CC4E-4CDB-DAE7-7930-1490AA94D321";
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
createNode ikHandle -n "rtLegQd1_3_ikh" -p "rtLegQd1_ball_fkc";
	rename -uid "AD46D3E2-4055-F2A7-60C6-9E98ECEAD83B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -11.188850594819186 -4.5474735088646412e-13 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.5557121193499992 2.8656582975540914e-17 0.83137478937452292 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_ball_fk_SPACE_1_ofs" -p "rtLegQd1_ball_fkc";
	rename -uid "66DACC5A-4557-099F-8C3D-20B7B42FB2AC";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -5.3290705182007514e-15 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fk_SPACE_1" -p "rtLegQd1_ball_fk_SPACE_1_ofs";
	rename -uid "B72E2DE5-4F5C-CADE-7458-C8AF02B9F4D1";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_ball_fkcShape1" -p "rtLegQd1_ball_fkc";
	rename -uid "0043DEAA-4A45-229C-6354-3C9407006669";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.6516193162992101e-16 -8.0468575772086677 -8.0468575772086766
		2.3357424369877245e-16 -4.4552675221144913e-16 -7.2760040286169341
		1.6516193162992094e-16 8.0468575772086677 -8.0468575772086712
		-9.5329272496045705e-32 7.2760040286169545 -2.8252526319412114e-15
		-1.6516193162992099e-16 8.0468575772086677 8.0468575772086677
		-2.335742436987727e-16 7.2884229983357126e-16 7.2760040286169412
		-1.6516193162992094e-16 -8.0468575772086677 8.0468575772086712
		-1.3929023967882603e-31 -7.2760040286169545 -1.4558371978648727e-15
		1.6516193162992101e-16 -8.0468575772086677 -8.0468575772086766
		2.3357424369877245e-16 -4.4552675221144913e-16 -7.2760040286169341
		1.6516193162992094e-16 8.0468575772086677 -8.0468575772086712
		;
createNode transform -n "rtLegQd1_IK" -p "rtLegQd1_ctl_data";
	rename -uid "6CE6F770-49D8-244D-8FC3-F8AEF1EE39B7";
	setAttr -cb on ".ro";
createNode joint -n "rtLegQd1_hip_ik" -p "rtLegQd1_IK";
	rename -uid "076205A4-440C-112B-4ECE-628BAC77D539";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.8624160296610111 25.042419839875052 81.628065413254305 ;
	setAttr ".radi" 4.6638480711440948;
createNode joint -n "rtLegQd1_upr_ik" -p "rtLegQd1_hip_ik";
	rename -uid "7F3198C5-4076-15B7-B380-548C93E390DB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -47.326292813376696 3.5527136788005009e-15 2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -8.1500367296581821e-07 1.4787793316620353e-06 -2.5435892511722573e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 177.77341520201932 -56.66101528151389 10.224746785676928 ;
	setAttr ".radi" 4.6638480711440948;
createNode joint -n "rtLegQd1_lwr_ik" -p "rtLegQd1_upr_ik";
	rename -uid "6A818757-41C8-E31B-9D26-56A8FAA9DF39";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -30.533184530843595 3.5527136788005009e-15 7.7271522513910895e-14 ;
	setAttr ".r" -type "double3" -2.2517026527563854e-21 -1.8984457471385555e-06 -3.4783307247724895e-21 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -29.861134866726143 0 ;
	setAttr ".radi" 4.6638480711440948;
createNode joint -n "rtLegQd1_palm_ik" -p "rtLegQd1_lwr_ik";
	rename -uid "F25D7050-432B-C0B6-222F-AB8D583F964B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -41.934879068019079 4.9737991503207013e-14 -4.9737991503207013e-14 ;
	setAttr ".r" -type "double3" -5.769050291521822e-09 -1.266300698829327e-10 -3.3946641736631426e-10 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 179.23342805838215 -1.7821319713137702 0.51119245241123557 ;
	setAttr ".radi" 4.6638480711440948;
createNode joint -n "rtLegQd1_digit_ik" -p "rtLegQd1_palm_ik";
	rename -uid "87C32F37-48E4-958F-1A99-838B4D732BA9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -26.570854559588639 -0.5832275676674783 -1.5635004633482552 ;
	setAttr ".r" -type "double3" 6.1849066335739546e-09 -9.7480243086078064e-18 -4.6373127511542431e-24 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 34.189215079406694 0 ;
	setAttr ".radi" 4.6638480711440948;
createNode joint -n "rtLegQd1_ball_ik" -p "rtLegQd1_digit_ik";
	rename -uid "3581C7C2-4C72-7387-3C18-EAA085429B4D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -9.4777716629218993 1.493790513507065e-08 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 6.1665103052963698e-09 2.5062486997980057e-22 -3.916013579944227e-24 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -0.42943726992023945 0 ;
	setAttr ".radi" 4.6638480711440948;
createNode joint -n "rtLegQd1_tip_ik" -p "rtLegQd1_ball_ik";
	rename -uid "15ABF7B2-437C-C9C2-E363-798EBBDB6EAC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -11.188850594819147 -4.5474735088646412e-13 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 56.240222190513528 0 ;
	setAttr ".radi" 4.6638480711440948;
createNode ikEffector -n "effector25" -p "rtLegQd1_ball_ik";
	rename -uid "BE798878-4B5D-ECD1-D8EF-F3BD82981F81";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector24" -p "rtLegQd1_digit_ik";
	rename -uid "DE9E8B88-4EC1-78E9-AE16-3EBAD0BE7CEC";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector23" -p "rtLegQd1_palm_ik";
	rename -uid "ED285D46-483A-F1DD-C774-D1933AC84A0B";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector22" -p "rtLegQd1_lwr_ik";
	rename -uid "F1883193-46E9-4A83-DCCB-B78FB7C27D54";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "rtLegQd1_softJ" -p "rtLegQd1_hip_ik";
	rename -uid "4784B749-49ED-9B85-8F9A-EBA1A3CA00E4";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -47.326292813376753 -7.1054273576010019e-15 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 2.5444437451708134e-14 1.2898526276432325e-29 6.4492631382161925e-31 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 86.35171114162813 -39.337269771453002 9.3672541287994928 ;
createNode joint -n "rtLegQd1_softJ_end" -p "rtLegQd1_softJ";
	rename -uid "8E309A71-43DB-C027-5287-379CAF5DB62F";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -70.083045959472656 -3.5527136788005009e-14 -1.7763568394002505e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.0345092886055061e-32 1.9878466759146984e-15 -8.9453100416161419e-16 ;
createNode ikEffector -n "effector26" -p "rtLegQd1_softJ";
	rename -uid "15FB28C0-4D7F-EA3B-5ED6-609587AFE46B";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegQd1_pvc_SPACE_1_ofs" -p "rtLegQd1_softJ";
	rename -uid "48B8D1CD-4CC6-9EFF-2E00-39B902749543";
	setAttr ".t" -type "double3" -42.849083783261264 -48.138942941648196 -1.7368181085430408 ;
	setAttr ".r" -type "double3" -174.98583201448935 88.042678676436608 75.680636836584327 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
createNode transform -n "rtLegQd1_pvc_SPACE_1" -p "rtLegQd1_pvc_SPACE_1_ofs";
	rename -uid "E9E6E76B-4AB8-407D-BACF-B0ADE622744F";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "rtLegQd1_ikCstG" -p "rtLegQd1_IK";
	rename -uid "4FC14E02-4135-05E2-BD2D-D6A2FC25FB4D";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_heelRollG" -p "rtLegQd1_ikCstG";
	rename -uid "9FBA2A75-479A-33D6-760D-EB9EFC3A6A2E";
	setAttr ".t" -type "double3" 0.5832275527293902 -45.452270110617469 3.2277479209104953 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_heelRollG_ctl" -p "rtLegQd1_heelRollG";
	rename -uid "D7F3B6AE-4527-19F5-0635-68BBDD8DF10C";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_toeRollG" -p "rtLegQd1_heelRollG_ctl";
	rename -uid "4C52BFC5-4C5C-0F67-2980-DC9518EB75CD";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 0 9.3613568898385253 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toeRollG_ctl" -p "rtLegQd1_toeRollG";
	rename -uid "2E779BFF-4132-7123-1EB1-089872EAFF7B";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_footRollG" -p "rtLegQd1_toeRollG_ctl";
	rename -uid "677361FC-4354-B666-571A-CB8DF0360CCF";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_outRollG" -p "rtLegQd1_footRollG";
	rename -uid "74C49030-40F6-294D-EB9B-8DA5CFE1AEF3";
	setAttr ".t" -type "double3" -3.9782605883148552 0 -5.3888664808739719 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_outRollG_ctl" -p "rtLegQd1_outRollG";
	rename -uid "29F2F35B-4E43-BE36-7FA1-F7A5654503E5";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_inRollG" -p "rtLegQd1_outRollG_ctl";
	rename -uid "81B4D54C-403B-3F91-E7C7-90A8CFBAE2ED";
	setAttr ".t" -type "double3" 7.5370106831020625 0 -0.24089151393239661 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_inRollG_ctl" -p "rtLegQd1_inRollG";
	rename -uid "E4096F8E-4794-9E3B-B90B-1987E8319C9F";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_ballRollG" -p "rtLegQd1_inRollG_ctl";
	rename -uid "CADF3F1B-4C4B-E1CE-EE31-77B954E8D766";
	setAttr ".t" -type "double3" -3.5587500947870954 11.041532090161171 -3.1970249940001878 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ballG_ikc" -p "rtLegQd1_ballRollG";
	rename -uid "FA95AAE7-498D-7A01-5A34-87979CF81083";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_extraRollG_ofs" -p "rtLegQd1_ballG_ikc";
	rename -uid "634ACB30-4C09-48A8-BC61-C4B0C5EE29CA";
	setAttr ".t" -type "double3" 1.493790513507065e-08 7.839883460867652 -5.3258222852907124 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_extraRollG_ofs1" -p "rtLegQd1_extraRollG_ofs";
	rename -uid "97722AFD-4D30-6B26-819C-BCBF38887849";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 0 ;
	setAttr ".r" -type "double3" 168.69155808645013 0 90.571945518899028 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "rtLegQd1_extraRollG" -p "rtLegQd1_extraRollG_ofs1";
	rename -uid "31EBC82C-4644-78DF-0DDF-F6ABEB5EF788";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_extra_ikc" -p "rtLegQd1_extraRollG";
	rename -uid "CF931AE8-46AB-4AC7-3CD0-0FBD3E6C3898";
	addAttr -ci true -sn "palmAim" -ln "palmAim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "palmAimRatio" -ln "palmAimRatio" -dv 0.5 -min -2 -max 2 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".palmAim";
	setAttr -k on ".palmAimRatio";
createNode transform -n "rtLegQd1_extraRollG_ofs2" -p "rtLegQd1_extra_ikc";
	rename -uid "A6CF2335-4A39-4961-4CD6-E2B4AF9FDFF3";
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd1_X_ikh" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "104DE8A8-408F-4B2D-8469-B5BF790C7F49";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.8421709430404007e-14 1.4210854715202004e-14 0 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999886 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 1.0000000000000002 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_dist_loc1" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "0CAC4A5E-49D0-0950-0ECE-5887EF60A2AD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.58322756766739126 26.570854559588653 1.5635004633482552 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode locator -n "rtLegQd1_dist_loc1Shape" -p "rtLegQd1_dist_loc1";
	rename -uid "E72218BA-4169-F4B5-0C97-BCA7F48B5BA4";
	setAttr -k off ".v";
createNode transform -n "rtLegQd1_softJ_posGrp" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "FCADA9E9-4FDA-A2E7-12EE-679B9E493C55";
	setAttr ".t" -type "double3" -0.5832275676673877 26.570854559588653 1.563500463348241 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "rtLegQd1_1_ikh_ofs" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "C8DD5E6F-485B-7C0B-10B1-7D907C88C164";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode ikHandle -n "rtLegQd1_1_ikh" -p "rtLegQd1_1_ikh_ofs";
	rename -uid "8E60C003-4AB6-F6A5-AF14-B48A8976080A";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode nurbsCurve -n "rtLegQd1_extra_ikcShape1" -p "rtLegQd1_extra_ikc";
	rename -uid "193228E3-4701-3B61-7D70-86B1BE2C6344";
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
		9.2815239535686214 15.546160237146985 0
		8.617665607296459 19.115714053502764 0
		6.5956760608961655 22.141836298043152 0
		3.5695538163557798 24.163825844443444 0
		0 24.827466544474461 0
		-3.5695538163557798 24.163825844443444 0
		-6.5956760608961655 22.141836298043152 0
		-8.617665607296459 19.115714053502764 0
		-9.2815239535686214 15.546159797395243 0
		-8.617665607296459 11.976606420791205 0
		-6.5956760608961655 8.9504841762508196 0
		-3.5695538163557798 6.9284946298505261 0
		3.7064906128192982e-07 6.2648539298195072 -0.063111191467609976
		3.5695538163557798 6.9284946298505261 0
		6.5956760608961655 8.9504841762508196 0
		8.617665607296459 11.976606420791205 0
		9.2815239535686214 15.546160237146985 0
		8.5750069440323156 15.57031250271133 -3.551806320006528
		6.5630291247246282 15.590788163600998 -6.5628861000518759
		3.5518871600389526 15.604469530688565 -8.574820390111336
		3.7064906128192982e-07 15.609273916000209 -9.2813187442555449
		-3.5518871600389526 15.604469530688565 -8.574820390111336
		-6.5630291247246282 15.590788163600998 -6.5628861000518759
		-8.5750069440323156 15.57031250271133 -3.551806320006528
		-9.2815239535686214 15.546159797395243 0
		-8.5750069440323156 15.522007100997676 3.5517938830784628
		-6.5630291247246282 15.501531440108009 6.5628798815878424
		-3.5518871600389526 15.487850073020441 8.5748079531832708
		3.7064906128192982e-07 15.483045936447359 9.281306307327478
		3.5518871600389526 15.487850073020441 8.5748079531832708
		6.5630291247246282 15.501531440108009 6.5628798815878424
		8.5750069440323156 15.522007100997676 3.5517938830784628
		9.2815239535686214 15.546160237146985 0
		8.5750069440323156 15.57031250271133 -3.551806320006528
		6.5630291247246282 15.590788163600998 -6.5628861000518759
		3.5518871600389526 15.604469530688565 -8.574820390111336
		3.7064906128192982e-07 15.609273916000209 -9.2813187442555449
		3.7064906128192982e-07 19.156270875923866 -8.5506616573443956
		3.7064906128192982e-07 22.153663816633298 -6.5182561836893731
		3.7064906128192982e-07 24.145120704633161 -3.4934957827721425
		0 24.827466544474461 0
		3.7064906128192982e-07 24.096815676027347 3.6101106387768809
		3.7064906128192982e-07 22.064410202372326 6.6074973610222809
		3.7064906128192982e-07 19.039656019919128 8.5989604674861759
		3.7064906128192982e-07 15.483045936447359 9.281306307327478
		3.7064906128192982e-07 11.936049598370104 8.5506492204163322
		3.7064906128192982e-07 8.9386566576606725 6.5182437467613079
		3.7064906128192982e-07 6.9471997696608092 3.4934833458440768
		3.7064906128192982e-07 6.2648539298195072 -0.063111191467609976
		3.7064906128192982e-07 6.9955047982666212 -3.6101230757049465
		3.7064906128192982e-07 9.0279102719216446 -6.6075097979503452
		3.7064906128192982e-07 12.052664454374842 -8.5989729044142429
		3.7064906128192982e-07 15.609273916000209 -9.2813187442555449
		;
createNode nurbsCurve -n "rtLegQd1_ballG_ikcShape1" -p "rtLegQd1_ballG_ikc";
	rename -uid "695AA46A-4EFE-B24E-065E-D591203E20D5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 25 0 no 3
		26 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		26
		-9.6286406267016212e-17 13.973683857070563 8.4998975403973094e-16
		-9.30055236706781e-17 14.027264926155731 0.40698681665347997
		-8.3386473131532179e-17 14.184356001880712 0.78623812826331996
		-6.8084765904959297e-17 14.434251742809211 1.1119086178875541
		-4.8143203133508106e-17 14.759922047108773 1.3618044823658348
		-2.4920754336523512e-17 15.139173420493504 1.5188954345410342
		2.9485368154656706e-32 15.546160237146985 1.5724762565266399
		2.4920754336523512e-17 15.953147053800464 1.5188954345410342
		4.8143203133508106e-17 16.332398427185193 1.3618044823658348
		6.8084765904959297e-17 16.658068731484757 1.1119086178875541
		8.3386473131532179e-17 16.907965460811507 0.78623812826331996
		9.30055236706781e-17 17.065055548138236 0.40698681665347997
		9.6286406267016212e-17 17.118636617223405 4.6465398695107364e-16
		9.30055236706781e-17 17.065055548138236 -0.40698681665347997
		8.3386473131532179e-17 16.907965460811507 -0.78623812826331996
		6.8084765904959297e-17 16.658068731484757 -1.1119086178875541
		4.8143203133508106e-17 16.332398427185193 -1.3618044823658348
		2.4920754336523512e-17 15.953147053800464 -1.5188954345410342
		-7.2038368450931894e-32 15.546160237146985 -1.5724762565266399
		-2.4920754336523512e-17 15.139173420493504 -1.5188954345410342
		-4.8143203133508106e-17 14.759922047108773 -1.3618044823658348
		-6.8084765904959297e-17 14.434251742809211 -1.1119086178875541
		-8.3386473131532179e-17 14.184356001880712 -0.78623812826331996
		-9.30055236706781e-17 14.027264926155731 -0.40698681665347997
		-9.6286406267016212e-17 13.973683857070563 8.4998975403973094e-16
		0 0 0
		;
createNode transform -n "rtLegQd1_toe_wiggle_grp" -p "rtLegQd1_inRollG_ctl";
	rename -uid "36BA736D-4A94-C092-85C5-C9B224E2E477";
	setAttr ".t" -type "double3" -3.5587500947870954 11.041532090161171 -3.1970249940001878 ;
	setAttr ".r" -type "double3" 0 33.759777809486444 90 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd1_2_ikh" -p "rtLegQd1_toe_wiggle_grp";
	rename -uid "FB636D80-4A9B-3A39-329D-84A0F9CEA132";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.4210854715202004e-14 -3.1974423109204508e-14 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 0 0.42943726992024006 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.55571211934999898 0 0.83137478937452314 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_ball_fkc_SPACE_2_ofs" -p "rtLegQd1_toe_wiggle_grp";
	rename -uid "941A7275-4D63-A880-6DAF-5B8D1DFBCC39";
	setAttr ".t" -type "double3" 4.2632564145606011e-14 -5.3290705182007514e-14 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fkc_SPACE_2" -p "rtLegQd1_ball_fkc_SPACE_2_ofs";
	rename -uid "07708EA5-4DFF-611C-0334-CC9A39DD6415";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_inRollG_ctlShape1" -p "rtLegQd1_inRollG_ctl";
	rename -uid "7FECBE96-444B-1693-C3B6-8FA022E10E95";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.96191866467346965
		-0.96191866467346965 0 0
		0 0 -0.96191866467346965
		0.96191866467346965 0 0
		0 0 0.96191866467346965
		0 0.96191866467346965 0
		0.96191866467346965 0 0
		0 0 -0.96191866467346965
		0 0.96191866467346965 0
		-0.96191866467346965 0 0
		0 -0.96191866467346965 0
		0.96191866467346965 0 0
		0 0 0.96191866467346965
		0 -0.96191866467346965 0
		0 0 -0.96191866467346965
		;
createNode nurbsCurve -n "rtLegQd1_outRollG_ctlShape1" -p "rtLegQd1_outRollG_ctl";
	rename -uid "A015ABB6-45FA-B1D7-FCF9-A7B78DE9DB41";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.96191866467346965
		-0.96191866467346965 0 0
		0 0 -0.96191866467346965
		0.96191866467346965 0 0
		0 0 0.96191866467346965
		0 0.96191866467346965 0
		0.96191866467346965 0 0
		0 0 -0.96191866467346965
		0 0.96191866467346965 0
		-0.96191866467346965 0 0
		0 -0.96191866467346965 0
		0.96191866467346965 0 0
		0 0 0.96191866467346965
		0 -0.96191866467346965 0
		0 0 -0.96191866467346965
		;
createNode nurbsCurve -n "rtLegQd1_toeRollG_ctlShape1" -p "rtLegQd1_toeRollG_ctl";
	rename -uid "97534282-4777-1904-4BE4-2C9E83F62992";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.96191866467346965
		-0.96191866467346965 0 0
		0 0 -0.96191866467346965
		0.96191866467346965 0 0
		0 0 0.96191866467346965
		0 0.96191866467346965 0
		0.96191866467346965 0 0
		0 0 -0.96191866467346965
		0 0.96191866467346965 0
		-0.96191866467346965 0 0
		0 -0.96191866467346965 0
		0.96191866467346965 0 0
		0 0 0.96191866467346965
		0 -0.96191866467346965 0
		0 0 -0.96191866467346965
		;
createNode nurbsCurve -n "rtLegQd1_heelRollG_ctlShape1" -p "rtLegQd1_heelRollG_ctl";
	rename -uid "E9F84381-44C9-F67F-2B21-80B5C93F7806";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.96191866467346965
		-0.96191866467346965 0 0
		0 0 -0.96191866467346965
		0.96191866467346965 0 0
		0 0 0.96191866467346965
		0 0.96191866467346965 0
		0.96191866467346965 0 0
		0 0 -0.96191866467346965
		0 0.96191866467346965 0
		-0.96191866467346965 0 0
		0 -0.96191866467346965 0
		0.96191866467346965 0 0
		0 0 0.96191866467346965
		0 -0.96191866467346965 0
		0 0 -0.96191866467346965
		;
createNode transform -n "rtLegQd1_line_53" -p "rtLegQd1_IK";
	rename -uid "72B7902E-413C-7744-D417-1E9767057E82";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape4" -p "rtLegQd1_line_53";
	rename -uid "E719F0E5-42AF-2A09-9A05-A3A9D3C6BEBA";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-16.076820855100937 87.36519777082178 60.801042597444699
		-16.584956749008626 83.746168715153601 19.555965439770279
		;
createNode transform -n "rtLegQd1_ikc_ofs" -p "rtLegQd1_IK";
	rename -uid "CEBDC168-4604-1AB4-3758-9F8201060156";
	setAttr ".t" -type "double3" -15.136936168863452 18.881415551028823 57.928570779357699 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ikc_ofs1" -p "rtLegQd1_ikc_ofs";
	rename -uid "251C3CBC-460D-E192-A427-08AFEC1EC0EA";
createNode transform -n "rtLegQd1_ikc" -p "rtLegQd1_ikc_ofs1";
	rename -uid "E0230F18-4CB7-1803-7474-42BE2522001F";
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
createNode transform -n "rtLegQd1_ikc_gmb" -p "rtLegQd1_ikc";
	rename -uid "5AAE494E-4205-274D-DB30-E792FE909D4D";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
createNode nurbsCurve -n "rtLegQd1_ikc_gmbShapeOrig" -p "rtLegQd1_ikc_gmb";
	rename -uid "949E36EA-4110-5BA1-752A-3DB9C435D181";
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
		11.659620177860226 -18.88141555102882 11.659620177860239
		11.435583845537806 -18.88141555102882 13.934299232944738
		10.772084439180672 -18.88141555102882 16.12156364759705
		9.6946198688803769 -18.88141555102882 18.137358076994101
		8.2445964938244671 -18.88141555102882 19.904216671684701
		6.4777378991338619 -18.88141555102882 21.354240046740617
		4.4619434697368092 -18.88141555102882 22.431704617040911
		2.2746790550844973 -18.88141555102882 23.09520402339805
		-1.361184765496746e-15 -18.88141555102882 23.319240355720467
		-2.2746790550845 -18.88141555102882 23.09520402339805
		-4.4619434697368128 -18.88141555102882 22.431704617040911
		-6.4777378991338663 -18.88141555102882 21.354240046740617
		-8.2445964938244725 -18.88141555102882 19.904216671684708
		-9.6946198688803822 -18.88141555102882 18.137358076994104
		-10.772084439180679 -18.88141555102882 16.12156364759705
		-11.435583845537813 -18.88141555102882 13.934299232944737
		-11.659620177860235 -18.88141555102882 11.659620177860235
		-11.435583776773862 -15.389816233653567 11.659620177860237
		-10.772084387113104 -11.989961257675727 11.659620177860237
		-9.6946200891600292 -9.0458947246691785 11.659620177860237
		-8.2445964917177186 -6.7032482650109415 11.659620177860237
		-6.4777377583750084 -4.9391586350328929 11.659620177860237
		-4.4619433276781546 -3.8616943370798182 11.659620177860237
		-2.2746790050648116 -3.1981949474190579 11.659620177860237
		7.1394582679499507e-16 -2.9741585463326867 11.659620177860237
		2.2746790050648116 -3.1981949474190579 11.659620177860237
		4.4619433276781546 -3.8616943370798182 11.659620177860237
		6.4777377583750084 -4.9391586350328929 11.659620177860237
		8.2445964917177186 -6.7032482650109415 11.659620177860237
		9.6946200891600292 -9.0458947246691785 11.659620177860237
		10.772084387113104 -11.989961257675727 11.659620177860237
		11.435583776773862 -15.389816233653567 11.659620177860237
		11.659620177860237 -18.88141555102882 11.659620177860237
		11.659620177860237 -18.881415551028823 -10.96004296718862
		11.659620177860237 -18.181838340357206 -11.659620177860237
		11.435583776773862 -15.389816233653567 -11.659620177860237
		10.772084387113104 -11.989961257675727 -11.659620177860237
		9.6946200891600292 -9.0458947246691785 -11.659620177860237
		8.2445964917177186 -6.7032482650109415 -11.659620177860237
		6.4777377583750084 -4.9391586350328929 -11.659620177860237
		4.4619433276781546 -3.8616943370798182 -11.659620177860237
		2.2746790050648116 -3.1981949474190579 -11.659620177860237
		7.1394582679499507e-16 -2.9741585463326867 -11.659620177860237
		-2.2746790050648116 -3.1981949474190579 -11.659620177860237
		-4.4619433276781546 -3.8616943370798182 -11.659620177860237
		-6.4777377583750084 -4.9391586350328929 -11.659620177860237
		-8.2445964917177186 -6.7032482650109415 -11.659620177860237
		-9.6946200891600292 -9.0458947246691785 -11.659620177860237
		-10.772084387113104 -11.989961257675727 -11.659620177860237
		-11.435583776773862 -15.389816233653567 -11.659620177860237
		-11.659620177860237 -18.181838340357206 -11.659620177860237
		-11.659620177860237 -18.88141555102882 -10.96004296718862
		-11.659620177860237 -18.88141555102882 11.659620177860237
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode transform -n "rtLegQd1_smart_ctl_ofs" -p "rtLegQd1_ikc_gmb";
	rename -uid "9537AC3D-4566-9B19-C18D-BBB491E97E84";
	setAttr ".t" -type "double3" -1.4938018821908372e-08 -18.881415551028823 14.152605274097283 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_smart_ctl" -p "rtLegQd1_smart_ctl_ofs";
	rename -uid "37D7034F-4334-84DF-58C6-8EB14B2F4AAF";
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
	rename -uid "B21007A1-4DA5-A9DB-77FB-0991E127DA2A";
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
		5.3645717181391115 1.1010795441994735e-16 -5.3645717181391177
		2.9701783480763276e-16 1.5571616246584831e-16 -4.8506693524112894
		-5.3645717181391115 1.1010795441994729e-16 -5.3645717181391142
		-4.8506693524113027 -6.3552848330697144e-32 -1.8835017546274743e-15
		-5.3645717181391115 -1.1010795441994732e-16 5.3645717181391115
		-4.8589486655571417e-16 -1.5571616246584846e-16 4.8506693524112938
		5.3645717181391115 -1.1010795441994729e-16 5.3645717181391142
		4.8506693524113027 -9.2860159785884024e-32 -9.7055813190991516e-16
		5.3645717181391115 1.1010795441994735e-16 -5.3645717181391177
		2.9701783480763276e-16 1.5571616246584831e-16 -4.8506693524112894
		-5.3645717181391115 1.1010795441994729e-16 -5.3645717181391142
		;
createNode nurbsCurve -n "rtLegQd1_ikc_gmbShape1" -p "rtLegQd1_ikc_gmb";
	rename -uid "60BE6FE4-4059-2965-2AD1-15B1C92230D7";
	setAttr -k off ".v" no;
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
		9.3276961422881808 -17.290689925449826 10.493658170791608
		9.1484670764302454 -17.290689925449826 12.313401414859211
		8.6176675513445371 -17.290689925449826 14.063212946581057
		7.755695895104302 -17.290689925449826 15.675848490098698
		6.5956771950595741 -17.290689925449826 17.089335365851181
		5.1821903193070895 -17.290689925449826 18.249354065895915
		3.5695547757894479 -17.290689925449826 19.111325722136147
		1.8197432440675985 -17.290689925449826 19.642125247221859
		-7.3367644451734687e-16 -17.290689925449826 19.821354313079794
		-1.8197432440675996 -17.290689925449826 19.642125247221859
		-3.5695547757894501 -17.290689925449826 19.111325722136147
		-5.1821903193070931 -17.290689925449826 18.249354065895915
		-6.5956771950595785 -17.290689925449826 17.089335365851184
		-7.7556958951043065 -17.290689925449826 15.675848490098701
		-8.6176675513445442 -17.290689925449826 14.063212946581057
		-9.1484670764302507 -17.290689925449826 12.313401414859207
		-9.3276961422881879 -17.290689925449826 10.493658170791605
		-9.1484670214190906 -14.497410471549625 10.493658170791608
		-8.6176675096904827 -11.777526490767352 10.493658170791608
		-7.7556960713280239 -9.4222732643621132 10.493658170791608
		-6.5956771933741756 -7.5481560966355232 10.493658170791608
		-5.1821902067000067 -6.1368843926530845 10.493658170791608
		-3.5695546621425236 -5.2749129542906248 10.493658170791608
		-1.8197432040518489 -4.7441134425620159 10.493658170791608
		9.2642802931604607e-16 -4.5648843216929196 10.493658170791608
		1.8197432040518497 -4.7441134425620159 10.493658170791608
		3.5695546621425245 -5.2749129542906248 10.493658170791608
		5.1821902067000067 -6.1368843926530845 10.493658170791608
		6.5956771933741756 -7.5481560966355232 10.493658170791608
		7.7556960713280239 -9.4222732643621132 10.493658170791608
		8.6176675096904827 -11.777526490767352 10.493658170791608
		9.1484670214190906 -14.497410471549625 10.493658170791608
		9.3276961422881897 -17.290689925449826 10.493658170791608
		9.3276961422881897 -17.290689925449829 -7.6020723452474792
		9.3276961422881897 -16.731028156912537 -8.161734113784771
		9.1484670214190906 -14.497410471549625 -8.161734113784771
		8.6176675096904827 -11.777526490767352 -8.161734113784771
		7.7556960713280239 -9.4222732643621132 -8.161734113784771
		6.5956771933741756 -7.5481560966355232 -8.161734113784771
		5.1821902067000067 -6.1368843926530845 -8.161734113784771
		3.5695546621425245 -5.2749129542906248 -8.161734113784771
		1.8197432040518497 -4.7441134425620159 -8.161734113784771
		9.2642802931604607e-16 -4.5648843216929196 -8.161734113784771
		-1.8197432040518489 -4.7441134425620159 -8.161734113784771
		-3.5695546621425236 -5.2749129542906248 -8.161734113784771
		-5.1821902067000067 -6.1368843926530845 -8.161734113784771
		-6.5956771933741756 -7.5481560966355232 -8.161734113784771
		-7.7556960713280239 -9.4222732643621132 -8.161734113784771
		-8.6176675096904827 -11.777526490767352 -8.161734113784771
		-9.1484670214190906 -14.497410471549625 -8.161734113784771
		-9.3276961422881897 -16.731028156912537 -8.161734113784771
		-9.3276961422881897 -17.290689925449826 -7.6020723452474792
		-9.3276961422881897 -17.290689925449826 10.493658170791608
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode ikHandle -n "rtLegQd1_autoAimJ_ikh" -p "rtLegQd1_ikc";
	rename -uid "5CE1217C-41E4-E24B-A57B-3C949938D05B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 8.8817841970012523e-15 0 0 ;
	setAttr ".r" -type "double3" -167.82849405510058 0.4767386666691229 87.790796088540475 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode joint -n "rtLegQd1_legLock" -p "rtLegQd1_ikc";
	rename -uid "21CB42A4-4A87-E255-55ED-23A708F00D14";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -12.171505944899272 -0.47673866666913473 -92.209203911459525 ;
	setAttr ".radi" 3.1092320474293969;
createNode joint -n "rtLegQd1_legLock_end" -p "rtLegQd1_legLock";
	rename -uid "62617BCE-4622-B8CD-CDBC-8EA3F3E88B31";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -137.00360069458858 3.5527136788005009e-15 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 3.1092320474293969;
createNode ikEffector -n "effector28" -p "rtLegQd1_legLock";
	rename -uid "EAD3F594-4D38-980E-61BB-CEB3EDD111AE";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode nurbsCurve -n "rtLegQd1_ikcShape1" -p "rtLegQd1_ikc";
	rename -uid "4DEA347B-4147-BF62-0E99-2D9FAFD2C08A";
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
		11.659620177860226 -18.88141555102882 11.659620177860239
		11.435583845537806 -18.88141555102882 13.934299232944738
		10.772084439180672 -18.88141555102882 16.12156364759705
		9.6946198688803769 -18.88141555102882 18.137358076994101
		8.2445964938244671 -18.88141555102882 19.904216671684701
		6.4777378991338619 -18.88141555102882 21.354240046740617
		4.4619434697368092 -18.88141555102882 22.431704617040911
		2.2746790550844973 -18.88141555102882 23.09520402339805
		-1.361184765496746e-15 -18.88141555102882 23.319240355720467
		-2.2746790550845 -18.88141555102882 23.09520402339805
		-4.4619434697368128 -18.88141555102882 22.431704617040911
		-6.4777378991338663 -18.88141555102882 21.354240046740617
		-8.2445964938244725 -18.88141555102882 19.904216671684708
		-9.6946198688803822 -18.88141555102882 18.137358076994104
		-10.772084439180679 -18.88141555102882 16.12156364759705
		-11.435583845537813 -18.88141555102882 13.934299232944737
		-11.659620177860235 -18.88141555102882 11.659620177860235
		-11.435583776773862 -15.389816233653567 11.659620177860237
		-10.772084387113104 -11.989961257675727 11.659620177860237
		-9.6946200891600292 -9.0458947246691785 11.659620177860237
		-8.2445964917177186 -6.7032482650109415 11.659620177860237
		-6.4777377583750084 -4.9391586350328929 11.659620177860237
		-4.4619433276781546 -3.8616943370798182 11.659620177860237
		-2.2746790050648116 -3.1981949474190579 11.659620177860237
		7.1394582679499507e-16 -2.9741585463326867 11.659620177860237
		2.2746790050648116 -3.1981949474190579 11.659620177860237
		4.4619433276781546 -3.8616943370798182 11.659620177860237
		6.4777377583750084 -4.9391586350328929 11.659620177860237
		8.2445964917177186 -6.7032482650109415 11.659620177860237
		9.6946200891600292 -9.0458947246691785 11.659620177860237
		10.772084387113104 -11.989961257675727 11.659620177860237
		11.435583776773862 -15.389816233653567 11.659620177860237
		11.659620177860237 -18.88141555102882 11.659620177860237
		11.659620177860237 -18.881415551028823 -10.96004296718862
		11.659620177860237 -18.181838340357206 -11.659620177860237
		11.435583776773862 -15.389816233653567 -11.659620177860237
		10.772084387113104 -11.989961257675727 -11.659620177860237
		9.6946200891600292 -9.0458947246691785 -11.659620177860237
		8.2445964917177186 -6.7032482650109415 -11.659620177860237
		6.4777377583750084 -4.9391586350328929 -11.659620177860237
		4.4619433276781546 -3.8616943370798182 -11.659620177860237
		2.2746790050648116 -3.1981949474190579 -11.659620177860237
		7.1394582679499507e-16 -2.9741585463326867 -11.659620177860237
		-2.2746790050648116 -3.1981949474190579 -11.659620177860237
		-4.4619433276781546 -3.8616943370798182 -11.659620177860237
		-6.4777377583750084 -4.9391586350328929 -11.659620177860237
		-8.2445964917177186 -6.7032482650109415 -11.659620177860237
		-9.6946200891600292 -9.0458947246691785 -11.659620177860237
		-10.772084387113104 -11.989961257675727 -11.659620177860237
		-11.435583776773862 -15.389816233653567 -11.659620177860237
		-11.659620177860237 -18.181838340357206 -11.659620177860237
		-11.659620177860237 -18.88141555102882 -10.96004296718862
		-11.659620177860237 -18.88141555102882 11.659620177860237
		;
createNode transform -n "rtLegQd1_pvc_ofs" -p "rtLegQd1_IK";
	rename -uid "95B87BCD-4296-6716-CC1C-33AEE35F0EB4";
	setAttr ".t" -type "double3" -16.584956749008626 83.746168715153615 19.555965439770279 ;
	setAttr ".r" -type "double3" 5.0141679855110075 -179.29415650201057 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_pvc_ofs1" -p "rtLegQd1_pvc_ofs";
	rename -uid "E932CA05-4BBE-0336-943C-04ACF89389C8";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "rtLegQd1_pvc" -p "rtLegQd1_pvc_ofs1";
	rename -uid "C6A34814-4B80-1F08-EBEE-6D9E8D73E14E";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -1.4210854715202004e-14 -2.4868995751603507e-14 ;
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".pvPin";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
	setAttr -k on ".space";
createNode nurbsCurve -n "rtLegQd1_pvcShape1" -p "rtLegQd1_pvc";
	rename -uid "7B3FC9B9-45C8-4CC7-86A6-5BBDC76B855A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 3.8476746586938786
		-3.8476746586938786 0 0
		0 0 -3.8476746586938786
		3.8476746586938786 0 0
		0 0 3.8476746586938786
		0 3.8476746586938786 0
		3.8476746586938786 0 0
		0 0 -3.8476746586938786
		0 3.8476746586938786 0
		-3.8476746586938786 0 0
		0 -3.8476746586938786 0
		3.8476746586938786 0 0
		0 0 3.8476746586938786
		0 -3.8476746586938786 0
		0 0 -3.8476746586938786
		;
createNode transform -n "rtLegQd1_extraRollG_ofs_loc" -p "rtLegQd1_IK";
	rename -uid "7276BC3F-49AD-DD6B-FA40-4FBE81BC8739";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 0.88177499239414059 -148.35299740090878 -89.951691053865517 ;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd1_extraRollG_ofs_locShape" -p "rtLegQd1_extraRollG_ofs_loc";
	rename -uid "DA787F8A-4472-8F7A-CE1F-D5B5B6BD9C30";
	setAttr -k off ".v";
createNode transform -n "rtLegQd1_setting" -p "rtLegQd1_ctl_data";
	rename -uid "5F5581BD-4307-EFFB-182C-50A5EF9A4DA6";
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
	rename -uid "F781649D-4388-6D93-359D-72BA656F37E1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-7.7730801185734926 -1.1849112235395749e-32 1.9351068372981826e-16
		-7.6237225178492425 9.285594560120365e-17 -1.5164526700432077
		-7.1813895914087365 1.8214349801433447e-16 -2.9746290704434419
		-6.4630800594400197 2.6443136670831905e-16 -4.3184918389166729
		-5.4963976611451457 3.3655728152280022e-16 -5.4963976611451457
		-4.3184918389166729 3.957495199201167e-16 -6.4630800594400197
		-2.9746290704434419 4.3973331148604187e-16 -7.1813895914087365
		-1.5164526700432077 4.6681838528560784e-16 -7.6237225178492425
		4.7596388452999681e-16 4.7596388452999681e-16 -7.7730801185734926
		1.5164526700432077 4.6681838528560784e-16 -7.6237225178492425
		2.9746290704434419 4.3973331148604187e-16 -7.1813895914087365
		4.3184918389166729 3.957495199201167e-16 -6.4630800594400197
		5.4963976611451457 3.3655728152280022e-16 -5.4963976611451457
		6.4630800594400197 2.6443136670831905e-16 -4.3184918389166729
		7.1813895914087365 1.8214349801433447e-16 -2.9746290704434419
		7.6237225178492425 9.285594560120365e-17 -1.5164526700432077
		7.7730801185734926 5.1481065855386663e-32 -8.4074958157169973e-16
		7.4772352256404577 9.1071749007167237e-17 -1.4873144425593849
		6.6347388898593191 1.6827865104898601e-16 -2.7481988305725729
		5.3738543165214594 2.1986665574302093e-16 -3.5906947957043682
		3.8865400592867463 2.379819422649984e-16 -3.8865400592867463
		2.3992256167273611 2.1986665574302093e-16 -3.5906947957043682
		1.1383412287141732 1.6827865104898601e-16 -2.7481988305725729
		0.29584526358237784 9.1071749007167237e-17 -1.4873144425593849
		0 5.1481065855386663e-32 -8.4074958157169973e-16
		-0.29584526358237784 -9.1071749007167237e-17 1.4873144425593849
		-1.1383412287141732 -1.6827865104898601e-16 2.7481988305725729
		-2.3992256167273611 -2.1986665574302093e-16 3.5906947957043682
		-3.8865400592867463 -2.379819422649984e-16 3.8865400592867463
		-5.3738543165214594 -2.1986665574302093e-16 3.5906947957043682
		-6.6347388898593191 -1.6827865104898601e-16 2.7481988305725729
		-7.4772352256404577 -9.1071749007167237e-17 1.4873144425593849
		-7.7730801185734926 -1.1849112235395749e-32 1.9351068372981826e-16
		-7.6237225178492425 -9.285594560120365e-17 1.5164526700432077
		-7.1813895914087365 -1.8214349801433447e-16 2.9746290704434419
		-6.4630800594400197 -2.6443136670831905e-16 4.3184918389166729
		-5.4963976611451457 -3.3655728152280022e-16 5.4963976611451457
		-4.3184918389166729 -3.957495199201167e-16 6.4630800594400197
		-2.9746290704434419 -4.3973331148604187e-16 7.1813895914087365
		-1.5164526700432077 -4.6681838528560784e-16 7.6237225178492425
		-9.0745651052481338e-16 -4.7596388452999681e-16 7.7730801185734926
		1.5164526700432077 -4.6681838528560784e-16 7.6237225178492425
		2.9746290704434419 -4.3973331148604187e-16 7.1813895914087365
		4.3184918389166729 -3.957495199201167e-16 6.4630800594400197
		5.4963976611451457 -3.3655728152280022e-16 5.4963976611451457
		6.4630800594400197 -2.6443136670831905e-16 4.3184918389166729
		7.1813895914087365 -1.8214349801433447e-16 2.9746290704434419
		7.6237225178492425 -9.285594560120365e-17 1.5164526700432077
		7.7730801185734926 5.1481065855386663e-32 -8.4074958157169973e-16
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd1_anchorF1" -p "master_ctl";
	rename -uid "9A76412B-4040-C293-5EF5-1189F13D7F3B";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd1_anchorF1Shape" -p "rtLegQd1_anchorF1";
	rename -uid "79310EAE-48B2-2D2B-F3F4-29A96BA9EAFB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 23.319240355720478 23.319240355720478 23.319240355720478 ;
createNode transform -n "spineQd0_ctl_data" -p "master_ctl";
	rename -uid "CFE80643-4359-9158-FD50-38B77DA3CA60";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_IK" -p "spineQd0_ctl_data";
	rename -uid "5B7EB948-4201-9B11-CC7D-83A15745E9A2";
	setAttr ".t" -type "double3" 5.4537835835963278e-14 147.69466945644481 -34.450657404629141 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_cog_ctl_ofs" -p "spineQd0_IK";
	rename -uid "31CCA958-4F31-5D87-75F8-09B0BC49B44D";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_cog_ctl" -p "spineQd0_cog_ctl_ofs";
	rename -uid "BAA751AD-4EC6-B556-1826-99A1973D1188";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "spineQd0_base_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "8C989C0F-480D-7355-CCFF-82BBCF0B074B";
	setAttr ".t" -type "double3" -5.4537835835963278e-14 -2.6285238440840999 17.768860011649402 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_base_ctl" -p "spineQd0_base_ctl_ofs";
	rename -uid "D194E07C-4CFA-B2CD-FD59-8AB9B105C667";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode transform -n "spineQd0_tangent0_ctl_ofs" -p "spineQd0_base_ctl";
	rename -uid "DB1F5E04-483F-FEF3-8898-AD8176D002EC";
	setAttr ".t" -type "double3" 5.4561850914083838e-14 2.6285238440840999 -17.768860011649409 ;
	setAttr ".r" -type "double3" 8.8958361169401687 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_tangent0_ctl" -p "spineQd0_tangent0_ctl_ofs";
	rename -uid "393EC4EC-4097-37EF-7B38-2C80C0896CA1";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode joint -n "spineQd0_0_ikj" -p "spineQd0_tangent0_ctl";
	rename -uid "117442BB-4985-5A1D-542F-F5812A9F6B59";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" 8.8958361169401687 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -8.8958361169401687 0 0 ;
	setAttr ".radi" 4.2882374046480827;
createNode nurbsCurve -n "spineQd0_tangent0_ctlShape1" -p "spineQd0_tangent0_ctl";
	rename -uid "0DF5B214-423E-0338-6D82-57B89039C454";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-7.6250007581271727e-07 5.1235412576395492 -1.0963189060179264
		-9.2988297317087952e-07 5.4747311421496665 -2.0138605573267006
		-9.8049491199709419e-07 5.0394744198786299 -2.6844289839325159
		-9.0487771870289184e-07 4.5301963789543667 -2.8786310026836595
		-7.9834232441623183e-07 3.8126857895123334 -2.8856603101574256
		3.3056626988690167e-07 -3.7904582000714298 -2.9601477737841244
		4.3710166417544262e-07 -4.5079687895134111 -2.967177081257836
		5.1271885734945592e-07 -5.0172468304376983 -2.782953652347623
		6.9588426569614056e-07 -5.4747311421496665 -2.1008689928083846
		7.6227871536048385e-07 -5.1457688470804657 -1.1779226529541718
		9.8049491222731118e-07 -0.9420950790319309 4.5642981786308141
		9.3371579752268886e-07 -0.47224671004246993 5.0393205474580842
		8.7757083518797901e-07 -0.0016661469203021737 5.234223197536882
		7.6293250718243491e-07 0.47348725364714694 5.050588992721921
		6.3892833155356716e-07 0.94937284834737845 4.5868350691585187
		-7.6250007581271727e-07 5.1235412576395492 -1.0963189060179264
		;
	setAttr ".adot" yes;
createNode transform -n "spineQd0_end_ctl_ofs" -p "spineQd0_base_ctl";
	rename -uid "99D7348B-4B44-CE0E-949D-8CA47EDAD851";
	setAttr ".t" -type "double3" 0 3.0409704506277819 -21.834778344899007 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_end_ctl" -p "spineQd0_end_ctl_ofs";
	rename -uid "D84698F7-41D0-24C2-E99E-CEB9CF3FBF6F";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spineQd0_end_ctlShape1" -p "spineQd0_end_ctl";
	rename -uid "C4E9FC9D-4CBB-2DC0-965A-C5817B6B5327";
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
		12.843236395953021 18.971460597911918 0
		10.378372845214564 20.73394614150698 -3.9789986290263899
		10.378372845214564 20.73394614150698 -2.4648635507384591
		8.8216169184323796 21.831040765488979 -2.4648635507384591
		6.8756720099546493 22.693043684331979 -2.4648635507384591
		4.6702677803465527 23.398318799748985 -2.4648635507384591
		2.4648635507384591 23.790138308313999 -2.4648635507384591
		0 23.868502210026985 -2.4648635507384591
		-2.4648635507384591 23.790138308313999 -2.4648635507384591
		-4.6702677803465527 23.398318799748985 -2.4648635507384591
		-6.8756720099546493 22.693043684331979 -2.4648635507384591
		-8.8216169184323796 21.831040765488979 -2.4648635507384591
		-10.378372845214564 20.73394614150698 -2.4648635507384591
		-10.378372845214564 20.73394614150698 -3.9789986290263899
		-12.843236395953021 18.971460597911918 0
		-10.378372845214564 20.73394614150698 3.9789986290263899
		-10.378372845214564 20.73394614150698 2.4648635507384591
		-8.8216169184323796 21.831040765488979 2.4648635507384591
		-6.8756720099546493 22.693043684331979 2.4648635507384591
		-4.6702677803465527 23.398318799748985 2.4648635507384591
		-2.4648635507384591 23.790138308313999 2.4648635507384591
		0 23.868502210026985 2.4648635507384591
		2.4648635507384591 23.790138308313999 2.4648635507384591
		4.6702677803465527 23.398318799748985 2.4648635507384591
		6.8756720099546493 22.693043684331979 2.4648635507384591
		8.8216169184323796 21.831040765488979 2.4648635507384591
		10.378372845214564 20.73394614150698 2.4648635507384591
		10.378372845214564 20.73394614150698 3.9789986290263899
		12.843236395953021 18.971460597911918 0
		;
	setAttr ".adot" yes;
createNode joint -n "spineQd0_two_ikj" -p "spineQd0_base_ctl";
	rename -uid "904CBB04-4328-859B-D0CD-DE8E4852F668";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 5.4537835835963278e-14 2.6285238440840999 -17.768860011649402 ;
	setAttr ".r" -type "double3" 8.8958361169401687 -3.7250698322583783e-16 3.9286862442551167e-15 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 21.441187023240413;
createNode joint -n "spineQd0_two_ikj_end" -p "spineQd0_two_ikj";
	rename -uid "81A6E697-41C8-189C-7CF8-928269F8185C";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -4.7432408478362276e-14 6.5021964895347821 106.94081427733343 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 21.441187023240413;
createNode transform -n "spineQd0_loc2" -p "spineQd0_two_ikj_end";
	rename -uid "32FB2E51-4051-62A4-A742-DB98E7A33C3E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.3589103203155148e-14 -3.2347923326676948 -53.587195275394592 ;
	setAttr ".r" -type "double3" -6.0955460235536538 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_loc2Shape" -p "spineQd0_loc2";
	rename -uid "66A1FA86-44F2-AC03-53AC-FC871A859069";
	setAttr -k off ".v";
createNode ikEffector -n "effector30" -p "spineQd0_two_ikj";
	rename -uid "41FD7F0A-4E85-F4FB-293A-EF80FF9589E5";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "spineQd0_loc1" -p "spineQd0_base_ctl";
	rename -uid "9FCA08CA-44C7-5351-AD05-78A7A86F6A84";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.069453056075615e-14 -2.3939035318879576 35.448240752874106 ;
	setAttr ".r" -type "double3" 2.8002900933865158 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_loc1Shape" -p "spineQd0_loc1";
	rename -uid "3487AAB8-4788-2AA7-6AED-DFB1C75DEC0B";
	setAttr -k off ".v";
createNode nurbsCurve -n "spineQd0_base_ctlShape1" -p "spineQd0_base_ctl";
	rename -uid "5E3E75B5-4FC4-2906-8AFD-59BC2C15427B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		25.202345104317086 42.182820620317386 -28.253465340960481
		2.1824123374420308e-15 52.621973766132676 -28.253465340960481
		-25.202345104317086 42.182820620317379 -28.253465340960481
		-35.6414982501324 1.8476615631038117e-15 1.1313664095813391e-31
		-25.202345104317086 -25.202345104317086 -1.5431985631504442e-15
		-3.5702332560525691e-15 -35.641498250132408 -2.1824123374420324e-15
		25.202345104317086 -25.202345104317082 -1.5431985631504442e-15
		35.6414982501324 -4.8604185321477902e-15 -2.9761479989556344e-31
		25.202345104317086 42.182820620317386 -28.253465340960481
		2.1824123374420308e-15 52.621973766132676 -28.253465340960481
		-25.202345104317086 42.182820620317379 -28.253465340960481
		;
createNode transform -n "spineQd0_mid_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "3DA98CC3-4A62-913D-FBC0-92BD0ECB88C3";
	setAttr ".t" -type "double3" -2.3843305275207128e-14 -5.0224273759720575 53.217100764523508 ;
	setAttr ".r" -type "double3" 2.8002900933865158 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_mid_ctl_ofs1" -p "spineQd0_mid_ctl_ofs";
	rename -uid "1ADB412A-49E3-28E7-D5A5-D9A5D34CB5D3";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_mid_ctl_ofs2" -p "spineQd0_mid_ctl_ofs1";
	rename -uid "713F4C40-415A-C4D3-165D-CFAE32B11A6F";
	setAttr ".t" -type "double3" 0 0 8.8817841970012523e-16 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "spineQd0_mid_ctl" -p "spineQd0_mid_ctl_ofs2";
	rename -uid "7B57838C-41FE-5239-06DD-6E95B528D71D";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode joint -n "spineQd0_1_ikj" -p "spineQd0_mid_ctl";
	rename -uid "D98BB825-4A12-5A1E-4CD1-D2AFBAEF499C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" 2.8002900933865158 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -2.8002900933865158 0 0 ;
	setAttr ".radi" 4.2882374046480827;
createNode nurbsCurve -n "spineQd0_mid_ctlShape1" -p "spineQd0_mid_ctl";
	rename -uid "95FB6317-408F-9C34-33FB-1BB7D892EA71";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		25.202345104317086 25.202345104317089 1.5431985631504446e-15
		2.1824123374420308e-15 35.641498250132379 2.1824123374420308e-15
		-25.202345104317086 25.202345104317082 1.5431985631504442e-15
		-35.6414982501324 1.8476615631038117e-15 1.1313664095813391e-31
		-25.202345104317086 -25.202345104317086 -1.5431985631504442e-15
		-3.5702332560525691e-15 -35.641498250132408 -2.1824123374420324e-15
		25.202345104317086 -25.202345104317082 -1.5431985631504442e-15
		35.6414982501324 -4.8604185321477902e-15 -2.9761479989556344e-31
		25.202345104317086 25.202345104317089 1.5431985631504446e-15
		2.1824123374420308e-15 35.641498250132379 2.1824123374420308e-15
		-25.202345104317086 25.202345104317082 1.5431985631504442e-15
		;
createNode transform -n "spineQd0_fore_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "743E1A31-4C4F-475B-D862-378837FCA048";
	setAttr ".t" -type "double3" -4.7432408478362269e-14 -10.113194196965566 106.65992509195806 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_fore_ctl" -p "spineQd0_fore_ctl_ofs";
	rename -uid "ED43BF72-4C48-A927-2BFC-D58B19954F80";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode transform -n "spineQd0_tangent1_ctl_ofs" -p "spineQd0_fore_ctl";
	rename -uid "F8F8E7B9-493A-869B-7F7F-DBAD6D6C447B";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_tangent1_ctl" -p "spineQd0_tangent1_ctl_ofs";
	rename -uid "AB04C8F1-4272-932D-EF31-FA9D45E84AB0";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode joint -n "spineQd0_2_ikj" -p "spineQd0_tangent1_ctl";
	rename -uid "85FA6E22-4DF0-31E9-1401-D0AC92674095";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".radi" 4.2882374046480827;
createNode ikHandle -n "spineQd0_two_ikj_ikh" -p "spineQd0_tangent1_ctl";
	rename -uid "92B5C4EB-44A9-8A1A-8473-1AAC0801F844";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.3108872417680944e-30 0 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 8.8958361169401972 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode nurbsCurve -n "spineQd0_tangent1_ctlShape1" -p "spineQd0_tangent1_ctl";
	rename -uid "206A75A8-40FB-0BCA-3D1D-299ABBAF64F0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-7.6250007581271727e-07 -5.1235412576395492 1.0963189060179273
		-9.2988297317087952e-07 -5.4747311421496665 2.0138605573267014
		-9.8049491199709419e-07 -5.0394744198786299 2.6844289839325164
		-9.0487771870289184e-07 -4.5301963789543667 2.8786310026836599
		-7.9834232441623183e-07 -3.8126857895123329 2.8856603101574261
		3.3056626988690167e-07 3.7904582000714302 2.960147773784124
		4.3710166417544262e-07 4.5079687895134111 2.9671770812578355
		5.1271885734945592e-07 5.0172468304376983 2.7829536523476226
		6.9588426569614056e-07 5.4747311421496665 2.1008689928083837
		7.6227871536048385e-07 5.1457688470804657 1.1779226529541711
		9.8049491222731118e-07 0.94209507903193035 -4.5642981786308141
		9.3371579752268886e-07 0.47224671004246932 -5.0393205474580842
		8.7757083518797901e-07 0.001666146920301533 -5.234223197536882
		7.6293250718243491e-07 -0.4734872536471475 -5.050588992721921
		6.3892833155356716e-07 -0.94937284834737901 -4.5868350691585187
		-7.6250007581271727e-07 -5.1235412576395492 1.0963189060179273
		;
	setAttr ".adot" yes;
createNode transform -n "spineQd0_anchorToRbj" -p "spineQd0_fore_ctl";
	rename -uid "D9A3DC05-40D5-D41B-A09A-2BB079E0D447";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorToRbjShape" -p "spineQd0_anchorToRbj";
	rename -uid "DD365BD0-43D4-CE17-856A-ACB0CCA5D87C";
	setAttr -k off ".v";
createNode transform -n "neckQd0_cog_ctl_SPACE_1_ofs" -p "spineQd0_fore_ctl";
	rename -uid "3EC40DC1-4099-A56F-F156-9DAF51F60770";
	setAttr ".t" -type "double3" 2.0163490560380634e-14 1.4411529565381045 6.3586768520976591 ;
	setAttr ".r" -type "double3" -26.90976132496036 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_1" -p "neckQd0_cog_ctl_SPACE_1_ofs";
	rename -uid "E3C4A711-4475-5AB6-FFEE-A9B96EC5DE91";
	setAttr ".t" -type "double3" -3.1554436208840472e-30 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode nurbsCurve -n "spineQd0_fore_ctlShape1" -p "spineQd0_fore_ctl";
	rename -uid "6955A33E-490A-FB36-9585-C980C9F2CD51";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		25.202345104317086 51.459543254494235 -22.66919789303779
		2.1824123374420308e-15 61.898696400309525 -22.66919789303779
		-25.202345104317086 51.459543254494228 -22.66919789303779
		-35.6414982501324 1.8476615631038117e-15 1.1313664095813391e-31
		-25.202345104317086 -25.202345104317086 -1.5431985631504442e-15
		-3.5702332560525691e-15 -35.641498250132408 -2.1824123374420324e-15
		25.202345104317086 -25.202345104317082 -1.5431985631504442e-15
		35.6414982501324 -4.8604185321477902e-15 -2.9761479989556344e-31
		25.202345104317086 51.459543254494235 -22.66919789303779
		2.1824123374420308e-15 61.898696400309525 -22.66919789303779
		-25.202345104317086 51.459543254494228 -22.66919789303779
		;
createNode transform -n "head0_head_fkc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "C7F9967E-4E90-9F13-A416-0D9A2BAC3121";
	setAttr ".t" -type "double3" -2.611612640555927e-14 40.417329307412786 154.17502638714814 ;
createNode transform -n "head0_head_fkc_SPACE_2" -p "head0_head_fkc_SPACE_2_ofs";
	rename -uid "5E69AEE5-465D-4622-8A7A-7C91A575CE15";
createNode transform -n "lfLegQd0_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "B58E37A9-40D0-8BFD-35D2-D29CB30515B7";
	setAttr ".t" -type "double3" 15.523391903594645 -128.19126917814549 -37.282269299771244 ;
createNode transform -n "lfLegQd0_ikc_SPACE_2" -p "lfLegQd0_ikc_SPACE_2_ofs";
	rename -uid "CDCEFE23-4D3D-4AC3-7817-E5A2AE8B2F2B";
createNode transform -n "lfLegQd0_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "FA8DE2E9-4D66-91A0-8AD9-35922C7D830F";
	setAttr ".t" -type "double3" 21.943537102018073 -58.098798236027164 30.350441059411885 ;
	setAttr ".r" -type "double3" 11.984909460277844 3.7472038499647358 6.7504238021140051e-06 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "lfLegQd0_pvc_SPACE_3" -p "lfLegQd0_pvc_SPACE_3_ofs";
	rename -uid "3E163E4F-4857-5D99-B01C-79827410A6C6";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 1.4210854715202004e-14 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd1_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "381B3661-461E-7461-F672-A5907E415A18";
	setAttr ".t" -type "double3" 15.136936168869907 -128.81325390541593 92.379228183986839 ;
createNode transform -n "lfLegQd1_ikc_SPACE_2" -p "lfLegQd1_ikc_SPACE_2_ofs";
	rename -uid "FBA49F72-4877-9921-61B4-009F3B41C666";
createNode transform -n "lfLegQd1_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "3B12FAC8-4339-6480-0521-7C9BB60C1649";
	setAttr ".t" -type "double3" 16.584956749010061 -63.948500741291241 54.006622844399409 ;
	setAttr ".r" -type "double3" -174.98583209900039 0.70584409984867125 179.99999313973876 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "lfLegQd1_pvc_SPACE_3" -p "lfLegQd1_pvc_SPACE_3_ofs";
	rename -uid "A6520833-48C6-0EA9-871F-B99DD297A42A";
	setAttr ".t" -type "double3" 0 -2.8421709430404007e-14 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "3D1B01B8-4B64-EF98-C8DD-31A79ECF3408";
	setAttr ".t" -type "double3" -5.4537835835963259e-14 39.90813806749955 145.38550306138592 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_2" -p "neckQd0_fore_ctl_SPACE_2_ofs";
	rename -uid "359BC55B-4068-4A27-B9D5-9DA5DF70B333";
createNode transform -n "neckQd0_cog_ctl_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "3FB67D90-42AE-110F-24A1-94B7C6B0797E";
	setAttr ".t" -type "double3" -2.7268917917981636e-14 -8.6720412404274612 113.01860194405572 ;
	setAttr ".r" -type "double3" -26.90976132496036 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_2" -p "neckQd0_cog_ctl_SPACE_2_ofs";
	rename -uid "DE2A3826-4F1C-4F59-EEF9-1AA06F568D7F";
	setAttr ".t" -type "double3" -3.1554436208840472e-30 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd0_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "7C98962D-4EDA-0C92-1E68-0FB97455D7F2";
	setAttr ".t" -type "double3" -15.523391903587372 -128.19126917814552 -37.282269299771258 ;
createNode transform -n "rtLegQd0_ikc_SPACE_2" -p "rtLegQd0_ikc_SPACE_2_ofs";
	rename -uid "AA42EAE0-406C-E796-486C-46828CE9A985";
createNode transform -n "rtLegQd0_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "41E2682A-4F33-0AA2-1A31-77946E048A1F";
	setAttr ".t" -type "double3" -21.943537102019594 -58.09879823602715 30.350441059411811 ;
	setAttr ".r" -type "double3" 11.984909019107619 -3.7472052798902 4.980263935172998e-17 ;
createNode transform -n "rtLegQd0_pvc_SPACE_3" -p "rtLegQd0_pvc_SPACE_3_ofs";
	rename -uid "7F09E09E-4007-DCDC-405E-1C9DBB8646B3";
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-14 0 ;
createNode transform -n "rtLegQd1_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "7B435A1B-4B4B-6B02-8235-96BBAA48F81A";
	setAttr ".t" -type "double3" -15.136936168863507 -128.81325390541599 92.379228183986839 ;
createNode transform -n "rtLegQd1_ikc_SPACE_2" -p "rtLegQd1_ikc_SPACE_2_ofs";
	rename -uid "F5121698-4FB4-749A-7EE8-CB91CFBB286D";
createNode transform -n "rtLegQd1_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "48091272-4D7F-EF4E-8E8C-51BDDC156EBA";
	setAttr ".t" -type "double3" -16.584956749008679 -63.948500741291198 54.006622844399416 ;
	setAttr ".r" -type "double3" 5.0141679855110075 180.70584349798943 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "rtLegQd1_pvc_SPACE_3" -p "rtLegQd1_pvc_SPACE_3_ofs";
	rename -uid "046C955F-4728-B91C-AC9C-1C9F3715A2EF";
	setAttr ".t" -type "double3" 0 0 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode nurbsCurve -n "spineQd0_cog_ctlShape1" -p "spineQd0_cog_ctl";
	rename -uid "177C9733-4C6A-CB86-8CCF-14A1AAF75388";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		2.6801483779050517 58.963264313911132 57.41262419172709
		2.6801483779050517 66.151643200044077 57.41262419172709
		2.6801483779050517 69.683857825531334 35.971437168486673
		2.6801483779050517 58.963264313911132 35.971437168486673
		2.6801483779050517 58.963264313911132 57.41262419172709
		-2.6801483779050517 58.963264313911132 57.41262419172709
		-2.6801483779050517 58.963264313911132 35.971437168486673
		2.6801483779050517 58.963264313911132 35.971437168486673
		2.6801483779050517 69.683857825531334 35.971437168486673
		-2.6801483779050517 69.683857825531334 35.971437168486673
		-2.6801483779050517 58.963264313911132 35.971437168486673
		-2.6801483779050517 69.683857825531334 35.971437168486673
		-2.6801483779050517 66.151643200044077 57.41262419172709
		-2.6801483779050517 58.963264313911132 57.41262419172709
		2.6801483779050517 58.963264313911132 57.41262419172709
		2.6801483779050517 66.151643200044077 57.41262419172709
		-2.6801483779050517 66.151643200044077 57.41262419172709
		;
createNode transform -n "spineQd0_setting" -p "spineQd0_IK";
	rename -uid "D30B3486-45A8-2AC7-1DE5-26A77BA196D2";
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
	rename -uid "25486473-4A37-8D99-7AF6-6EB23A880823";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-8.0404451337151546 10.720593511620207 2.0016673076603371e-16
		-7.8859501876181568 10.720593511620207 -1.5686129957960477
		-7.428402655413735 10.720593511620207 -3.0769452352491502
		-6.6853859499743225 10.720593511620207 -4.4670318794524952
		-5.6854532763555499 10.720593511620207 -5.6854532763555499
		-4.4670318794524952 10.720593511620207 -6.6853859499743225
		-3.0769452352491502 10.720593511620207 -7.428402655413735
		-1.5686129957960477 10.720593511620207 -7.8859501876181568
		4.9233527003651863e-16 10.720593511620207 -8.0404451337151546
		1.5686129957960477 10.720593511620207 -7.8859501876181568
		3.0769452352491502 10.720593511620207 -7.428402655413735
		4.4670318794524952 10.720593511620207 -6.6853859499743225
		5.6854532763555499 10.720593511620207 -5.6854532763555499
		6.6853859499743225 10.720593511620207 -4.4670318794524952
		7.428402655413735 10.720593511620207 -3.0769452352491502
		7.8859501876181568 10.720593511620207 -1.5686129957960477
		8.0404451337151546 10.720593511620207 -8.6966823687671115e-16
		7.7344242779627459 10.720593511620207 -1.5384725217749999
		6.8629492050353527 10.720593511620207 -2.8427266381777749
		5.5586948969334271 10.720593511620207 -3.7142013277068675
		4.0202225668575773 10.720593511620207 -4.0202225668575773
		2.4817500450825776 10.720593511620207 -3.7142013277068675
		1.1774959286798026 10.720593511620207 -2.8427266381777749
		0.30602123915070994 10.720593511620207 -1.5384725217749999
		0 10.720593511620207 -8.6966823687671115e-16
		-0.30602123915070994 10.720593511620207 1.5384725217749999
		-1.1774959286798026 10.720593511620207 2.8427266381777749
		-2.4817500450825776 10.720593511620207 3.7142013277068675
		-4.0202225668575773 10.720593511620207 4.0202225668575773
		-5.5586948969334271 10.720593511620207 3.7142013277068675
		-6.8629492050353527 10.720593511620207 2.8427266381777749
		-7.7344242779627459 10.720593511620207 1.5384725217749999
		-8.0404451337151546 10.720593511620207 2.0016673076603371e-16
		-7.8859501876181568 10.720593511620207 1.5686129957960477
		-7.428402655413735 10.720593511620207 3.0769452352491502
		-6.6853859499743225 10.720593511620207 4.4670318794524952
		-5.6854532763555499 10.720593511620207 5.6854532763555499
		-4.4670318794524952 10.720593511620207 6.6853859499743225
		-3.0769452352491502 10.720593511620207 7.428402655413735
		-1.5686129957960477 10.720593511620207 7.8859501876181568
		-9.3866963582081174e-16 10.720593511620207 8.0404451337151546
		1.5686129957960477 10.720593511620207 7.8859501876181568
		3.0769452352491502 10.720593511620207 7.428402655413735
		4.4670318794524952 10.720593511620207 6.6853859499743225
		5.6854532763555499 10.720593511620207 5.6854532763555499
		6.6853859499743225 10.720593511620207 4.4670318794524952
		7.428402655413735 10.720593511620207 3.0769452352491502
		7.8859501876181568 10.720593511620207 1.5686129957960477
		8.0404451337151546 10.720593511620207 -8.6966823687671115e-16
		;
	setAttr ".adot" yes;
createNode transform -n "spineQd0_anchorM1" -p "master_ctl";
	rename -uid "7E218F51-44BA-DEA1-8CD3-9FA8FDD50989";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorM1Shape" -p "spineQd0_anchorM1";
	rename -uid "389C6EFA-41E0-AAD3-365B-D9AFBC375F83";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 16.080890267430309 16.080890267430309 16.080890267430309 ;
createNode transform -n "spineQd0_anchorM2" -p "master_ctl";
	rename -uid "456ACEB5-4B03-00EA-27E7-F0899A42334A";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorM2Shape" -p "spineQd0_anchorM2";
	rename -uid "7D641329-4AF9-7E61-70B5-4AB77ADECF91";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 16.080890267430309 16.080890267430309 16.080890267430309 ;
createNode transform -n "tail0_ctl_data" -p "master_ctl";
	rename -uid "64DE72A4-4AE3-D71C-40B7-D3A0D5F35C9B";
	setAttr -cb on ".ro";
createNode transform -n "tail0_FK" -p "tail0_ctl_data";
	rename -uid "60A98135-48EF-15B0-09BF-B3B3DB3CFEBB";
	setAttr ".t" -type "double3" 0 150.04235771098138 -56.955020297575011 ;
	setAttr -cb on ".ro";
createNode transform -n "tail0_setting" -p "tail0_FK";
	rename -uid "BAE306C7-48E7-2F28-A1A6-AD9B434967B7";
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
	rename -uid "03E5F1E1-4535-D53D-7C2C-A292AB45B7AF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-2.5126034629312723 -3.8301574126551538e-33 6.2551216073528565e-17
		-2.4643244771148072 3.0015150611127237e-17 -0.49018460790304957
		-2.3213429014988205 5.8876838637965873e-17 -0.96153174665898788
		-2.0891534746629166 8.5475919141935168e-17 -1.3959276610535916
		-1.776678946617507 1.0879020647276089e-16 -1.776678946617507
		-1.3959276610535916 1.2792375725404949e-16 -2.0891534746629166
		-0.96153174665898788 1.4214126502646034e-16 -2.3213429014988205
		-0.49018460790304957 1.5089635942718905e-16 -2.4643244771148072
		1.538525894828628e-16 1.538525894828628e-16 -2.5126034629312723
		0.49018460790304957 1.5089635942718905e-16 -2.4643244771148072
		0.96153174665898788 1.4214126502646034e-16 -2.3213429014988205
		1.3959276610535916 1.2792375725404949e-16 -2.0891534746629166
		1.776678946617507 1.0879020647276089e-16 -1.776678946617507
		2.0891534746629166 8.5475919141935168e-17 -1.3959276610535916
		2.3213429014988205 5.8876838637965873e-17 -0.96153174665898788
		2.4643244771148072 3.0015150611127237e-17 -0.49018460790304957
		2.5126034629312723 1.6640958586616993e-32 -2.7176746899435656e-16
		2.4169733020253159 2.9438419318982936e-17 -0.48076584337692657
		2.1446412047743895 5.4395106561783437e-17 -0.88833947330875351
		1.7370675149374279 7.107063251323017e-17 -1.1606714507494102
		1.2563017314656362 7.6926294741431401e-17 -1.2563017314656362
		0.77553588808870944 7.107063251323017e-17 -1.1606714507494102
		0.3679622581568826 5.4395106561783437e-17 -0.88833947330875351
		0.095630280716225896 2.9438419318982936e-17 -0.48076584337692657
		0 1.6640958586616993e-32 -2.7176746899435656e-16
		-0.095630280716225896 -2.9438419318982936e-17 0.48076584337692657
		-0.3679622581568826 -5.4395106561783437e-17 0.88833947330875351
		-0.77553588808870944 -7.107063251323017e-17 1.1606714507494102
		-1.2563017314656362 -7.6926294741431401e-17 1.2563017314656362
		-1.7370675149374279 -7.107063251323017e-17 1.1606714507494102
		-2.1446412047743895 -5.4395106561783437e-17 0.88833947330875351
		-2.4169733020253159 -2.9438419318982936e-17 0.48076584337692657
		-2.5126034629312723 -3.8301574126551538e-33 6.2551216073528565e-17
		-2.4643244771148072 -3.0015150611127237e-17 0.49018460790304957
		-2.3213429014988205 -5.8876838637965873e-17 0.96153174665898788
		-2.0891534746629166 -8.5475919141935168e-17 1.3959276610535916
		-1.776678946617507 -1.0879020647276089e-16 1.776678946617507
		-1.3959276610535916 -1.2792375725404949e-16 2.0891534746629166
		-0.96153174665898788 -1.4214126502646034e-16 2.3213429014988205
		-0.49018460790304957 -1.5089635942718905e-16 2.4643244771148072
		-2.9333010029782276e-16 -1.538525894828628e-16 2.5126034629312723
		0.49018460790304957 -1.5089635942718905e-16 2.4643244771148072
		0.96153174665898788 -1.4214126502646034e-16 2.3213429014988205
		1.3959276610535916 -1.2792375725404949e-16 2.0891534746629166
		1.776678946617507 -1.0879020647276089e-16 1.776678946617507
		2.0891534746629166 -8.5475919141935168e-17 1.3959276610535916
		2.3213429014988205 -5.8876838637965873e-17 0.96153174665898788
		2.4643244771148072 -3.0015150611127237e-17 0.49018460790304957
		2.5126034629312723 1.6640958586616993e-32 -2.7176746899435656e-16
		;
	setAttr ".adot" yes;
createNode transform -n "tail0_0_chainGrp" -p "tail0_FK";
	rename -uid "F94321A8-4CA6-6B77-43D1-8992DD797910";
	setAttr -cb on ".ro";
createNode transform -n "tail0_1_chainGrp" -p "tail0_0_chainGrp";
	rename -uid "3EB977D4-4CA0-9772-647E-CD85CE4575FD";
	setAttr -cb on ".ro";
createNode transform -n "tail0_2_chainGrp" -p "tail0_1_chainGrp";
	rename -uid "D5062817-4091-82C8-3B60-F1B975879E1B";
	setAttr -cb on ".ro";
createNode transform -n "tail0_3_chainGrp" -p "tail0_2_chainGrp";
	rename -uid "7A67C713-41BE-DF8F-0901-01A34C240E8F";
	setAttr -cb on ".ro";
createNode transform -n "tail0_4_chainGrp" -p "tail0_3_chainGrp";
	rename -uid "C7FA54F1-4C49-7469-6335-5D8425D26C80";
	setAttr -cb on ".ro";
createNode transform -n "tail0_5_chainGrp" -p "tail0_4_chainGrp";
	rename -uid "EF36498E-4134-A825-8E17-2AA3DC26BE32";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "tail0_6_chainGrp" -p "tail0_5_chainGrp";
	rename -uid "DE8E5BCD-4538-4D92-FC7E-D5AB3DB7E22D";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "tail0_0_fkc_ofs" -p "tail0_FK";
	rename -uid "5B7E8741-4FF5-8C21-0A50-C8AA1929B6A4";
	setAttr -cb on ".ro";
createNode transform -n "tail0_0_fkc" -p "tail0_0_fkc_ofs";
	rename -uid "85DE90CF-4C26-A979-1A62-BF9BDDBE6A39";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "tail0_1_fkc_ofs" -p "tail0_0_fkc";
	rename -uid "C2EC0D6E-4A48-0783-AF16-1D99B8A0933A";
	setAttr -cb on ".ro";
createNode transform -n "tail0_1_fkc" -p "tail0_1_fkc_ofs";
	rename -uid "EEA96862-4E17-AD49-19C6-B2AF1ECE724D";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "tail0_2_fkc_ofs" -p "tail0_1_fkc";
	rename -uid "9210ED99-411C-AB5E-7487-26AA472D327B";
	setAttr -cb on ".ro";
createNode transform -n "tail0_2_fkc" -p "tail0_2_fkc_ofs";
	rename -uid "E54907B8-44FB-7833-9DA8-9FAC26B92472";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "tail0_3_fkc_ofs" -p "tail0_2_fkc";
	rename -uid "AE3C6DC2-4D17-CF4C-D866-F2B42619D414";
	setAttr -cb on ".ro";
createNode transform -n "tail0_3_fkc" -p "tail0_3_fkc_ofs";
	rename -uid "71BECD95-4EE8-840E-F683-48AED7A9FF29";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "tail0_4_fkc_ofs" -p "tail0_3_fkc";
	rename -uid "4D7EC254-475A-CF3B-84A3-D78F89A4B23C";
	setAttr -cb on ".ro";
createNode transform -n "tail0_4_fkc" -p "tail0_4_fkc_ofs";
	rename -uid "2A96C836-4FF8-E173-E472-BB9098312BDC";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "tail0_5_fkc_ofs" -p "tail0_4_fkc";
	rename -uid "9757DD56-471C-62D3-082F-3CACDD3D8C23";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "tail0_5_fkc" -p "tail0_5_fkc_ofs";
	rename -uid "F6AF2AC7-43BB-79DF-723F-B18CEDA50E37";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "tail0_6_fkc_ofs" -p "tail0_5_fkc";
	rename -uid "C875D075-4C14-9DAD-417B-7E99D35213AD";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "tail0_6_fkc" -p "tail0_6_fkc_ofs";
	rename -uid "27F227B7-42AE-F496-866F-D4A6DE3BB6BB";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "tail0_6_ofs_ctl" -p "tail0_6_fkc";
	rename -uid "253339BC-4C35-153D-653C-D482BAD078BA";
	setAttr -cb on ".ro";
createNode joint -n "tail0_6_ofs_jnt" -p "tail0_6_ofs_ctl";
	rename -uid "624EFF44-4123-2AD9-9D59-3D8C24984973";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 3.1554436208840472e-30 0 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -76.216834420337761 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 76.216834420337761 0 0 ;
createNode nurbsCurve -n "tail0_6_ofs_ctlShape1" -p "tail0_6_ofs_ctl";
	rename -uid "5C3F3707-4074-8E60-B598-E5ADA83A64D0";
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
		0.50003321015762026 2.9931151617214797 12.201256725314328
		0.46426847781010877 3.1854214535062999 12.201256725314328
		0.35533572831233373 3.3484508900338135 12.201256725314328
		0.19230629178482017 3.4573836395315887 12.201256725314328
		2.3626057639922823e-30 3.4931366463963904 12.201256725314328
		-0.19230629178482017 3.4573836395315887 12.201256725314328
		-0.35533572831233373 3.3484508900338135 12.201256725314328
		-0.46426847781010877 3.1854214535062999 12.201256725314328
		-0.50003321015762026 2.9931151380302761 12.201256725314328
		-0.46426847781010877 2.8008088699366596 12.201256725314328
		-0.35533572831233373 2.637779433409146 12.201256725314328
		-0.19230629178482017 2.5288466839113708 12.201256725314328
		1.9968363049200812e-08 2.493093677046569 12.19785667034229
		0.19230629178482017 2.5288466839113708 12.201256725314328
		0.35533572831233373 2.637779433409146 12.201256725314328
		0.46426847781010877 2.8008088699366596 12.201256725314328
		0.50003321015762026 2.9931151617214797 12.201256725314328
		0.4619702831989963 2.9944163418879195 12.009906562891041
		0.35357690590587015 2.9955194485001502 11.847687524725668
		0.19135451760257957 2.9962565190435613 11.739296492529084
		1.9968363049200812e-08 2.9965153506990343 11.701234570611835
		-0.19135451760257957 2.9962565190435613 11.739296492529084
		-0.35357690590587015 2.9955194485001502 11.847687524725668
		-0.4619702831989963 2.9944163418879195 12.009906562891041
		-0.50003321015762026 2.9931151380302761 12.201256725314328
		-0.4619702831989963 2.9918139346531092 12.392606217710032
		-0.35357690590587015 2.9907108280408785 12.554825590889198
		-0.19135451760257957 2.9899737574974674 12.66321628807199
		1.9968363049200812e-08 2.9897149392425457 12.701278209989239
		0.19135451760257957 2.9899737574974674 12.66321628807199
		0.35357690590587015 2.9907108280408785 12.554825590889198
		0.4619702831989963 2.9918139346531092 12.392606217710032
		0.50003321015762026 2.9931151617214797 12.201256725314328
		0.4619702831989963 2.9944163418879195 12.009906562891041
		0.35357690590587015 2.9955194485001502 11.847687524725668
		0.19135451760257957 2.9962565190435613 11.739296492529084
		1.9968363049200812e-08 2.9965153506990343 11.701234570611835
		1.9968363049200812e-08 3.1876064134558155 11.740598021109866
		1.9968363049200812e-08 3.3490880862656409 11.850091918708751
		1.9968363049200812e-08 3.4563759180461329 12.013047987215881
		2.3626057639922823e-30 3.4931366463963904 12.201256725314328
		1.9968363049200812e-08 3.4537735309121498 12.395747977048664
		1.9968363049200812e-08 3.3442796333132652 12.557229314844697
		1.9968363049200812e-08 3.1813238998199269 12.664517481638981
		1.9968363049200812e-08 2.9897149392425457 12.701278209989239
		1.9968363049200812e-08 2.7986239099871439 12.661914759491207
		1.9968363049200812e-08 2.6371422371773185 12.552420861892323
		1.9968363049200812e-08 2.5298544053968266 12.389464793385192
		1.9968363049200812e-08 2.493093677046569 12.19785667034229
		1.9968363049200812e-08 2.5324567925308097 12.006764803552409
		1.9968363049200812e-08 2.6419506901296943 11.845283465756376
		1.9968363049200812e-08 2.8049064236230326 11.737995298962092
		1.9968363049200812e-08 2.9965153506990343 11.701234570611835
		;
createNode nurbsCurve -n "tail0_6_fkcShape1" -p "tail0_6_fkc";
	rename -uid "66253423-4F69-A22C-9587-6683D156738C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.2022009051206677 5.202200905120681 -2.124532797907441e-14
		2.8802792287195748e-16 4.7038529488256104 -2.1201100205890751e-14
		-5.2022009051206677 5.2022009051206775 -2.124532797907441e-14
		-4.7038529488256167 8.8960995047542221e-15 -2.1352103268927954e-14
		-5.2022009051206677 -5.2022009051206606 -2.1458878558781501e-14
		-4.7118816699619823e-16 -4.7038529488256007 -2.1503106331965157e-14
		5.2022009051206677 -5.2022009051206632 -2.1458878558781501e-14
		4.7038529488256167 8.0107881714437422e-15 -2.1352103268927954e-14
		5.2022009051206677 5.202200905120681 -2.124532797907441e-14
		2.8802792287195748e-16 4.7038529488256104 -2.1201100205890751e-14
		-5.2022009051206677 5.2022009051206775 -2.124532797907441e-14
		;
createNode transform -n "tail0_5_ofs_ctl" -p "tail0_5_fkc";
	rename -uid "FDA5E0FF-4AE7-CE01-89AD-A59256771CA7";
	setAttr -cb on ".ro";
createNode joint -n "tail0_5_ofs_jnt" -p "tail0_5_ofs_ctl";
	rename -uid "5821107C-46C2-5BB1-5D20-5ABA1C56D56B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -3.1554436208840472e-30 0 0 ;
	setAttr ".r" -type "double3" -76.216834420337776 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 76.216834420337776 0 0 ;
createNode nurbsCurve -n "tail0_5_ofs_ctlShape1" -p "tail0_5_ofs_ctl";
	rename -uid "4E828440-419C-C08C-C49A-82990D5D2248";
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
		0.50003321015762026 2.9931151617214815 12.201256725314346
		0.46426847781010877 3.1854214535063017 12.201256725314346
		0.35533572831233373 3.3484508900338152 12.201256725314346
		0.19230629178482017 3.4573836395315904 12.201256725314346
		-2.3626057639922823e-30 3.4931366463963922 12.201256725314346
		-0.19230629178482017 3.4573836395315904 12.201256725314346
		-0.35533572831233373 3.3484508900338152 12.201256725314346
		-0.46426847781010877 3.1854214535063017 12.201256725314346
		-0.50003321015762026 2.9931151380302778 12.201256725314346
		-0.46426847781010877 2.8008088699366613 12.201256725314346
		-0.35533572831233373 2.6377794334091478 12.201256725314346
		-0.19230629178482017 2.5288466839113726 12.201256725314346
		1.9968363049200812e-08 2.4930936770465708 12.197856670342308
		0.19230629178482017 2.5288466839113726 12.201256725314346
		0.35533572831233373 2.6377794334091478 12.201256725314346
		0.46426847781010877 2.8008088699366613 12.201256725314346
		0.50003321015762026 2.9931151617214815 12.201256725314346
		0.4619702831989963 2.9944163418879213 12.009906562891059
		0.35357690590587015 2.9955194485001519 11.847687524725686
		0.19135451760257957 2.996256519043563 11.739296492529101
		1.9968363049200812e-08 2.9965153506990361 11.701234570611852
		-0.19135451760257957 2.996256519043563 11.739296492529101
		-0.35357690590587015 2.9955194485001519 11.847687524725686
		-0.4619702831989963 2.9944163418879213 12.009906562891059
		-0.50003321015762026 2.9931151380302778 12.201256725314346
		-0.4619702831989963 2.991813934653111 12.39260621771005
		-0.35357690590587015 2.9907108280408803 12.554825590889216
		-0.19135451760257957 2.9899737574974692 12.663216288072007
		1.9968363049200812e-08 2.9897149392425475 12.701278209989256
		0.19135451760257957 2.9899737574974692 12.663216288072007
		0.35357690590587015 2.9907108280408803 12.554825590889216
		0.4619702831989963 2.991813934653111 12.39260621771005
		0.50003321015762026 2.9931151617214815 12.201256725314346
		0.4619702831989963 2.9944163418879213 12.009906562891059
		0.35357690590587015 2.9955194485001519 11.847687524725686
		0.19135451760257957 2.996256519043563 11.739296492529101
		1.9968363049200812e-08 2.9965153506990361 11.701234570611852
		1.9968363049200812e-08 3.1876064134558173 11.740598021109884
		1.9968363049200812e-08 3.3490880862656427 11.850091918708769
		1.9968363049200812e-08 3.4563759180461346 12.013047987215899
		-2.3626057639922823e-30 3.4931366463963922 12.201256725314346
		1.9968363049200812e-08 3.4537735309121516 12.395747977048682
		1.9968363049200812e-08 3.3442796333132669 12.557229314844715
		1.9968363049200812e-08 3.1813238998199287 12.664517481638999
		1.9968363049200812e-08 2.9897149392425475 12.701278209989256
		1.9968363049200812e-08 2.7986239099871457 12.661914759491225
		1.9968363049200812e-08 2.6371422371773203 12.55242086189234
		1.9968363049200812e-08 2.5298544053968284 12.38946479338521
		1.9968363049200812e-08 2.4930936770465708 12.197856670342308
		1.9968363049200812e-08 2.5324567925308115 12.006764803552427
		1.9968363049200812e-08 2.6419506901296961 11.845283465756394
		1.9968363049200812e-08 2.8049064236230343 11.73799529896211
		1.9968363049200812e-08 2.9965153506990361 11.701234570611852
		;
createNode nurbsCurve -n "tail0_5_fkcShape1" -p "tail0_5_fkc";
	rename -uid "1173B321-4F06-B8DD-34CD-6CBF5CCEFCB5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.2022009051206677 5.2022009051206952 7.1763814513295988e-15
		2.880279228719559e-16 4.7038529488256247 7.2206092245132552e-15
		-5.2022009051206677 5.2022009051206917 7.1763814513295988e-15
		-4.7038529488256167 2.3178596612206123e-14 7.0696061614760534e-15
		-5.2022009051206677 -5.2022009051206464 6.962830871622508e-15
		-4.7118816699619981e-16 -4.7038529488255865 6.9186030984388509e-15
		5.2022009051206677 -5.202200905120649 6.962830871622508e-15
		4.7038529488256167 2.2293285278895643e-14 7.0696061614760534e-15
		5.2022009051206677 5.2022009051206952 7.1763814513295988e-15
		2.880279228719559e-16 4.7038529488256247 7.2206092245132552e-15
		-5.2022009051206677 5.2022009051206917 7.1763814513295988e-15
		;
createNode transform -n "tail0_4_ofs_ctl" -p "tail0_4_fkc";
	rename -uid "75A88FA9-4CC9-3FBE-37AE-1EB91A8CBC29";
	setAttr -cb on ".ro";
createNode joint -n "tail0_4_ofs_jnt" -p "tail0_4_ofs_ctl";
	rename -uid "2217588F-470D-684A-A8ED-CF9E86F63C71";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -1.5777218104420236e-30 2.8421709430404007e-14 0 ;
	setAttr ".r" -type "double3" -57.487509894868474 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 57.487509894868474 0 0 ;
createNode nurbsCurve -n "tail0_4_ofs_ctlShape1" -p "tail0_4_ofs_ctl";
	rename -uid "4C71900A-4BA9-E058-319F-2A9865649241";
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
		0.50003321015762026 6.7524138811149248 10.594069606458245
		0.46426847781010877 6.9447201728997445 10.594069606458245
		0.35533572831233373 7.1077496094272581 10.594069606458245
		0.19230629178482017 7.2166823589250333 10.594069606458245
		-1.1813028819961411e-30 7.2524353657898351 10.594069606458245
		-0.19230629178482017 7.2166823589250333 10.594069606458245
		-0.35533572831233373 7.1077496094272581 10.594069606458245
		-0.46426847781010877 6.9447201728997445 10.594069606458245
		-0.50003321015762026 6.7524138574237211 10.594069606458245
		-0.46426847781010877 6.5601075893301042 10.594069606458245
		-0.35533572831233373 6.3970781528025906 10.594069606458245
		-0.19230629178482017 6.2881454033048163 10.594069606458245
		1.9968363049200812e-08 6.2523923964400145 10.590669551486206
		0.19230629178482017 6.2881454033048163 10.594069606458245
		0.35533572831233373 6.3970781528025906 10.594069606458245
		0.46426847781010877 6.5601075893301042 10.594069606458245
		0.50003321015762026 6.7524138811149248 10.594069606458245
		0.4619702831989963 6.7537150612813646 10.402719444034958
		0.35357690590587015 6.7548181678935952 10.240500405869584
		0.19135451760257957 6.7555552384370063 10.132109373673
		1.9968363049200812e-08 6.7558140700924794 10.094047451755751
		-0.19135451760257957 6.7555552384370063 10.132109373673
		-0.35357690590587015 6.7548181678935952 10.240500405869584
		-0.4619702831989963 6.7537150612813646 10.402719444034958
		-0.50003321015762026 6.7524138574237211 10.594069606458245
		-0.4619702831989963 6.7511126540465538 10.785419098853948
		-0.35357690590587015 6.7500095474343231 10.947638472033114
		-0.19135451760257957 6.749272476890912 11.056029169215906
		1.9968363049200812e-08 6.7490136586359908 11.094091091133155
		0.19135451760257957 6.749272476890912 11.056029169215906
		0.35357690590587015 6.7500095474343231 10.947638472033114
		0.4619702831989963 6.7511126540465538 10.785419098853948
		0.50003321015762026 6.7524138811149248 10.594069606458245
		0.4619702831989963 6.7537150612813646 10.402719444034958
		0.35357690590587015 6.7548181678935952 10.240500405869584
		0.19135451760257957 6.7555552384370063 10.132109373673
		1.9968363049200812e-08 6.7558140700924794 10.094047451755751
		1.9968363049200812e-08 6.9469051328492606 10.133410902253782
		1.9968363049200812e-08 7.1083868056590855 10.242904799852667
		1.9968363049200812e-08 7.2156746374395775 10.405860868359797
		-1.1813028819961411e-30 7.2524353657898351 10.594069606458245
		1.9968363049200812e-08 7.2130722503055953 10.78856085819258
		1.9968363049200812e-08 7.1035783527067098 10.950042195988614
		1.9968363049200812e-08 6.9406226192133724 11.057330362782897
		1.9968363049200812e-08 6.7490136586359908 11.094091091133155
		1.9968363049200812e-08 6.557922629380589 11.054727640635123
		1.9968363049200812e-08 6.3964409565707632 10.945233743036239
		1.9968363049200812e-08 6.2891531247902712 10.782277674529109
		1.9968363049200812e-08 6.2523923964400145 10.590669551486206
		1.9968363049200812e-08 6.2917555119242543 10.399577684696325
		1.9968363049200812e-08 6.4012494095231398 10.238096346900292
		1.9968363049200812e-08 6.5642051430164772 10.130808180106008
		1.9968363049200812e-08 6.7558140700924794 10.094047451755751
		;
createNode nurbsCurve -n "tail0_4_fkcShape1" -p "tail0_4_fkc";
	rename -uid "7CAB336A-45A1-9C0F-31E4-3C95EA481F9C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.2022009051206677 5.2022009051206739 1.0677528985354533e-16
		2.880279228719559e-16 4.7038529488256033 1.510030630372023e-16
		-5.2022009051206677 5.2022009051206703 1.0677528985354527e-16
		-4.7038529488256167 1.8264933432781683e-15 -6.1629278622755439e-32
		-5.2022009051206677 -5.2022009051206677 -1.067752898535453e-16
		-4.7118816699619981e-16 -4.7038529488256078 -1.5100306303720245e-16
		5.2022009051206677 -5.2022009051206703 -1.0677528985354527e-16
		4.7038529488256167 9.4118200996768853e-16 -9.0049538466296766e-32
		5.2022009051206677 5.2022009051206739 1.0677528985354533e-16
		2.880279228719559e-16 4.7038529488256033 1.510030630372023e-16
		-5.2022009051206677 5.2022009051206703 1.0677528985354527e-16
		;
createNode transform -n "tail0_3_ofs_ctl" -p "tail0_3_fkc";
	rename -uid "F830E0A0-4EA2-2F80-D3BE-489407765B90";
	setAttr -cb on ".ro";
createNode joint -n "tail0_3_ofs_jnt" -p "tail0_3_ofs_ctl";
	rename -uid "DFDD3816-46AB-4150-E38A-36B2AA80BFAB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" -39.240876928368451 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 39.240876928368451 0 0 ;
createNode nurbsCurve -n "tail0_3_ofs_ctlShape1" -p "tail0_3_ofs_ctl";
	rename -uid "2B870C26-4464-0BF8-3080-029769D61950";
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
		0.50003321015762026 9.7299737234275803 7.9471388178239559
		0.46426847781010877 9.9222800152124009 7.9471388178239559
		0.35533572831233373 10.085309451739914 7.9471388178239559
		0.19230629178482017 10.194242201237689 7.9471388178239559
		0 10.229995208102491 7.9471388178239559
		-0.19230629178482017 10.194242201237689 7.9471388178239559
		-0.35533572831233373 10.085309451739914 7.9471388178239559
		-0.46426847781010877 9.9222800152124009 7.9471388178239559
		-0.50003321015762026 9.7299736997363766 7.9471388178239559
		-0.46426847781010877 9.5376674316427597 7.9471388178239559
		-0.35533572831233373 9.374637995115247 7.9471388178239559
		-0.19230629178482017 9.2657052456174718 7.9471388178239559
		1.9968363049200812e-08 9.22995223875267 7.9437387628519183
		0.19230629178482017 9.2657052456174718 7.9471388178239559
		0.35533572831233373 9.374637995115247 7.9471388178239559
		0.46426847781010877 9.5376674316427597 7.9471388178239559
		0.50003321015762026 9.7299737234275803 7.9471388178239559
		0.4619702831989963 9.73127490359402 7.7557886554006688
		0.35357690590587015 9.7323780102062507 7.5935696172352953
		0.19135451760257957 9.7331150807496627 7.4851785850387111
		1.9968363049200812e-08 9.7333739124051348 7.447116663121462
		-0.19135451760257957 9.7331150807496627 7.4851785850387111
		-0.35357690590587015 9.7323780102062507 7.5935696172352953
		-0.4619702831989963 9.73127490359402 7.7557886554006688
		-0.50003321015762026 9.7299736997363766 7.9471388178239559
		-0.4619702831989963 9.7286724963592093 8.1384883102196603
		-0.35357690590587015 9.7275693897469786 8.3007076833988247
		-0.19135451760257957 9.7268323192035684 8.409098380581618
		1.9968363049200812e-08 9.7265735009486463 8.4471603024988671
		0.19135451760257957 9.7268323192035684 8.409098380581618
		0.35357690590587015 9.7275693897469786 8.3007076833988247
		0.4619702831989963 9.7286724963592093 8.1384883102196603
		0.50003321015762026 9.7299737234275803 7.9471388178239559
		0.4619702831989963 9.73127490359402 7.7557886554006688
		0.35357690590587015 9.7323780102062507 7.5935696172352953
		0.19135451760257957 9.7331150807496627 7.4851785850387111
		1.9968363049200812e-08 9.7333739124051348 7.447116663121462
		1.9968363049200812e-08 9.9244649751619161 7.4864801136194936
		1.9968363049200812e-08 10.085946647971742 7.5959740112183791
		1.9968363049200812e-08 10.193234479752233 7.7589300797255083
		0 10.229995208102491 7.9471388178239559
		1.9968363049200812e-08 10.19063209261825 8.1416300695582908
		1.9968363049200812e-08 10.081138195019365 8.3031114073543257
		1.9968363049200812e-08 9.9181824615260279 8.4103995741486095
		1.9968363049200812e-08 9.7265735009486463 8.4471603024988671
		1.9968363049200812e-08 9.5354824716932445 8.4077968520008337
		1.9968363049200812e-08 9.3740007988834186 8.2983029544019491
		1.9968363049200812e-08 9.2667129671029276 8.135346885894819
		1.9968363049200812e-08 9.22995223875267 7.9437387628519183
		1.9968363049200812e-08 9.2693153542369107 7.7526468960620365
		1.9968363049200812e-08 9.3788092518357953 7.5911655582660034
		1.9968363049200812e-08 9.5417649853291326 7.4838773914717196
		1.9968363049200812e-08 9.7333739124051348 7.447116663121462
		;
createNode nurbsCurve -n "tail0_3_fkcShape1" -p "tail0_3_fkc";
	rename -uid "58A0DAE1-4366-2CFB-0431-E49CE802F3DC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.2022009051206677 5.2022009051206739 1.0677528985354533e-16
		2.880279228719559e-16 4.7038529488256033 1.510030630372023e-16
		-5.2022009051206677 5.2022009051206703 1.0677528985354527e-16
		-4.7038529488256167 1.8264933432781683e-15 -6.1629278622755439e-32
		-5.2022009051206677 -5.2022009051206677 -1.067752898535453e-16
		-4.7118816699619981e-16 -4.7038529488256078 -1.5100306303720245e-16
		5.2022009051206677 -5.2022009051206703 -1.0677528985354527e-16
		4.7038529488256167 9.4118200996768853e-16 -9.0049538466296766e-32
		5.2022009051206677 5.2022009051206739 1.0677528985354533e-16
		2.880279228719559e-16 4.7038529488256033 1.510030630372023e-16
		-5.2022009051206677 5.2022009051206703 1.0677528985354527e-16
		;
createNode transform -n "tail0_2_ofs_ctl" -p "tail0_2_fkc";
	rename -uid "2A05AF35-44CE-23A2-1C12-D5B0A4A9C10E";
	setAttr -cb on ".ro";
createNode joint -n "tail0_2_ofs_jnt" -p "tail0_2_ofs_ctl";
	rename -uid "5A9A2C95-40C6-4D41-F376-F588FC8C4BE9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" -21.952379194781194 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 21.952379194781194 0 0 ;
createNode nurbsCurve -n "tail0_2_ofs_ctlShape1" -p "tail0_2_ofs_ctl";
	rename -uid "0B44F697-4EE4-130D-5FE3-6A8D62AEEB17";
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
		0.50003321015762026 11.652134296371091 4.6965061894655324
		0.46426847781010877 11.844440588155912 4.6965061894655324
		0.35533572831233373 12.007470024683425 4.6965061894655324
		0.19230629178482017 12.1164027741812 4.6965061894655324
		0 12.152155781046002 4.6965061894655324
		-0.19230629178482017 12.1164027741812 4.6965061894655324
		-0.35533572831233373 12.007470024683425 4.6965061894655324
		-0.46426847781010877 11.844440588155912 4.6965061894655324
		-0.50003321015762026 11.652134272679888 4.6965061894655324
		-0.46426847781010877 11.459828004586271 4.6965061894655324
		-0.35533572831233373 11.296798568058758 4.6965061894655324
		-0.19230629178482017 11.187865818560983 4.6965061894655324
		1.9968363049200812e-08 11.152112811696181 4.6931061344934948
		0.19230629178482017 11.187865818560983 4.6965061894655324
		0.35533572831233373 11.296798568058758 4.6965061894655324
		0.46426847781010877 11.459828004586271 4.6965061894655324
		0.50003321015762026 11.652134296371091 4.6965061894655324
		0.4619702831989963 11.653435476537531 4.5051560270422453
		0.35357690590587015 11.654538583149762 4.3429369888768719
		0.19135451760257957 11.655275653693174 4.2345459566802877
		1.9968363049200812e-08 11.655534485348646 4.1964840347630386
		-0.19135451760257957 11.655275653693174 4.2345459566802877
		-0.35357690590587015 11.654538583149762 4.3429369888768719
		-0.4619702831989963 11.653435476537531 4.5051560270422453
		-0.50003321015762026 11.652134272679888 4.6965061894655324
		-0.4619702831989963 11.65083306930272 4.887855681861236
		-0.35357690590587015 11.64972996269049 5.0500750550404012
		-0.19135451760257957 11.64899289214708 5.1584657522231945
		1.9968363049200812e-08 11.648734073892157 5.1965276741404427
		0.19135451760257957 11.64899289214708 5.1584657522231945
		0.35357690590587015 11.64972996269049 5.0500750550404012
		0.4619702831989963 11.65083306930272 4.887855681861236
		0.50003321015762026 11.652134296371091 4.6965061894655324
		0.4619702831989963 11.653435476537531 4.5051560270422453
		0.35357690590587015 11.654538583149762 4.3429369888768719
		0.19135451760257957 11.655275653693174 4.2345459566802877
		1.9968363049200812e-08 11.655534485348646 4.1964840347630386
		1.9968363049200812e-08 11.846625548105427 4.2358474852610701
		1.9968363049200812e-08 12.008107220915253 4.3453413828599556
		1.9968363049200812e-08 12.115395052695744 4.5082974513670848
		0 12.152155781046002 4.6965061894655324
		1.9968363049200812e-08 12.112792665561761 4.8909974411998682
		1.9968363049200812e-08 12.003298767962876 5.0524787789959023
		1.9968363049200812e-08 11.840343034469539 5.1597669457901851
		1.9968363049200812e-08 11.648734073892157 5.1965276741404427
		1.9968363049200812e-08 11.457643044636756 5.1571642236424111
		1.9968363049200812e-08 11.29616137182693 5.0476703260435265
		1.9968363049200812e-08 11.188873540046439 4.8847142575363964
		1.9968363049200812e-08 11.152112811696181 4.6931061344934948
		1.9968363049200812e-08 11.191475927180422 4.502014267703613
		1.9968363049200812e-08 11.300969824779306 4.3405329299075799
		1.9968363049200812e-08 11.463925558272644 4.2332447631132961
		1.9968363049200812e-08 11.655534485348646 4.1964840347630386
		;
createNode nurbsCurve -n "tail0_2_fkcShape1" -p "tail0_2_fkc";
	rename -uid "87BB493C-4FB5-DADB-C970-A89F207CC767";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.2022009051206677 5.2022009051206739 1.0677528985354533e-16
		2.880279228719561e-16 4.7038529488256033 1.510030630372023e-16
		-5.2022009051206677 5.2022009051206703 1.0677528985354527e-16
		-4.7038529488256167 1.8264933432781683e-15 -6.1629278622755439e-32
		-5.2022009051206677 -5.2022009051206677 -1.067752898535453e-16
		-4.7118816699619961e-16 -4.7038529488256078 -1.5100306303720245e-16
		5.2022009051206677 -5.2022009051206703 -1.0677528985354527e-16
		4.7038529488256167 9.4118200996768853e-16 -9.0049538466296766e-32
		5.2022009051206677 5.2022009051206739 1.0677528985354533e-16
		2.880279228719561e-16 4.7038529488256033 1.510030630372023e-16
		-5.2022009051206677 5.2022009051206703 1.0677528985354527e-16
		;
createNode transform -n "tail0_1_ofs_ctl" -p "tail0_1_fkc";
	rename -uid "A8A28F69-48A1-A41C-0957-8DB2A05E5C49";
	setAttr -cb on ".ro";
createNode joint -n "tail0_1_ofs_jnt" -p "tail0_1_ofs_ctl";
	rename -uid "0F10C531-4A83-7503-422D-90A1BC47059F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" -4.2853679819534145 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 4.2853679819534145 0 0 ;
createNode nurbsCurve -n "tail0_1_ofs_ctlShape1" -p "tail0_1_ofs_ctl";
	rename -uid "B21BD732-45A4-8AD3-5B4F-4E9A6825A115";
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
		0.50003321015762026 12.527894244453146 0.93875973931205325
		0.46426847781010877 12.720200536237966 0.93875973931205325
		0.35533572831233373 12.883229972765479 0.93875973931205325
		0.19230629178482017 12.992162722263254 0.93875973931205325
		0 13.027915729128056 0.93875973931205325
		-0.19230629178482017 12.992162722263254 0.93875973931205325
		-0.35533572831233373 12.883229972765479 0.93875973931205325
		-0.46426847781010877 12.720200536237966 0.93875973931205325
		-0.50003321015762026 12.527894220761942 0.93875973931205325
		-0.46426847781010877 12.335587952668325 0.93875973931205325
		-0.35533572831233373 12.172558516140812 0.93875973931205325
		-0.19230629178482017 12.063625766643037 0.93875973931205325
		1.9968363049200812e-08 12.027872759778235 0.93535968434001515
		0.19230629178482017 12.063625766643037 0.93875973931205325
		0.35533572831233373 12.172558516140812 0.93875973931205325
		0.46426847781010877 12.335587952668325 0.93875973931205325
		0.50003321015762026 12.527894244453146 0.93875973931205325
		0.4619702831989963 12.529195424619585 0.74740957688876586
		0.35357690590587015 12.530298531231816 0.58519053872339244
		0.19135451760257957 12.531035601775228 0.47679950652680814
		1.9968363049200812e-08 12.5312944334307 0.43873758460955925
		-0.19135451760257957 12.531035601775228 0.47679950652680814
		-0.35357690590587015 12.530298531231816 0.58519053872339244
		-0.4619702831989963 12.529195424619585 0.74740957688876586
		-0.50003321015762026 12.527894220761942 0.93875973931205325
		-0.4619702831989963 12.526593017384775 1.1301092317077572
		-0.35357690590587015 12.525489910772544 1.2923286048869222
		-0.19135451760257957 12.524752840229134 1.4007193020697151
		1.9968363049200812e-08 12.524494021974212 1.4387812239869637
		0.19135451760257957 12.524752840229134 1.4007193020697151
		0.35357690590587015 12.525489910772544 1.2923286048869222
		0.4619702831989963 12.526593017384775 1.1301092317077572
		0.50003321015762026 12.527894244453146 0.93875973931205325
		0.4619702831989963 12.529195424619585 0.74740957688876586
		0.35357690590587015 12.530298531231816 0.58519053872339244
		0.19135451760257957 12.531035601775228 0.47679950652680814
		1.9968363049200812e-08 12.5312944334307 0.43873758460955925
		1.9968363049200812e-08 12.722385496187481 0.47810103510759133
		1.9968363049200812e-08 12.883867168997307 0.58759493270647623
		1.9968363049200812e-08 12.991155000777798 0.75055100121360585
		0 13.027915729128056 0.93875973931205325
		1.9968363049200812e-08 12.988552613643815 1.1332509910463888
		1.9968363049200812e-08 12.879058716044931 1.2947323288424228
		1.9968363049200812e-08 12.716102982551593 1.4020204956367064
		1.9968363049200812e-08 12.524494021974212 1.4387812239869637
		1.9968363049200812e-08 12.33340299271881 1.3994177734889319
		1.9968363049200812e-08 12.171921319908984 1.2899238758900469
		1.9968363049200812e-08 12.064633488128493 1.1269678073829172
		1.9968363049200812e-08 12.027872759778235 0.93535968434001515
		1.9968363049200812e-08 12.067235875262476 0.74426781755013427
		1.9968363049200812e-08 12.176729772861361 0.58278647975410036
		1.9968363049200812e-08 12.339685506354698 0.4754983129598167
		1.9968363049200812e-08 12.5312944334307 0.43873758460955925
		;
createNode nurbsCurve -n "tail0_1_fkcShape1" -p "tail0_1_fkc";
	rename -uid "3BE440AD-49AC-3803-7FBD-41A716E1AB7E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.2022009051206677 5.2022009051206739 1.0677528985354533e-16
		2.880279228719559e-16 4.7038529488256033 1.510030630372023e-16
		-5.2022009051206677 5.2022009051206703 1.0677528985354527e-16
		-4.7038529488256167 1.8264933432781683e-15 -6.1629278622755439e-32
		-5.2022009051206677 -5.2022009051206677 -1.067752898535453e-16
		-4.7118816699619981e-16 -4.7038529488256078 -1.5100306303720245e-16
		5.2022009051206677 -5.2022009051206703 -1.0677528985354527e-16
		4.7038529488256167 9.4118200996768853e-16 -9.0049538466296766e-32
		5.2022009051206677 5.2022009051206739 1.0677528985354533e-16
		2.880279228719559e-16 4.7038529488256033 1.510030630372023e-16
		-5.2022009051206677 5.2022009051206703 1.0677528985354527e-16
		;
createNode transform -n "tail0_0_ofs_ctl" -p "tail0_0_fkc";
	rename -uid "90B5997E-44AF-0BF5-29DB-278DD9C328F7";
	setAttr -cb on ".ro";
createNode joint -n "tail0_0_ofs_jnt" -p "tail0_0_ofs_ctl";
	rename -uid "2CBF8FE2-4032-3A3A-790A-8F9CFD113FC2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_0_ofs_ctlShape1" -p "tail0_0_ofs_ctl";
	rename -uid "96AB1C96-4856-1E51-6A47-C6B1032B7EF3";
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
		0.50003321015762026 12.56301731465636 0
		0.46426847781010877 12.755323606441181 0
		0.35533572831233373 12.918353042968693 0
		0.19230629178482017 13.027285792466468 0
		0 13.06303879933127 0
		-0.19230629178482017 13.027285792466468 0
		-0.35533572831233373 12.918353042968693 0
		-0.46426847781010877 12.755323606441181 0
		-0.50003321015762026 12.563017290965156 0
		-0.46426847781010877 12.370711022871539 0
		-0.35533572831233373 12.207681586344027 0
		-0.19230629178482017 12.098748836846251 0
		1.9968363049200812e-08 12.06299582998145 -0.0034000549720380477
		0.19230629178482017 12.098748836846251 0
		0.35533572831233373 12.207681586344027 0
		0.46426847781010877 12.370711022871539 0
		0.50003321015762026 12.56301731465636 0
		0.4619702831989963 12.5643184948228 -0.19135016242328737
		0.35357690590587015 12.56542160143503 -0.35356920058866087
		0.19135451760257957 12.566158671978442 -0.46196023278524512
		1.9968363049200812e-08 12.566417503633915 -0.500022154702494
		-0.19135451760257957 12.566158671978442 -0.46196023278524512
		-0.35357690590587015 12.56542160143503 -0.35356920058866087
		-0.4619702831989963 12.5643184948228 -0.19135016242328737
		-0.50003321015762026 12.563017290965156 0
		-0.4619702831989963 12.561716087587989 0.19134949239570395
		-0.35357690590587015 12.560612980975758 0.35356886557486911
		-0.19135451760257957 12.559875910432348 0.4619595627576617
		1.9968363049200812e-08 12.559617092177426 0.50002148467491048
		0.19135451760257957 12.559875910432348 0.4619595627576617
		0.35357690590587015 12.560612980975758 0.35356886557486911
		0.4619702831989963 12.561716087587989 0.19134949239570395
		0.50003321015762026 12.56301731465636 0
		0.4619702831989963 12.5643184948228 -0.19135016242328737
		0.35357690590587015 12.56542160143503 -0.35356920058866087
		0.19135451760257957 12.566158671978442 -0.46196023278524512
		1.9968363049200812e-08 12.566417503633915 -0.500022154702494
		1.9968363049200812e-08 12.757508566390696 -0.46065870420446192
		1.9968363049200812e-08 12.918990239200522 -0.35116480660557708
		1.9968363049200812e-08 13.026278070981013 -0.1882087380984474
		0 13.06303879933127 0
		1.9968363049200812e-08 13.02367568384703 0.19449125173433562
		1.9968363049200812e-08 12.914181786248145 0.35597258953036953
		1.9968363049200812e-08 12.751226052754808 0.46326075632465308
		1.9968363049200812e-08 12.559617092177426 0.50002148467491048
		1.9968363049200812e-08 12.368526062922024 0.46065803417687862
		1.9968363049200812e-08 12.207044390112198 0.35116413657799367
		1.9968363049200812e-08 12.099756558331707 0.18820806807086396
		1.9968363049200812e-08 12.06299582998145 -0.0034000549720380477
		1.9968363049200812e-08 12.10235894546569 -0.19449192176191904
		1.9968363049200812e-08 12.211852843064575 -0.35597325955795289
		1.9968363049200812e-08 12.374808576557912 -0.46326142635223655
		1.9968363049200812e-08 12.566417503633915 -0.500022154702494
		;
createNode nurbsCurve -n "tail0_0_fkcShape1" -p "tail0_0_fkc";
	rename -uid "ADAC939B-4761-4B96-FE43-F983E0251D2B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.2022009051206677 5.2022009051206739 1.0677528985354533e-16
		2.880279228719559e-16 4.7038529488256033 1.510030630372023e-16
		-5.2022009051206677 5.2022009051206703 1.0677528985354527e-16
		-4.7038529488256167 1.8264933432781683e-15 -6.1629278622755439e-32
		-5.2022009051206677 -5.2022009051206677 -1.067752898535453e-16
		-4.7118816699619981e-16 -4.7038529488256078 -1.5100306303720245e-16
		5.2022009051206677 -5.2022009051206703 -1.0677528985354527e-16
		4.7038529488256167 9.4118200996768853e-16 -9.0049538466296766e-32
		5.2022009051206677 5.2022009051206739 1.0677528985354533e-16
		2.880279228719559e-16 4.7038529488256033 1.510030630372023e-16
		-5.2022009051206677 5.2022009051206703 1.0677528985354527e-16
		;
createNode transform -n "tail0_IK" -p "tail0_ctl_data";
	rename -uid "E731E3A9-4FD6-59D0-1C22-53BF7BE41C7B";
	setAttr -cb on ".ro";
createNode transform -n "tail0_0_ikc_ofs" -p "tail0_IK";
	rename -uid "A7C95BE0-4FC2-2C00-3640-89B6032BC356";
	setAttr ".t" -type "double3" -1.6374675267209265e-14 -2.8421709430404007e-14 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
createNode transform -n "tail0_0_ikc" -p "tail0_0_ikc_ofs";
	rename -uid "2A801E3B-42A3-3DBB-3480-63B6C005CAEB";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode joint -n "tail0_0_ikj" -p "tail0_0_ikc";
	rename -uid "F6B9E8A2-4C59-DA65-C2DE-E08693EADAFD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.6374675267209265e-14 150.04235771098135 -56.955020297575004 1;
	setAttr ".radi" 2.0100827703450177;
createNode transform -n "tail0_1_ikc_ofs" -p "tail0_0_ikc";
	rename -uid "2341522C-4D0E-BA7E-031D-E49CA5400E03";
	setAttr ".t" -type "double3" 9.2762446144344634e-15 -0.80494999986157723 -14.492182546185006 ;
	setAttr ".r" -type "double3" -12.221211041053662 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "tail0_1_ikc" -p "tail0_1_ikc_ofs";
	rename -uid "B0228FC5-4AF0-1C24-4B91-3F942258AD69";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode joint -n "tail0_1_ikj" -p "tail0_1_ikc";
	rename -uid "08839FA1-4288-648B-ADCE-CCA30FEEBBC2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 3.1805546814635168e-15 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.97733759434167189 -0.21168662377777581 0
		 0 0.21168662377777581 0.97733759434167189 0 -7.098430652774802e-15 149.23740771111977 -71.44720284376001 1;
	setAttr ".radi" 2.0100827703450177;
createNode nurbsCurve -n "tail0_1_ikcShape1" -p "tail0_1_ikc";
	rename -uid "BAFBF47D-4C0D-EBAA-0BE3-A5AEDAD36E27";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
		27
		1.8462311536040255e-16 3.0151241555175265 1.8462311536040255e-16
		1.3054825175779666e-16 2.1320146999979275 2.1320146999979275
		1.1304904678676809e-32 1.8462311536040255e-16 3.0151241555175265
		-1.3054825175779666e-16 -2.1320146999979275 2.1320146999979275
		-1.8462311536040255e-16 -3.0151241555175265 1.8462311536040255e-16
		-1.3054825175779666e-16 -2.1320146999979275 -2.1320146999979275
		-1.1304904678676809e-32 -1.8462311536040255e-16 -3.0151241555175265
		1.3054825175779666e-16 2.1320146999979275 -2.1320146999979275
		1.8462311536040255e-16 3.0151241555175265 -1.8462311536040255e-16
		-2.1320146999979275 2.1320146999979275 1.3054825175779666e-16
		-3.0151241555175265 1.1304904678676809e-32 1.8462311536040255e-16
		-2.1320146999979275 -2.1320146999979275 -1.3054825175779666e-16
		-1.8462311536040255e-16 -3.0151241555175265 1.8462311536040255e-16
		2.1320146999979275 -2.1320146999979275 -1.3054825175779666e-16
		3.0151241555175265 -1.1304904678676809e-32 -1.8462311536040255e-16
		2.1320146999979275 2.1320146999979275 1.3054825175779666e-16
		1.8462311536040255e-16 3.0151241555175265 1.8462311536040255e-16
		1.3054825175779666e-16 2.1320146999979275 2.1320146999979275
		1.1304904678676809e-32 1.8462311536040255e-16 3.0151241555175265
		-2.1320146999979275 1.3054825175779666e-16 2.1320146999979275
		-3.0151241555175265 1.8462311536040255e-16 1.1304904678676809e-32
		-2.1320146999979275 -1.3054825175779666e-16 -2.1320146999979275
		-1.1304904678676809e-32 -1.8462311536040255e-16 -3.0151241555175265
		2.1320146999979275 -1.3054825175779666e-16 -2.1320146999979275
		3.0151241555175265 -1.8462311536040255e-16 -1.1304904678676809e-32
		2.1320146999979275 1.3054825175779666e-16 2.1320146999979275
		1.1304904678676809e-32 1.8462311536040255e-16 3.0151241555175265
		;
createNode transform -n "tail0_2_ikc_ofs" -p "tail0_0_ikc";
	rename -uid "DF469F1E-433F-5FA1-24E2-B7AD8765DCE3";
	setAttr ".t" -type "double3" 2.012596081671897e-14 -6.8205190709925034 -26.696114300261101 ;
	setAttr ".r" -type "double3" -39.240876928368451 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "tail0_2_ikc" -p "tail0_2_ikc_ofs";
	rename -uid "A51B775C-4086-7608-277D-28AE527CD358";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode joint -n "tail0_2_ikj" -p "tail0_2_ikc";
	rename -uid "1BA7B679-4FD7-42B6-2A68-91A511E9DBFC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 3.180554681463516e-15 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.77449337843993316 -0.63258201583091067 0
		 0 0.63258201583091067 0.77449337843993316 0 3.7512855495097043e-15 143.22183863998885 -83.651134597836105 1;
	setAttr ".radi" 2.0100827703450177;
createNode nurbsCurve -n "tail0_2_ikcShape1" -p "tail0_2_ikc";
	rename -uid "5D67AA6F-4B23-621C-D87B-8E92AEAA067F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
		27
		1.8462311536040255e-16 3.0151241555175265 1.8462311536040255e-16
		1.3054825175779666e-16 2.1320146999979275 2.1320146999979275
		1.1304904678676809e-32 1.8462311536040255e-16 3.0151241555175265
		-1.3054825175779666e-16 -2.1320146999979275 2.1320146999979275
		-1.8462311536040255e-16 -3.0151241555175265 1.8462311536040255e-16
		-1.3054825175779666e-16 -2.1320146999979275 -2.1320146999979275
		-1.1304904678676809e-32 -1.8462311536040255e-16 -3.0151241555175265
		1.3054825175779666e-16 2.1320146999979275 -2.1320146999979275
		1.8462311536040255e-16 3.0151241555175265 -1.8462311536040255e-16
		-2.1320146999979275 2.1320146999979275 1.3054825175779666e-16
		-3.0151241555175265 1.1304904678676809e-32 1.8462311536040255e-16
		-2.1320146999979275 -2.1320146999979275 -1.3054825175779666e-16
		-1.8462311536040255e-16 -3.0151241555175265 1.8462311536040255e-16
		2.1320146999979275 -2.1320146999979275 -1.3054825175779666e-16
		3.0151241555175265 -1.1304904678676809e-32 -1.8462311536040255e-16
		2.1320146999979275 2.1320146999979275 1.3054825175779666e-16
		1.8462311536040255e-16 3.0151241555175265 1.8462311536040255e-16
		1.3054825175779666e-16 2.1320146999979275 2.1320146999979275
		1.1304904678676809e-32 1.8462311536040255e-16 3.0151241555175265
		-2.1320146999979275 1.3054825175779666e-16 2.1320146999979275
		-3.0151241555175265 1.8462311536040255e-16 1.1304904678676809e-32
		-2.1320146999979275 -1.3054825175779666e-16 -2.1320146999979275
		-1.1304904678676809e-32 -1.8462311536040255e-16 -3.0151241555175265
		2.1320146999979275 -1.3054825175779666e-16 -2.1320146999979275
		3.0151241555175265 -1.8462311536040255e-16 -1.1304904678676809e-32
		2.1320146999979275 1.3054825175779666e-16 2.1320146999979275
		1.1304904678676809e-32 1.8462311536040255e-16 3.0151241555175265
		;
createNode transform -n "tail0_3_ikc_ofs" -p "tail0_0_ikc";
	rename -uid "E8170A11-4C5F-9F2B-9F3C-E387A535A3B3";
	setAttr ".t" -type "double3" 3.0889169208510452e-14 -17.775623397901398 -34.949459709076208 ;
	setAttr ".r" -type "double3" -68.16246444299739 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "tail0_3_ikc" -p "tail0_3_ikc_ofs";
	rename -uid "A3357BAA-421C-7F74-831A-BF8118EF12B5";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode joint -n "tail0_3_ikj" -p "tail0_3_ikc";
	rename -uid "0D1EB79B-472F-B927-DF41-E593EFB0E550";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -3.1554436208840472e-30 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 3.1805546814635168e-15 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.37197602457338513 -0.92824233750814256 0
		 0 0.92824233750814256 0.37197602457338513 0 1.451449394130119e-14 132.26673431307995 -91.904480006651212 1;
	setAttr ".radi" 2.0100827703450177;
createNode nurbsCurve -n "tail0_3_ikcShape1" -p "tail0_3_ikc";
	rename -uid "D101790F-4220-8BE4-CB8E-9497C740DC37";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
		27
		1.8462311536040255e-16 3.0151241555175265 1.8462311536040255e-16
		1.3054825175779666e-16 2.1320146999979275 2.1320146999979275
		1.1304904678676809e-32 1.8462311536040255e-16 3.0151241555175265
		-1.3054825175779666e-16 -2.1320146999979275 2.1320146999979275
		-1.8462311536040255e-16 -3.0151241555175265 1.8462311536040255e-16
		-1.3054825175779666e-16 -2.1320146999979275 -2.1320146999979275
		-1.1304904678676809e-32 -1.8462311536040255e-16 -3.0151241555175265
		1.3054825175779666e-16 2.1320146999979275 -2.1320146999979275
		1.8462311536040255e-16 3.0151241555175265 -1.8462311536040255e-16
		-2.1320146999979275 2.1320146999979275 1.3054825175779666e-16
		-3.0151241555175265 1.1304904678676809e-32 1.8462311536040255e-16
		-2.1320146999979275 -2.1320146999979275 -1.3054825175779666e-16
		-1.8462311536040255e-16 -3.0151241555175265 1.8462311536040255e-16
		2.1320146999979275 -2.1320146999979275 -1.3054825175779666e-16
		3.0151241555175265 -1.1304904678676809e-32 -1.8462311536040255e-16
		2.1320146999979275 2.1320146999979275 1.3054825175779666e-16
		1.8462311536040255e-16 3.0151241555175265 1.8462311536040255e-16
		1.3054825175779666e-16 2.1320146999979275 2.1320146999979275
		1.1304904678676809e-32 1.8462311536040255e-16 3.0151241555175265
		-2.1320146999979275 1.3054825175779666e-16 2.1320146999979275
		-3.0151241555175265 1.8462311536040255e-16 1.1304904678676809e-32
		-2.1320146999979275 -1.3054825175779666e-16 -2.1320146999979275
		-1.1304904678676809e-32 -1.8462311536040255e-16 -3.0151241555175265
		2.1320146999979275 -1.3054825175779666e-16 -2.1320146999979275
		3.0151241555175265 -1.8462311536040255e-16 -1.1304904678676809e-32
		2.1320146999979275 1.3054825175779666e-16 2.1320146999979275
		1.1304904678676809e-32 1.8462311536040255e-16 3.0151241555175265
		;
createNode transform -n "tail0_4_ikc_ofs" -p "tail0_0_ikc";
	rename -uid "AE5450C4-4E99-3C73-DAEE-A397912E4963";
	setAttr ".t" -type "double3" 4.0084991343334413e-14 -32.342323674021401 -38.460948560046248 ;
	setAttr ".r" -type "double3" -68.16246444299739 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "tail0_4_ikc" -p "tail0_4_ikc_ofs";
	rename -uid "21850F18-4C01-A9A6-D075-75800070A3A6";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode joint -n "tail0_4_ikj" -p "tail0_4_ikc";
	rename -uid "8318C68C-47E5-D5A6-364A-B38AA5C109F1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.37197602457338513 -0.92824233750814256 0
		 0 0.92824233750814256 0.37197602457338513 0 2.3710316076125154e-14 117.70003403695995 -95.415968857621252 1;
	setAttr ".radi" 2.0100827703450177;
createNode nurbsCurve -n "tail0_4_ikcShape1" -p "tail0_4_ikc";
	rename -uid "E3719BE6-4C94-B3D1-6A21-268D3BBD5DB9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
		27
		1.8462311536040095e-16 3.0151241555175265 1.8462311536040255e-16
		1.3054825175779506e-16 2.1320146999979275 2.1320146999979275
		-1.5902786157878654e-30 1.8462311536040255e-16 3.0151241555175265
		-1.3054825175779826e-16 -2.1320146999979275 2.1320146999979275
		-1.8462311536040416e-16 -3.0151241555175265 1.8462311536040255e-16
		-1.3054825175779826e-16 -2.1320146999979275 -2.1320146999979275
		-1.6128884251452193e-30 -1.8462311536040255e-16 -3.0151241555175265
		1.3054825175779506e-16 2.1320146999979275 -2.1320146999979275
		1.8462311536040095e-16 3.0151241555175265 -1.8462311536040255e-16
		-2.1320146999979275 2.1320146999979275 1.3054825175779666e-16
		-3.0151241555175265 1.1304904678676809e-32 1.8462311536040255e-16
		-2.1320146999979275 -2.1320146999979275 -1.3054825175779666e-16
		-1.8462311536040416e-16 -3.0151241555175265 1.8462311536040255e-16
		2.1320146999979275 -2.1320146999979275 -1.3054825175779666e-16
		3.0151241555175265 -1.1304904678676809e-32 -1.8462311536040255e-16
		2.1320146999979275 2.1320146999979275 1.3054825175779666e-16
		1.8462311536040095e-16 3.0151241555175265 1.8462311536040255e-16
		1.3054825175779506e-16 2.1320146999979275 2.1320146999979275
		-1.5902786157878654e-30 1.8462311536040255e-16 3.0151241555175265
		-2.1320146999979275 1.3054825175779666e-16 2.1320146999979275
		-3.0151241555175265 1.8462311536040255e-16 1.1304904678676809e-32
		-2.1320146999979275 -1.3054825175779666e-16 -2.1320146999979275
		-1.6128884251452193e-30 -1.8462311536040255e-16 -3.0151241555175265
		2.1320146999979275 -1.3054825175779666e-16 -2.1320146999979275
		3.0151241555175265 -1.8462311536040255e-16 -1.1304904678676809e-32
		2.1320146999979275 1.3054825175779666e-16 2.1320146999979275
		-1.5902786157878654e-30 1.8462311536040255e-16 3.0151241555175265
		;
createNode nurbsCurve -n "tail0_0_ikcShape1" -p "tail0_0_ikc";
	rename -uid "59EDDC16-406A-B183-B780-52BD1633842D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
		27
		1.8462311536040255e-16 3.0151241555175265 1.8462311536040255e-16
		1.3054825175779666e-16 2.1320146999979275 2.1320146999979275
		1.1304904678676809e-32 1.8462311536040255e-16 3.0151241555175265
		-1.3054825175779666e-16 -2.1320146999979275 2.1320146999979275
		-1.8462311536040255e-16 -3.0151241555175265 1.8462311536040255e-16
		-1.3054825175779666e-16 -2.1320146999979275 -2.1320146999979275
		-1.1304904678676809e-32 -1.8462311536040255e-16 -3.0151241555175265
		1.3054825175779666e-16 2.1320146999979275 -2.1320146999979275
		1.8462311536040255e-16 3.0151241555175265 -1.8462311536040255e-16
		-2.1320146999979275 2.1320146999979275 1.3054825175779666e-16
		-3.0151241555175265 1.1304904678676809e-32 1.8462311536040255e-16
		-2.1320146999979275 -2.1320146999979275 -1.3054825175779666e-16
		-1.8462311536040255e-16 -3.0151241555175265 1.8462311536040255e-16
		2.1320146999979275 -2.1320146999979275 -1.3054825175779666e-16
		3.0151241555175265 -1.1304904678676809e-32 -1.8462311536040255e-16
		2.1320146999979275 2.1320146999979275 1.3054825175779666e-16
		1.8462311536040255e-16 3.0151241555175265 1.8462311536040255e-16
		1.3054825175779666e-16 2.1320146999979275 2.1320146999979275
		1.1304904678676809e-32 1.8462311536040255e-16 3.0151241555175265
		-2.1320146999979275 1.3054825175779666e-16 2.1320146999979275
		-3.0151241555175265 1.8462311536040255e-16 1.1304904678676809e-32
		-2.1320146999979275 -1.3054825175779666e-16 -2.1320146999979275
		-1.1304904678676809e-32 -1.8462311536040255e-16 -3.0151241555175265
		2.1320146999979275 -1.3054825175779666e-16 -2.1320146999979275
		3.0151241555175265 -1.8462311536040255e-16 -1.1304904678676809e-32
		2.1320146999979275 1.3054825175779666e-16 2.1320146999979275
		1.1304904678676809e-32 1.8462311536040255e-16 3.0151241555175265
		;
createNode transform -n "tail0_anchorF1" -p "master_ctl";
	rename -uid "797FB86D-41B3-AFED-66B9-D98D66C14585";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "tail0_anchorF1Shape" -p "tail0_anchorF1";
	rename -uid "AB79CFD0-44A3-1C90-7A99-DD856C2E1EC5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 7.5378103887938162 7.5378103887938162 7.5378103887938162 ;
createNode transform -n "head0_head_fkc_SPACE_3_ofs" -p "master_ctl";
	rename -uid "8713B03A-41B4-D7B6-A6D3-28B4BD80CBEF";
	setAttr ".t" -type "double3" 2.8421709430404007e-14 188.1119987638576 119.72436898251898 ;
createNode transform -n "head0_head_fkc_SPACE_3" -p "head0_head_fkc_SPACE_3_ofs";
	rename -uid "B446BD23-44A4-0350-642C-DA9CDD1563DE";
createNode transform -n "lfLegQd0_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "41CBA468-4538-D1FC-3A1D-348917EBE405";
	setAttr ".t" -type "double3" 15.5233919035947 19.503400278299338 -71.732926704400384 ;
createNode transform -n "lfLegQd0_ikc_SPACE_1" -p "lfLegQd0_ikc_SPACE_1_ofs";
	rename -uid "188980E0-453E-4C92-DE6E-7C9045AB81B4";
createNode transform -n "lfLegQd0_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "7E185BEE-4FA8-F191-12BF-53B673AD5FCB";
	setAttr ".t" -type "double3" 21.943537102018126 89.595871220417649 -4.1002163452172571 ;
	setAttr ".r" -type "double3" 11.984909460277844 3.747203849964734 6.7504238019645969e-06 ;
createNode transform -n "lfLegQd0_pvc_SPACE_2" -p "lfLegQd0_pvc_SPACE_2_ofs";
	rename -uid "D81941EF-40B5-F329-D4F0-7BBE9E361859";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 1.4210854715202004e-14 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd1_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "577B1746-427B-C565-BA81-4A8E4265AE00";
	setAttr ".t" -type "double3" 15.136936168869962 18.881415551028873 57.928570779357692 ;
createNode transform -n "lfLegQd1_ikc_SPACE_1" -p "lfLegQd1_ikc_SPACE_1_ofs";
	rename -uid "497AD44B-4E23-18BB-2586-FE9CB6665814";
createNode transform -n "lfLegQd1_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "7D4D3CD6-4F7B-C3D3-CF00-3392C1605E3D";
	setAttr ".t" -type "double3" 16.584956749010114 83.746168715153573 19.555965439770269 ;
	setAttr ".r" -type "double3" -174.98583209900039 0.70584409984867158 179.99999313973876 ;
createNode transform -n "lfLegQd1_pvc_SPACE_2" -p "lfLegQd1_pvc_SPACE_2_ofs";
	rename -uid "0915EA82-4F5E-7F49-83D1-629D7E189A32";
	setAttr ".t" -type "double3" 0 -2.8421709430404007e-14 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_3_ofs" -p "master_ctl";
	rename -uid "3F1A2B76-40EE-89D4-A3A2-CB98627B0B42";
	setAttr ".t" -type "double3" 1.8932661725304283e-29 187.60280752394436 110.93484565675679 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_3" -p "neckQd0_fore_ctl_SPACE_3_ofs";
	rename -uid "64E61571-4898-B273-F5F1-82958DD2F58D";
createNode transform -n "neckQd0_cog_ctl_SPACE_3_ofs" -p "master_ctl";
	rename -uid "667D43C6-453A-742B-20F0-35B795EB969C";
	setAttr ".t" -type "double3" 2.7268917917981642e-14 139.02262821601735 78.567944539426577 ;
	setAttr ".r" -type "double3" -26.90976132496036 0 0 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_3" -p "neckQd0_cog_ctl_SPACE_3_ofs";
	rename -uid "046FED68-4674-9B3E-F159-678D410F2695";
	setAttr ".t" -type "double3" -3.1554436208840472e-30 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd0_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "24A39A7E-4DC2-9AB3-9584-8AAB2193B2C4";
	setAttr ".t" -type "double3" -15.523391903587317 19.503400278299296 -71.732926704400398 ;
createNode transform -n "rtLegQd0_ikc_SPACE_1" -p "rtLegQd0_ikc_SPACE_1_ofs";
	rename -uid "C87FF86E-4D41-B167-E79B-7DA19DF9E948";
createNode transform -n "rtLegQd0_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "0E77BED1-40E4-B4F7-A70C-2D87EB05018B";
	setAttr ".t" -type "double3" -21.94353710201954 89.595871220417663 -4.1002163452173299 ;
	setAttr ".r" -type "double3" 11.984909019107619 -3.7472052798902009 4.9802639351729992e-17 ;
createNode transform -n "rtLegQd0_pvc_SPACE_2" -p "rtLegQd0_pvc_SPACE_2_ofs";
	rename -uid "8647479C-4F62-8F16-9A31-0B8B7289419C";
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-14 0 ;
createNode transform -n "rtLegQd1_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "F6A13FD5-4C38-8418-BA2B-12B2F33D7E16";
	setAttr ".t" -type "double3" -15.136936168863452 18.881415551028823 57.928570779357699 ;
createNode transform -n "rtLegQd1_ikc_SPACE_1" -p "rtLegQd1_ikc_SPACE_1_ofs";
	rename -uid "19BD755B-45F9-CB67-62FD-30BE070FFB0B";
createNode transform -n "rtLegQd1_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "1EAA4943-43CF-603A-E398-FFA7013D6F28";
	setAttr ".t" -type "double3" -16.584956749008626 83.746168715153615 19.555965439770279 ;
	setAttr ".r" -type "double3" 5.0141679855110075 180.70584349798943 0 ;
createNode transform -n "rtLegQd1_pvc_SPACE_2" -p "rtLegQd1_pvc_SPACE_2_ofs";
	rename -uid "DF7C593D-49A2-06DB-FCE9-72B210C540DF";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode nurbsCurve -n "master_ctlShape1" -p "master_ctl";
	rename -uid "499A28D6-4CCC-50EE-1FFE-F9AD12D1ECFB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		54.156629437533724 5.4443518348580933e-15 -79.997823464212203
		-3.2089889404696531e-14 7.6994762031871662e-15 -113.1340069034175
		-54.156629437533745 5.4443518348580933e-15 -79.997823464212175
		-76.589039842974344 2.9713479560197492e-30 -4.1972562957841812e-14
		-54.156629437533745 -5.4443518348580925e-15 79.99782346421209
		-4.4451592032083471e-14 -7.6994762031871709e-15 113.1340069034176
		54.156629437533724 -5.4443518348580925e-15 79.99782346421209
		76.589039842974344 1.5222308987066147e-30 -2.0679631485690376e-14
		54.156629437533724 5.4443518348580933e-15 -79.997823464212203
		-3.2089889404696531e-14 7.6994762031871662e-15 -113.1340069034175
		-54.156629437533745 5.4443518348580933e-15 -79.997823464212175
		;
createNode nurbsCurve -n "master1_ctlShapeOrig" -p "master1_ctl";
	rename -uid "0D58ADC8-4591-4C8E-4601-6DA3CD236290";
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
createNode nurbsCurve -n "master1_ctlShape1" -p "master1_ctl";
	rename -uid "726F0A1B-470B-DB94-A194-B491EF903F41";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		59.355423883510866 5.9669852848155363e-15 -87.677257074380123
		-3.1639696651134818e-14 8.4385915162668257e-15 -123.99436606626064
		-59.355423883510881 5.966985284815534e-15 -87.677257074379995
		-83.941245456465012 3.2781772043426968e-30 -4.6017243292683287e-14
		-59.355423883510881 -5.966985284815534e-15 87.677257074379995
		-4.5188067496790502e-14 -8.4385915162668304e-15 123.99436606626068
		59.355423883510866 -5.966985284815534e-15 87.677257074379952
		83.941245456465012 1.689951384402084e-30 -2.2680285539249519e-14
		59.355423883510866 5.9669852848155363e-15 -87.677257074380123
		-3.1639696651134818e-14 8.4385915162668257e-15 -123.99436606626064
		-59.355423883510881 5.966985284815534e-15 -87.677257074379995
		;
createNode nurbsCurve -n "master2_ctlShapeOrig" -p "master2_ctl";
	rename -uid "4DE77BA9-4B15-AA11-C45F-83BECA32AAF7";
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
createNode nurbsCurve -n "master2_ctlShape1" -p "master2_ctl";
	rename -uid "6677C789-49F0-F485-A5F1-A28D65E9D30A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
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
		3.7911792366885745e-15 8.7585157333956038e-15 -133.81548081009021
		-12.892287998430724 8.6693666719664722e-15 -132.45343216143391
		-23.225247955147509 7.1543885267000577e-15 -116.84003145529336
		-34.245657617376374 6.7826038231087118e-15 -110.7683264730865
		-44.568924446837038 6.2727448650931449e-15 -102.44169779336335
		-53.984896500724815 5.6351909107267111e-15 -92.029651564028896
		-62.301891741443555 4.8829207199665254e-15 -79.744147020450484
		-69.350600130126082 4.031248344528391e-15 -65.835281606665745
		-74.987530290775268 3.0975113779558999e-15 -50.586199712643811
		-79.09793058088448 2.1007180122134261e-15 -34.307328671026198
		-89.667832606787186 1.2464667501122187e-15 -19.04392850994989
		-90.589907242657418 -1.8391816784045992e-30 3.7891837277585392e-14
		-89.667832606787186 -1.2464667501122197e-15 19.043928509949922
		-79.09793058088448 -2.1007180122134261e-15 34.307328671026205
		-74.987530290775268 -3.0975113779559011e-15 50.586199712643833
		-69.350600130126082 -4.0312483445283934e-15 65.83528160666576
		-62.301891741443555 -4.8829207199665246e-15 79.744147020450484
		-53.984896500724773 -5.6351909107267103e-15 92.029651564028867
		-44.568924446837009 -6.2727448650931425e-15 102.44169779336333
		-34.245657617376374 -6.7826038231087087e-15 110.76832647308643
		-23.225247955147509 -7.1543885267000577e-15 116.84003145529329
		-12.892287998430717 -8.6693666719664674e-15 132.45343216143388
		2.4024030417008764e-16 -8.7585157333956022e-15 133.81548081009004
		12.892287998430687 -8.6693666719664674e-15 132.45343216143388
		23.225247955147452 -7.1543885267000577e-15 116.84003145529329
		34.24565761737631 -6.7826038231087087e-15 110.76832647308643
		44.568924446836974 -6.2727448650931402e-15 102.44169779336333
		53.984896500724766 -5.6351909107267064e-15 92.029651564028782
		62.301891741443505 -4.8829207199665207e-15 79.744147020450441
		69.350600130126082 -4.0312483445283894e-15 65.835281606665717
		74.987530290775226 -3.0975113779558988e-15 50.586199712643769
		79.097930580884437 -2.1007180122134241e-15 34.307328671026184
		89.667832606787158 -1.246466750112217e-15 19.043928509949872
		90.589907242657247 -2.3771640131474767e-31 1.3424124644801312e-14
		89.667832606787158 1.2464667501122193e-15 -19.04392850994989
		79.097930580884437 2.1007180122134253e-15 -34.307328671026191
		74.987530290775226 3.0975113779558988e-15 -50.586199712643769
		69.350600130125983 4.0312483445283894e-15 -65.835281606665703
		62.301891741443413 4.882920719966516e-15 -79.74414702045037
		53.984896500724673 5.6351909107267048e-15 -92.02965156402864
		44.56892444683691 6.2727448650931386e-15 -102.44169779336322
		34.245657617376303 6.7826038231087047e-15 -110.76832647308639
		23.225247955147434 7.1543885267000498e-15 -116.84003145529319
		12.892287998430657 8.669366671966458e-15 -132.45343216143365
		-1.3809445906716193e-14 8.7585157333955975e-15 -133.81548081008987
		;
createNode unitConversion -n "unitConversion22";
	rename -uid "34BD8B65-4F0D-562F-9DF8-ABA015955123";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion49";
	rename -uid "C42026E8-4308-3587-B30A-DA92A45934A3";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion80";
	rename -uid "70D771FF-42EE-5ACC-05FB-ABA1A6067CA6";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion107";
	rename -uid "B001DBAD-45A3-FA2D-0AF6-E7998B23A5FD";
	setAttr ".cf" 57.295779513082323;
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
	setAttr -s 8 ".st";
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
	setAttr -s 11 ".s";
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
	setAttr -s 4 ".u";
select -ne :defaultRenderingList1;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
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
	setAttr -s 4 ".dsm";
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
select -ne :hyperGraphLayout;
	setAttr -k on ".nds";
	setAttr -s 65 ".hyp";
connectAttr "master2_ctl.sy" "master_ctl.globalScale" -l on;
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
connectAttr "lfLegQd1_autoAim_end.tx" "effector12.tx";
connectAttr "lfLegQd1_autoAim_end.ty" "effector12.ty";
connectAttr "lfLegQd1_autoAim_end.tz" "effector12.tz";
connectAttr "lfLegQd1_autoAim_end.opm" "effector12.opm";
connectAttr "lfLegQd1_legLock.msg" "lfLegQd1_legLock_ikh.hsj";
connectAttr "effector13.hp" "lfLegQd1_legLock_ikh.hee";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_ball_fkc.fkIkBlend";
connectAttr "lfLegQd1_ball_ik.msg" "lfLegQd1_3_ikh.hsj";
connectAttr "effector10.hp" "lfLegQd1_3_ikh.hee";
connectAttr "lfLegQd1_hip_ik.s" "lfLegQd1_upr_ik.is";
connectAttr "lfLegQd1_upr_ik.s" "lfLegQd1_lwr_ik.is";
connectAttr "lfLegQd1_lwr_ik.s" "lfLegQd1_palm_ik.is";
connectAttr "lfLegQd1_palm_ik.s" "lfLegQd1_digit_ik.is";
connectAttr "lfLegQd1_digit_ik.s" "lfLegQd1_ball_ik.is";
connectAttr "lfLegQd1_ball_ik.s" "lfLegQd1_tip_ik.is";
connectAttr "lfLegQd1_tip_ik.tx" "effector10.tx";
connectAttr "lfLegQd1_tip_ik.ty" "effector10.ty";
connectAttr "lfLegQd1_tip_ik.tz" "effector10.tz";
connectAttr "lfLegQd1_tip_ik.opm" "effector10.opm";
connectAttr "lfLegQd1_ball_ik.tx" "effector9.tx";
connectAttr "lfLegQd1_ball_ik.ty" "effector9.ty";
connectAttr "lfLegQd1_ball_ik.tz" "effector9.tz";
connectAttr "lfLegQd1_ball_ik.opm" "effector9.opm";
connectAttr "lfLegQd1_digit_ik.tx" "effector8.tx";
connectAttr "lfLegQd1_digit_ik.ty" "effector8.ty";
connectAttr "lfLegQd1_digit_ik.tz" "effector8.tz";
connectAttr "lfLegQd1_digit_ik.opm" "effector8.opm";
connectAttr "lfLegQd1_palm_ik.tx" "effector7.tx";
connectAttr "lfLegQd1_palm_ik.ty" "effector7.ty";
connectAttr "lfLegQd1_palm_ik.tz" "effector7.tz";
connectAttr "lfLegQd1_palm_ik.opm" "effector7.opm";
connectAttr "lfLegQd1_hip_ik.s" "lfLegQd1_softJ.is";
connectAttr "lfLegQd1_softJ.s" "lfLegQd1_softJ_end.is";
connectAttr "lfLegQd1_softJ_end.tx" "effector11.tx";
connectAttr "lfLegQd1_softJ_end.ty" "effector11.ty";
connectAttr "lfLegQd1_softJ_end.tz" "effector11.tz";
connectAttr "lfLegQd1_softJ_end.opm" "effector11.opm";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_ikCstG.v";
connectAttr "lfLegQd1_ikc.extraCtl" "lfLegQd1_heelRollG_ctl.v" -l on;
connectAttr "lfLegQd1_ikc.extraCtl" "lfLegQd1_toeRollG_ctl.v" -l on;
connectAttr "lfLegQd1_ikc.extraCtl" "lfLegQd1_outRollG_ctl.v" -l on;
connectAttr "lfLegQd1_ikc.extraCtl" "lfLegQd1_inRollG_ctl.v" -l on;
connectAttr "lfLegQd1_ikc.extraCtl" "lfLegQd1_ballG_ikc.v" -l on;
connectAttr "lfLegQd1_palm_ik.msg" "lfLegQd1_X_ikh.hsj";
connectAttr "effector8.hp" "lfLegQd1_X_ikh.hee";
connectAttr "lfLegQd1_upr_ik.msg" "lfLegQd1_1_ikh.hsj";
connectAttr "effector7.hp" "lfLegQd1_1_ikh.hee";
connectAttr "lfLegQd1_digit_ik.msg" "lfLegQd1_2_ikh.hsj";
connectAttr "effector9.hp" "lfLegQd1_2_ikh.hee";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_line_30.v";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_ikc.fkIkBlend";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_ikc.v" -l on;
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_ikc_gmb.fkIkBlend";
connectAttr "unitConversion49.o" "lfLegQd1_smart_ctl.footRoll";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_smart_ctl.fkIkBlend";
connectAttr "lfLegQd1_autoAim.msg" "lfLegQd1_autoAimJ_ikh.hsj";
connectAttr "effector12.hp" "lfLegQd1_autoAimJ_ikh.hee";
connectAttr "lfLegQd1_legLock.s" "lfLegQd1_legLock_end.is";
connectAttr "lfLegQd1_legLock_end.tx" "effector13.tx";
connectAttr "lfLegQd1_legLock_end.ty" "effector13.ty";
connectAttr "lfLegQd1_legLock_end.tz" "effector13.tz";
connectAttr "lfLegQd1_legLock_end.opm" "effector13.opm";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_pvc.fkIkBlend";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_pvc.v" -l on;
connectAttr "neckQd0_setting.moduleScale" "neckQd0_IK.sx";
connectAttr "neckQd0_setting.moduleScale" "neckQd0_IK.sy";
connectAttr "neckQd0_setting.moduleScale" "neckQd0_IK.sz";
connectAttr "neckQd0_base_ctl.tangentCtl" "neckQd0_tangent0_ctlShape1.v";
connectAttr "neckQd0_two_ikj.s" "neckQd0_two_ikj_end.is";
connectAttr "neckQd0_fore_ctl.rx" "neckQd0_two_ikj_end.rx";
connectAttr "neckQd0_fore_ctl.ry" "neckQd0_two_ikj_end.ry";
connectAttr "neckQd0_fore_ctl.rz" "neckQd0_two_ikj_end.rz";
connectAttr "neckQd0_two_ikj_end.tx" "effector15.tx";
connectAttr "neckQd0_two_ikj_end.ty" "effector15.ty";
connectAttr "neckQd0_two_ikj_end.tz" "effector15.tz";
connectAttr "neckQd0_two_ikj_end.opm" "effector15.opm";
connectAttr "neckQd0_two_ikj.msg" "neckQd0_two_ikj_ikh.hsj";
connectAttr "effector15.hp" "neckQd0_two_ikj_ikh.hee";
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
connectAttr "rtLegQd0_autoAim_end.tx" "effector21.tx";
connectAttr "rtLegQd0_autoAim_end.ty" "effector21.ty";
connectAttr "rtLegQd0_autoAim_end.tz" "effector21.tz";
connectAttr "rtLegQd0_autoAim_end.opm" "effector21.opm";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ball_fkc.fkIkBlend";
connectAttr "rtLegQd0_ball_ik.msg" "rtLegQd0_3_ikh.hsj";
connectAttr "effector19.hp" "rtLegQd0_3_ikh.hee";
connectAttr "rtLegQd0_hip_ik.s" "rtLegQd0_upr_ik.is";
connectAttr "rtLegQd0_upr_ik.s" "rtLegQd0_lwr_ik.is";
connectAttr "rtLegQd0_lwr_ik.s" "rtLegQd0_palm_ik.is";
connectAttr "rtLegQd0_palm_ik.s" "rtLegQd0_digit_ik.is";
connectAttr "rtLegQd0_digit_ik.s" "rtLegQd0_ball_ik.is";
connectAttr "rtLegQd0_ball_ik.s" "rtLegQd0_tip_ik.is";
connectAttr "rtLegQd0_tip_ik.tx" "effector19.tx";
connectAttr "rtLegQd0_tip_ik.ty" "effector19.ty";
connectAttr "rtLegQd0_tip_ik.tz" "effector19.tz";
connectAttr "rtLegQd0_tip_ik.opm" "effector19.opm";
connectAttr "rtLegQd0_ball_ik.tx" "effector18.tx";
connectAttr "rtLegQd0_ball_ik.ty" "effector18.ty";
connectAttr "rtLegQd0_ball_ik.tz" "effector18.tz";
connectAttr "rtLegQd0_ball_ik.opm" "effector18.opm";
connectAttr "rtLegQd0_digit_ik.tx" "effector17.tx";
connectAttr "rtLegQd0_digit_ik.ty" "effector17.ty";
connectAttr "rtLegQd0_digit_ik.tz" "effector17.tz";
connectAttr "rtLegQd0_digit_ik.opm" "effector17.opm";
connectAttr "rtLegQd0_palm_ik.tx" "effector16.tx";
connectAttr "rtLegQd0_palm_ik.ty" "effector16.ty";
connectAttr "rtLegQd0_palm_ik.tz" "effector16.tz";
connectAttr "rtLegQd0_palm_ik.opm" "effector16.opm";
connectAttr "rtLegQd0_hip_ik.s" "rtLegQd0_softJ.is";
connectAttr "rtLegQd0_softJ.s" "rtLegQd0_softJ_end.is";
connectAttr "rtLegQd0_softJ_end.tx" "effector20.tx";
connectAttr "rtLegQd0_softJ_end.ty" "effector20.ty";
connectAttr "rtLegQd0_softJ_end.tz" "effector20.tz";
connectAttr "rtLegQd0_softJ_end.opm" "effector20.opm";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ikCstG.v";
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_heelRollG_ctl.v" -l on;
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_toeRollG_ctl.v" -l on;
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_outRollG_ctl.v" -l on;
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_inRollG_ctl.v" -l on;
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_ballG_ikc.v" -l on;
connectAttr "rtLegQd0_palm_ik.msg" "rtLegQd0_X_ikh.hsj";
connectAttr "effector17.hp" "rtLegQd0_X_ikh.hee";
connectAttr "rtLegQd0_upr_ik.msg" "rtLegQd0_1_ikh.hsj";
connectAttr "effector16.hp" "rtLegQd0_1_ikh.hee";
connectAttr "rtLegQd0_digit_ik.msg" "rtLegQd0_2_ikh.hsj";
connectAttr "effector18.hp" "rtLegQd0_2_ikh.hee";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_line_53.v";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ikc.fkIkBlend";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ikc.v" -l on;
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ikc_gmb.fkIkBlend";
connectAttr "unitConversion80.o" "rtLegQd0_smart_ctl.footRoll";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_smart_ctl.fkIkBlend";
connectAttr "rtLegQd0_autoAim.msg" "rtLegQd0_autoAimJ_ikh.hsj";
connectAttr "effector21.hp" "rtLegQd0_autoAimJ_ikh.hee";
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
connectAttr "rtLegQd1_autoAim_end.tx" "effector27.tx";
connectAttr "rtLegQd1_autoAim_end.ty" "effector27.ty";
connectAttr "rtLegQd1_autoAim_end.tz" "effector27.tz";
connectAttr "rtLegQd1_autoAim_end.opm" "effector27.opm";
connectAttr "rtLegQd1_legLock.msg" "rtLegQd1_legLock_ikh.hsj";
connectAttr "effector28.hp" "rtLegQd1_legLock_ikh.hee";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ball_fkc.fkIkBlend";
connectAttr "rtLegQd1_ball_ik.msg" "rtLegQd1_3_ikh.hsj";
connectAttr "effector25.hp" "rtLegQd1_3_ikh.hee";
connectAttr "rtLegQd1_hip_ik.s" "rtLegQd1_upr_ik.is";
connectAttr "rtLegQd1_upr_ik.s" "rtLegQd1_lwr_ik.is";
connectAttr "rtLegQd1_lwr_ik.s" "rtLegQd1_palm_ik.is";
connectAttr "rtLegQd1_palm_ik.s" "rtLegQd1_digit_ik.is";
connectAttr "rtLegQd1_digit_ik.s" "rtLegQd1_ball_ik.is";
connectAttr "rtLegQd1_ball_ik.s" "rtLegQd1_tip_ik.is";
connectAttr "rtLegQd1_tip_ik.tx" "effector25.tx";
connectAttr "rtLegQd1_tip_ik.ty" "effector25.ty";
connectAttr "rtLegQd1_tip_ik.tz" "effector25.tz";
connectAttr "rtLegQd1_tip_ik.opm" "effector25.opm";
connectAttr "rtLegQd1_ball_ik.tx" "effector24.tx";
connectAttr "rtLegQd1_ball_ik.ty" "effector24.ty";
connectAttr "rtLegQd1_ball_ik.tz" "effector24.tz";
connectAttr "rtLegQd1_ball_ik.opm" "effector24.opm";
connectAttr "rtLegQd1_digit_ik.tx" "effector23.tx";
connectAttr "rtLegQd1_digit_ik.ty" "effector23.ty";
connectAttr "rtLegQd1_digit_ik.tz" "effector23.tz";
connectAttr "rtLegQd1_digit_ik.opm" "effector23.opm";
connectAttr "rtLegQd1_palm_ik.tx" "effector22.tx";
connectAttr "rtLegQd1_palm_ik.ty" "effector22.ty";
connectAttr "rtLegQd1_palm_ik.tz" "effector22.tz";
connectAttr "rtLegQd1_palm_ik.opm" "effector22.opm";
connectAttr "rtLegQd1_hip_ik.s" "rtLegQd1_softJ.is";
connectAttr "rtLegQd1_softJ.s" "rtLegQd1_softJ_end.is";
connectAttr "rtLegQd1_softJ_end.tx" "effector26.tx";
connectAttr "rtLegQd1_softJ_end.ty" "effector26.ty";
connectAttr "rtLegQd1_softJ_end.tz" "effector26.tz";
connectAttr "rtLegQd1_softJ_end.opm" "effector26.opm";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ikCstG.v";
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_heelRollG_ctl.v" -l on;
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_toeRollG_ctl.v" -l on;
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_outRollG_ctl.v" -l on;
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_inRollG_ctl.v" -l on;
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_ballG_ikc.v" -l on;
connectAttr "rtLegQd1_palm_ik.msg" "rtLegQd1_X_ikh.hsj";
connectAttr "effector23.hp" "rtLegQd1_X_ikh.hee";
connectAttr "rtLegQd1_upr_ik.msg" "rtLegQd1_1_ikh.hsj";
connectAttr "effector22.hp" "rtLegQd1_1_ikh.hee";
connectAttr "rtLegQd1_digit_ik.msg" "rtLegQd1_2_ikh.hsj";
connectAttr "effector24.hp" "rtLegQd1_2_ikh.hee";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_line_53.v";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ikc.fkIkBlend";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ikc.v" -l on;
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ikc_gmb.fkIkBlend";
connectAttr "unitConversion107.o" "rtLegQd1_smart_ctl.footRoll";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_smart_ctl.fkIkBlend";
connectAttr "rtLegQd1_autoAim.msg" "rtLegQd1_autoAimJ_ikh.hsj";
connectAttr "effector27.hp" "rtLegQd1_autoAimJ_ikh.hee";
connectAttr "rtLegQd1_legLock.s" "rtLegQd1_legLock_end.is";
connectAttr "rtLegQd1_legLock_end.tx" "effector28.tx";
connectAttr "rtLegQd1_legLock_end.ty" "effector28.ty";
connectAttr "rtLegQd1_legLock_end.tz" "effector28.tz";
connectAttr "rtLegQd1_legLock_end.opm" "effector28.opm";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_pvc.fkIkBlend";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_pvc.v" -l on;
connectAttr "spineQd0_setting.moduleScale" "spineQd0_IK.sx";
connectAttr "spineQd0_setting.moduleScale" "spineQd0_IK.sy";
connectAttr "spineQd0_setting.moduleScale" "spineQd0_IK.sz";
connectAttr "spineQd0_two_ikj.s" "spineQd0_two_ikj_end.is";
connectAttr "spineQd0_fore_ctl.rx" "spineQd0_two_ikj_end.rx";
connectAttr "spineQd0_fore_ctl.ry" "spineQd0_two_ikj_end.ry";
connectAttr "spineQd0_fore_ctl.rz" "spineQd0_two_ikj_end.rz";
connectAttr "spineQd0_two_ikj_end.tx" "effector30.tx";
connectAttr "spineQd0_two_ikj_end.ty" "effector30.ty";
connectAttr "spineQd0_two_ikj_end.tz" "effector30.tz";
connectAttr "spineQd0_two_ikj_end.opm" "effector30.opm";
connectAttr "spineQd0_two_ikj.msg" "spineQd0_two_ikj_ikh.hsj";
connectAttr "effector30.hp" "spineQd0_two_ikj_ikh.hee";
connectAttr "tail0_setting.moduleScale" "tail0_FK.sx";
connectAttr "tail0_setting.moduleScale" "tail0_FK.sy";
connectAttr "tail0_setting.moduleScale" "tail0_FK.sz";
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
connectAttr "tail0_setting.moduleScale" "tail0_IK.sx";
connectAttr "tail0_setting.moduleScale" "tail0_IK.sy";
connectAttr "tail0_setting.moduleScale" "tail0_IK.sz";
connectAttr "tail0_setting.ikCtl" "tail0_0_ikc.v" -l on;
connectAttr "lfLegQd0_smart_ctl.rx" "unitConversion22.i";
connectAttr "lfLegQd1_smart_ctl.rx" "unitConversion49.i";
connectAttr "rtLegQd0_smart_ctl.rx" "unitConversion80.i";
connectAttr "rtLegQd1_smart_ctl.rx" "unitConversion107.i";
// End of horse_ctl2.ma
