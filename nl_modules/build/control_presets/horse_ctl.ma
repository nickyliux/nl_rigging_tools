//Maya ASCII 2023 scene
//Name: horse_ctl.ma
//Last modified: Tue, Jun 10, 2025 05:04:07 PM
//Codeset: 1252
requires maya "2023";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 26100)";
fileInfo "UUID" "1C4B7EA8-41FC-1401-FE07-2191D865DDE1";
createNode transform -n "CHR";
	rename -uid "6C0459DE-47C3-58A8-88C0-A5A311ACE321";
	setAttr -cb on ".ro";
createNode transform -n "CTL" -p "CHR";
	rename -uid "0A83F2A8-4ABA-8837-A2D6-27AE0FE57576";
	setAttr -cb on ".ro";
createNode transform -n "master2_ctl" -p "CTL";
	rename -uid "EF22BE45-4F7C-7172-A895-92B666F14CCF";
	addAttr -ci true -sn "proxy" -ln "proxy" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "debug" -ln "debug" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".ovc" 17;
	setAttr -cb on ".ro";
	setAttr -cb on ".proxy";
	setAttr -cb on ".debug";
createNode transform -n "master1_ctl" -p "master2_ctl";
	rename -uid "B67F9652-4010-863C-2BCB-17AB589AD33E";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 18;
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "master_ctl" -p "master1_ctl";
	rename -uid "DB90672B-4642-06B6-40ED-BB9F35C3EAC9";
	addAttr -ci true -sn "globalScale" -ln "globalScale" -dv 1 -min 0 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 18;
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".globalScale";
createNode nurbsCurve -n "master_ctlShape" -p "master_ctl";
	rename -uid "4D5B77F7-415A-7B17-CC93-509B05C651F2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -31.769942809020932 -4.0348840648144535e-16 
		5.9287487823424811 -3.9530752967542608e-14 -5.7061877670637005e-16 8.3845169358916962 
		31.769942809020911 -4.0348840648144535e-16 5.9287487823424811 44.92948399633498 -1.6174711866616914e-31 
		-3.2084715919743283e-15 31.769942809020911 4.0348840648144535e-16 -5.9287487823424811 
		-3.2278998388775923e-14 5.7061877670637163e-16 -8.3845169358916962 -31.769942809020932 
		4.0348840648144535e-16 -5.9287487823424811 -44.92948399633498 -5.4351059411377092e-32 
		-4.7865200446862214e-15 0 0 0 0 0 0 0 0 0;
createNode nurbsCurve -n "master_ctlShapeOrig" -p "master_ctl";
	rename -uid "DACAE1E8-4370-AC46-A14A-538D45A31280";
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
	rename -uid "5BA697F9-41F0-83D0-E1C2-578D3DAC7EC0";
	setAttr -cb on ".ro";
createNode transform -n "head0_head_fkc_ofs" -p "head0_ctl_data";
	rename -uid "E5B7EDBF-40B3-A9BC-8A85-BCACA2F0A8D5";
	setAttr ".t" -type "double3" 2.8421709430404007e-14 188.1119987638576 119.72436898251901 ;
	setAttr -cb on ".ro";
createNode transform -n "head0_head_fkc_ofs1" -p "head0_head_fkc_ofs";
	rename -uid "F5874DEC-4BA2-52F5-571B-BC938889D4F0";
createNode transform -n "head0_head_fkc" -p "head0_head_fkc_ofs1";
	rename -uid "2D5DE61A-439C-5D5C-A7A7-50B50E0B70C2";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "neck:COG:master" -at "enum";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -k on ".space";
createNode nurbsCurve -n "head0_head_fkcShape1" -p "head0_head_fkc";
	rename -uid "C86535CF-4B70-1D5A-3D01-9D94D383F3AD";
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
createNode transform -n "head0_jaw_fkc_ofs" -p "head0_head_fkc";
	rename -uid "5E3E635F-4634-605D-A303-8DA00F0F9F28";
	setAttr ".t" -type "double3" -1.0376074531262371e-13 -5.2868197599587745 0.5102758793366462 ;
	setAttr -cb on ".ro";
createNode transform -n "head0_jaw_fkc" -p "head0_jaw_fkc_ofs";
	rename -uid "54755EAA-4664-5ADC-9CCD-129020594842";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "head0_jaw_fkcShape1" -p "head0_jaw_fkc";
	rename -uid "A3052D3C-43F3-0B1B-E3BD-B3A9064EACA3";
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
createNode transform -n "head0_anchorF1" -p "master_ctl";
	rename -uid "4BD13DF4-4F8E-03AF-5BC8-40A3CC64B51E";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "head0_anchorF1Shape" -p "head0_anchorF1";
	rename -uid "A0558D3A-4D53-1B83-BE25-77A05D157486";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 11.120097569510092 11.120097569510092 11.120097569510092 ;
createNode transform -n "lfLegQd0_ctl_data" -p "master_ctl";
	rename -uid "D78DF95A-4735-7BE3-5103-EABEE4C193FE";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_FK" -p "lfLegQd0_ctl_data";
	rename -uid "9FAA891E-4E46-FF53-0694-A4A60BDA40FB";
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd0_hip_fk" -p "lfLegQd0_FK";
	rename -uid "EE4206A5-403C-272E-67D0-3B946B8643EE";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 179.55545550998519 40.556921681718727 -91.203111579680325 ;
	setAttr ".radi" 2.9368808413984033;
createNode joint -n "lfLegQd0_upr_fk" -p "lfLegQd0_hip_fk";
	rename -uid "216332F2-416A-4278-8BA9-4A9AC7DDBAFC";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.1972115281031708 49.999141523866179 1.1394186714719132 ;
	setAttr ".radi" 2.9368808413984033;
createNode joint -n "lfLegQd0_lwr_fk" -p "lfLegQd0_upr_fk";
	rename -uid "7E4720CF-4B23-068B-B2EC-099C5C76E1A1";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -39.261411046839399 0 ;
	setAttr ".radi" 2.9368808413984033;
createNode joint -n "lfLegQd0_palm_fk" -p "lfLegQd0_lwr_fk";
	rename -uid "BBB052D5-4E0F-C08B-980E-FF91E49A074D";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 2.9108749191792378 29.928640724604964 -2.6539098559829717 ;
	setAttr ".radi" 2.9368808413984033;
createNode joint -n "lfLegQd0_digit_fk" -p "lfLegQd0_palm_fk";
	rename -uid "054A7A81-4B8B-D144-ABF7-8693D9199AA4";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 25.349753547664605 0 ;
	setAttr ".radi" 2.9368808413984033;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_1_ofs" -p "lfLegQd0_digit_fk";
	rename -uid "64C63168-4D69-CB31-01FD-80A46E635CC2";
	setAttr ".t" -type "double3" 10.074464736819685 -1.3998000980564029e-08 2.1316282072803006e-14 ;
	setAttr ".r" -type "double3" 0 7.6074146487727399 0 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ball_fkc_SPACE_1" -p "lfLegQd0_ball_fkc_SPACE_1_ofs";
	rename -uid "3D91B6E7-4FF7-7475-5B1D-A7BAEDD5D83C";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ball_fk_SPACE_2_ofs" -p "lfLegQd0_digit_fk";
	rename -uid "E528D3BA-4B22-7780-B0C0-3498A1A64CA5";
	setAttr ".t" -type "double3" 10.074464736819671 -1.3998000980564029e-08 2.1316282072803006e-14 ;
	setAttr ".r" -type "double3" 0 7.6074146487727399 0 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ball_fk_SPACE_2" -p "lfLegQd0_ball_fk_SPACE_2_ofs";
	rename -uid "26796E4D-47BB-E5A8-EEEE-FF92D1E82F06";
	setAttr ".t" -type "double3" 0 0 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ball_fk_ofs" -p "lfLegQd0_digit_fk";
	rename -uid "9281A9C3-4B27-F277-96CC-4EA42C7EC82A";
	setAttr ".t" -type "double3" 10.074464736819671 -1.3998004533277708e-08 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd0_ball_fk" -p "lfLegQd0_ball_fk_ofs";
	rename -uid "923537CB-41ED-F77F-7B36-229E28F3757E";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 0 ;
	setAttr ".r" -type "double3" 0 -2.5444437451708134e-14 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.33914608183678e-13 9.5416640443905535e-15 7.1992366991695208e-15 ;
	setAttr ".radi" 2.9368808413984033;
createNode joint -n "lfLegQd0_tip_fk" -p "lfLegQd0_ball_fk";
	rename -uid "D45D795E-43D0-079F-CE5C-28BED90A68A5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.469369336234735 1.2789769243681803e-13 -2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 57.042831803562628 0 ;
	setAttr ".radi" 2.9368808413984033;
createNode transform -n "lfLegQd0_upr_fkc_ofs" -p "lfLegQd0_FK";
	rename -uid "FEEDAFE9-45FA-C015-D3D9-DF95C3E34F44";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_upr_fkc" -p "lfLegQd0_upr_fkc_ofs";
	rename -uid "AF8E12E2-42FC-01B7-B18A-FA8BF5D4A384";
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
	rename -uid "E01D8B2B-48BC-C9A7-6416-40BCE640654F";
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
	rename -uid "62B01AC9-42FB-9DD2-0DE3-B3AA80703CEB";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_lwr_fkc" -p "lfLegQd0_lwr_fkc_ofs";
	rename -uid "707BA424-47D8-BBBC-79FB-7E852187E914";
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
	rename -uid "AC8EF68F-4E88-0E19-5ACD-59A78270EFAA";
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
	rename -uid "4C7F5AEE-4565-D677-E19E-3EAEC9B30B52";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_palm_fkc" -p "lfLegQd0_palm_fkc_ofs";
	rename -uid "B9A47CF4-492D-E172-B997-04A8CDE5AC23";
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
	rename -uid "9794775E-4517-ED21-C851-12A7707936C9";
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
	rename -uid "C9B91420-4AD5-2A1D-95F3-B09F357E11CB";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_digit_fkc" -p "lfLegQd0_digit_fkc_ofs";
	rename -uid "5909E662-48AE-A756-88BD-7388EF7308AF";
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
	rename -uid "6BA154AF-469F-6CE8-8FB8-17AE33828702";
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
createNode transform -n "lfLegQd0_ikc_matcher" -p "lfLegQd0_digit_fkc";
	rename -uid "B9F5F58C-47A1-1E49-53B7-2A8C656C5999";
	setAttr ".t" -type "double3" 1.2079226507921703e-13 2.8421709430404007e-14 7.1054273576010019e-14 ;
	setAttr ".r" -type "double3" -154.65024645233538 0 -90.000000000000028 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "lfLegQd0_quadScap_ofs" -p "lfLegQd0_FK";
	rename -uid "74840E86-4A71-19A2-784F-EC88D7097465";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_quadScap" -p "lfLegQd0_quadScap_ofs";
	rename -uid "9B052785-4901-5FD5-98B9-B8A948402486";
	setAttr ".t" -type "double3" 1.4210854715202004e-14 7.1054273576010019e-15 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "lfLegQd0_hip_fkc_ofs" -p "lfLegQd0_quadScap";
	rename -uid "84E274F3-4B60-2C8A-B0A6-71A6ABEE08E3";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 -1.0658141036401503e-14 4.2632564145606011e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "lfLegQd0_hip_fkc" -p "lfLegQd0_hip_fkc_ofs";
	rename -uid "65DC7004-4A5B-E15E-7296-2DA02A209447";
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
	rename -uid "A105B4DD-495A-E07D-2E00-AB8043468067";
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
	rename -uid "F231B771-4BD8-AC48-0236-BCB189B754B3";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 2.8421709430404007e-14 7.1054273576010019e-15 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 82.3940633997194 25.856571386687023 1.3565191641306404 ;
	setAttr ".radi" 4.4053212620976048;
createNode joint -n "lfLegQd0_autoAim_end" -p "lfLegQd0_autoAim";
	rename -uid "CBFEFE8F-485D-354B-1C4E-DDB6896B8166";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 129.48117859460774 4.2632564145606011e-14 3.907985046680551e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -6.3611093629270249e-15 8.4483483726374606e-15 -1.5604596405930373e-14 ;
	setAttr ".radi" 4.4053212620976048;
createNode ikEffector -n "effector6" -p "lfLegQd0_autoAim";
	rename -uid "0480D665-42D1-7BA1-C24F-BBB9B769F45A";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegQd0_ballOfsG" -p "lfLegQd0_FK";
	rename -uid "5F6FB1EA-4A3A-2FF2-3145-108C4E6C6A57";
	setAttr ".t" -type "double3" 15.523391965755252 19.503393508597028 -71.73292687065387 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ball_fkc_ofs" -p "lfLegQd0_ballOfsG";
	rename -uid "06EAF62B-4D2C-A23C-D3BF-5BA65B661095";
	setAttr ".t" -type "double3" -4.8162519306060858e-08 -9.1043989099677756 4.3133094472361222 ;
	setAttr ".r" -type "double3" 0 212.95716819643735 89.999999999999929 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "lfLegQd0_ball_fkc_ofs1" -p "lfLegQd0_ball_fkc_ofs";
	rename -uid "AE8FCE87-48DB-6F5B-DE5A-F49D49AF5EE6";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode transform -n "lfLegQd0_ball_fkc" -p "lfLegQd0_ball_fkc_ofs1";
	rename -uid "1BFC66AC-445A-7169-C3A8-788C21D99FB5";
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
createNode nurbsCurve -n "lfLegQd0_ball_fkcShape1" -p "lfLegQd0_ball_fkc";
	rename -uid "10A2BE6C-4B99-C99C-AE56-91B401F89A1B";
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
createNode ikHandle -n "lfLegQd0_3_ikh" -p "lfLegQd0_ball_fkc";
	rename -uid "09E93582-481F-591B-2E24-309F50A4CEE0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.469369336234841 1.2612133559741778e-13 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000009 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.5440119296780449 -1.7398086161742275e-17 -0.83907748174287866 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_ball_fk_SPACE_1_ofs" -p "lfLegQd0_ball_fkc";
	rename -uid "22E12199-4B59-EC07-299D-108173B7236A";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -8.8817841970012523e-15 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
createNode transform -n "lfLegQd0_ball_fk_SPACE_1" -p "lfLegQd0_ball_fk_SPACE_1_ofs";
	rename -uid "967CC712-487D-7A99-2F26-EFAE3B7BF219";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999967 0.99999999999999978 ;
createNode transform -n "lfLegQd0_IK" -p "lfLegQd0_ctl_data";
	rename -uid "B678D053-48AB-8ADA-271F-819AB7BD3736";
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd0_hip_ik" -p "lfLegQd0_IK";
	rename -uid "4A2191F2-4953-A488-09F3-E9A696EAEA75";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 179.55545550998519 40.556921681718727 -91.203111579680325 ;
	setAttr ".radi" 4.4053212620976048;
createNode joint -n "lfLegQd0_upr_ik" -p "lfLegQd0_hip_ik";
	rename -uid "DB25BE6D-45C9-2E67-78FA-7BA0E82E7027";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 17.681170403062751 -7.1054273576010019e-15 0 ;
	setAttr ".r" -type "double3" -3.0756560246191808e-15 -1.8211614282110064e-05 6.8642177903440125e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.1972115281031708 49.999141523866179 1.1394186714719132 ;
	setAttr ".radi" 4.4053212620976048;
createNode joint -n "lfLegQd0_lwr_ik" -p "lfLegQd0_upr_ik";
	rename -uid "823D8205-4815-4CA3-E7D7-72A7687261E3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 33.413653182606801 3.5527136788005009e-15 -1.7763568394002505e-14 ;
	setAttr ".r" -type "double3" -2.183041265821006e-20 2.9249532055522284e-05 8.9058075923217039e-20 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -39.261411046839399 0 ;
	setAttr ".radi" 4.4053212620976048;
createNode joint -n "lfLegQd0_palm_ik" -p "lfLegQd0_lwr_ik";
	rename -uid "646D7805-4B20-3EFB-C500-67B4974496A0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 52.361233699535859 3.907985046680551e-14 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 4.606881403986694e-07 -8.4940705123091639e-06 1.3362869614784435e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 2.9108749191792378 29.928640724604964 -2.6539098559829717 ;
	setAttr ".radi" 4.4053212620976048;
createNode joint -n "lfLegQd0_digit_ik" -p "lfLegQd0_palm_ik";
	rename -uid "C2DABD34-4EFC-5F73-E876-D1801DC509FF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 33.446580381212527 1.3998276315874136e-08 0.87208095837004862 ;
	setAttr ".r" -type "double3" 5.1520374739753903e-08 1.5310966429985711e-05 1.3219096885159297e-06 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 25.349753547664605 0 ;
	setAttr ".radi" 4.4053212620976048;
createNode joint -n "lfLegQd0_ball_ik" -p "lfLegQd0_digit_ik";
	rename -uid "8BC6CD1F-4D4E-7361-3225-74AEF20CBCBB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.074464736819671 -1.3998011638705066e-08 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 1.0350603199475543e-07 -1.3439739024743841e-05 -3.8459826721678178e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 7.6074146487727461 0 ;
	setAttr ".radi" 4.4053212620976048;
createNode joint -n "lfLegQd0_tip_ik" -p "lfLegQd0_ball_ik";
	rename -uid "28CF8A02-42C2-DE67-AD42-73B10070E1AB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.469369336234735 1.2789769243681803e-13 -2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 57.042831803562628 0 ;
	setAttr ".radi" 4.4053212620976048;
createNode ikEffector -n "effector4" -p "lfLegQd0_ball_ik";
	rename -uid "E7259DA1-4C99-1D17-32AB-0C95775BB2E7";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector3" -p "lfLegQd0_digit_ik";
	rename -uid "1FF97850-403C-D6A0-E86E-A3A0541B5CA3";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector2" -p "lfLegQd0_palm_ik";
	rename -uid "379FC978-40ED-53BE-AD11-908803A4F3AE";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector1" -p "lfLegQd0_lwr_ik";
	rename -uid "0B89258D-4092-577C-D2D6-DEB893706530";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "lfLegQd0_softJ" -p "lfLegQd0_hip_ik";
	rename -uid "9B24ED10-4C4A-E878-2E54-88BDD3DE3B28";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 17.681170403062751 -2.1316282072803006e-14 -2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 78.798557212786918 25.889347981847042 2.5920082035222243 ;
createNode joint -n "lfLegQd0_softJ_end" -p "lfLegQd0_softJ";
	rename -uid "00D9C417-4CFE-3A1C-53A0-66B4BE2D934E";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 81.039833068847656 4.2632564145606011e-14 -4.9737991503207013e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 3.180554681463516e-15 6.1126285284376953e-15 -9.4174236271458816e-15 ;
createNode ikEffector -n "effector5" -p "lfLegQd0_softJ";
	rename -uid "2FFD86E4-44A6-1C28-A396-5F9FEB0F42CC";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegQd0_pvc_SPACE_1_ofs" -p "lfLegQd0_softJ";
	rename -uid "24E5EBEB-4868-F1E9-A554-DE8E1B18B14F";
	setAttr ".t" -type "double3" 28.424184261466223 -54.762031103210155 -8.5927311880951223 ;
	setAttr ".r" -type "double3" 11.984951041713231 260.89327196857221 74.996974091956844 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "lfLegQd0_pvc_SPACE_1" -p "lfLegQd0_pvc_SPACE_1_ofs";
	rename -uid "41585405-47CD-26DB-C61B-AF912E88716F";
	setAttr ".t" -type "double3" 0 1.4210854715202004e-14 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "lfLegQd0_ikCstG" -p "lfLegQd0_IK";
	rename -uid "D4CE0AC1-47A5-86FB-99A4-1C93FD5372B4";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_heelRollG" -p "lfLegQd0_ikCstG";
	rename -uid "F4691CFA-4952-1A45-7B26-43BB7CD9305D";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 52.949980659511873 -2.4358432339674607 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_heelRollG_ctl" -p "lfLegQd0_heelRollG";
	rename -uid "1D45A0E1-406C-1561-4EBA-61AE2F42AB51";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_toeRollG" -p "lfLegQd0_heelRollG_ctl";
	rename -uid "E69F4D8E-43D5-7ABC-B165-E9AF04481562";
	setAttr ".t" -type "double3" -5.3290705182007514e-15 1.1429224997780567e-15 -9.3326704530138898 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_toeRollG_ctl" -p "lfLegQd0_toeRollG";
	rename -uid "83507D10-47DA-5720-B43E-ED976B366F1F";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_footRollG" -p "lfLegQd0_toeRollG_ctl";
	rename -uid "DAD1340A-4A7E-3A01-4D17-419291A011C0";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_outRollG" -p "lfLegQd0_footRollG";
	rename -uid "C9C308E9-49E2-1F80-74C5-F689C4364868";
	setAttr ".t" -type "double3" 3.5372928082839348 -6.5610205138652419e-16 5.3574798206579004 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_outRollG_ctl" -p "lfLegQd0_outRollG";
	rename -uid "066655BE-413E-870C-72DB-37AC35F81948";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_inRollG" -p "lfLegQd0_outRollG_ctl";
	rename -uid "469A6820-4922-381C-01FC-5D8AFC7FB713";
	setAttr ".t" -type "double3" -7.4397110921252363 1.3770120070899074e-17 -0.11244156340003997 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_inRollG_ctl" -p "lfLegQd0_inRollG";
	rename -uid "A31B0C12-4173-E26B-64B0-BF8134165803";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_ballRollG" -p "lfLegQd0_inRollG_ctl";
	rename -uid "6FC743B3-43E0-48B9-B533-62AE920940C3";
	setAttr ".t" -type "double3" 3.9024182838410582 -10.398994598629104 3.0822471071108453 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ballG_ikc" -p "lfLegQd0_ballRollG";
	rename -uid "CA1A2F79-42AF-7758-3698-ACA578932D0A";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "stickCShape1" -p "lfLegQd0_ballG_ikc";
	rename -uid "F6B05271-4C61-F6BE-A80F-5D80270524B9";
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
createNode transform -n "lfLegQd0_extraRollG_ofs" -p "lfLegQd0_ballG_ikc";
	rename -uid "CFBC585B-4204-4EC4-D254-1CB35017C187";
	setAttr ".t" -type "double3" -1.3998008085991387e-08 -9.1044056796702328 4.3133092809826792 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_extraRollG_ofs1" -p "lfLegQd0_extraRollG_ofs";
	rename -uid "06BA1C42-42BC-BEE5-53C5-F093014910CB";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 0 0 ;
	setAttr ".r" -type "double3" -10.806237388709734 7.9513867036587919e-16 87.650336709919841 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "lfLegQd0_extraRollG" -p "lfLegQd0_extraRollG_ofs1";
	rename -uid "EFE38C78-4093-2F02-21AB-95B67087712D";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_extra_ikc" -p "lfLegQd0_extraRollG";
	rename -uid "0C83EF21-4956-FD84-1DBD-96AC979FC887";
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
createNode nurbsCurve -n "lfLegQd0_extra_ikcShape1" -p "lfLegQd0_extra_ikc";
	rename -uid "309F5591-47DA-2805-4ED2-B2B87A0D4D12";
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
createNode transform -n "lfLegQd0_extraRollG_ofs2" -p "lfLegQd0_extra_ikc";
	rename -uid "70079C9A-4E67-9618-20BF-B58B14E35E1C";
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd0_X_ikh" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "A673333A-4EF6-6316-9B2B-8FB7A42F7951";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.0198066269804258e-14 -4.9737991503207013e-14 0 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999957 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 1.224646799147353e-16 -1 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_dist_loc1" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "02DF337C-4092-F152-A6CC-B0B10B0CA4F0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.3998281644944655e-08 -33.446580381212556 -0.87208095837003441 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
createNode locator -n "lfLegQd0_dist_loc1Shape" -p "lfLegQd0_dist_loc1";
	rename -uid "51C9F18A-4E01-3778-E16A-CEB57D1198F7";
	setAttr -k off ".v";
createNode transform -n "lfLegQd0_softJ_posGrp" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "8AC2D1BB-4977-5A98-357C-33B0FAD29200";
	setAttr ".t" -type "double3" 1.3998288750372012e-08 -33.44658038121257 -0.87208095837003441 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
createNode transform -n "lfLegQd0_1_ikh_ofs" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "94FFE073-47EE-8B6B-D9CB-69B6A088D9B8";
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
createNode ikHandle -n "lfLegQd0_1_ikh" -p "lfLegQd0_1_ikh_ofs";
	rename -uid "3CE3AF11-4844-E356-3F62-9D95AD35C7D5";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_toe_wiggle_grp" -p "lfLegQd0_inRollG_ctl";
	rename -uid "EDC3D32B-4A3A-4F9C-A20B-79BB859A3A53";
	setAttr ".t" -type "double3" 3.9024182838410582 -10.398994598629104 3.0822471071108453 ;
	setAttr ".r" -type "double3" -179.99999999999989 32.957168196437379 90 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode ikHandle -n "lfLegQd0_2_ikh" -p "lfLegQd0_toe_wiggle_grp";
	rename -uid "F34780AA-4DBB-D2C2-32C5-66B59D888D75";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.2632564145606011e-14 2.8421709430404007e-14 2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -179.99999999999997 7.6074146487727639 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.54401192967804524 1.7320908514804308e-15 0.83907748174287788 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_2_ofs" -p "lfLegQd0_toe_wiggle_grp";
	rename -uid "008CD5F4-44BE-B807-A36B-409ED971A062";
	setAttr ".t" -type "double3" -1.5631940186722204e-13 3.0198066269804258e-14 5.6843418860808015e-14 ;
	setAttr ".r" -type "double3" 179.99999999999977 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999933 ;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_2" -p "lfLegQd0_ball_fkc_SPACE_2_ofs";
	rename -uid "44B31E47-49FF-63BB-C995-FDB863D4E0C3";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode nurbsCurve -n "diamondShape2" -p "lfLegQd0_inRollG_ctl";
	rename -uid "14627F17-4BFB-0A33-6A84-4696FEADEFFE";
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
createNode nurbsCurve -n "diamondShape3" -p "lfLegQd0_outRollG_ctl";
	rename -uid "D7CED0C5-45FD-4256-8521-C88D55CCA947";
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
createNode nurbsCurve -n "diamondShape1" -p "lfLegQd0_toeRollG_ctl";
	rename -uid "1788DCB0-46EA-265E-F515-40822CA98984";
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
createNode nurbsCurve -n "diamondShape4" -p "lfLegQd0_heelRollG_ctl";
	rename -uid "D2F2E68B-4CD3-E4A9-DE8C-ECB2F495E5A3";
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
	rename -uid "54388602-4A9C-86B0-3CE1-269470A6799C";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape1" -p "lfLegQd0_line_30";
	rename -uid "F5768E55-4723-EFA3-FDFB-5EAFD236B314";
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
	rename -uid "D2FE53B2-4281-120C-5E75-778C926A91F4";
	setAttr ".t" -type "double3" 15.5233919035947 19.503400278299338 -71.732926704400384 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ikc_ofs1" -p "lfLegQd0_ikc_ofs";
	rename -uid "3C1D0B61-4079-59EB-53AB-1D93B68E2107";
createNode transform -n "lfLegQd0_ikc" -p "lfLegQd0_ikc_ofs1";
	rename -uid "CE9944E7-4E9A-84CD-E515-4DBCB7A35974";
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
	rename -uid "3BDB7262-46A3-1904-DC61-7AA9ECD0DD57";
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
createNode transform -n "lfLegQd0_ikc_gmb" -p "lfLegQd0_ikc";
	rename -uid "A9515865-4C94-D27C-6C7C-FAB68DB53A23";
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
	rename -uid "888F1F92-4096-2F81-3E95-4ABDD441F5BC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".tw" yes;
	setAttr -s 53 ".cp[0:52]" -type "double3" -2.2026606310488006 1.5025483990131399 
		-1.1013303507448473 -2.160337124656353 1.5025483990131399 -1.5310481225484054 -2.0349930740943805 
		1.5025483990131399 -1.9442520813700561 -1.8314453809322258 1.5025483990131399 -2.3250630307997326 
		-1.5575162688672464 1.5025483990131399 -2.6588466196120955 -1.2237326800548862 1.5025483990131399 
		-2.9327757316770722 -0.84292173062520925 1.5025483990131399 -3.1363234248392295 -0.42971777180355852 
		1.5025483990131399 -3.2616674754012003 2.57146291972378e-16 1.5025483990131399 -3.3039909817936461 
		0.42971777180355897 1.5025483990131399 -3.2616674754012003 0.8429217306252097 1.5025483990131399 
		-3.1363234248392295 1.2237326800548862 1.5025483990131399 -2.9327757316770722 1.5575162688672481 
		1.5025483990131399 -2.6588466196120919 1.8314453809322266 1.5025483990131399 -2.3250630307997344 
		2.0349930740943822 1.5025483990131399 -1.9442520813700561 2.1603371246563547 1.5025483990131399 
		-1.5310481225484054 2.2026606310488024 1.5025483990131399 -1.1013303507448473 2.1603371116659105 
		0.84293785952207045 -1.1013303507448473 2.03499306425811 0.2006590723381052 -1.1013303507448473 
		1.8314454225460439 -0.35551508672716459 -1.1013303507448473 1.5575162684692536 -0.79807282449577244 
		-1.1013303507448473 1.2237326534636264 -1.1313333182614622 -1.1013303507448473 0.84292170378839959 
		-1.3348809599735292 -1.1013303507448473 0.42971776235416037 -1.4602250073813288 -1.1013303507448473 
		-1.3487406462596458e-16 -1.5025485267642207 -1.1013303507448473 -0.42971776235416037 
		-1.4602250073813288 -1.1013303507448473 -0.84292170378839959 -1.3348809599735292 
		-1.1013303507448473 -1.2237326534636264 -1.1313333182614622 -1.1013303507448473 -1.5575162684692536 
		-0.79807282449577244 -1.1013303507448473 -1.8314454225460439 -0.35551508672716459 
		-1.1013303507448473 -2.03499306425811 0.2006590723381052 -1.1013303507448473 -2.1603371116659105 
		0.84293785952207045 -1.1013303507448473 -2.2026606310488024 1.5025483990131399 -1.1013303507448473 
		-2.2026606310488024 1.5025483990131399 3.1718312734898291 -2.2026606310488024 1.3703887611502132 
		3.3039909113527575 -2.1603371116659105 0.84293785952207045 3.3039909113527575 -2.03499306425811 
		0.2006590723381052 3.3039909113527575 -1.8314454225460439 -0.35551508672716459 3.3039909113527575 
		-1.5575162684692536 -0.79807282449577244 3.3039909113527575 -1.2237326534636264 -1.1313333182614622 
		3.3039909113527575 -0.84292170378839959 -1.3348809599735292 3.3039909113527575 -0.42971776235416037 
		-1.4602250073813288 3.3039909113527575 -1.3487406462596458e-16 -1.5025485267642207 
		3.3039909113527575 0.42971776235416037 -1.4602250073813288 3.3039909113527575 0.84292170378839959 
		-1.3348809599735292 3.3039909113527575 1.2237326534636264 -1.1313333182614622 3.3039909113527575 
		1.5575162684692536 -0.79807282449577244 3.3039909113527575 1.8314454225460439 -0.35551508672716459 
		3.3039909113527575 2.03499306425811 0.2006590723381052 3.3039909113527575 2.1603371116659105 
		0.84293785952207045 3.3039909113527575 2.2026606310488024 1.3703887611502132 3.3039909113527575 
		2.2026606310488024 1.5025483990131399 3.1718312734898291 2.2026606310488024 1.5025483990131399 
		-1.1013303507448473;
createNode nurbsCurve -n "lfLegQd0_ikc_gmbShapeOrig" -p "lfLegQd0_ikc_gmb";
	rename -uid "1ECCC279-4088-1F86-476B-258FBBCF5740";
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
	rename -uid "88911E70-4BE3-007B-B768-D68D972BCF41";
	setAttr ".t" -type "double3" 1.3998244341451027e-08 -19.503400278299345 12.640594645351385 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_smart_ctl" -p "lfLegQd0_smart_ctl_ofs";
	rename -uid "C11D916F-4B37-5AEA-8AAF-268F7EE85A5E";
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
	rename -uid "AAA5F84E-4FB4-9CF2-66A7-318787005C57";
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
		-5.0672023383832796 -1.040044412538672e-16 5.0672023383832796
		-4.5896070243490403e-16 -1.4708449136825518e-16 4.5817866507689846
		5.0672023383832796 -1.0400444125386717e-16 5.0672023383832823
		4.5817866507689935 -8.7712727787503627e-32 -9.1675807388717589e-16
		5.0672023383832796 1.0400444125386722e-16 -5.0672023383832858
		2.8055351781201544e-16 1.4708449136825503e-16 -4.5817866507689802
		-5.0672023383832796 1.0400444125386717e-16 -5.0672023383832823
		;
createNode ikHandle -n "lfLegQd0_autoAimJ_ikh" -p "lfLegQd0_ikc";
	rename -uid "74D8D20B-46F0-DA28-DFB2-03BAB99BC5D1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 8.8817841970012523e-15 -2.8421709430404007e-14 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -98.866795211467036 14.683789664808227 -92.264529372065823 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_pvc_ofs" -p "lfLegQd0_IK";
	rename -uid "A1629BD3-4FFF-32FB-0EE7-2B8C59BE0661";
	setAttr ".t" -type "double3" 21.943537102018126 89.595871220417649 -4.1002163452172571 ;
	setAttr ".r" -type "double3" 11.984909460277844 3.7472038499647318 6.7504238017155845e-06 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_pvc_ofs1" -p "lfLegQd0_pvc_ofs";
	rename -uid "C6E1CEA8-405D-E6B3-0CEE-DBB4C5084BF2";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd0_pvc" -p "lfLegQd0_pvc_ofs1";
	rename -uid "455EC957-4178-8C9E-E51B-4F8BF86C0D35";
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
	rename -uid "9C3CFE57-4E33-8DA3-B271-41846EACDAA9";
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
	rename -uid "B80DD407-4F48-E471-A741-D98925C8E762";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -4.2905979382142503 -170.54963926061941 88.399679234136272 ;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd0_extraRollG_ofs_locShape" -p "lfLegQd0_extraRollG_ofs_loc";
	rename -uid "03E2818C-4203-C2F1-0C6F-35B341A03926";
	setAttr -k off ".v";
createNode transform -n "lfLegQd0_setting" -p "lfLegQd0_ctl_data";
	rename -uid "FA47240F-4FD7-78BE-F6F4-E48D9F705BD9";
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
	rename -uid "B4EA1831-487B-FAA3-9C4D-C7B5E3A9DBE9";
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
		-6.7833102141937021 1.720469046836988e-16 -2.8097391876797393
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
		6.7833102141937021 1.720469046836988e-16 -2.8097391876797393
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
		-6.7833102141937021 -1.720469046836988e-16 2.8097391876797393
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
		6.7833102141937021 -1.720469046836988e-16 2.8097391876797393
		7.2011237055530382 -8.7708747203854322e-17 1.4323925411805349
		7.3422021034960085 4.862736318778659e-32 -7.9414508176483024e-16
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_anchorF1" -p "master_ctl";
	rename -uid "F428F9DC-41C3-27C1-BD2A-658B28B7D355";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd0_anchorF1Shape" -p "lfLegQd0_anchorF1";
	rename -uid "3AADA017-4549-C5E6-1E1F-FB902B7E3E73";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 22.026606310488024 22.026606310488024 22.026606310488024 ;
createNode transform -n "lfLegQd1_ctl_data" -p "master_ctl";
	rename -uid "BF104F09-4149-9180-7009-D28727206DB6";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_FK" -p "lfLegQd1_ctl_data";
	rename -uid "8412C281-4598-D03E-EA18-7D961C380247";
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd1_hip_fk" -p "lfLegQd1_FK";
	rename -uid "3529427D-4022-4A67-5A0F-DE9D784876AD";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 178.13758397033899 -25.04241983987502 -81.628065413254305 ;
	setAttr ".radi" 3.1092320474293955;
createNode joint -n "lfLegQd1_upr_fk" -p "lfLegQd1_hip_fk";
	rename -uid "18122C2E-439C-F0E0-B771-B184030093BA";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 177.77341520201895 -56.661015281513897 10.224746785676922 ;
	setAttr ".radi" 3.1092320474293955;
createNode joint -n "lfLegQd1_lwr_fk" -p "lfLegQd1_upr_fk";
	rename -uid "C37E7016-4050-9AFF-4384-1E8C1821ABFB";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -29.861134866726214 0 ;
	setAttr ".radi" 3.1092320474293955;
createNode joint -n "lfLegQd1_palm_fk" -p "lfLegQd1_lwr_fk";
	rename -uid "3E3B2C2C-46DE-0D55-627A-D4BB7EB655D6";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 179.23342805838215 -1.7821319713137598 0.51119245241118505 ;
	setAttr ".radi" 3.1092320474293955;
createNode joint -n "lfLegQd1_digit_fk" -p "lfLegQd1_palm_fk";
	rename -uid "98242A25-4168-1830-48F0-62985BC6F832";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 34.189215079406672 0 ;
	setAttr ".radi" 3.1092320474293955;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_1_ofs" -p "lfLegQd1_digit_fk";
	rename -uid "E8188F3A-43EC-B06B-8D52-54AAAE087F85";
	setAttr ".t" -type "double3" 9.4777716629219064 -1.4931186953504039e-08 -2.1316282072803006e-14 ;
	setAttr ".r" -type "double3" 0 -0.42943726992018927 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999956 ;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_1" -p "lfLegQd1_ball_fkc_SPACE_1_ofs";
	rename -uid "6DFB655D-44FD-7565-FD69-F58DF8DB850B";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "lfLegQd1_ball_fk_SPACE_2_ofs" -p "lfLegQd1_digit_fk";
	rename -uid "9E871BCA-4C9A-73B5-38D8-3DB383A5B506";
	setAttr ".t" -type "double3" 9.4777716629218851 -1.4931192282574557e-08 -5.6843418860808015e-14 ;
	setAttr ".r" -type "double3" 0 -0.42943726992021158 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 0.99999999999999967 ;
createNode transform -n "lfLegQd1_ball_fk_SPACE_2" -p "lfLegQd1_ball_fk_SPACE_2_ofs";
	rename -uid "6EB6226C-4ADE-74A5-111C-EEB01D3F135A";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
createNode transform -n "lfLegQd1_ball_fk_ofs" -p "lfLegQd1_digit_fk";
	rename -uid "D65F8EF8-4C6F-AC5D-2090-2F81A9F496BB";
	setAttr ".t" -type "double3" 9.4777716629218958 -1.4931192282574557e-08 -4.9737991503207013e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 0.99999999999999967 ;
createNode joint -n "lfLegQd1_ball_fk" -p "lfLegQd1_ball_fk_ofs";
	rename -uid "DCBDFF08-4E84-FA1F-64C9-888DB8F5884F";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 0 2.4351121779955051e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.3803948979137533e-13 0 -3.1825154502045838e-14 ;
	setAttr ".radi" 3.1092320474293955;
createNode joint -n "lfLegQd1_tip_fk" -p "lfLegQd1_ball_fk";
	rename -uid "2643B6BA-4A7A-9F6A-05E4-0DBEBDAC2DBC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 11.188850594819129 2.0961010704922955e-13 -2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 56.240222190513528 0 ;
	setAttr ".radi" 3.1092320474293955;
createNode transform -n "lfLegQd1_upr_fkc_ofs" -p "lfLegQd1_FK";
	rename -uid "8628ABEE-4163-3563-8398-E599E026485E";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_upr_fkc" -p "lfLegQd1_upr_fkc_ofs";
	rename -uid "1DDD7D2A-4368-B250-C67B-3D807F5D5A0A";
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
	rename -uid "E04C94F0-426B-2C16-3F29-A9A1F5AC9360";
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
	rename -uid "4D8F98EF-4CE9-69AF-96A2-15BC3C5464C9";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_lwr_fkc" -p "lfLegQd1_lwr_fkc_ofs";
	rename -uid "6D3EAF69-430B-5473-58F4-E9BF7A60D0CC";
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
	rename -uid "29892941-4F89-3A76-B7BA-1E873610F052";
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
	rename -uid "4BB6F727-4CA1-0837-2431-9E8C0958E286";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_palm_fkc" -p "lfLegQd1_palm_fkc_ofs";
	rename -uid "9B8A8747-402C-6AFD-4820-F69702E8A616";
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
	rename -uid "8189E792-4B96-880E-995D-A8A0866E5126";
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
	rename -uid "3E343919-4527-B473-B706-D7B6F08B76A6";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_digit_fkc" -p "lfLegQd1_digit_fkc_ofs";
	rename -uid "4F356868-4074-C738-03D7-27984E15F961";
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
createNode nurbsCurve -n "lfLegQd1_digit_fkcShape1" -p "lfLegQd1_digit_fkc";
	rename -uid "C2EBB12C-4941-7C40-F314-4E82C823832D";
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
createNode transform -n "lfLegQd1_ikc_matcher" -p "lfLegQd1_digit_fkc";
	rename -uid "7CAA4C3B-4456-2277-F202-FFA9FAB25B6E";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 -7.9936057773011271e-14 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -145.81078492059331 0 -89.999999999999744 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "lfLegQd1_quadScap_ofs" -p "lfLegQd1_FK";
	rename -uid "6C87840E-4E02-8001-E1EA-6E990FC11F7F";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_quadScap" -p "lfLegQd1_quadScap_ofs";
	rename -uid "8E79BAE0-4B5F-7D8B-0A25-FD9B9886954C";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "lfLegQd1_hip_fkc_ofs" -p "lfLegQd1_quadScap";
	rename -uid "29E21FA8-4806-6C99-2EF0-29A3AC5C1314";
	setAttr ".t" -type "double3" 0 7.1054273576010019e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999967 ;
createNode transform -n "lfLegQd1_hip_fkc" -p "lfLegQd1_hip_fkc_ofs";
	rename -uid "20C22050-431D-E972-E35B-D89CF8B44794";
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
createNode nurbsCurve -n "lfLegQd1_hip_fkcShape1" -p "lfLegQd1_hip_fkc";
	rename -uid "B2E29C2F-4A59-9937-7379-3799046E3A9D";
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
createNode transform -n "lfLegQd1_scap_fkc_ofs" -p "lfLegQd1_hip_fkc";
	rename -uid "01308C38-4C80-7980-E454-C797F08A4C2C";
	setAttr ".t" -type "double3" 47.32629281337671 -1.0658141036401503e-14 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "lfLegQd1_scap_fkc" -p "lfLegQd1_scap_fkc_ofs";
	rename -uid "C1D73CFA-495D-6192-4C8F-06A15839733A";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfLegQd1_scap_fkcShape1" -p "lfLegQd1_scap_fkc";
	rename -uid "95E65935-44A9-112D-315A-5EB54AD73AA6";
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
createNode joint -n "lfLegQd1_autoAim" -p "lfLegQd1_quadScap_ofs";
	rename -uid "841CD1B1-4AD9-6029-AD99-E6AF5CE66509";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 1.4210854715202004e-14 -1.0658141036401503e-14 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -168.65448346162492 -24.617625774086019 5.9260400345148954 ;
	setAttr ".radi" 4.6638480711440931;
createNode joint -n "lfLegQd1_autoAim_end" -p "lfLegQd1_autoAim";
	rename -uid "017E424C-462C-C475-5851-52ADFFA9AC3C";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 137.00360069458876 -3.5527136788005009e-15 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.2722218725854059e-14 4.1744780194208675e-15 1.3219180394832736e-14 ;
	setAttr ".radi" 4.6638480711440931;
createNode ikEffector -n "effector12" -p "lfLegQd1_autoAim";
	rename -uid "7A073E69-41A1-6267-5280-C3A7B9CED96B";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikHandle -n "lfLegQd1_legLock_ikh" -p "lfLegQd1_quadScap_ofs";
	rename -uid "7E7491E4-4585-DE89-B290-40960D7C584A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.6843418860808015e-14 0 2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -11.345516538375245 24.617625774086015 -174.07395996548513 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999956 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_ballOfsG" -p "lfLegQd1_FK";
	rename -uid "B5D5DED7-4C4A-4C69-48B9-B580203F207B";
	setAttr ".t" -type "double3" 15.13693617458677 18.88141594349937 57.92857061018649 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ball_fkc_ofs" -p "lfLegQd1_ballOfsG";
	rename -uid "594A2FCB-4B16-5708-1B59-B39CB5E24A4D";
	setAttr ".t" -type "double3" 9.2145100438756344e-09 -7.8398838533381863 5.3258224544618997 ;
	setAttr ".r" -type "double3" 180 -33.759777809486479 -89.999999999999588 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "lfLegQd1_ball_fkc_ofs1" -p "lfLegQd1_ball_fkc_ofs";
	rename -uid "29C35348-4CDA-427A-A750-4195F371C254";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ball_fkc" -p "lfLegQd1_ball_fkc_ofs1";
	rename -uid "17850AF9-4D90-5600-45AE-DE823C755E59";
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
createNode nurbsCurve -n "lfLegQd1_ball_fkcShape1" -p "lfLegQd1_ball_fkc";
	rename -uid "81329C09-4CB2-74F4-87A5-A9B82BB60F78";
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
createNode ikHandle -n "lfLegQd1_3_ikh" -p "lfLegQd1_ball_fkc";
	rename -uid "7FBDC4A1-4ECE-70C3-6AB3-A194C3D3F7B9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 11.188850594819154 4.0500935938325711e-13 -3.5527136788005009e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999967 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.55571211934999942 6.9975954749135767e-17 -0.83137478937452236 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_ball_fk_SPACE_1_ofs" -p "lfLegQd1_ball_fkc";
	rename -uid "3FEA83EA-4059-AAFC-8FCF-59A602CF0378";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -1.7763568394002505e-15 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999978 ;
createNode transform -n "lfLegQd1_ball_fk_SPACE_1" -p "lfLegQd1_ball_fk_SPACE_1_ofs";
	rename -uid "C632CB8E-4909-A58D-4078-7B9FD65F45CB";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "lfLegQd1_IK" -p "lfLegQd1_ctl_data";
	rename -uid "3B8F3771-4DB9-B962-6620-7CBEB99CA68F";
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd1_hip_ik" -p "lfLegQd1_IK";
	rename -uid "1DE281AE-401C-B546-6539-56A448A623AF";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 178.13758397033899 -25.04241983987502 -81.628065413254305 ;
	setAttr ".radi" 4.6638480711440931;
createNode joint -n "lfLegQd1_upr_ik" -p "lfLegQd1_hip_ik";
	rename -uid "06FA28A4-46FF-A11F-94CA-879CB1A70CAD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 47.326292813376682 -2.8421709430404007e-14 0 ;
	setAttr ".r" -type "double3" 2.8265604935828077e-15 1.2074182697257333e-06 -9.0567090749504451e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 177.77341520201895 -56.661015281513897 10.224746785676922 ;
	setAttr ".radi" 4.6638480711440931;
createNode joint -n "lfLegQd1_lwr_ik" -p "lfLegQd1_upr_ik";
	rename -uid "6C5FF41D-42C5-2D26-CC0A-E293A5822D30";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 30.533184530843595 1.4210854715202004e-14 -1.5099033134902129e-14 ;
	setAttr ".r" -type "double3" -8.5243049953641893e-21 -1.898446213858906e-06 -1.6622134706144306e-20 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -29.861134866726214 0 ;
	setAttr ".radi" 4.6638480711440931;
createNode joint -n "lfLegQd1_palm_ik" -p "lfLegQd1_lwr_ik";
	rename -uid "B4DE0049-4F70-2488-B3B3-F7B1BF8DE346";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 41.934879068019043 -1.8829382497642655e-13 3.5527136788005009e-14 ;
	setAttr ".r" -type "double3" -9.4989044132579554e-09 -2.0849999028810593e-10 -5.5894105391551088e-10 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 179.23342805838215 -1.7821319713137598 0.51119245241118505 ;
	setAttr ".radi" 4.6638480711440931;
createNode joint -n "lfLegQd1_digit_ik" -p "lfLegQd1_palm_ik";
	rename -uid "90635891-499B-060C-E210-B2AC5A5326A7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 26.570854559588629 0.58322756766104611 1.5635004633482836 ;
	setAttr ".r" -type "double3" 1.0184492312170505e-08 -1.604452280145543e-17 7.6338255187591089e-24 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 34.189215079406672 0 ;
	setAttr ".radi" 4.6638480711440931;
createNode joint -n "lfLegQd1_ball_ik" -p "lfLegQd1_digit_ik";
	rename -uid "BD48D8AF-4FBE-453D-51EA-46914E5F5B26";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 9.4777716629219242 -1.4931163860865126e-08 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 1.0154264320477876e-08 1.9022833607468746e-22 -1.9345254499038942e-23 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -0.42943726992022041 0 ;
	setAttr ".radi" 4.6638480711440931;
createNode joint -n "lfLegQd1_tip_ik" -p "lfLegQd1_ball_ik";
	rename -uid "471375A3-4EB1-B34C-ACB9-8EB50DBA4368";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 11.188850594819129 2.0961010704922955e-13 -2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 56.240222190513528 0 ;
	setAttr ".radi" 4.6638480711440931;
createNode ikEffector -n "effector10" -p "lfLegQd1_ball_ik";
	rename -uid "E2EDDB64-4512-5D97-E4AD-6986466A4A83";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector9" -p "lfLegQd1_digit_ik";
	rename -uid "C9A2C229-4952-32F7-8E7C-CD9903DD6409";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector8" -p "lfLegQd1_palm_ik";
	rename -uid "421C0123-4E88-80F3-9F83-5C8AED61A6B1";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector7" -p "lfLegQd1_lwr_ik";
	rename -uid "BF83447E-47E4-0B0D-AEC9-CBB4F27A1ABE";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "lfLegQd1_softJ" -p "lfLegQd1_hip_ik";
	rename -uid "2F29046F-40F3-913C-6D04-749B5B26CB15";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 47.326292813376639 -3.1974423109204508e-14 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 86.351711141628115 -39.337269771452924 9.3672541287995017 ;
createNode joint -n "lfLegQd1_softJ_end" -p "lfLegQd1_softJ";
	rename -uid "1E84E9F5-4E78-2F07-EAFC-A49286D0665E";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 70.083045959472656 -2.8421709430404007e-14 3.0198066269804258e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 6.3611093629270296e-15 -5.963540027744093e-16 3.1805546814635152e-15 ;
createNode ikEffector -n "effector11" -p "lfLegQd1_softJ";
	rename -uid "80AFC188-455E-75A1-56D1-BF86179543DE";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegQd1_pvc_SPACE_1_ofs" -p "lfLegQd1_softJ";
	rename -uid "A10B6FEE-40BC-15C4-CF19-B3A31E09E6A7";
	setAttr ".t" -type "double3" 42.849083783261321 48.13894294164804 1.7368181085445702 ;
	setAttr ".r" -type "double3" 5.0143687094060363 88.042678074565359 75.680837677661316 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999944 ;
createNode transform -n "lfLegQd1_pvc_SPACE_1" -p "lfLegQd1_pvc_SPACE_1_ofs";
	rename -uid "0BA822BF-490F-55A6-A7F4-A595F80B6AC8";
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-14 0 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 0.99999999999999944 ;
createNode transform -n "lfLegQd1_ikCstG" -p "lfLegQd1_IK";
	rename -uid "4ED7DA76-44BA-EB73-6AA1-BF8490488162";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_heelRollG" -p "lfLegQd1_ikCstG";
	rename -uid "E92C7230-4635-DE91-1AA2-76B553FB3FEF";
	setAttr ".t" -type "double3" -0.58322755272941329 45.452270110617505 -3.2277479209104811 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_heelRollG_ctl" -p "lfLegQd1_heelRollG";
	rename -uid "9AE73788-4B2A-72C7-69A3-4186F9A2669A";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_toeRollG" -p "lfLegQd1_heelRollG_ctl";
	rename -uid "5A10713D-4208-51B8-E395-8D8B52F00EB7";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 1.1464355750816792e-15 -9.3613568898385253 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_toeRollG_ctl" -p "lfLegQd1_toeRollG";
	rename -uid "101B6D4E-4788-1F9D-4D92-3FBB8081F5D3";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_footRollG" -p "lfLegQd1_toeRollG_ctl";
	rename -uid "ED870E69-4575-7A81-1AAA-66ACA5BDEA98";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_outRollG" -p "lfLegQd1_footRollG";
	rename -uid "C64A8F13-4DB2-8666-30CB-53B70DCE13AA";
	setAttr ".t" -type "double3" 3.9782605883148552 -6.5994580868347711e-16 5.3888664808739719 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_outRollG_ctl" -p "lfLegQd1_outRollG";
	rename -uid "48C04D38-480C-F814-17AA-6DB1CD20BD67";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_inRollG" -p "lfLegQd1_outRollG_ctl";
	rename -uid "8AC4FCC0-4D0B-522F-27A4-3EA741DD30B3";
	setAttr ".t" -type "double3" -7.5370106831020625 -2.9500702147909741e-17 0.24089151393239661 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_inRollG_ctl" -p "lfLegQd1_inRollG";
	rename -uid "03FB22D2-4E1E-AC41-8363-74825AA2F423";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_ballRollG" -p "lfLegQd1_inRollG_ctl";
	rename -uid "3958E0CB-4414-AC53-D9B8-C886F2C5D977";
	setAttr ".t" -type "double3" 3.5587500947869124 -11.0415320901612 3.1970249940001878 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ballG_ikc" -p "lfLegQd1_ballRollG";
	rename -uid "DBAC489B-4AF0-3169-610A-01B0D875C6EC";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "stickCShape2" -p "lfLegQd1_ballG_ikc";
	rename -uid "68E5FF36-40B5-6F38-F134-D48D897EFBB2";
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
		2.49207543365235e-17 -15.139173420493497 -1.5188954345410335
		-2.948536815465669e-32 -15.546160237146978 -1.5724762565266392
		-2.49207543365235e-17 -15.953147053800457 -1.5188954345410335
		-4.8143203133508087e-17 -16.332398427185186 -1.3618044823658344
		-6.808476590495926e-17 -16.65806873148475 -1.1119086178875537
		-8.3386473131532142e-17 -16.9079654608115 -0.78623812826331962
		-9.300552367067805e-17 -17.065055548138229 -0.4069868166534798
		-9.6286406267016175e-17 -17.118636617223398 -4.6465398695107345e-16
		-9.300552367067805e-17 -17.065055548138229 0.4069868166534798
		-8.3386473131532142e-17 -16.9079654608115 0.78623812826331962
		-6.808476590495926e-17 -16.65806873148475 1.1119086178875537
		-4.8143203133508087e-17 -16.332398427185186 1.3618044823658344
		-2.49207543365235e-17 -15.953147053800457 1.5188954345410335
		7.2038368450931861e-32 -15.546160237146978 1.5724762565266392
		2.49207543365235e-17 -15.139173420493497 1.5188954345410335
		4.8143203133508087e-17 -14.759922047108768 1.3618044823658344
		6.808476590495926e-17 -14.434251742809204 1.1119086178875537
		8.3386473131532142e-17 -14.184356001880705 0.78623812826331962
		9.300552367067805e-17 -14.027264926155725 0.4069868166534798
		9.6286406267016175e-17 -13.973683857070558 -8.4998975403973054e-16
		0 0 0
		;
createNode transform -n "lfLegQd1_extraRollG_ofs" -p "lfLegQd1_ballG_ikc";
	rename -uid "D76C44D5-4CA5-ABD2-0E8F-59815F867E4B";
	setAttr ".t" -type "double3" -1.493121182249979e-08 -7.8398834608676768 5.3258222852907195 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_extraRollG_ofs1" -p "lfLegQd1_extraRollG_ofs";
	rename -uid "68F75236-40BB-602C-DE35-8892ECD17898";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 1.7763568394002505e-15 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -11.308441913549864 -7.9513867036587919e-16 89.428054481104851 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
createNode transform -n "lfLegQd1_extraRollG" -p "lfLegQd1_extraRollG_ofs1";
	rename -uid "8707FDAA-4640-E162-648E-DBA2A2C0CA3F";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_extra_ikc" -p "lfLegQd1_extraRollG";
	rename -uid "AC3BCCCE-46BC-CC55-DE6F-C59AD9BC34EE";
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
createNode nurbsCurve -n "lfLegQd1_extra_ikcShape1" -p "lfLegQd1_extra_ikc";
	rename -uid "203653EF-4D0E-F7D4-19C6-13B0DA2123AF";
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
createNode transform -n "lfLegQd1_extraRollG_ofs2" -p "lfLegQd1_extra_ikc";
	rename -uid "C6712BD3-46F7-1DFE-CD77-1E9FD9CD0DBC";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 0 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd1_X_ikh" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "BF7AB7DA-440C-77A8-5608-6F970C8B8346";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.9277916736609768e-14 2.8421709430404007e-14 0 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999773 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 1.224646799147353e-16 -1 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_dist_loc1" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "5AB44AB5-446A-5DA1-E5C4-5AAE130EAD3A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.58322756766087025 -26.570854559588604 -1.5635004633482907 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode locator -n "lfLegQd1_dist_loc1Shape" -p "lfLegQd1_dist_loc1";
	rename -uid "918FBCBF-4F8B-E699-5031-6BB747B3FCCB";
	setAttr -k off ".v";
createNode transform -n "lfLegQd1_softJ_posGrp" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "2477A762-4CA1-3F19-6F49-26976DEA77E4";
	setAttr ".t" -type "double3" 0.5832275676608667 -26.570854559588582 -1.5635004633482623 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "lfLegQd1_1_ikh_ofs" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "2748BB6E-4CCA-DFE6-D989-CD92077D2C9C";
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode ikHandle -n "lfLegQd1_1_ikh" -p "lfLegQd1_1_ikh_ofs";
	rename -uid "2632192C-4384-C36B-311B-91A19BB50918";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_toe_wiggle_grp" -p "lfLegQd1_inRollG_ctl";
	rename -uid "64AC4A7C-436C-049C-D00F-6BA4FFFA9E6B";
	setAttr ".t" -type "double3" 3.5587500947869124 -11.0415320901612 3.1970249940001878 ;
	setAttr ".r" -type "double3" 179.99999999999986 33.759777809486465 89.999999999999659 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
createNode ikHandle -n "lfLegQd1_2_ikh" -p "lfLegQd1_toe_wiggle_grp";
	rename -uid "E27BF775-4147-C556-86B4-C3AAA2DCE9C8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -7.9936057773011271e-14 -2.1316282072803006e-14 ;
	setAttr ".r" -type "double3" 179.99999999999997 -0.42943726992023368 -2.2070151398599348e-32 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.55571211934999942 -2.0996270472366292e-15 0.83137478937452269 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_2_ofs" -p "lfLegQd1_toe_wiggle_grp";
	rename -uid "7AEB0B5D-46E6-16AB-C962-D0B83A9ED471";
	setAttr ".t" -type "double3" -2.4868995751603507e-14 1.0480505352461478e-13 -2.1316282072803006e-14 ;
	setAttr ".r" -type "double3" -179.99999999999966 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_2" -p "lfLegQd1_ball_fkc_SPACE_2_ofs";
	rename -uid "A3DD33A7-4087-20A3-0360-718E2E3F3887";
	setAttr ".t" -type "double3" 0 0 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode nurbsCurve -n "diamondShape6" -p "lfLegQd1_inRollG_ctl";
	rename -uid "E7BFAF5F-4CFD-58AE-2D04-7EA7AD8DD6C9";
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
createNode nurbsCurve -n "diamondShape7" -p "lfLegQd1_outRollG_ctl";
	rename -uid "B795B676-4674-1D56-F57C-C1BFC35A0433";
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
createNode nurbsCurve -n "diamondShape5" -p "lfLegQd1_toeRollG_ctl";
	rename -uid "23356E27-485E-7FA1-02C1-52839870240B";
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
createNode nurbsCurve -n "diamondShape8" -p "lfLegQd1_heelRollG_ctl";
	rename -uid "8EA60DB2-4A83-7298-73BD-8B828E9F92B8";
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
	rename -uid "77053AE8-4C58-0B96-5873-679F671001EE";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape2" -p "lfLegQd1_line_30";
	rename -uid "866F6640-4B6A-A0D2-EFA4-799B06E8AF9B";
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
	rename -uid "BDA2EC98-4E17-42CF-4778-9D973D0854FD";
	setAttr ".t" -type "double3" 15.136936168869962 18.881415551028873 57.928570779357692 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ikc_ofs1" -p "lfLegQd1_ikc_ofs";
	rename -uid "C491A4AB-4022-063A-10AB-FBA1C2A58AA7";
createNode transform -n "lfLegQd1_ikc" -p "lfLegQd1_ikc_ofs1";
	rename -uid "CC5E72ED-4575-C5BB-74D4-5DBA49D460B5";
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
	rename -uid "B3E182E3-41DD-905B-AB34-F684327573EE";
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
createNode transform -n "lfLegQd1_ikc_gmb" -p "lfLegQd1_ikc";
	rename -uid "08D35821-4CC5-C96B-D2ED-00863637AE87";
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
	rename -uid "772D4010-401F-2950-26DA-03893ECCF2B0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".tw" yes;
	setAttr -s 53 ".cp[0:52]" -type "double3" -2.3319240355720439 1.590725625579001 
		-1.165962007068627 -2.2871167691075591 1.590725625579001 -1.6208978180855258 -2.1544168878361329 
		1.590725625579001 -2.0583507010159892 -1.938923973776074 1.590725625579001 -2.4615095868953993 
		-1.6489192987648922 1.590725625579001 -2.81488130583352 -1.2955475798267715 1.590725625579001 
		-3.1048859808447027 -0.89238869394736131 1.590725625579001 -3.3203788949047599 -0.45493581101689928 
		1.590725625579001 -3.4530787761761879 2.7223695309934892e-16 1.590725625579001 -3.4978860426406726 
		0.45493581101689973 1.590725625579001 -3.4530787761761879 0.8923886939473622 1.590725625579001 
		-3.3203788949047599 1.2955475798267724 1.590725625579001 -3.1048859808447027 1.6489192987648931 
		1.590725625579001 -2.81488130583352 1.9389239737760757 1.590725625579001 -2.4615095868953993 
		2.1544168878361347 1.590725625579001 -2.0583507010159892 2.2871167691075609 1.590725625579001 
		-1.6208978180855276 2.3319240355720456 1.590725625579001 -1.1659620070686252 2.2871167553547718 
		0.89240576210395339 -1.1659620070686252 2.1544168774226193 0.2124347669083857 -1.1659620070686252 
		1.9389240178320044 -0.37637853969292401 -1.1659620070686252 1.648919298343543 -0.84490783162457106 
		-1.1659620070686252 1.2955475516750008 -1.1977257576201801 -1.1659620070686252 0.89238866553563057 
		-1.413218617210795 -1.1659620070686252 0.45493580101296205 -1.5459184951429474 -1.1659620070686252 
		-1.4278916535899891e-16 -1.5907257753602213 -1.1659620070686252 -0.45493580101296205 
		-1.5459184951429474 -1.1659620070686252 -0.89238866553563057 -1.413218617210795 -1.1659620070686252 
		-1.2955475516750008 -1.1977257576201801 -1.1659620070686252 -1.648919298343543 -0.84490783162457106 
		-1.1659620070686252 -1.9389240178320044 -0.37637853969292401 -1.1659620070686252 
		-2.1544168774226193 0.2124347669083857 -1.1659620070686252 -2.2871167553547718 0.89240576210395339 
		-1.1659620070686252 -2.3319240355720456 1.590725625579001 -1.1659620070686252 -2.3319240355720456 
		1.5907256255790045 3.3579706219411429 -2.3319240355720456 1.4508101834446805 3.4978860640754661 
		-2.2871167553547718 0.89240576210395339 3.4978860640754661 -2.1544168774226193 0.2124347669083857 
		3.4978860640754661 -1.9389240178320044 -0.37637853969292401 3.4978860640754661 -1.648919298343543 
		-0.84490783162457106 3.4978860640754661 -1.2955475516750008 -1.1977257576201801 3.4978860640754661 
		-0.89238866553563057 -1.413218617210795 3.4978860640754661 -0.45493580101296205 -1.5459184951429474 
		3.4978860640754661 -1.4278916535899891e-16 -1.5907257753602213 3.4978860640754661 
		0.45493580101296205 -1.5459184951429474 3.4978860640754661 0.89238866553563057 -1.413218617210795 
		3.4978860640754661 1.2955475516750008 -1.1977257576201801 3.4978860640754661 1.648919298343543 
		-0.84490783162457106 3.4978860640754661 1.9389240178320044 -0.37637853969292401 3.4978860640754661 
		2.1544168774226193 0.2124347669083857 3.4978860640754661 2.2871167553547718 0.89240576210395339 
		3.4978860640754661 2.3319240355720456 1.4508101834446805 3.4978860640754661 2.3319240355720456 
		1.590725625579001 3.3579706219411429 2.3319240355720456 1.590725625579001 -1.1659620070686252;
createNode nurbsCurve -n "lfLegQd1_ikc_gmbShapeOrig" -p "lfLegQd1_ikc_gmb";
	rename -uid "C6818C1A-4165-2C19-CFBB-9D86E3D4178B";
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
	rename -uid "630AB46F-4AF9-01CF-544A-C9AA7B9AE1C1";
	setAttr ".t" -type "double3" 1.493151025044881e-08 -18.881415551028873 14.15260527409729 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_smart_ctl" -p "lfLegQd1_smart_ctl_ofs";
	rename -uid "39C51F46-47E0-7376-815E-5FA90D05CF60";
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
	rename -uid "812669CD-4597-E642-9935-08BC3BDF1D98";
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
createNode ikHandle -n "lfLegQd1_autoAimJ_ikh" -p "lfLegQd1_ikc";
	rename -uid "2A7C2165-410A-9601-66EA-C6A33C24E51A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.5527136788005009e-15 7.1054273576010019e-15 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 12.171505944884407 -0.47673866666912984 -87.790796088537746 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode joint -n "lfLegQd1_legLock" -p "lfLegQd1_ikc";
	rename -uid "738BA88D-4670-A048-8AC6-72A17BD39B71";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 167.82849405511544 0.47673866666913073 92.209203911462254 ;
	setAttr ".radi" 3.1092320474293955;
createNode joint -n "lfLegQd1_legLock_end" -p "lfLegQd1_legLock";
	rename -uid "2A0A3C4E-446F-9697-A12A-4A933CDF29D2";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 137.00360069458873 3.5527136788005009e-15 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 3.1092320474293955;
createNode ikEffector -n "effector13" -p "lfLegQd1_legLock";
	rename -uid "3E4DE764-49DD-E141-DD38-6EA7C394B68E";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegQd1_pvc_ofs" -p "lfLegQd1_IK";
	rename -uid "E702D255-4533-B499-6842-2EAF78421F0B";
	setAttr ".t" -type "double3" 16.584956749010114 83.746168715153573 19.555965439770269 ;
	setAttr ".r" -type "double3" 5.0141679009995981 179.29415590015134 -6.8602612381926758e-06 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_pvc_ofs1" -p "lfLegQd1_pvc_ofs";
	rename -uid "1F175B9D-4AE5-E2BE-19B7-19B853F16F13";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "lfLegQd1_pvc" -p "lfLegQd1_pvc_ofs1";
	rename -uid "979EAD90-4094-FECD-13B7-83B03E5DB685";
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
	rename -uid "255C8545-4D13-7FB5-79EE-6CB73E7D0E02";
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
	rename -uid "FF80CBAA-48C8-2B6B-6639-FCB8319F8BAD";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 0.88177499496762546 31.647002870420192 -90.048308941228953 ;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd1_extraRollG_ofs_locShape" -p "lfLegQd1_extraRollG_ofs_loc";
	rename -uid "DAB970EF-444D-45C3-EFB0-0D8113B20550";
	setAttr -k off ".v";
createNode transform -n "lfLegQd1_setting" -p "lfLegQd1_ctl_data";
	rename -uid "9DC27679-4328-5708-C4C8-E59F20B0571A";
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
	rename -uid "ED2C4DFF-430C-D3A5-B983-88B84287EB58";
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
	rename -uid "BEB62BAA-4C60-FAD5-3C92-ED91E6E61805";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd1_anchorF1Shape" -p "lfLegQd1_anchorF1";
	rename -uid "FBD8C791-489E-27B0-3DE8-CCA9E1CA60AA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 23.319240355720467 23.319240355720467 23.319240355720467 ;
createNode transform -n "neckQd0_ctl_data" -p "master_ctl";
	rename -uid "BE00A64A-4868-517A-E278-99BC11BB38AB";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_IK" -p "neckQd0_ctl_data";
	rename -uid "815D4713-4C8C-182A-4CCA-95810C14FC10";
	setAttr ".t" -type "double3" 2.7268917917981639e-14 139.02262821601732 78.567944539426563 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_cog_ctl_ofs" -p "neckQd0_IK";
	rename -uid "CAE5AA51-4FE4-3229-B71D-31B3BD6430DE";
	setAttr ".r" -type "double3" -26.90976132496036 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "neckQd0_cog_ctl_ofs1" -p "neckQd0_cog_ctl_ofs";
	rename -uid "CB11C1A9-4093-6613-C898-9D8B0186B9AD";
	setAttr ".t" -type "double3" 6.3108872417680944e-30 1.4210854715202004e-14 2.8421709430404007e-14 ;
createNode transform -n "neckQd0_cog_ctl" -p "neckQd0_cog_ctl_ofs1";
	rename -uid "91F63008-4D84-88AB-0536-54BC96DD0DEC";
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
createNode nurbsCurve -n "squRShape1" -p "neckQd0_cog_ctl";
	rename -uid "2875BE22-47E7-CB2E-A467-8DB1B815A646";
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
createNode transform -n "neckQd0_base_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "05A3ABEE-4430-4393-EA5E-BEBD45F57807";
	setAttr ".t" -type "double3" 1.2007539060292739e-17 1.4210854715202004e-14 -2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "neckQd0_base_ctl" -p "neckQd0_base_ctl_ofs";
	rename -uid "7DADD0E8-43EA-E656-8292-38B9787822E7";
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
	rename -uid "3F80BF33-43B5-6592-9721-C6937FE9CF74";
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
	rename -uid "33D0B456-4A0B-86F3-35D2-EAADEE86CD9A";
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-14 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "neckQd0_tangent0_ctl" -p "neckQd0_tangent0_ctl_ofs";
	rename -uid "74807156-4D1E-9C9C-FAA9-5D9A71652637";
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
	rename -uid "DEA8818A-4EB9-5326-1956-36A01EBF5CA1";
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
	rename -uid "9697B1D6-41FD-FEBB-3944-4C97F1BE740E";
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
	rename -uid "34FF8666-4070-E84B-6E7F-D8A00F464B45";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -1.2007539060283272e-17 -1.4210854715202004e-14 2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -26.909761324960336 -1.0657845503667284e-14 -7.1008678118380894e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 26.90976132496036 0 0 ;
	setAttr ".radi" 12.098628426350357;
createNode joint -n "neckQd0_two_ikj_end" -p "neckQd0_two_ikj";
	rename -uid "E054BDE6-42E6-B067-875B-09B29A13A8AF";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -2.7268917917981639e-14 28.671111813179252 50.848967117587961 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 12.098628426350357;
createNode ikEffector -n "effector15" -p "neckQd0_two_ikj";
	rename -uid "8AA428F5-4331-6539-4394-A3B820F33B46";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "neckQd0_fore_ctl_SPACE_1_ofs" -p "neckQd0_base_ctl";
	rename -uid "E0EE1930-4EA1-62E0-985A-F28AB47BEAC5";
	setAttr ".t" -type "double3" -2.7280925457041903e-14 28.671111813179209 50.848967117588018 ;
	setAttr ".r" -type "double3" 26.90976132496036 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_1" -p "neckQd0_fore_ctl_SPACE_1_ofs";
	rename -uid "6DAA3BD8-4554-5261-7F5E-3289118CE0AA";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "neckQd0_mid_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "E6D0FAF0-4C47-E76B-6050-B79D15EA00DA";
	setAttr ".t" -type "double3" -1.3688765212482573e-14 12.815990081310147 24.232334661057507 ;
	setAttr ".r" -type "double3" -46.032122353468466 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "neckQd0_mid_ctl_ofs1" -p "neckQd0_mid_ctl_ofs";
	rename -uid "356E8E81-432A-F433-56A0-9985390BD7C0";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "neckQd0_mid_ctl_ofs2" -p "neckQd0_mid_ctl_ofs1";
	rename -uid "3B9D0133-4A0A-6F09-629B-F69E4FC90B30";
	setAttr ".t" -type "double3" 3.1554436208840472e-30 -1.1546319456101628e-14 -5.6843418860808015e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "neckQd0_mid_ctl" -p "neckQd0_mid_ctl_ofs2";
	rename -uid "6E7F218E-4CAD-8B90-CC33-5CA998BE8F89";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999956 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "neckQd0_mid_ctlShape1" -p "neckQd0_mid_ctl";
	rename -uid "9584266A-458A-DAE1-14E3-1980E39E93B2";
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
createNode joint -n "neckQd0_1_ikj" -p "neckQd0_mid_ctl";
	rename -uid "B18B3B43-4C4C-0842-4C30-1C830208DE16";
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
createNode transform -n "neckQd0_fore_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "41EC235D-4768-47FC-8E57-8B97EB476CBA";
	setAttr ".t" -type "double3" -2.7268917917981623e-14 28.671111813179252 50.848967117587989 ;
	setAttr ".r" -type "double3" 26.90976132496036 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "neckQd0_fore_ctl_ofs1" -p "neckQd0_fore_ctl_ofs";
	rename -uid "A46ABEB0-499D-6A85-2FC3-8FA9ADAB200F";
createNode transform -n "neckQd0_fore_ctl" -p "neckQd0_fore_ctl_ofs1";
	rename -uid "F5FF533B-470C-302C-34F7-DE849D5E3ED4";
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
createNode nurbsCurve -n "neckQd0_fore_ctlShape1" -p "neckQd0_fore_ctl";
	rename -uid "A97CD6C9-486A-B879-B19C-DDB366545A8A";
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
createNode transform -n "neckQd0_tangent1_ctl_ofs" -p "neckQd0_fore_ctl";
	rename -uid "C1BEEE76-47CF-5FE3-D248-DCB913009632";
	setAttr ".t" -type "double3" 0 -2.8421709430404007e-14 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "neckQd0_tangent1_ctl" -p "neckQd0_tangent1_ctl_ofs";
	rename -uid "5EC32094-44E3-DA16-9481-5ABC1844CFB5";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "neckQd0_tangent1_ctlShape1" -p "neckQd0_tangent1_ctl";
	rename -uid "1928BB7C-4BB7-DFD4-C604-63851447FDE2";
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
createNode joint -n "neckQd0_2_ikj" -p "neckQd0_tangent1_ctl";
	rename -uid "627DE9EF-4FEB-EE49-C8DA-4E930BDC0843";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.99999999999999978 0 0 0 0 0.99999999999999978 0
		 1.2621774483536189e-29 187.60280752394431 110.93484565675679 1;
	setAttr ".radi" 2.4197256852700715;
createNode ikHandle -n "neckQd0_two_ikj_ikh" -p "neckQd0_tangent1_ctl";
	rename -uid "A3EDE117-4441-1F83-BAB4-A68BDDB9527F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.2621774483536189e-29 0 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -26.90976132496036 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 1.0000000000000002 ;
	setAttr ".roc" yes;
createNode transform -n "neckQd0_anchorToRbj" -p "neckQd0_fore_ctl";
	rename -uid "A7E5DB55-4875-3296-6B28-E7BEA51F0444";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode locator -n "neckQd0_anchorToRbjShape" -p "neckQd0_anchorToRbj";
	rename -uid "9BB66132-4310-4889-5D90-BC887AB0820E";
	setAttr -k off ".v";
createNode transform -n "head0_head_fkc_SPACE_1_ofs" -p "neckQd0_anchorToRbj";
	rename -uid "C5A76D35-48AF-6944-5228-72AC872C0059";
	setAttr ".t" -type "double3" 2.8421709430404007e-14 0.50919123991326387 8.7895233257621754 ;
createNode transform -n "head0_head_fkc_SPACE_1" -p "head0_head_fkc_SPACE_1_ofs";
	rename -uid "4EB1F999-4969-E8F7-132A-8A9F8ADD4D81";
createNode transform -n "neckQd0_setting" -p "neckQd0_IK";
	rename -uid "FF084527-444A-6F79-FBA5-549A640D4C36";
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
	rename -uid "A0EF126B-4B0F-7AAE-B61F-A2BB74378A3B";
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
	rename -uid "216236BB-4A30-975B-9E5C-06B039ADC6D5";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "neckQd0_anchorF1Shape" -p "neckQd0_anchorF1";
	rename -uid "8DFE879F-4C1B-4EC0-68CD-C4A1656B9791";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 9.0739713197627676 9.0739713197627676 9.0739713197627676 ;
createNode transform -n "neckQd0_anchorM1" -p "master_ctl";
	rename -uid "8D505DAD-4169-A6E3-E707-B0A0D1DBD2BB";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "neckQd0_anchorM1Shape" -p "neckQd0_anchorM1";
	rename -uid "89582BA4-4A07-2825-0452-BD87450E47AF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 9.0739713197627676 9.0739713197627676 9.0739713197627676 ;
createNode transform -n "rtLegQd0_ctl_data" -p "master_ctl";
	rename -uid "143129C3-4237-88C4-EA04-8D8A88970DD2";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_FK" -p "rtLegQd0_ctl_data";
	rename -uid "DAB7C9E4-4A06-AE4D-9831-6095C3AFCBBD";
	setAttr -cb on ".ro";
createNode joint -n "rtLegQd0_hip_fk" -p "rtLegQd0_FK";
	rename -uid "FF3EC8B6-48CB-B23A-4FDC-819F4AE11B71";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -0.4445444900148342 -40.556921681718677 91.203111579680282 ;
	setAttr ".radi" 2.9368808413984091;
createNode joint -n "rtLegQd0_upr_fk" -p "rtLegQd0_hip_fk";
	rename -uid "5B4969E8-4609-C4AA-595A-8591F827C4BD";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.1972115281030429 49.99914152386615 1.1394186714720711 ;
	setAttr ".radi" 2.9368808413984091;
createNode joint -n "rtLegQd0_lwr_fk" -p "rtLegQd0_upr_fk";
	rename -uid "705D2118-4895-20D8-91C3-20AABB5B59B8";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -39.26141104683942 0 ;
	setAttr ".radi" 2.9368808413984091;
createNode joint -n "rtLegQd0_palm_fk" -p "rtLegQd0_lwr_fk";
	rename -uid "7B36FC67-45A9-63F3-673F-4B9ABC60445A";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 2.9108749191793124 29.928640724604978 -2.653909855982886 ;
	setAttr ".radi" 2.9368808413984091;
createNode joint -n "rtLegQd0_digit_fk" -p "rtLegQd0_palm_fk";
	rename -uid "D9E8F675-4A77-6B54-9711-B0A6D82063DE";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 25.349753547664722 0 ;
	setAttr ".radi" 2.9368808413984091;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_1_ofs" -p "rtLegQd0_digit_fk";
	rename -uid "E10568E5-45A0-126D-235E-CDB7ADB436C7";
	setAttr ".t" -type "double3" -10.074464736819664 1.4005614445977699e-08 2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 0 7.6074146487726635 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_1" -p "rtLegQd0_ball_fkc_SPACE_1_ofs";
	rename -uid "B6B7B2CE-4278-74B9-81BD-359842E46778";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "rtLegQd0_ball_fk_SPACE_2_ofs" -p "rtLegQd0_digit_fk";
	rename -uid "41262B4C-4494-E43D-6AF9-9A9E340409D3";
	setAttr ".t" -type "double3" -10.074464736819685 1.4005614445977699e-08 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 0 7.6074146487726635 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
createNode transform -n "rtLegQd0_ball_fk_SPACE_2" -p "rtLegQd0_ball_fk_SPACE_2_ofs";
	rename -uid "CE36FCC3-42EF-37EF-D9FB-B28665D54D96";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1.0000000000000002 ;
createNode transform -n "rtLegQd0_ball_fk_ofs" -p "rtLegQd0_digit_fk";
	rename -uid "73E0A69E-4F34-CED9-B235-6D8B13AB5F69";
	setAttr ".t" -type "double3" -10.074464736819692 1.4005612669620859e-08 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
createNode joint -n "rtLegQd0_ball_fk" -p "rtLegQd0_ball_fk_ofs";
	rename -uid "ECBAE65E-4D78-23C9-5CCD-64B7B607D258";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -5.3290705182007514e-15 0 ;
	setAttr ".r" -type "double3" 0 4.7708320221952752e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.7176984860369976e-13 3.1805546814635168e-15 1.1228542637141664e-14 ;
	setAttr ".radi" 2.9368808413984091;
createNode joint -n "rtLegQd0_tip_fk" -p "rtLegQd0_ball_fk";
	rename -uid "2503F1F0-4235-3EA2-0416-EEAE830FB7E4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -10.469369336234713 -3.8546943414985435e-13 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 57.042831803562613 0 ;
	setAttr ".radi" 2.9368808413984091;
createNode transform -n "rtLegQd0_upr_fkc_ofs" -p "rtLegQd0_FK";
	rename -uid "46600705-49F3-2CF1-1EC6-25BC560DA821";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_upr_fkc" -p "rtLegQd0_upr_fkc_ofs";
	rename -uid "17099A44-4CDE-3EE3-441F-6BACE3D6F5AC";
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
	rename -uid "ADB26AA8-42F8-EB57-421D-78BDF770D2EF";
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
	rename -uid "E1FE7A03-431B-B414-DB52-A1801CB227AE";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_lwr_fkc" -p "rtLegQd0_lwr_fkc_ofs";
	rename -uid "B3C234DA-4B7B-6447-A575-5EB1EE2EEB3B";
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
	rename -uid "77FB5881-43BF-751B-2383-DDBBE10A0925";
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
	rename -uid "EC1821B7-47B7-E392-EA67-75ADC26AB120";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_palm_fkc" -p "rtLegQd0_palm_fkc_ofs";
	rename -uid "050B7023-4733-061D-BC4D-E1B0AD98572B";
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
	rename -uid "88CFD89C-42D6-7D12-28A8-4C9ACA378027";
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
	rename -uid "33BC92F2-4BD9-4681-FFCF-FBA2586DB952";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_digit_fkc" -p "rtLegQd0_digit_fkc_ofs";
	rename -uid "29FD5A68-42F1-291C-D102-D59F07D04DF2";
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
createNode nurbsCurve -n "rtLegQd0_digit_fkcShape1" -p "rtLegQd0_digit_fkc";
	rename -uid "6F9AC475-41BC-1F0A-C252-F7BD8C8C2488";
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
createNode transform -n "rtLegQd0_ikc_matcher" -p "rtLegQd0_digit_fkc";
	rename -uid "6CA74DB8-4900-AD35-D38D-82831BE1EFD5";
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 0 ;
	setAttr ".r" -type "double3" 25.349753547664722 1.5902773407317584e-15 -90.000000000000128 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999967 0.99999999999999967 ;
createNode transform -n "rtLegQd0_quadScap_ofs" -p "rtLegQd0_FK";
	rename -uid "CD878110-4F76-E5C8-CC2A-889E13E4DCE2";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_quadScap" -p "rtLegQd0_quadScap_ofs";
	rename -uid "54E6BB45-41C1-B7FA-9286-B28FEF0AB96A";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "rtLegQd0_hip_fkc_ofs" -p "rtLegQd0_quadScap";
	rename -uid "A200D5DB-4485-2871-ABD3-589E71D8058A";
	setAttr ".t" -type "double3" 1.4210854715202004e-14 -7.1054273576010019e-15 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd0_hip_fkc" -p "rtLegQd0_hip_fkc_ofs";
	rename -uid "91FD61FA-4AE4-D4D6-0CC0-BBAF918451FC";
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
	rename -uid "B559A1D6-4531-BB65-A865-E2AD8730EAD5";
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
	rename -uid "CDC686DC-4EBF-3A97-F8B3-EBA6F4C3B22A";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0 0 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -2.5444437451708134e-14 5.5851701051990014e-30 4.1888775788992493e-30 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 82.394063399708813 25.856571386686912 1.3565191641343393 ;
	setAttr ".radi" 4.4053212620976137;
createNode joint -n "rtLegQd0_autoAim_end" -p "rtLegQd0_autoAim";
	rename -uid "644524B8-459E-EFE8-8440-D2BF136BB8C7";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -129.48117859460811 2.8421709430404007e-14 2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.5902773407317584e-14 -9.9392333795735565e-17 -2.4102640945465713e-15 ;
	setAttr ".radi" 4.4053212620976137;
createNode ikEffector -n "effector21" -p "rtLegQd0_autoAim";
	rename -uid "DB2713CE-4EA3-8C72-643B-DFA83430DB27";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegQd0_ballOfsG" -p "rtLegQd0_FK";
	rename -uid "B9CF3B16-4834-5C48-18DF-2681CC4CEC31";
	setAttr ".t" -type "double3" -15.523391963176577 19.503393516111906 -71.732926909484391 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fkc_ofs" -p "rtLegQd0_ballOfsG";
	rename -uid "766FEA10-4B3D-524F-8121-4DB8B7DC830C";
	setAttr ".t" -type "double3" 4.5583700369888902e-08 -9.1043989174827633 4.3133094860666716 ;
	setAttr ".r" -type "double3" 0 32.957168196437422 90.000000000000142 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "rtLegQd0_ball_fkc_ofs1" -p "rtLegQd0_ball_fkc_ofs";
	rename -uid "A9DE13F1-48B8-AA22-93B6-EB9FFB047A88";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fkc" -p "rtLegQd0_ball_fkc_ofs1";
	rename -uid "219944EB-4551-DF98-3E98-BC87AAAAC541";
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
	rename -uid "96BA9508-47FE-8B25-3D02-A899971558ED";
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
		-1.315690916812557e-31 -6.8726799761535036 -1.3751371108307664e-15
		1.5600666188080114e-16 -7.6008035075749349 -7.6008035075749438
		2.2062673705238296e-16 -4.2083027671802395e-16 -6.872679976153484
		1.5600666188080104e-16 7.6008035075749349 -7.6008035075749385
		;
createNode ikHandle -n "rtLegQd0_3_ikh" -p "rtLegQd0_ball_fkc";
	rename -uid "350E2364-4E39-C013-4CA2-F6AFF9149228";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -10.469369336234827 -3.7481129311345285e-13 3.5527136788005009e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.54401192967804557 1.5856615372037163e-17 0.83907748174287744 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_ball_fk_SPACE_1_ofs" -p "rtLegQd0_ball_fkc";
	rename -uid "0A0E5AD6-4E87-445A-C156-08A2D4A707AC";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 5.3290705182007514e-15 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fk_SPACE_1" -p "rtLegQd0_ball_fk_SPACE_1_ofs";
	rename -uid "84FEFAC0-469E-76A4-7AA4-068CAED10A76";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rtLegQd0_IK" -p "rtLegQd0_ctl_data";
	rename -uid "2ABA6ABC-475A-8842-1A0A-6C975DF82043";
	setAttr -cb on ".ro";
createNode joint -n "rtLegQd0_hip_ik" -p "rtLegQd0_IK";
	rename -uid "7FE7B224-43C9-771E-D5C7-67BAF1DD0120";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -0.4445444900148342 -40.556921681718677 91.203111579680282 ;
	setAttr ".radi" 4.4053212620976137;
createNode joint -n "rtLegQd0_upr_ik" -p "rtLegQd0_hip_ik";
	rename -uid "DBBC14C4-46B8-CEA6-8BC8-A2A8861873B5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -17.68117040306268 -1.0658141036401503e-14 -4.2632564145606011e-14 ;
	setAttr ".r" -type "double3" 3.0758205386872174e-15 -1.8211614282110064e-05 -6.8645654245885525e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.1972115281030429 49.99914152386615 1.1394186714720711 ;
	setAttr ".radi" 4.4053212620976137;
createNode joint -n "rtLegQd0_lwr_ik" -p "rtLegQd0_upr_ik";
	rename -uid "2C0D84DC-4BF8-8DEF-B333-959D83EEEBC0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -33.4136531826069 2.1316282072803006e-14 0 ;
	setAttr ".r" -type "double3" -7.9383315682451448e-21 2.924953092262891e-05 3.1163994696781127e-21 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -39.26141104683942 0 ;
	setAttr ".radi" 4.4053212620976137;
createNode joint -n "rtLegQd0_palm_ik" -p "rtLegQd0_lwr_ik";
	rename -uid "9800BCB6-40C8-A1E4-4BCC-B7B6B46FA802";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -52.361233699535909 -1.4210854715202004e-14 4.2632564145606011e-14 ;
	setAttr ".r" -type "double3" 4.6072023907348337e-07 -8.407834061969807e-06 1.3239470599299745e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 2.9108749191793124 29.928640724604978 -2.653909855982886 ;
	setAttr ".radi" 4.4053212620976137;
createNode joint -n "rtLegQd0_digit_ik" -p "rtLegQd0_palm_ik";
	rename -uid "129A7097-46A2-3EF6-89D9-5ABF1C8DCA53";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -33.446580381212527 -1.4005593129695626e-08 -0.87208095837004862 ;
	setAttr ".r" -type "double3" 5.1520168072333578e-08 1.5022191294562952e-05 1.326557079787365e-06 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 25.349753547664722 0 ;
	setAttr ".radi" 4.4053212620976137;
createNode joint -n "rtLegQd0_ball_ik" -p "rtLegQd0_digit_ik";
	rename -uid "5266FB3F-4921-9856-932D-A2B13858DEDB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -10.074464736819678 1.4005614445977699e-08 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 1.041212790100965e-07 -1.3275761145634533e-05 -3.9381499492376504e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 7.6074146487726635 0 ;
	setAttr ".radi" 4.4053212620976137;
createNode joint -n "rtLegQd0_tip_ik" -p "rtLegQd0_ball_ik";
	rename -uid "633E3751-4AF1-E5E9-2FA2-D18531DC2BCC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -10.469369336234713 -3.8546943414985435e-13 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 57.042831803562613 0 ;
	setAttr ".radi" 4.4053212620976137;
createNode ikEffector -n "effector19" -p "rtLegQd0_ball_ik";
	rename -uid "518D9B03-4242-CEF1-61DA-9C95BF00D1A2";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector18" -p "rtLegQd0_digit_ik";
	rename -uid "C5E56BE4-48B0-8BC7-ABEF-929E06B6E952";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector17" -p "rtLegQd0_palm_ik";
	rename -uid "97C3BB6A-4EB1-B574-D22C-F686BFC49D0F";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector16" -p "rtLegQd0_lwr_ik";
	rename -uid "65603231-440A-86BB-4A93-7498ECFB7B0C";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "rtLegQd0_softJ" -p "rtLegQd0_hip_ik";
	rename -uid "EFCD38DE-4506-32AD-F2BD-159828B1B694";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -17.681170403062708 -1.0658141036401503e-14 -7.1054273576010019e-14 ;
	setAttr ".r" -type "double3" 2.5444437451708134e-14 -1.3385536108980434e-29 4.4618453696601411e-30 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 78.798557212787003 25.889347981847028 2.5920082035223211 ;
createNode joint -n "rtLegQd0_softJ_end" -p "rtLegQd0_softJ";
	rename -uid "212233A9-4796-2B48-9CA5-1B92E190CB5B";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -81.039833068847656 4.2632564145606011e-14 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -6.3611093629270335e-15 -4.9696166897867715e-17 -2.3357198441997701e-15 ;
createNode ikEffector -n "effector20" -p "rtLegQd0_softJ";
	rename -uid "C4288686-4AD1-DA21-BA8E-12B310268679";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegQd0_pvc_SPACE_1_ofs" -p "rtLegQd0_softJ";
	rename -uid "5388A8B4-4786-685F-0CCE-7B8F066D6081";
	setAttr ".t" -type "double3" -28.424184261466166 54.762031103210347 8.5927311880936763 ;
	setAttr ".r" -type "double3" 11.984909019107683 -80.893273398500142 -105.00298334899053 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "rtLegQd0_pvc_SPACE_1" -p "rtLegQd0_pvc_SPACE_1_ofs";
	rename -uid "0645FDC9-4B1D-7F8D-A27F-6886538B3E1E";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -1.4210854715202004e-14 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd0_ikCstG" -p "rtLegQd0_IK";
	rename -uid "1BB94F39-42B4-EDA8-888F-8ABFF2C73B5B";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_heelRollG" -p "rtLegQd0_ikCstG";
	rename -uid "5388C1E5-413C-6BEC-BAFE-5EBA9B221E38";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -52.94998065951183 2.4358432339674749 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_heelRollG_ctl" -p "rtLegQd0_heelRollG";
	rename -uid "0317D83C-4B78-4791-76AF-4492C841ECB8";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_toeRollG" -p "rtLegQd0_heelRollG_ctl";
	rename -uid "4CA4DD62-4209-5544-E84A-7FA0EDA1AB07";
	setAttr ".t" -type "double3" 5.3290705182007514e-15 0 9.3326704530138898 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_toeRollG_ctl" -p "rtLegQd0_toeRollG";
	rename -uid "AB356F9A-4F2D-9D80-93A6-C48EC8F493CF";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_footRollG" -p "rtLegQd0_toeRollG_ctl";
	rename -uid "CEBF0E79-4EEA-8451-F9F5-148DE7D657EF";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_outRollG" -p "rtLegQd0_footRollG";
	rename -uid "C8573345-43A0-45C4-C45C-CF8D6C5BCFCA";
	setAttr ".t" -type "double3" -3.5372928082839348 0 -5.3574798206579004 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_outRollG_ctl" -p "rtLegQd0_outRollG";
	rename -uid "D9881F3B-4339-289E-1C47-109335EDBC11";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_inRollG" -p "rtLegQd0_outRollG_ctl";
	rename -uid "AFDF1F78-44EF-4917-E794-66AFFF360356";
	setAttr ".t" -type "double3" 7.4397110921252363 0 0.11244156340003997 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_inRollG_ctl" -p "rtLegQd0_inRollG";
	rename -uid "0922CF22-48BE-1F29-B5BD-FD9B13A43BB4";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_ballRollG" -p "rtLegQd0_inRollG_ctl";
	rename -uid "E039283C-455C-9144-B413-5AA42CAD3A4E";
	setAttr ".t" -type "double3" -3.9024182838412571 10.39899459862907 -3.0822471071108026 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ballG_ikc" -p "rtLegQd0_ballRollG";
	rename -uid "EE8B8181-490C-A3EE-C3BD-C2864CC769CF";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "stickCShape3" -p "rtLegQd0_ballG_ikc";
	rename -uid "BA7C8C37-4E45-66A2-FA4F-ABB73989AD1D";
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
createNode transform -n "rtLegQd0_extraRollG_ofs" -p "rtLegQd0_ballG_ikc";
	rename -uid "CA0FD650-4EF3-C4A0-03F7-DABD70D6D90D";
	setAttr ".t" -type "double3" 1.4005589576981947e-08 9.1044056796702257 -4.313309280982736 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_extraRollG_ofs1" -p "rtLegQd0_extraRollG_ofs";
	rename -uid "4AFDAAAE-409E-D223-FDB1-CABB8CAFAC2E";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 0 ;
	setAttr ".r" -type "double3" 169.19376261129028 0 92.34966329008391 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "rtLegQd0_extraRollG" -p "rtLegQd0_extraRollG_ofs1";
	rename -uid "2AFEF370-457F-7ECA-7335-A98CA245E17B";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_extra_ikc" -p "rtLegQd0_extraRollG";
	rename -uid "9FA8DD25-4533-F961-225A-35920FCC0581";
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
createNode nurbsCurve -n "rtLegQd0_extra_ikcShape1" -p "rtLegQd0_extra_ikc";
	rename -uid "3CECE665-432D-F2EB-3116-8A9F0836A960";
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
createNode transform -n "rtLegQd0_extraRollG_ofs2" -p "rtLegQd0_extra_ikc";
	rename -uid "99AE1B3A-4594-E689-4A40-198534D67C1A";
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd0_X_ikh" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "AD794D8C-4D12-B445-9094-73A91420ED5C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -7.1054273576010019e-15 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 0 0 90.000000000000085 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 1.0000000000000002 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_dist_loc1" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "A1413366-4D0A-294A-4A71-C699BE76200C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.4005633985902932e-08 33.446580381212527 0.87208095837004862 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode locator -n "rtLegQd0_dist_loc1Shape" -p "rtLegQd0_dist_loc1";
	rename -uid "95179C30-4915-B5AD-5761-A197DB3031FB";
	setAttr -k off ".v";
createNode transform -n "rtLegQd0_softJ_posGrp" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "EC0F9ABE-4DFC-64D6-B6F6-99B40C2F0418";
	setAttr ".t" -type "double3" -1.4005637538616611e-08 33.446580381212506 0.8720809583700202 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "rtLegQd0_1_ikh_ofs" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "8AC856A8-49F2-56A5-AE3F-D48CFA42A474";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode ikHandle -n "rtLegQd0_1_ikh" -p "rtLegQd0_1_ikh_ofs";
	rename -uid "EDB8601F-40AA-E2EF-5DDF-7CB0104B15BB";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_toe_wiggle_grp" -p "rtLegQd0_inRollG_ctl";
	rename -uid "25559631-4E8C-575A-72C7-83B054622D66";
	setAttr ".t" -type "double3" -3.9024182838412571 10.39899459862907 -3.0822471071108026 ;
	setAttr ".r" -type "double3" 0 32.957168196437401 90.000000000000156 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
createNode ikHandle -n "rtLegQd0_2_ikh" -p "rtLegQd0_toe_wiggle_grp";
	rename -uid "14A1E07C-4FB1-6FF3-2A88-DCA0C98BB6C2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -7.1054273576010019e-15 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 0 -7.6074146487726493 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.54401192967804557 -3.0829415794134307e-18 0.83907748174287788 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_2_ofs" -p "rtLegQd0_toe_wiggle_grp";
	rename -uid "F0431022-4C7F-3CB9-0FBE-AA963031ECAF";
	setAttr ".t" -type "double3" 9.9475983006414026e-14 -2.6645352591003757e-14 -4.2632564145606011e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000004 ;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_2" -p "rtLegQd0_ball_fkc_SPACE_2_ofs";
	rename -uid "19E5DA5E-4F4A-DEF1-ED8F-6E8E36EC7881";
	setAttr ".t" -type "double3" 0 -5.3290705182007514e-15 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1.0000000000000002 ;
createNode nurbsCurve -n "diamondShape10" -p "rtLegQd0_inRollG_ctl";
	rename -uid "EAD6542B-4C12-2D20-319A-B18DD33922AC";
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
createNode nurbsCurve -n "diamondShape11" -p "rtLegQd0_outRollG_ctl";
	rename -uid "EEADC5BC-4516-4BF5-1AC8-4F82C4836E70";
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
createNode nurbsCurve -n "diamondShape9" -p "rtLegQd0_toeRollG_ctl";
	rename -uid "97AD03D6-4AC4-C753-94E1-B4B936FCB402";
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
createNode nurbsCurve -n "diamondShape12" -p "rtLegQd0_heelRollG_ctl";
	rename -uid "507853BB-40E7-4805-26CF-129453E40F8E";
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
	rename -uid "3FC29E43-432B-023F-8178-F1B3E14E3FD5";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape3" -p "rtLegQd0_line_53";
	rename -uid "2BFA38FF-4B47-E48D-DC8D-6590425862E1";
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
	rename -uid "E5CE6B4E-45C7-7410-4491-D7B430AF8FE3";
	setAttr ".t" -type "double3" -15.523391903587317 19.503400278299296 -71.732926704400398 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ikc_ofs1" -p "rtLegQd0_ikc_ofs";
	rename -uid "EE670815-4DC2-4943-0D20-3B9747283748";
createNode transform -n "rtLegQd0_ikc" -p "rtLegQd0_ikc_ofs1";
	rename -uid "44607040-4051-7C12-7F0B-0C9AEC485BEA";
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
	rename -uid "6DF237DA-4B88-1F92-59CF-0D807F9C351B";
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
createNode transform -n "rtLegQd0_ikc_gmb" -p "rtLegQd0_ikc";
	rename -uid "3F2AFF0C-4962-A2C6-671B-C1BD0B19034F";
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
	rename -uid "E6BC2CEA-4278-94E6-AF96-A2A00D55017C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".tw" yes;
	setAttr -s 53 ".cp[0:52]" -type "double3" -2.2026606310488042 1.5025483990131328 
		-1.1013303507448526 -2.1603371246563583 1.5025483990131328 -1.5310481225484107 -2.0349930740943858 
		1.5025483990131328 -1.9442520813700632 -1.8314453809322293 1.5025483990131328 -2.3250630307997397 
		-1.5575162688672499 1.5025483990131328 -2.658846619612099 -1.223732680054888 1.5025483990131328 
		-2.9327757316770828 -0.84292173062521103 1.5025483990131328 -3.1363234248392367 -0.42971777180355941 
		1.5025483990131328 -3.2616674754012109 2.5714629197237839e-16 1.5025483990131328 
		-3.3039909817936568 0.42971777180355986 1.5025483990131328 -3.2616674754012109 0.84292173062521147 
		1.5025483990131328 -3.1363234248392367 1.2237326800548889 1.5025483990131328 -2.9327757316770828 
		1.5575162688672508 1.5025483990131328 -2.6588466196121026 1.8314453809322302 1.5025483990131328 
		-2.3250630307997397 2.0349930740943858 1.5025483990131328 -1.9442520813700632 2.1603371246563601 
		1.5025483990131328 -1.5310481225484107 2.2026606310488059 1.5025483990131328 -1.1013303507448509 
		2.1603371116659158 0.8429378595220598 -1.1013303507448509 2.0349930642581135 0.20065907233809277 
		-1.1013303507448509 1.8314454225460475 -0.35551508672717702 -1.1013303507448509 1.5575162684692563 
		-0.79807282449578665 -1.1013303507448509 1.223732653463629 -1.1313333182614764 -1.1013303507448509 
		0.84292170378840137 -1.3348809599735434 -1.1013303507448509 0.42971776235416126 -1.4602250073813439 
		-1.1013303507448509 -1.3487406462596487e-16 -1.5025485267642349 -1.1013303507448509 
		-0.42971776235416126 -1.4602250073813439 -1.1013303507448509 -0.84292170378840137 
		-1.3348809599735434 -1.1013303507448509 -1.223732653463629 -1.1313333182614764 -1.1013303507448509 
		-1.5575162684692563 -0.79807282449578665 -1.1013303507448509 -1.8314454225460475 
		-0.35551508672717702 -1.1013303507448509 -2.0349930642581135 0.20065907233809277 
		-1.1013303507448509 -2.1603371116659158 0.8429378595220598 -1.1013303507448509 -2.2026606310488059 
		1.5025483990131328 -1.1013303507448509 -2.2026606310488059 1.5025483990131292 3.1718312734898326 
		-2.2026606310488059 1.3703887611502026 3.303990911352761 -2.1603371116659158 0.8429378595220598 
		3.303990911352761 -2.0349930642581135 0.20065907233809277 3.303990911352761 -1.8314454225460475 
		-0.35551508672717702 3.303990911352761 -1.5575162684692563 -0.79807282449578665 3.303990911352761 
		-1.223732653463629 -1.1313333182614764 3.303990911352761 -0.84292170378840137 -1.3348809599735434 
		3.303990911352761 -0.42971776235416126 -1.4602250073813439 3.303990911352761 -1.3487406462596487e-16 
		-1.5025485267642349 3.303990911352761 0.42971776235416126 -1.4602250073813439 3.303990911352761 
		0.84292170378840137 -1.3348809599735434 3.303990911352761 1.223732653463629 -1.1313333182614764 
		3.303990911352761 1.5575162684692563 -0.79807282449578665 3.303990911352761 1.8314454225460475 
		-0.35551508672717702 3.303990911352761 2.0349930642581135 0.20065907233809277 3.303990911352761 
		2.1603371116659158 0.8429378595220598 3.303990911352761 2.2026606310488059 1.3703887611502026 
		3.303990911352761 2.2026606310488059 1.5025483990131328 3.1718312734898326 2.2026606310488059 
		1.5025483990131328 -1.1013303507448509;
createNode nurbsCurve -n "rtLegQd0_ikc_gmbShapeOrig" -p "rtLegQd0_ikc_gmb";
	rename -uid "F3375D3A-4CEC-B762-9791-4DBB7FB0A005";
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
	rename -uid "14DD47AC-4BB5-8AB5-4D33-588D06A15181";
	setAttr ".t" -type "double3" -1.4005630433189253e-08 -19.503400278299303 12.640594645351428 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_smart_ctl" -p "rtLegQd0_smart_ctl_ofs";
	rename -uid "C82C9F50-4BA6-0A38-5D87-339A9FCD2196";
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
	rename -uid "1FE05D0B-4707-0B6C-DD1E-169973A83613";
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
createNode ikHandle -n "rtLegQd0_autoAimJ_ikh" -p "rtLegQd0_ikc";
	rename -uid "222786B3-4B23-B886-A8B9-ECB404180B96";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -4.2632564145606011e-14 0 ;
	setAttr ".r" -type "double3" 81.13320478851989 -14.683789664808227 92.264529372069148 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_pvc_ofs" -p "rtLegQd0_IK";
	rename -uid "B1C47686-432B-05E5-1EE0-F8AF3746DFD9";
	setAttr ".t" -type "double3" -21.94353710201954 89.595871220417663 -4.1002163452173299 ;
	setAttr ".r" -type "double3" 11.98490901910761 -3.7472052798902009 4.9802639351729992e-17 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_pvc_ofs1" -p "rtLegQd0_pvc_ofs";
	rename -uid "23F7BB53-4CBF-5442-FDEE-2E90E0347A69";
createNode transform -n "rtLegQd0_pvc" -p "rtLegQd0_pvc_ofs1";
	rename -uid "76E05E6E-475F-4225-EEAF-9AB60C15AC2F";
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
	rename -uid "413AD9E9-4C6A-30F2-21FB-55AD30C4CD8F";
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
	rename -uid "3C2034C4-4139-87F5-1049-13AAB4E5B050";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -4.2905979384627715 9.4503607592826935 91.600320764350059 ;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd0_extraRollG_ofs_locShape" -p "rtLegQd0_extraRollG_ofs_loc";
	rename -uid "C42A55F8-4BE1-C324-C550-82BB8BD4BECF";
	setAttr -k off ".v";
createNode transform -n "rtLegQd0_setting" -p "rtLegQd0_ctl_data";
	rename -uid "AD4B742A-48F3-C2AD-EF6B-10B58773DB61";
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
	rename -uid "82C712C0-4404-DAA8-B823-6EA7EC6A01F1";
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
	rename -uid "106516E0-4FB9-8966-0C8B-D1A3D490C651";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd0_anchorF1Shape" -p "rtLegQd0_anchorF1";
	rename -uid "6DACA4C8-4629-3A2A-D03B-D2B0768568E6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 22.02660631048807 22.02660631048807 22.02660631048807 ;
createNode transform -n "rtLegQd1_ctl_data" -p "master_ctl";
	rename -uid "7FF2840A-4C94-57DB-FEFB-5CA9F63D0FFF";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_FK" -p "rtLegQd1_ctl_data";
	rename -uid "AD666EA1-4BD4-BA3E-F99F-93B22CC915C2";
	setAttr -cb on ".ro";
createNode joint -n "rtLegQd1_hip_fk" -p "rtLegQd1_FK";
	rename -uid "C80B6A45-4D28-3F67-721D-79AA26ABD868";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.8624160296610111 25.042419839875052 81.628065413254305 ;
	setAttr ".radi" 3.1092320474293969;
createNode joint -n "rtLegQd1_upr_fk" -p "rtLegQd1_hip_fk";
	rename -uid "AA4FBF08-48B3-CA70-1BA0-66ACA9A94263";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 177.77341520201932 -56.66101528151389 10.224746785676928 ;
	setAttr ".radi" 3.1092320474293969;
createNode joint -n "rtLegQd1_lwr_fk" -p "rtLegQd1_upr_fk";
	rename -uid "2DA8C3CE-45AE-ACB2-54DD-3FA70AEB33B7";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -29.861134866726143 0 ;
	setAttr ".radi" 3.1092320474293969;
createNode joint -n "rtLegQd1_palm_fk" -p "rtLegQd1_lwr_fk";
	rename -uid "AB3F9DB3-4A8B-B80B-7721-94B8B041B854";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 179.23342805838215 -1.7821319713137702 0.51119245241123557 ;
	setAttr ".radi" 3.1092320474293969;
createNode joint -n "rtLegQd1_digit_fk" -p "rtLegQd1_palm_fk";
	rename -uid "4EEA630D-447B-1BD6-3811-F9838BF92629";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 34.189215079406694 0 ;
	setAttr ".radi" 3.1092320474293969;
createNode transform -n "rtLegQd1_ball_fkc_SPACE_1_ofs" -p "rtLegQd1_digit_fk";
	rename -uid "19721778-4014-6C67-3F13-3BA6E614D56F";
	setAttr ".t" -type "double3" -9.4777716629218993 1.4937899806000132e-08 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 0 -0.42943726992023057 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1 ;
createNode transform -n "rtLegQd1_ball_fkc_SPACE_1" -p "rtLegQd1_ball_fkc_SPACE_1_ofs";
	rename -uid "FD42CF3B-46BE-0AFD-0B2C-50B43DA21C20";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -1.7763568394002505e-15 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999967 1 ;
createNode transform -n "rtLegQd1_ball_fk_SPACE_2_ofs" -p "rtLegQd1_digit_fk";
	rename -uid "A981EC7B-4C42-56D1-E4DC-6D938D15C2C7";
	setAttr ".t" -type "double3" -9.4777716629218922 1.4937889147859096e-08 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 0 -0.42943726992023684 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "rtLegQd1_ball_fk_SPACE_2" -p "rtLegQd1_ball_fk_SPACE_2_ofs";
	rename -uid "A0B070B9-45D1-F4C2-2D71-E68D206A8D31";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999967 1 ;
createNode transform -n "rtLegQd1_ball_fk_ofs" -p "rtLegQd1_digit_fk";
	rename -uid "1A1322DF-4496-1468-4CBC-AFBEB66C5503";
	setAttr ".t" -type "double3" -9.4777716629218958 1.4937890924215935e-08 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode joint -n "rtLegQd1_ball_fk" -p "rtLegQd1_ball_fk_ofs";
	rename -uid "6D41C566-4847-C3AD-153D-929759361580";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 0 8.9453100416161403e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 2.161790384206708e-13 -9.5416640443905503e-15 1.5579350556867603e-15 ;
	setAttr ".radi" 3.1092320474293969;
createNode joint -n "rtLegQd1_tip_fk" -p "rtLegQd1_ball_fk";
	rename -uid "D2DD7B57-45B2-C925-A2EB-59901FD8A4A3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -11.188850594819147 -4.5474735088646412e-13 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 56.240222190513528 0 ;
	setAttr ".radi" 3.1092320474293969;
createNode transform -n "rtLegQd1_upr_fkc_ofs" -p "rtLegQd1_FK";
	rename -uid "0D31177B-4C84-ACD5-4ADE-FB954BD4DAE0";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_upr_fkc" -p "rtLegQd1_upr_fkc_ofs";
	rename -uid "F069B119-4BAE-40C7-ABAF-AE8CB89E8ECF";
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
	rename -uid "EAD53A78-4089-ABF7-9349-F8BED1FE3FE7";
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
	rename -uid "C564EDCD-4CC7-3436-D844-4EAF72FB8693";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_lwr_fkc" -p "rtLegQd1_lwr_fkc_ofs";
	rename -uid "F383B1DE-44F2-5A80-BA57-5BB5205F2C98";
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
	rename -uid "E1558422-4FF8-96D4-4003-AFB8B3886323";
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
	rename -uid "6F920CDD-4859-C331-9DF1-A7BD2A554C1F";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_palm_fkc" -p "rtLegQd1_palm_fkc_ofs";
	rename -uid "CF2B931C-4109-9DBB-3D2D-4CB52B38B7CA";
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
	rename -uid "BEF00793-4EF4-1BE9-208E-50AF18B5B8A8";
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
	rename -uid "90FF589C-46CC-DFDA-31C0-1DBC0C54922D";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_digit_fkc" -p "rtLegQd1_digit_fkc_ofs";
	rename -uid "3F21E000-402D-82C6-E6C9-638A03DAAC12";
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
createNode nurbsCurve -n "rtLegQd1_digit_fkcShape1" -p "rtLegQd1_digit_fkc";
	rename -uid "4B9620AF-4F79-905E-1DB4-C7A481334145";
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
createNode transform -n "rtLegQd1_ikc_matcher" -p "rtLegQd1_digit_fkc";
	rename -uid "921C0BD7-45D1-55B8-BC2E-5EA40CBCEA27";
	setAttr ".t" -type "double3" -2.4868995751603507e-14 4.0856207306205761e-14 -7.1054273576010019e-14 ;
	setAttr ".r" -type "double3" 34.189215079406715 3.1805546814635168e-15 -89.999999999999915 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "rtLegQd1_quadScap_ofs" -p "rtLegQd1_FK";
	rename -uid "FFD2F64A-4E98-272C-F23A-248FF1901554";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_quadScap" -p "rtLegQd1_quadScap_ofs";
	rename -uid "6C228858-48A4-1B91-E6EB-668109F38A14";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "rtLegQd1_hip_fkc_ofs" -p "rtLegQd1_quadScap";
	rename -uid "8E3F4340-4FF6-20BE-26EC-5DACE8BD7077";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000002 ;
createNode transform -n "rtLegQd1_hip_fkc" -p "rtLegQd1_hip_fkc_ofs";
	rename -uid "9B5EED7E-4B4D-301B-FCE2-37B9E1841C99";
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
createNode nurbsCurve -n "rtLegQd1_hip_fkcShape1" -p "rtLegQd1_hip_fkc";
	rename -uid "C80CEEF5-4841-9E0A-94A6-418D2F8C582F";
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
createNode transform -n "rtLegQd1_scap_fkc_ofs" -p "rtLegQd1_hip_fkc";
	rename -uid "77AAD8F2-4AA1-C83F-62B0-578D5C6E2B3A";
	setAttr ".t" -type "double3" -47.326292813376739 1.0658141036401503e-14 4.2632564145606011e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999967 ;
createNode transform -n "rtLegQd1_scap_fkc" -p "rtLegQd1_scap_fkc_ofs";
	rename -uid "81E48529-4E82-84DE-33D8-37B202D998F2";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 0 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtLegQd1_scap_fkcShape1" -p "rtLegQd1_scap_fkc";
	rename -uid "CA6B177F-469F-2CA5-383A-11BB42B6A7E3";
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
createNode joint -n "rtLegQd1_autoAim" -p "rtLegQd1_quadScap_ofs";
	rename -uid "C0330045-4F2D-9874-5833-788A9DD6263D";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -4.2632564145606011e-14 0 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -168.65448346161116 -24.617625774086012 5.9260400345178876 ;
	setAttr ".radi" 4.6638480711440948;
createNode joint -n "rtLegQd1_autoAim_end" -p "rtLegQd1_autoAim";
	rename -uid "9B51B0AD-48A0-5229-5EAE-40A7D8B1A8E5";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -137.00360069458856 1.7763568394002505e-14 -2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.1805546814635168e-15 7.9513867036587919e-16 -1.5902773407317584e-15 ;
	setAttr ".radi" 4.6638480711440948;
createNode ikEffector -n "effector27" -p "rtLegQd1_autoAim";
	rename -uid "860E27BC-4EE2-190F-0366-20B06D020526";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikHandle -n "rtLegQd1_legLock_ikh" -p "rtLegQd1_quadScap_ofs";
	rename -uid "780CC3B8-45C7-971C-E8BC-82B5B91FA8F9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.4210854715202004e-14 0 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -11.345516538388678 24.617625774086004 -174.07395996548212 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_ballOfsG" -p "rtLegQd1_FK";
	rename -uid "55D6C2D2-4874-74DA-6A49-9BB6AA0164EB";
	setAttr ".t" -type "double3" -15.136936167920339 18.881415854091522 57.928571057625334 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fkc_ofs" -p "rtLegQd1_ballOfsG";
	rename -uid "9EF7CE63-4C41-9994-E7B2-FDB11A5309C6";
	setAttr ".t" -type "double3" -1.5880972981108243e-08 -7.8398837639303061 5.3258220070230777 ;
	setAttr ".r" -type "double3" 0 33.759777809486465 89.999999999999901 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fkc_ofs1" -p "rtLegQd1_ball_fkc_ofs";
	rename -uid "7F16E662-42F5-ADC0-3521-A6AFBD88A8B6";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fkc" -p "rtLegQd1_ball_fkc_ofs1";
	rename -uid "5D3F1E9A-44AC-0B5A-0BF0-23886DF48CFE";
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
createNode nurbsCurve -n "rtLegQd1_ball_fkcShape1" -p "rtLegQd1_ball_fkc";
	rename -uid "6EA8E6CA-4FE4-EFFA-39B9-4E962BADBE5C";
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
createNode ikHandle -n "rtLegQd1_3_ikh" -p "rtLegQd1_ball_fkc";
	rename -uid "79CDA6C3-45B1-941B-575C-AAB0EC581215";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -11.188850594819186 -4.5474735088646412e-13 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.5557121193499992 2.8656582975540914e-17 0.83137478937452292 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_ball_fk_SPACE_1_ofs" -p "rtLegQd1_ball_fkc";
	rename -uid "9BEB343F-446D-6EF2-594E-AE8A9968A726";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -5.3290705182007514e-15 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fk_SPACE_1" -p "rtLegQd1_ball_fk_SPACE_1_ofs";
	rename -uid "FC2625D4-4AD0-602B-F76E-948E77F97B73";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_IK" -p "rtLegQd1_ctl_data";
	rename -uid "206DE518-443A-1E3A-ABFC-3F8B2C61E435";
	setAttr -cb on ".ro";
createNode joint -n "rtLegQd1_hip_ik" -p "rtLegQd1_IK";
	rename -uid "A8FC1EC9-4A70-1EDC-EE4B-3F92649089C6";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.8624160296610111 25.042419839875052 81.628065413254305 ;
	setAttr ".radi" 4.6638480711440948;
createNode joint -n "rtLegQd1_upr_ik" -p "rtLegQd1_hip_ik";
	rename -uid "1351CB45-48A8-9B5B-53E1-D38A1877068C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -47.326292813376696 3.5527136788005009e-15 2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -8.1500367296581821e-07 1.4787793316620353e-06 -2.5435892511722573e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 177.77341520201932 -56.66101528151389 10.224746785676928 ;
	setAttr ".radi" 4.6638480711440948;
createNode joint -n "rtLegQd1_lwr_ik" -p "rtLegQd1_upr_ik";
	rename -uid "920AFD4B-4FF5-9D1E-0553-938CCB3D1164";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -30.533184530843595 3.5527136788005009e-15 7.7271522513910895e-14 ;
	setAttr ".r" -type "double3" -2.2517026527563854e-21 -1.8984457471385555e-06 -3.4783307247724895e-21 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -29.861134866726143 0 ;
	setAttr ".radi" 4.6638480711440948;
createNode joint -n "rtLegQd1_palm_ik" -p "rtLegQd1_lwr_ik";
	rename -uid "E0F1D48E-4E91-BE8D-C84C-20A9BCD15048";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -41.934879068019079 4.9737991503207013e-14 -4.9737991503207013e-14 ;
	setAttr ".r" -type "double3" -5.769050291521822e-09 -1.266300698829327e-10 -3.3946641736631426e-10 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 179.23342805838215 -1.7821319713137702 0.51119245241123557 ;
	setAttr ".radi" 4.6638480711440948;
createNode joint -n "rtLegQd1_digit_ik" -p "rtLegQd1_palm_ik";
	rename -uid "628FB950-4919-90BF-E9AD-6ABF7B452D08";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -26.570854559588639 -0.5832275676674783 -1.5635004633482552 ;
	setAttr ".r" -type "double3" 6.1849066335739546e-09 -9.7480243086078064e-18 -4.6373127511542431e-24 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 34.189215079406694 0 ;
	setAttr ".radi" 4.6638480711440948;
createNode joint -n "rtLegQd1_ball_ik" -p "rtLegQd1_digit_ik";
	rename -uid "4DF8A7E2-4593-345B-4C90-E79DAAD7D0AD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -9.4777716629218993 1.493790513507065e-08 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 6.1665103052963698e-09 2.5062486997980057e-22 -3.916013579944227e-24 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -0.42943726992023945 0 ;
	setAttr ".radi" 4.6638480711440948;
createNode joint -n "rtLegQd1_tip_ik" -p "rtLegQd1_ball_ik";
	rename -uid "3583BAF3-432E-686B-DD81-C39D9490DFB9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -11.188850594819147 -4.5474735088646412e-13 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 56.240222190513528 0 ;
	setAttr ".radi" 4.6638480711440948;
createNode ikEffector -n "effector25" -p "rtLegQd1_ball_ik";
	rename -uid "56B34C48-4F67-3174-AA34-C18A6A615196";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector24" -p "rtLegQd1_digit_ik";
	rename -uid "3DE114E7-44C3-020F-5C3D-2B81D85595DA";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector23" -p "rtLegQd1_palm_ik";
	rename -uid "D61BACB4-4FA9-13B7-7017-93A91B6FBFF3";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector22" -p "rtLegQd1_lwr_ik";
	rename -uid "A7A8AF7E-43B1-CB29-1E7A-9595FA084773";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "rtLegQd1_softJ" -p "rtLegQd1_hip_ik";
	rename -uid "E2DABDEC-49B7-1C50-BD0D-628F7211F542";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -47.326292813376753 -7.1054273576010019e-15 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 2.5444437451708134e-14 1.2898526276432325e-29 6.4492631382161925e-31 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 86.35171114162813 -39.337269771453002 9.3672541287994928 ;
createNode joint -n "rtLegQd1_softJ_end" -p "rtLegQd1_softJ";
	rename -uid "CCF5A3A1-46DB-3F77-94EC-479616AAA5B2";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -70.083045959472656 -3.5527136788005009e-14 -1.7763568394002505e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.0345092886055061e-32 1.9878466759146984e-15 -8.9453100416161419e-16 ;
createNode ikEffector -n "effector26" -p "rtLegQd1_softJ";
	rename -uid "0BD559B3-48AD-8427-3D7D-A7A5E49E4AFD";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegQd1_pvc_SPACE_1_ofs" -p "rtLegQd1_softJ";
	rename -uid "133DA2BC-45F6-B6C2-3EAA-6185DF55C2F2";
	setAttr ".t" -type "double3" -42.849083783261264 -48.138942941648196 -1.7368181085430408 ;
	setAttr ".r" -type "double3" -174.98583201448935 88.042678676436608 75.680636836584327 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
createNode transform -n "rtLegQd1_pvc_SPACE_1" -p "rtLegQd1_pvc_SPACE_1_ofs";
	rename -uid "E5C6382F-471E-1B03-2634-59ABC8117212";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "rtLegQd1_ikCstG" -p "rtLegQd1_IK";
	rename -uid "79879994-4160-CA7F-1C32-59A5E0FA57F3";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_heelRollG" -p "rtLegQd1_ikCstG";
	rename -uid "1B9273A1-4BDE-28F3-9C17-09ADC6A116BC";
	setAttr ".t" -type "double3" 0.5832275527293902 -45.452270110617469 3.2277479209104953 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_heelRollG_ctl" -p "rtLegQd1_heelRollG";
	rename -uid "CFADBF22-4AB7-3C0E-7320-44B444124433";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_toeRollG" -p "rtLegQd1_heelRollG_ctl";
	rename -uid "6E458C8B-4928-6377-D2DD-EBA5398CCB3E";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 0 9.3613568898385253 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toeRollG_ctl" -p "rtLegQd1_toeRollG";
	rename -uid "6706082B-4E0B-BF13-2DB4-F09457105B2B";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_footRollG" -p "rtLegQd1_toeRollG_ctl";
	rename -uid "5D4FBF28-4550-B3CE-092B-FB99651C7090";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_outRollG" -p "rtLegQd1_footRollG";
	rename -uid "C83AAB30-4929-3DE8-1FC7-4BACCE0E7EFF";
	setAttr ".t" -type "double3" -3.9782605883148552 0 -5.3888664808739719 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_outRollG_ctl" -p "rtLegQd1_outRollG";
	rename -uid "73D3DE62-4581-58B7-35F7-1F96B8DA1A3F";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_inRollG" -p "rtLegQd1_outRollG_ctl";
	rename -uid "CFF61EF0-49F4-5AA5-DEED-018FA69E7FFB";
	setAttr ".t" -type "double3" 7.5370106831020625 0 -0.24089151393239661 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_inRollG_ctl" -p "rtLegQd1_inRollG";
	rename -uid "97EC1FF9-4947-29FC-0852-8FB749C6416E";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_ballRollG" -p "rtLegQd1_inRollG_ctl";
	rename -uid "96148B3C-4232-A595-8FDC-EF8DD4DDBE38";
	setAttr ".t" -type "double3" -3.5587500947870954 11.041532090161171 -3.1970249940001878 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ballG_ikc" -p "rtLegQd1_ballRollG";
	rename -uid "420A421B-4193-0531-CA00-2CB32B81AA82";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "stickCShape4" -p "rtLegQd1_ballG_ikc";
	rename -uid "2AC1E90B-4033-E9EA-A71A-F298C2FA4E67";
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
createNode transform -n "rtLegQd1_extraRollG_ofs" -p "rtLegQd1_ballG_ikc";
	rename -uid "E9B766F2-416E-17AB-739A-0EB1B5700645";
	setAttr ".t" -type "double3" 1.493790513507065e-08 7.839883460867652 -5.3258222852907124 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_extraRollG_ofs1" -p "rtLegQd1_extraRollG_ofs";
	rename -uid "56905875-4E74-A9F3-93ED-B580C8A8F478";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 0 ;
	setAttr ".r" -type "double3" 168.69155808645013 0 90.571945518899028 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "rtLegQd1_extraRollG" -p "rtLegQd1_extraRollG_ofs1";
	rename -uid "C9FC97BA-4107-6C06-876D-7B8BAE4DA76E";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_extra_ikc" -p "rtLegQd1_extraRollG";
	rename -uid "5B5D28FC-4122-9D36-6B75-109C343F664D";
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
createNode nurbsCurve -n "rtLegQd1_extra_ikcShape1" -p "rtLegQd1_extra_ikc";
	rename -uid "F9A3106E-4A97-51DC-9415-EBB332F60C56";
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
createNode transform -n "rtLegQd1_extraRollG_ofs2" -p "rtLegQd1_extra_ikc";
	rename -uid "6E11A538-48E4-AAB6-3DB0-4ABE694E1D6A";
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd1_X_ikh" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "5019AF82-4187-7168-8B4E-069C12F76B54";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.8421709430404007e-14 1.4210854715202004e-14 0 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999886 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 1.0000000000000002 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_dist_loc1" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "BABD8B7E-44D5-A69A-3DB1-5EA6574A58D9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.58322756766739126 26.570854559588653 1.5635004633482552 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode locator -n "rtLegQd1_dist_loc1Shape" -p "rtLegQd1_dist_loc1";
	rename -uid "9293B141-44C3-E707-A971-3BB1F244F3FA";
	setAttr -k off ".v";
createNode transform -n "rtLegQd1_softJ_posGrp" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "4A9F6630-43D2-215C-42D3-C4939A286CBF";
	setAttr ".t" -type "double3" -0.5832275676673877 26.570854559588653 1.563500463348241 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "rtLegQd1_1_ikh_ofs" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "82A1E8D9-4DF2-E15B-D8FD-C9AABE2D9B99";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode ikHandle -n "rtLegQd1_1_ikh" -p "rtLegQd1_1_ikh_ofs";
	rename -uid "5CCC951F-490D-12BE-0992-62A8FFBD951C";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_toe_wiggle_grp" -p "rtLegQd1_inRollG_ctl";
	rename -uid "858AFEDE-4E5F-6410-7F20-73BB87035DDF";
	setAttr ".t" -type "double3" -3.5587500947870954 11.041532090161171 -3.1970249940001878 ;
	setAttr ".r" -type "double3" 0 33.759777809486444 90 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd1_2_ikh" -p "rtLegQd1_toe_wiggle_grp";
	rename -uid "C2238D12-4958-3750-C87E-398C0FCCA5A8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.4210854715202004e-14 -3.1974423109204508e-14 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 0 0.42943726992024006 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.55571211934999898 0 0.83137478937452314 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_ball_fkc_SPACE_2_ofs" -p "rtLegQd1_toe_wiggle_grp";
	rename -uid "5E956D66-4E2D-BDF1-8A6B-91AF8CCC14FD";
	setAttr ".t" -type "double3" 4.2632564145606011e-14 -5.3290705182007514e-14 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fkc_SPACE_2" -p "rtLegQd1_ball_fkc_SPACE_2_ofs";
	rename -uid "3427FA36-4169-B683-3E06-3C8050C2E8E9";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
createNode nurbsCurve -n "diamondShape14" -p "rtLegQd1_inRollG_ctl";
	rename -uid "63AF3730-49F7-402D-708D-1F8936FC1223";
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
createNode nurbsCurve -n "diamondShape15" -p "rtLegQd1_outRollG_ctl";
	rename -uid "DA1C93DA-4C21-8890-73A9-EBB92A487558";
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
createNode nurbsCurve -n "diamondShape13" -p "rtLegQd1_toeRollG_ctl";
	rename -uid "368EDAF0-4C45-B96E-A440-DCB467A2FFAE";
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
createNode nurbsCurve -n "diamondShape16" -p "rtLegQd1_heelRollG_ctl";
	rename -uid "29E62979-4BB1-7541-1AA4-4E84AB24B476";
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
	rename -uid "BD9A3E7D-4D21-E2F5-5D91-55B9BF494DF1";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape4" -p "rtLegQd1_line_53";
	rename -uid "2CF2C550-4519-7716-756D-30BE8F59264B";
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
	rename -uid "7BB98ECB-490D-65F0-9A27-B69AB2CC0C56";
	setAttr ".t" -type "double3" -15.136936168863452 18.881415551028823 57.928570779357699 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ikc_ofs1" -p "rtLegQd1_ikc_ofs";
	rename -uid "9FB0B757-4476-E496-C18B-158951095486";
createNode transform -n "rtLegQd1_ikc" -p "rtLegQd1_ikc_ofs1";
	rename -uid "6365B30D-42D1-E0E8-2C11-5084B93C3B05";
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
	rename -uid "EAAAA4E0-408A-4841-BA9F-799A8DB647FB";
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
createNode transform -n "rtLegQd1_ikc_gmb" -p "rtLegQd1_ikc";
	rename -uid "9982F462-4A71-25FB-3844-C8BCCA3FC2BD";
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
	rename -uid "AD7FE662-49A1-7645-9513-2082FB66BF3A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".tw" yes;
	setAttr -s 53 ".cp[0:52]" -type "double3" -2.3319240355720456 1.5907256255789939 
		-1.1659620070686305 -2.2871167691075609 1.5907256255789939 -1.6208978180855276 -2.1544168878361347 
		1.5907256255789939 -2.0583507010159927 -1.9389239737760748 1.5907256255789939 -2.4615095868954029 
		-1.6489192987648931 1.5907256255789939 -2.81488130583352 -1.2955475798267724 1.5907256255789939 
		-3.1048859808447027 -0.89238869394736131 1.5907256255789939 -3.3203788949047635 -0.45493581101689884 
		1.5907256255789939 -3.4530787761761914 6.2750832097939914e-16 1.5907256255789939 
		-3.4978860426406726 0.45493581101690039 1.5907256255789939 -3.4530787761761914 0.89238869394736264 
		1.5907256255789939 -3.3203788949047635 1.2955475798267733 1.5907256255789939 -3.1048859808447027 
		1.648919298764894 1.5907256255789939 -2.8148813058335236 1.9389239737760757 1.5907256255789939 
		-2.4615095868954029 2.1544168878361347 1.5907256255789939 -2.0583507010159927 2.2871167691075627 
		1.5907256255789939 -1.6208978180855294 2.3319240355720474 1.5907256255789939 -1.1659620070686305 
		2.2871167553547718 0.89240576210394273 -1.1659620070686287 2.1544168774226211 0.21243476690837504 
		-1.1659620070686287 1.9389240178320053 -0.37637853969293467 -1.1659620070686287 1.648919298343543 
		-0.84490783162458172 -1.1659620070686287 1.2955475516750017 -1.1977257576201916 -1.1659620070686287 
		0.89238866553563101 -1.4132186172108065 -1.1659620070686287 0.45493580101296272 -1.5459184951429581 
		-1.1659620070686287 2.12482202521051e-16 -1.5907257753602329 -1.1659620070686287 
		-0.45493580101296183 -1.5459184951429581 -1.1659620070686287 -0.89238866553563012 
		-1.4132186172108065 -1.1659620070686287 -1.2955475516750017 -1.1977257576201916 -1.1659620070686287 
		-1.648919298343543 -0.84490783162458172 -1.1659620070686287 -1.9389240178320053 -0.37637853969293467 
		-1.1659620070686287 -2.1544168774226211 0.21243476690837504 -1.1659620070686287 -2.2871167553547718 
		0.89240576210394273 -1.1659620070686287 -2.3319240355720474 1.5907256255789939 -1.1659620070686287 
		-2.3319240355720474 1.5907256255789939 3.3579706219411412 -2.3319240355720474 1.4508101834446698 
		3.4978860640754661 -2.2871167553547718 0.89240576210394273 3.4978860640754661 -2.1544168774226211 
		0.21243476690837504 3.4978860640754661 -1.9389240178320053 -0.37637853969293467 3.4978860640754661 
		-1.648919298343543 -0.84490783162458172 3.4978860640754661 -1.2955475516750017 -1.1977257576201916 
		3.4978860640754661 -0.89238866553563012 -1.4132186172108065 3.4978860640754661 -0.45493580101296183 
		-1.5459184951429581 3.4978860640754661 2.12482202521051e-16 -1.5907257753602329 3.4978860640754661 
		0.45493580101296272 -1.5459184951429581 3.4978860640754661 0.89238866553563101 -1.4132186172108065 
		3.4978860640754661 1.2955475516750017 -1.1977257576201916 3.4978860640754661 1.648919298343543 
		-0.84490783162458172 3.4978860640754661 1.9389240178320053 -0.37637853969293467 3.4978860640754661 
		2.1544168774226211 0.21243476690837504 3.4978860640754661 2.2871167553547718 0.89240576210394273 
		3.4978860640754661 2.3319240355720474 1.4508101834446698 3.4978860640754661 2.3319240355720474 
		1.5907256255789939 3.3579706219411412 2.3319240355720474 1.5907256255789939 -1.1659620070686287;
createNode nurbsCurve -n "rtLegQd1_ikc_gmbShapeOrig" -p "rtLegQd1_ikc_gmb";
	rename -uid "5B2287DB-407C-5391-3DA9-DC8D667ECF76";
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
	rename -uid "CB4BC910-435C-C4C3-CDE4-61AC2348FAD4";
	setAttr ".t" -type "double3" -1.4938018821908372e-08 -18.881415551028823 14.152605274097283 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_smart_ctl" -p "rtLegQd1_smart_ctl_ofs";
	rename -uid "FDB536E4-46FA-237D-20A3-599EF56ABF82";
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
	rename -uid "3AABF162-48C2-F994-E62B-11A468377A6C";
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
createNode ikHandle -n "rtLegQd1_autoAimJ_ikh" -p "rtLegQd1_ikc";
	rename -uid "9035E2B7-4374-DC71-EFE8-FCB1D2910815";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 8.8817841970012523e-15 0 0 ;
	setAttr ".r" -type "double3" -167.82849405510058 0.4767386666691229 87.790796088540475 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode joint -n "rtLegQd1_legLock" -p "rtLegQd1_ikc";
	rename -uid "94D48DA3-41FE-D183-2F48-CF853699035E";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -12.171505944899272 -0.47673866666913473 -92.209203911459525 ;
	setAttr ".radi" 3.1092320474293969;
createNode joint -n "rtLegQd1_legLock_end" -p "rtLegQd1_legLock";
	rename -uid "B60E1CC6-48C9-00CA-2D2D-E99E59C2E2D1";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -137.00360069458858 3.5527136788005009e-15 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 3.1092320474293969;
createNode ikEffector -n "effector28" -p "rtLegQd1_legLock";
	rename -uid "7C5F281C-4A7E-B051-E898-2D8C92C401C0";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegQd1_pvc_ofs" -p "rtLegQd1_IK";
	rename -uid "1CB831B9-4533-D06F-4724-A888F2C68546";
	setAttr ".t" -type "double3" -16.584956749008626 83.746168715153615 19.555965439770279 ;
	setAttr ".r" -type "double3" 5.0141679855110075 -179.29415650201057 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_pvc_ofs1" -p "rtLegQd1_pvc_ofs";
	rename -uid "B8444FB0-4A6C-A15C-5E7E-868BB17F4578";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "rtLegQd1_pvc" -p "rtLegQd1_pvc_ofs1";
	rename -uid "04D450A0-4E5B-9EAB-8BE3-878293BF9FE4";
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
	rename -uid "422FC278-4341-30FC-CBF1-B99E7E3AFD0E";
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
	rename -uid "3B5A906D-4EE3-CEA3-6444-1996D6AC8EAB";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 0.88177499239414059 -148.35299740090878 -89.951691053865517 ;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd1_extraRollG_ofs_locShape" -p "rtLegQd1_extraRollG_ofs_loc";
	rename -uid "74DCD8BF-4B59-E29B-D53B-0C91857DA5EE";
	setAttr -k off ".v";
createNode transform -n "rtLegQd1_setting" -p "rtLegQd1_ctl_data";
	rename -uid "215F24C8-42DF-B0C0-EAE3-A994A78EB39B";
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
	rename -uid "E26C265B-456A-E2C0-0E4A-8B90761ECADD";
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
	rename -uid "8A027F3C-4827-55C0-5525-E7BA23D0E0A5";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd1_anchorF1Shape" -p "rtLegQd1_anchorF1";
	rename -uid "A7930B43-4911-2741-7F04-CD99BF62B1FC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 23.319240355720478 23.319240355720478 23.319240355720478 ;
createNode transform -n "spineQd0_ctl_data" -p "master_ctl";
	rename -uid "70199E1D-4FDA-6D27-D014-54A6A4851B6B";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_IK" -p "spineQd0_ctl_data";
	rename -uid "433D32DC-492A-9F15-F4DA-25839EF42F0C";
	setAttr ".t" -type "double3" 5.4537835835963278e-14 147.69466945644481 -34.450657404629141 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_cog_ctl_ofs" -p "spineQd0_IK";
	rename -uid "EC271783-459D-8706-45F9-26AC62713738";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_cog_ctl" -p "spineQd0_cog_ctl_ofs";
	rename -uid "4552AAB9-49A8-463E-9056-11A1473AB670";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spineQd0_cog_ctlShape1" -p "spineQd0_cog_ctl";
	rename -uid "862FD6CC-4ACB-B303-EF05-249F1A10D68E";
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
createNode transform -n "spineQd0_base_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "10C19DB3-40B0-840A-761F-6D9EF93E2947";
	setAttr ".t" -type "double3" -5.4537835835963278e-14 -2.6285238440840999 17.768860011649402 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_base_ctl" -p "spineQd0_base_ctl_ofs";
	rename -uid "409414D6-4A25-2611-6BEC-47B6CBD062EA";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode nurbsCurve -n "spineQd0_base_ctlShape1" -p "spineQd0_base_ctl";
	rename -uid "99C920D8-4FF8-AFA5-D255-EC97C957EB2E";
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
		35.6414982501324 -4.8604185321477902e-15 -2.976147998955634e-31
		25.202345104317086 42.182820620317386 -28.253465340960481
		2.1824123374420308e-15 52.621973766132676 -28.253465340960481
		-25.202345104317086 42.182820620317379 -28.253465340960481
		;
createNode transform -n "spineQd0_tangent0_ctl_ofs" -p "spineQd0_base_ctl";
	rename -uid "5063FCDE-4C33-82CB-A74E-15840B3016FF";
	setAttr ".t" -type "double3" 5.4561850914083838e-14 2.6285238440840999 -17.768860011649409 ;
	setAttr ".r" -type "double3" 8.8958361169401687 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_tangent0_ctl" -p "spineQd0_tangent0_ctl_ofs";
	rename -uid "39AE7B15-47C8-7C49-5CA6-C0A8E7EBC0B3";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "spineQd0_tangent0_ctlShape1" -p "spineQd0_tangent0_ctl";
	rename -uid "BAADD673-4A5F-879E-30E3-78B2EBF86831";
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
createNode joint -n "spineQd0_0_ikj" -p "spineQd0_tangent0_ctl";
	rename -uid "1C0D0005-4CED-8A6B-B65B-659D51BF2E7B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" 8.8958361169401687 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -8.8958361169401687 0 0 ;
	setAttr ".radi" 4.2882374046480827;
createNode transform -n "spineQd0_end_ctl_ofs" -p "spineQd0_base_ctl";
	rename -uid "8FB51C74-40F9-36F7-5861-52AE06F8B3C3";
	setAttr ".t" -type "double3" 0 3.0409704506277819 -21.834778344899007 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_end_ctl" -p "spineQd0_end_ctl_ofs";
	rename -uid "98B99D35-435A-75E6-B791-EE82D0F34A83";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spineQd0_end_ctlShape1" -p "spineQd0_end_ctl";
	rename -uid "7B9974F0-4F70-1B06-4EC6-019E531AD64E";
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
	rename -uid "D3C50DEB-423B-A30D-3534-7C9BBFB482A6";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 5.4537835835963278e-14 2.6285238440840999 -17.768860011649402 ;
	setAttr ".r" -type "double3" 8.8958361169401687 -3.7250698322583783e-16 3.9286862442551167e-15 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 21.441187023240413;
createNode joint -n "spineQd0_two_ikj_end" -p "spineQd0_two_ikj";
	rename -uid "27020FB2-47B6-2951-A0D7-4095D28049CD";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -4.7432408478362276e-14 6.5021964895347821 106.94081427733343 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 21.441187023240413;
createNode transform -n "spineQd0_loc2" -p "spineQd0_two_ikj_end";
	rename -uid "A26F79C9-4C54-0E72-44C0-18B12820576B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.3589103203155148e-14 -3.2347923326676948 -53.587195275394592 ;
	setAttr ".r" -type "double3" -6.0955460235536538 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_loc2Shape" -p "spineQd0_loc2";
	rename -uid "E7C93E08-4F28-92A9-ECAF-8AAC8522B90C";
	setAttr -k off ".v";
createNode ikEffector -n "effector30" -p "spineQd0_two_ikj";
	rename -uid "E6984A7A-4C28-79E8-10EC-4CA2197087E2";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "spineQd0_loc1" -p "spineQd0_base_ctl";
	rename -uid "4C3BFAF3-4F09-FC31-C5B6-DBBE30E58F27";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.069453056075615e-14 -2.3939035318879576 35.448240752874106 ;
	setAttr ".r" -type "double3" 2.8002900933865158 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_loc1Shape" -p "spineQd0_loc1";
	rename -uid "AB78C2A7-4127-FC05-879D-768DE6390D83";
	setAttr -k off ".v";
createNode transform -n "spineQd0_mid_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "687977F5-4B46-BDFA-F76B-6B9C9EB79E6E";
	setAttr ".t" -type "double3" -2.3843305275207128e-14 -5.0224273759720575 53.217100764523508 ;
	setAttr ".r" -type "double3" 2.8002900933865158 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_mid_ctl_ofs1" -p "spineQd0_mid_ctl_ofs";
	rename -uid "3819752A-4202-DC8D-EF5C-84A52C5CA941";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_mid_ctl_ofs2" -p "spineQd0_mid_ctl_ofs1";
	rename -uid "8400EF1D-4831-A5E5-F3E2-DCB870B1A8F1";
	setAttr ".t" -type "double3" 0 0 8.8817841970012523e-16 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "spineQd0_mid_ctl" -p "spineQd0_mid_ctl_ofs2";
	rename -uid "285FF9F6-4F95-743A-A4D3-D2997F930DD6";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spineQd0_mid_ctlShape1" -p "spineQd0_mid_ctl";
	rename -uid "A7A4F9BA-4600-8515-498D-599283607DF1";
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
		35.6414982501324 -4.8604185321477902e-15 -2.976147998955634e-31
		25.202345104317086 25.202345104317089 1.5431985631504446e-15
		2.1824123374420308e-15 35.641498250132379 2.1824123374420308e-15
		-25.202345104317086 25.202345104317082 1.5431985631504442e-15
		;
createNode joint -n "spineQd0_1_ikj" -p "spineQd0_mid_ctl";
	rename -uid "7E6946E5-4F55-1BBA-21DA-D194C92BFFF3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" 2.8002900933865158 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -2.8002900933865158 0 0 ;
	setAttr ".radi" 4.2882374046480827;
createNode transform -n "spineQd0_fore_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "C93AA8F8-461E-BB5E-4673-4AB683ADCF88";
	setAttr ".t" -type "double3" -4.7432408478362269e-14 -10.113194196965566 106.65992509195806 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_fore_ctl" -p "spineQd0_fore_ctl_ofs";
	rename -uid "45934891-479D-FFE0-6B96-C2B8D38B8E51";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode nurbsCurve -n "spineQd0_fore_ctlShape1" -p "spineQd0_fore_ctl";
	rename -uid "63204E77-417B-173F-46F7-E29925D077A0";
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
		35.6414982501324 -4.8604185321477902e-15 -2.976147998955634e-31
		25.202345104317086 51.459543254494235 -22.66919789303779
		2.1824123374420308e-15 61.898696400309525 -22.66919789303779
		-25.202345104317086 51.459543254494228 -22.66919789303779
		;
createNode transform -n "spineQd0_tangent1_ctl_ofs" -p "spineQd0_fore_ctl";
	rename -uid "7B8F6596-4D92-47B3-C544-16A7484EED69";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_tangent1_ctl" -p "spineQd0_tangent1_ctl_ofs";
	rename -uid "B9179D9C-42A2-2FA5-5DDC-C18E12D667AE";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "spineQd0_tangent1_ctlShape1" -p "spineQd0_tangent1_ctl";
	rename -uid "1588F68C-4E88-5B9E-0F3D-C9BA53C59E5A";
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
createNode joint -n "spineQd0_2_ikj" -p "spineQd0_tangent1_ctl";
	rename -uid "F1FCDF00-4336-00B7-3AD6-69AB6CF1223B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".radi" 4.2882374046480827;
createNode ikHandle -n "spineQd0_two_ikj_ikh" -p "spineQd0_tangent1_ctl";
	rename -uid "101471C9-4E95-554E-BC43-7C8182BA69E2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.3108872417680944e-30 0 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 8.8958361169401972 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "spineQd0_anchorToRbj" -p "spineQd0_fore_ctl";
	rename -uid "B69838D3-4782-C02B-C2A5-82BF1B8D1CAF";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorToRbjShape" -p "spineQd0_anchorToRbj";
	rename -uid "13067F84-46D0-E27C-CD70-2D8ACD12D9C8";
	setAttr -k off ".v";
createNode transform -n "neckQd0_cog_ctl_SPACE_1_ofs" -p "spineQd0_fore_ctl";
	rename -uid "98520674-4A85-BC62-BDCA-CFA3CA48B2B2";
	setAttr ".t" -type "double3" 2.0163490560380634e-14 1.4411529565381045 6.3586768520976591 ;
	setAttr ".r" -type "double3" -26.90976132496036 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_1" -p "neckQd0_cog_ctl_SPACE_1_ofs";
	rename -uid "EC0034BF-43EB-F4EA-CAC1-C88A8F66831B";
	setAttr ".t" -type "double3" -3.1554436208840472e-30 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "head0_head_fkc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "85EB64BD-470D-893B-2EFB-498FE8E870CD";
	setAttr ".t" -type "double3" -2.611612640555927e-14 40.417329307412786 154.17502638714814 ;
createNode transform -n "head0_head_fkc_SPACE_2" -p "head0_head_fkc_SPACE_2_ofs";
	rename -uid "BAD3958B-4333-C599-169C-07AD48C9A4CB";
createNode transform -n "lfLegQd0_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "F4065DC1-47C5-BB38-F38E-54B7876F0BD5";
	setAttr ".t" -type "double3" 15.523391903594645 -128.19126917814549 -37.282269299771244 ;
createNode transform -n "lfLegQd0_ikc_SPACE_2" -p "lfLegQd0_ikc_SPACE_2_ofs";
	rename -uid "AA52B2D8-465B-06D5-DE06-649BD53CB325";
createNode transform -n "lfLegQd0_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "881AFFB0-48B4-2F07-DFCD-0D94D7C5C0D0";
	setAttr ".t" -type "double3" 21.943537102018073 -58.098798236027164 30.350441059411885 ;
	setAttr ".r" -type "double3" 11.984909460277844 3.7472038499647358 6.7504238021140051e-06 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "lfLegQd0_pvc_SPACE_3" -p "lfLegQd0_pvc_SPACE_3_ofs";
	rename -uid "116A7A3A-489B-F1AB-521B-FD8B5B7EBDF8";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 1.4210854715202004e-14 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd1_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "2D6C8322-43CD-3FB9-63B0-718FF4CC72D7";
	setAttr ".t" -type "double3" 15.136936168869907 -128.81325390541593 92.379228183986839 ;
createNode transform -n "lfLegQd1_ikc_SPACE_2" -p "lfLegQd1_ikc_SPACE_2_ofs";
	rename -uid "8699A129-430D-CF29-8D3D-8BAEF8DB38A7";
createNode transform -n "lfLegQd1_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "469FEEBA-4531-9CC6-3083-D9BBCF02CE81";
	setAttr ".t" -type "double3" 16.584956749010061 -63.948500741291241 54.006622844399409 ;
	setAttr ".r" -type "double3" -174.98583209900039 0.70584409984867125 179.99999313973876 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "lfLegQd1_pvc_SPACE_3" -p "lfLegQd1_pvc_SPACE_3_ofs";
	rename -uid "25069DB1-425E-CB34-F70C-F79B728829BD";
	setAttr ".t" -type "double3" 0 -2.8421709430404007e-14 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "D30A45E1-48DE-D8DB-767F-C6B942A5715C";
	setAttr ".t" -type "double3" -5.4537835835963259e-14 39.90813806749955 145.38550306138592 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_2" -p "neckQd0_fore_ctl_SPACE_2_ofs";
	rename -uid "F7C23A6E-47B9-B965-DD10-8390306E58A9";
createNode transform -n "neckQd0_cog_ctl_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "4AF49D96-49D2-5427-953C-4B89F92E2725";
	setAttr ".t" -type "double3" -2.7268917917981636e-14 -8.6720412404274612 113.01860194405572 ;
	setAttr ".r" -type "double3" -26.90976132496036 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_2" -p "neckQd0_cog_ctl_SPACE_2_ofs";
	rename -uid "AC0384EB-414C-5701-DF13-F88002500030";
	setAttr ".t" -type "double3" -3.1554436208840472e-30 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd0_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "1AFE0EBA-41CC-BDBB-01CE-FE8A056F728D";
	setAttr ".t" -type "double3" -15.523391903587372 -128.19126917814552 -37.282269299771258 ;
createNode transform -n "rtLegQd0_ikc_SPACE_2" -p "rtLegQd0_ikc_SPACE_2_ofs";
	rename -uid "C6CC46D0-4727-50B6-A699-0FBC8D63AA5B";
createNode transform -n "rtLegQd0_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "6C91FFB5-4F01-56E0-4922-EEA5D167C8ED";
	setAttr ".t" -type "double3" -21.943537102019594 -58.09879823602715 30.350441059411811 ;
	setAttr ".r" -type "double3" 11.984909019107619 -3.7472052798902 4.980263935172998e-17 ;
createNode transform -n "rtLegQd0_pvc_SPACE_3" -p "rtLegQd0_pvc_SPACE_3_ofs";
	rename -uid "E6194275-4AD1-1B38-7DBC-AA92BBF61651";
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-14 0 ;
createNode transform -n "rtLegQd1_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "5E614F1C-4BBB-660D-A3D9-4D97D2C183BA";
	setAttr ".t" -type "double3" -15.136936168863507 -128.81325390541599 92.379228183986839 ;
createNode transform -n "rtLegQd1_ikc_SPACE_2" -p "rtLegQd1_ikc_SPACE_2_ofs";
	rename -uid "2E3D2235-4E8E-48F9-2C38-E4A195A7D3B7";
createNode transform -n "rtLegQd1_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "8015F18F-4D65-392E-126F-F1B171D95E6F";
	setAttr ".t" -type "double3" -16.584956749008679 -63.948500741291198 54.006622844399416 ;
	setAttr ".r" -type "double3" 5.0141679855110075 180.70584349798943 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "rtLegQd1_pvc_SPACE_3" -p "rtLegQd1_pvc_SPACE_3_ofs";
	rename -uid "EBD60E71-42D0-8B34-92C2-978332BA0954";
	setAttr ".t" -type "double3" 0 0 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "spineQd0_setting" -p "spineQd0_IK";
	rename -uid "7E8E036E-48D5-655C-275A-11A4BA9F3281";
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
	rename -uid "10F8F805-4605-A4C4-4CC9-699877F5B395";
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
	rename -uid "0451831E-46DC-3878-CDD9-63A282077891";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorM1Shape" -p "spineQd0_anchorM1";
	rename -uid "0F66BF4E-4D21-E54D-0649-9A9AA2ED7636";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 16.080890267430309 16.080890267430309 16.080890267430309 ;
createNode transform -n "spineQd0_anchorM2" -p "master_ctl";
	rename -uid "A9E6E4E9-4BD6-5B79-DDCB-FEA8AAD67F7D";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorM2Shape" -p "spineQd0_anchorM2";
	rename -uid "F16D1DE9-4115-ED08-929D-22BAA906EECE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 16.080890267430309 16.080890267430309 16.080890267430309 ;
createNode transform -n "tail0_ctl_data" -p "master_ctl";
	rename -uid "E173392F-492F-192A-6E50-D9821EE7B774";
	setAttr -cb on ".ro";
createNode transform -n "tail0_FK" -p "tail0_ctl_data";
	rename -uid "3E6C8E45-4EE6-157C-5494-A2A64CBA949C";
	setAttr ".t" -type "double3" 0 150.04235771098138 -56.955020297575011 ;
	setAttr -cb on ".ro";
createNode transform -n "tail0_setting" -p "tail0_FK";
	rename -uid "1B787099-4AFA-BBEC-2D60-728E94144559";
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
	rename -uid "BF380754-47A1-0287-2203-17A187D1F78F";
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
	rename -uid "EE9023B3-4316-BDAE-DC67-1CB41AA9F7F6";
	setAttr -cb on ".ro";
createNode transform -n "tail0_1_chainGrp" -p "tail0_0_chainGrp";
	rename -uid "524F2DA7-4C72-68E2-1557-978E806CE5BF";
	setAttr -cb on ".ro";
createNode transform -n "tail0_2_chainGrp" -p "tail0_1_chainGrp";
	rename -uid "1A14B071-4FBC-14AA-6DF5-DB86143CE45B";
	setAttr -cb on ".ro";
createNode transform -n "tail0_3_chainGrp" -p "tail0_2_chainGrp";
	rename -uid "418C4E09-4C96-7778-65A4-5EB71B3C2EEB";
	setAttr -cb on ".ro";
createNode transform -n "tail0_4_chainGrp" -p "tail0_3_chainGrp";
	rename -uid "A2419997-46A3-0C10-F9B2-08A60EAB920B";
	setAttr -cb on ".ro";
createNode transform -n "tail0_5_chainGrp" -p "tail0_4_chainGrp";
	rename -uid "BB15FD1A-4937-9F84-86A0-E491B666E6C7";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "tail0_6_chainGrp" -p "tail0_5_chainGrp";
	rename -uid "93B4B91F-4492-F9A1-C8BE-84B68950BA4D";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "tail0_0_fkc_ofs" -p "tail0_FK";
	rename -uid "558545DE-4147-56D6-4FCF-629B0ABD4821";
	setAttr -cb on ".ro";
createNode transform -n "tail0_0_fkc" -p "tail0_0_fkc_ofs";
	rename -uid "A1D0246C-46FE-5D93-438D-6F975FE08151";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_0_fkcShape1" -p "tail0_0_fkc";
	rename -uid "3F0E0CAD-4D37-06CB-345D-F0B086EFF425";
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
createNode transform -n "tail0_1_fkc_ofs" -p "tail0_0_fkc";
	rename -uid "D181FFE7-478A-55AA-4100-DFB965E0CCBD";
	setAttr -cb on ".ro";
createNode transform -n "tail0_1_fkc" -p "tail0_1_fkc_ofs";
	rename -uid "30707752-4CB9-9BD0-2D75-558A7C21DB2F";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_1_fkcShape1" -p "tail0_1_fkc";
	rename -uid "418E87B9-4D76-4BAA-D157-EC9A0258386A";
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
createNode transform -n "tail0_2_fkc_ofs" -p "tail0_1_fkc";
	rename -uid "72F335CB-4CAC-8D58-703D-0CBDCEE26B43";
	setAttr -cb on ".ro";
createNode transform -n "tail0_2_fkc" -p "tail0_2_fkc_ofs";
	rename -uid "3705604F-4D81-A4B9-238E-3EA59973AEEE";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_2_fkcShape1" -p "tail0_2_fkc";
	rename -uid "88ED2B66-47BA-8175-6201-1399832DCDAC";
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
createNode transform -n "tail0_3_fkc_ofs" -p "tail0_2_fkc";
	rename -uid "FBE84378-4448-EE5A-D0F5-FEAA6714222A";
	setAttr -cb on ".ro";
createNode transform -n "tail0_3_fkc" -p "tail0_3_fkc_ofs";
	rename -uid "524130D8-4991-9E7D-6285-E29F5ADAF3A0";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_3_fkcShape1" -p "tail0_3_fkc";
	rename -uid "B82639BC-4905-FBA8-651E-BE92CC0259C3";
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
createNode transform -n "tail0_4_fkc_ofs" -p "tail0_3_fkc";
	rename -uid "8163B18F-422A-214F-7DF5-428994530E85";
	setAttr -cb on ".ro";
createNode transform -n "tail0_4_fkc" -p "tail0_4_fkc_ofs";
	rename -uid "38400468-4A23-3D03-F67A-098FF4337A69";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_4_fkcShape1" -p "tail0_4_fkc";
	rename -uid "8B27F36E-4521-F7CC-9AD2-158087DF4ED7";
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
createNode transform -n "tail0_5_fkc_ofs" -p "tail0_4_fkc";
	rename -uid "76FB7EFB-4EB5-A07D-8758-8DA424F395D9";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "tail0_5_fkc" -p "tail0_5_fkc_ofs";
	rename -uid "4513D674-405D-1F37-5B54-C09942FB8CE7";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_5_fkcShape1" -p "tail0_5_fkc";
	rename -uid "20FF6AAD-45D4-509E-85C0-8DBB24C7B3A1";
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
createNode transform -n "tail0_6_fkc_ofs" -p "tail0_5_fkc";
	rename -uid "E3490D9C-43E3-57D3-94C0-6295A2FEA4A4";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "tail0_6_fkc" -p "tail0_6_fkc_ofs";
	rename -uid "783BA97A-4B4B-8DC7-FE2E-89B3B7168310";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_6_fkcShape1" -p "tail0_6_fkc";
	rename -uid "89623946-4387-618D-A3B9-9AB3C6EBAEE2";
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
createNode transform -n "tail0_6_ofs_ctl" -p "tail0_6_fkc";
	rename -uid "47454DA9-4807-3789-BB06-37BD56680034";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_6_ofs_ctlShape1" -p "tail0_6_ofs_ctl";
	rename -uid "4D0D601A-437E-108A-7937-468AE49F5542";
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
createNode joint -n "tail0_6_ofs_jnt" -p "tail0_6_ofs_ctl";
	rename -uid "02203CAE-46B0-598E-4DE0-A8BDC164B1AC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 3.1554436208840472e-30 0 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -76.216834420337761 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 76.216834420337761 0 0 ;
createNode transform -n "tail0_5_ofs_ctl" -p "tail0_5_fkc";
	rename -uid "0102F03F-4B1E-445D-75F9-D4ADF81DFF74";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_5_ofs_ctlShape1" -p "tail0_5_ofs_ctl";
	rename -uid "A5E5FD09-4F74-B83C-88E0-99A7C2860524";
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
createNode joint -n "tail0_5_ofs_jnt" -p "tail0_5_ofs_ctl";
	rename -uid "7A28FBD9-4F5E-94CB-C352-BDA0362EC65F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -3.1554436208840472e-30 0 0 ;
	setAttr ".r" -type "double3" -76.216834420337776 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 76.216834420337776 0 0 ;
createNode transform -n "tail0_4_ofs_ctl" -p "tail0_4_fkc";
	rename -uid "51ACB376-406D-83C7-5775-179C45EA8895";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_4_ofs_ctlShape1" -p "tail0_4_ofs_ctl";
	rename -uid "6F534F3E-4695-9B75-ACE7-AE874032263A";
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
createNode joint -n "tail0_4_ofs_jnt" -p "tail0_4_ofs_ctl";
	rename -uid "7E5E743A-4FF2-FCF8-D33B-DCBA2EECECFB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -1.5777218104420236e-30 2.8421709430404007e-14 0 ;
	setAttr ".r" -type "double3" -57.487509894868474 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 57.487509894868474 0 0 ;
createNode transform -n "tail0_3_ofs_ctl" -p "tail0_3_fkc";
	rename -uid "0FA54A21-45DC-C7C4-ECB3-E3AEB493F869";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_3_ofs_ctlShape1" -p "tail0_3_ofs_ctl";
	rename -uid "2D9E9C8E-4F57-2BDF-53CE-EB985F649AE6";
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
createNode joint -n "tail0_3_ofs_jnt" -p "tail0_3_ofs_ctl";
	rename -uid "ECC408AC-4E79-193E-E0AB-2B868C504B19";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" -39.240876928368451 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 39.240876928368451 0 0 ;
createNode transform -n "tail0_2_ofs_ctl" -p "tail0_2_fkc";
	rename -uid "4832E28D-40A7-17CF-899D-1487ED86FEE4";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_2_ofs_ctlShape1" -p "tail0_2_ofs_ctl";
	rename -uid "F3172358-49E2-8793-65B1-E78BF870C6A2";
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
createNode joint -n "tail0_2_ofs_jnt" -p "tail0_2_ofs_ctl";
	rename -uid "B3C7A503-42E8-64B3-6F7B-52987749AC6C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" -21.952379194781194 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 21.952379194781194 0 0 ;
createNode transform -n "tail0_1_ofs_ctl" -p "tail0_1_fkc";
	rename -uid "119644CD-4558-A9EE-FFFB-928E0269B557";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_1_ofs_ctlShape1" -p "tail0_1_ofs_ctl";
	rename -uid "A6D68F1C-4BD0-A419-F62F-678E5AAE0720";
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
createNode joint -n "tail0_1_ofs_jnt" -p "tail0_1_ofs_ctl";
	rename -uid "B3D77C7F-439A-26F5-9D57-90AC4F4C1793";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" -4.2853679819534145 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 4.2853679819534145 0 0 ;
createNode transform -n "tail0_0_ofs_ctl" -p "tail0_0_fkc";
	rename -uid "00BADE8C-4AA9-441E-06AF-3CA39FBFA16A";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_0_ofs_ctlShape1" -p "tail0_0_ofs_ctl";
	rename -uid "2A0674C3-45ED-0010-9B07-69BB06478002";
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
createNode joint -n "tail0_0_ofs_jnt" -p "tail0_0_ofs_ctl";
	rename -uid "C538BFB5-41A9-00F3-FE53-CEACA3946631";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
createNode transform -n "tail0_IK" -p "tail0_ctl_data";
	rename -uid "1E40DA5C-4CB2-59F7-2BBB-FEB403C25D59";
	setAttr -cb on ".ro";
createNode transform -n "tail0_0_ikc_ofs" -p "tail0_IK";
	rename -uid "7414F201-4FAE-B3AD-4622-CC952AE6A4A6";
	setAttr ".t" -type "double3" -1.6374675267209265e-14 -2.8421709430404007e-14 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
createNode transform -n "tail0_0_ikc" -p "tail0_0_ikc_ofs";
	rename -uid "8005D5F3-48ED-105E-714B-CC8E0812D6B8";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_0_ikcShape1" -p "tail0_0_ikc";
	rename -uid "DC3A29B8-4CA3-613A-8973-6EB98BD5C875";
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
createNode joint -n "tail0_0_ikj" -p "tail0_0_ikc";
	rename -uid "92CB72C6-4850-880C-6403-4AB290E72FA5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.6374675267209265e-14 150.04235771098135 -56.955020297575004 1;
	setAttr ".radi" 2.0100827703450177;
createNode transform -n "tail0_1_ikc_ofs" -p "tail0_0_ikc";
	rename -uid "4D4CAD65-4A19-6568-C5EE-3ABEDE5FA242";
	setAttr ".t" -type "double3" 9.2762446144344634e-15 -0.80494999986157723 -14.492182546185006 ;
	setAttr ".r" -type "double3" -12.221211041053662 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "tail0_1_ikc" -p "tail0_1_ikc_ofs";
	rename -uid "2603C556-4594-5913-F191-77B95D0843A0";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_1_ikcShape1" -p "tail0_1_ikc";
	rename -uid "5A6769C6-4F17-0979-9D6F-C5BDA5466ED7";
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
createNode joint -n "tail0_1_ikj" -p "tail0_1_ikc";
	rename -uid "3C3D46AB-4295-C8B9-158B-05B0762C1F0E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 3.1805546814635168e-15 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.97733759434167189 -0.21168662377777581 0
		 0 0.21168662377777581 0.97733759434167189 0 -7.098430652774802e-15 149.23740771111977 -71.44720284376001 1;
	setAttr ".radi" 2.0100827703450177;
createNode transform -n "tail0_2_ikc_ofs" -p "tail0_0_ikc";
	rename -uid "86CEA2FA-4E35-635D-DB16-A9914DA6C79E";
	setAttr ".t" -type "double3" 2.012596081671897e-14 -6.8205190709925034 -26.696114300261101 ;
	setAttr ".r" -type "double3" -39.240876928368451 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "tail0_2_ikc" -p "tail0_2_ikc_ofs";
	rename -uid "0E4D6B18-4100-5E3C-13BF-8D98184FC5D8";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_2_ikcShape1" -p "tail0_2_ikc";
	rename -uid "7CE270C7-45AC-EE54-A78C-72B44A75CE1F";
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
createNode joint -n "tail0_2_ikj" -p "tail0_2_ikc";
	rename -uid "51A53615-4A38-DD6C-505B-3DB5E6EE2B70";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 3.180554681463516e-15 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.77449337843993316 -0.63258201583091067 0
		 0 0.63258201583091067 0.77449337843993316 0 3.7512855495097043e-15 143.22183863998885 -83.651134597836105 1;
	setAttr ".radi" 2.0100827703450177;
createNode transform -n "tail0_3_ikc_ofs" -p "tail0_0_ikc";
	rename -uid "3A044EAE-42D9-3B0E-B70B-58BA82DCF69A";
	setAttr ".t" -type "double3" 3.0889169208510452e-14 -17.775623397901398 -34.949459709076208 ;
	setAttr ".r" -type "double3" -68.16246444299739 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "tail0_3_ikc" -p "tail0_3_ikc_ofs";
	rename -uid "DEABA58E-4EC8-2D23-D4E3-F5954511D0BE";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_3_ikcShape1" -p "tail0_3_ikc";
	rename -uid "3E390C5E-4941-9D6B-50BA-1A96C7BF1F9D";
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
createNode joint -n "tail0_3_ikj" -p "tail0_3_ikc";
	rename -uid "5D54CFB1-46B6-3414-EFCC-93B021E01857";
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
createNode transform -n "tail0_4_ikc_ofs" -p "tail0_0_ikc";
	rename -uid "D6342E73-424F-3434-7C95-7B8835542409";
	setAttr ".t" -type "double3" 4.0084991343334413e-14 -32.342323674021401 -38.460948560046248 ;
	setAttr ".r" -type "double3" -68.16246444299739 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "tail0_4_ikc" -p "tail0_4_ikc_ofs";
	rename -uid "8AC7A522-43D1-DC8D-42BC-3693BBA4E44B";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_4_ikcShape1" -p "tail0_4_ikc";
	rename -uid "7F04142D-456B-74EE-F355-03AA2FF385AB";
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
createNode joint -n "tail0_4_ikj" -p "tail0_4_ikc";
	rename -uid "3425EA2D-4DC9-24AB-3F1C-28A50215A87B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.37197602457338513 -0.92824233750814256 0
		 0 0.92824233750814256 0.37197602457338513 0 2.3710316076125154e-14 117.70003403695995 -95.415968857621252 1;
	setAttr ".radi" 2.0100827703450177;
createNode transform -n "tail0_anchorF1" -p "master_ctl";
	rename -uid "D3F40EB7-489B-93BA-4D4C-9FB2D3C6A4FC";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "tail0_anchorF1Shape" -p "tail0_anchorF1";
	rename -uid "06217032-478F-F6F8-A275-D0801DAB5337";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 7.5378103887938162 7.5378103887938162 7.5378103887938162 ;
createNode transform -n "head0_head_fkc_SPACE_3_ofs" -p "master_ctl";
	rename -uid "6685C19F-4F91-F4DE-E2A7-1080D5358D79";
	setAttr ".t" -type "double3" 2.8421709430404007e-14 188.1119987638576 119.72436898251898 ;
createNode transform -n "head0_head_fkc_SPACE_3" -p "head0_head_fkc_SPACE_3_ofs";
	rename -uid "8EC2AF79-47B7-3B2C-652C-12A29B0513B4";
createNode transform -n "lfLegQd0_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "E6BD525E-4611-BE49-D087-E8AC4B6725F7";
	setAttr ".t" -type "double3" 15.5233919035947 19.503400278299338 -71.732926704400384 ;
createNode transform -n "lfLegQd0_ikc_SPACE_1" -p "lfLegQd0_ikc_SPACE_1_ofs";
	rename -uid "7724F04D-43D4-2220-5C82-B58B5328F3FD";
createNode transform -n "lfLegQd0_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "787DDF7E-467F-1719-9192-BBBAB61658EB";
	setAttr ".t" -type "double3" 21.943537102018126 89.595871220417649 -4.1002163452172571 ;
	setAttr ".r" -type "double3" 11.984909460277844 3.747203849964734 6.7504238019645969e-06 ;
createNode transform -n "lfLegQd0_pvc_SPACE_2" -p "lfLegQd0_pvc_SPACE_2_ofs";
	rename -uid "C0049D6C-49B6-2399-7213-88A90262FC16";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 1.4210854715202004e-14 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd1_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "BF88D886-4A8D-4C47-0DD5-888D57E81804";
	setAttr ".t" -type "double3" 15.136936168869962 18.881415551028873 57.928570779357692 ;
createNode transform -n "lfLegQd1_ikc_SPACE_1" -p "lfLegQd1_ikc_SPACE_1_ofs";
	rename -uid "54692937-43D8-D273-CB87-04860F4E77AC";
createNode transform -n "lfLegQd1_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "9C0F7EAA-4B84-A728-1C12-6FB47581F6A2";
	setAttr ".t" -type "double3" 16.584956749010114 83.746168715153573 19.555965439770269 ;
	setAttr ".r" -type "double3" -174.98583209900039 0.70584409984867158 179.99999313973876 ;
createNode transform -n "lfLegQd1_pvc_SPACE_2" -p "lfLegQd1_pvc_SPACE_2_ofs";
	rename -uid "45EFB4BD-47F3-5201-68EE-7C9ADF019396";
	setAttr ".t" -type "double3" 0 -2.8421709430404007e-14 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_3_ofs" -p "master_ctl";
	rename -uid "A7B52F21-4085-A5A5-9C36-1BA6F4E4439F";
	setAttr ".t" -type "double3" 1.8932661725304283e-29 187.60280752394436 110.93484565675679 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_3" -p "neckQd0_fore_ctl_SPACE_3_ofs";
	rename -uid "3A68BCB2-454C-5351-1FF8-758BF7291DBB";
createNode transform -n "neckQd0_cog_ctl_SPACE_3_ofs" -p "master_ctl";
	rename -uid "8318DE18-436E-1B23-5BD3-8C9336BC5315";
	setAttr ".t" -type "double3" 2.7268917917981642e-14 139.02262821601735 78.567944539426577 ;
	setAttr ".r" -type "double3" -26.90976132496036 0 0 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_3" -p "neckQd0_cog_ctl_SPACE_3_ofs";
	rename -uid "82E77500-4EF9-FE9F-4BE8-6380D998DFBA";
	setAttr ".t" -type "double3" -3.1554436208840472e-30 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd0_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "1A862D01-4E28-AFCF-592C-16BCDEF83A2A";
	setAttr ".t" -type "double3" -15.523391903587317 19.503400278299296 -71.732926704400398 ;
createNode transform -n "rtLegQd0_ikc_SPACE_1" -p "rtLegQd0_ikc_SPACE_1_ofs";
	rename -uid "88A3204C-4B00-540B-735F-C6942BE0A304";
createNode transform -n "rtLegQd0_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "FFB373D0-42F9-FC61-F82B-D3A8FCA52B67";
	setAttr ".t" -type "double3" -21.94353710201954 89.595871220417663 -4.1002163452173299 ;
	setAttr ".r" -type "double3" 11.984909019107619 -3.7472052798902009 4.9802639351729992e-17 ;
createNode transform -n "rtLegQd0_pvc_SPACE_2" -p "rtLegQd0_pvc_SPACE_2_ofs";
	rename -uid "32C60D8B-41D1-CF21-C333-B2A575C96829";
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-14 0 ;
createNode transform -n "rtLegQd1_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "96A69CDF-43A9-0A79-57F1-3A890A1D739A";
	setAttr ".t" -type "double3" -15.136936168863452 18.881415551028823 57.928570779357699 ;
createNode transform -n "rtLegQd1_ikc_SPACE_1" -p "rtLegQd1_ikc_SPACE_1_ofs";
	rename -uid "A970AF9B-4D47-06F7-4E80-D4BB05F49972";
createNode transform -n "rtLegQd1_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "0189906F-4C42-55C7-9D37-F19BBC07BA02";
	setAttr ".t" -type "double3" -16.584956749008626 83.746168715153615 19.555965439770279 ;
	setAttr ".r" -type "double3" 5.0141679855110075 180.70584349798943 0 ;
createNode transform -n "rtLegQd1_pvc_SPACE_2" -p "rtLegQd1_pvc_SPACE_2_ofs";
	rename -uid "27FB4581-4F8E-BF1B-FFF3-45B3DF103688";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode nurbsCurve -n "master1_ctlShape" -p "master1_ctl";
	rename -uid "9D165CE8-4F14-7A74-B23C-AFA3FB13648F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -34.819715365768701 -4.4222149065632916e-16 
		6.4978821748994875 -3.9794849869108271e-14 -6.2539562965902618e-16 9.1893930984451941 
		34.819715365768687 -4.4222149065632916e-16 6.4978821748994733 49.242513708240907 
		-1.8448665648866561e-31 -2.9087147664541395e-15 34.819715365768687 4.4222149065632916e-16 
		-6.4978821748994733 -3.1846959252718214e-14 6.2539562965902618e-16 -9.1893930984452084 
		-34.819715365768701 4.4222149065632916e-16 -6.4978821748994733 -49.242513708240907 
		-6.6781055407277025e-32 -4.6382488196667846e-15 0 0 0 0 0 0 0 0 0;
createNode nurbsCurve -n "master1_ctlShapeOrig" -p "master1_ctl";
	rename -uid "301197E5-4A54-6CA5-4DAA-EFB9797022EF";
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
	rename -uid "AA5E2E65-4F21-526E-A725-338DDD32862A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".tw" yes;
	setAttr -s 45 ".cp[0:44]" -type "double3" -6.0579690290686129e-14 -6.4910565363977503e-16 
		9.9172494269961646 7.5630122598379295 -6.4249869401878633e-16 9.8163061273222354 
		13.62464405417704 -5.3022157890399914e-16 8.6591755153103378 20.089554967896902 -5.0266810290603449e-16 
		8.2091931037750641 26.145500475962912 -4.648817539080085e-16 7.5920951940049264 31.669198991735513 
		-4.1763175300868722e-16 6.8204441198794115 36.548203942464752 -3.6187997396863485e-16 
		5.9099484720098445 40.683192857242176 -2.9876136223424568e-16 4.8791433161342042 
		43.989989286086271 -2.2956083072139552e-16 3.7490128726294643 46.4012763897192 -1.556871026938248e-16 
		2.5425633382983506 52.60190568196893 -9.2377366120019798e-17 1.4113717483187784 53.142822994428897 
		1.9476785233519348e-31 -9.1273321952271726e-15 52.601905681968901 9.2377366120019798e-17 
		-1.411371748318782 46.4012763897192 1.556871026938248e-16 -2.5425633382983506 43.989989286086271 
		2.2956083072139552e-16 -3.7490128726294714 40.683192857242176 2.9876136223424568e-16 
		-4.8791433161342042 36.54820394246471 3.6187997396863485e-16 -5.9099484720098445 
		31.669198991735513 4.1763175300868722e-16 -6.8204441198793972 26.145500475962912 
		4.648817539080085e-16 -7.5920951940049264 20.089554967896866 5.0266810290603449e-16 
		-8.2091931037750641 13.624644054177033 5.3022157890399598e-16 -8.6591755153103378 
		7.5630122598379259 6.4249869401878633e-16 -9.816306127322207 -5.8496600409057534e-14 
		6.4910565363977503e-16 -9.9172494269961646 -7.5630122598380201 6.4249869401878633e-16 
		-9.816306127322207 -13.624644054177097 5.3022157890399598e-16 -8.6591755153103378 
		-20.08955496789693 5.0266810290603449e-16 -8.2091931037750356 -26.145500475962962 
		4.6488175390800771e-16 -7.5920951940049122 -31.669198991735549 4.1763175300868564e-16 
		-6.8204441198793972 -36.548203942464674 3.6187997396863406e-16 -5.9099484720098445 
		-40.683192857242162 2.9876136223424568e-16 -4.8791433161342042 -43.989989286086228 
		2.2956083072139552e-16 -3.7490128726294643 -46.401276389719115 1.5568710269382441e-16 
		-2.5425633382983506 -52.601905681968816 9.2377366120019404e-17 -1.4113717483187784 
		-53.142822994428869 7.6081056865591967e-32 -7.3139963418683547e-15 -52.601905681968816 
		-9.2377366120019798e-17 1.4113717483187784 -46.401276389719101 -1.556871026938248e-16 
		2.5425633382983506 -43.989989286086214 -2.2956083072139552e-16 3.7490128726294643 
		-40.683192857242148 -2.9876136223424568e-16 4.8791433161342042 -36.548203942464625 
		-3.6187997396863406e-16 5.9099484720098445 -31.669198991735499 -4.1763175300868564e-16 
		6.8204441198793972 -26.145500475962912 -4.6488175390800692e-16 7.5920951940049122 
		-20.089554967896923 -5.026681029060337e-16 8.2091931037750214 -13.624644054177093 
		-5.3022157890399598e-16 8.6591755153103378 -7.5630122598380005 -6.4249869401878633e-16 
		9.8163061273221501 -5.0254622796337137e-14 -6.4910565363977346e-16 9.9172494269961362;
createNode nurbsCurve -n "master2_ctlShapeOrig" -p "master2_ctl";
	rename -uid "05C2E756-4A2A-5145-89B0-2588705BFE68";
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
	rename -uid "78088171-489F-A6A9-DDA0-2FB7841F598F";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion49";
	rename -uid "E86A04FE-4EE2-63B8-31F0-E8BA6BD1CF78";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion80";
	rename -uid "60AAE7BD-4E55-8A85-1795-169697BB3920";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion107";
	rename -uid "114F76D8-43AB-8F2F-3472-9B8693196728";
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
connectAttr "lfLegQd1_ikc.gimbalCtl" "lfLegQd1_ikc_gmbShape.v";
connectAttr "lfLegQd1_ikc_gmbShapeOrig.ws" "lfLegQd1_ikc_gmbShape.cr";
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
connectAttr "neckQd0_fore_ctl.tangentCtl" "neckQd0_tangent1_ctlShape1.v";
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
connectAttr "rtLegQd0_ikc.gimbalCtl" "rtLegQd0_ikc_gmbShape.v";
connectAttr "rtLegQd0_ikc_gmbShapeOrig.ws" "rtLegQd0_ikc_gmbShape.cr";
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
connectAttr "rtLegQd1_ikc.gimbalCtl" "rtLegQd1_ikc_gmbShape.v";
connectAttr "rtLegQd1_ikc_gmbShapeOrig.ws" "rtLegQd1_ikc_gmbShape.cr";
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
connectAttr "spineQd0_base_ctl.tangentCtl" "spineQd0_tangent0_ctlShape1.v";
connectAttr "spineQd0_two_ikj.s" "spineQd0_two_ikj_end.is";
connectAttr "spineQd0_fore_ctl.rx" "spineQd0_two_ikj_end.rx";
connectAttr "spineQd0_fore_ctl.ry" "spineQd0_two_ikj_end.ry";
connectAttr "spineQd0_fore_ctl.rz" "spineQd0_two_ikj_end.rz";
connectAttr "spineQd0_two_ikj_end.tx" "effector30.tx";
connectAttr "spineQd0_two_ikj_end.ty" "effector30.ty";
connectAttr "spineQd0_two_ikj_end.tz" "effector30.tz";
connectAttr "spineQd0_two_ikj_end.opm" "effector30.opm";
connectAttr "spineQd0_fore_ctl.tangentCtl" "spineQd0_tangent1_ctlShape1.v";
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
connectAttr "master1_ctlShapeOrig.ws" "master1_ctlShape.cr";
connectAttr "master2_ctlShapeOrig.ws" "master2_ctlShape.cr";
connectAttr "lfLegQd0_smart_ctl.rx" "unitConversion22.i";
connectAttr "lfLegQd1_smart_ctl.rx" "unitConversion49.i";
connectAttr "rtLegQd0_smart_ctl.rx" "unitConversion80.i";
connectAttr "rtLegQd1_smart_ctl.rx" "unitConversion107.i";
// End of horse_ctl.ma
