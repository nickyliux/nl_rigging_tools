//Maya ASCII 2023 scene
//Name: ape_ctl.ma
//Last modified: Tue, Jun 10, 2025 03:32:37 PM
//Codeset: 1252
requires maya "2023";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 26100)";
fileInfo "UUID" "DFF75822-490E-E78E-C365-14937975C8DC";
createNode transform -n "CHR";
	rename -uid "D48EA367-4B29-AA48-3F85-7B9CA898D285";
	setAttr -cb on ".ro";
createNode transform -n "CTL" -p "CHR";
	rename -uid "3B034C22-49F1-3EF5-C844-C4ADF37940C2";
	setAttr -cb on ".ro";
createNode transform -n "master2_ctl" -p "CTL";
	rename -uid "7571B5C5-48FC-E137-29D3-0E8CCA7ADC07";
	addAttr -ci true -sn "proxy" -ln "proxy" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "debug" -ln "debug" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".ovc" 17;
	setAttr -cb on ".ro";
	setAttr -cb on ".proxy";
	setAttr -cb on ".debug";
createNode transform -n "master1_ctl" -p "master2_ctl";
	rename -uid "F5202D6D-4A04-C77B-39C3-808FF8E8DB69";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 18;
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "master_ctl" -p "master1_ctl";
	rename -uid "6B726C6A-443A-0749-41C0-8EB4BA5AE3E2";
	addAttr -ci true -sn "globalScale" -ln "globalScale" -dv 1 -min 0 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 18;
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".globalScale";
createNode nurbsCurve -n "master_ctlShape" -p "master_ctl";
	rename -uid "93E82E8D-4957-8D6C-4B84-62A0D7CB6F62";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -56.084323753867118 0 56.084323753867103 
		-6.9784688030230963e-14 0 79.315211289242399 56.084323753867075 0 56.084323753867089 
		79.315211289242484 0 -3.0351253886030885e-14 56.084323753867075 0 -56.084323753867082 
		-5.6982973087777362e-14 0 -79.315211289242484 -56.084323753867118 0 -56.084323753867082 
		-79.315211289242484 0 -4.5279155804353507e-14 0 0 0 0 0 0 0 0 0;
createNode nurbsCurve -n "master_ctlShapeOrig" -p "master_ctl";
	rename -uid "C713526B-450B-58D8-B838-FA84F1F01604";
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
	rename -uid "AD7F8EE7-443D-35B0-91C6-CD8BD8734C51";
	setAttr -cb on ".ro";
createNode transform -n "head0_head_fkc_ofs" -p "head0_ctl_data";
	rename -uid "C453AE0F-47F5-565D-9D62-3E953C29A0DD";
	setAttr ".t" -type "double3" -2.8421709430404007e-14 73.933509036026479 17.981065383389044 ;
	setAttr -cb on ".ro";
createNode transform -n "head0_head_fkc_ofs1" -p "head0_head_fkc_ofs";
	rename -uid "E9DB33D2-4778-D7EA-C6B9-229A86FE4965";
createNode transform -n "head0_head_fkc" -p "head0_head_fkc_ofs1";
	rename -uid "7CDAEA98-4A83-568B-32CF-6F9CED45D21E";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "neck:COG:master" -at "enum";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -k on ".space";
createNode nurbsCurve -n "head0_head_fkcShape1" -p "head0_head_fkc";
	rename -uid "0BA87A39-46CA-8DE5-E4BD-E58A8F45EF42";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.2060140410701838 10.930801827807031 -2.2060140410701869
		1.221393893977443e-16 10.930801827807031 -1.9946876027076428
		-2.2060140410701838 10.930801827807031 -2.2060140410701869
		-1.9946876027076477 10.930801827807031 0
		-2.2060140410701838 10.930801827807031 2.2060140410701834
		-1.9980922139254276e-16 10.930801827807031 1.9946876027076446
		2.2060140410701838 10.930801827807031 2.2060140410701852
		1.9946876027076477 10.930801827807031 0
		2.2060140410701838 10.930801827807031 -2.2060140410701869
		1.221393893977443e-16 10.930801827807031 -1.9946876027076428
		-2.2060140410701838 10.930801827807031 -2.2060140410701869
		;
createNode transform -n "head0_jaw_fkc_ofs" -p "head0_head_fkc";
	rename -uid "5FED3FD0-4826-3A71-4765-2DB15A6B30A6";
	setAttr ".t" -type "double3" -3.3683803054210412e-14 -1.3417434158478443 1.3417434158478478 ;
	setAttr -cb on ".ro";
createNode transform -n "head0_jaw_fkc" -p "head0_jaw_fkc_ofs";
	rename -uid "43A0734A-4BEF-2B3F-5A85-56B076611DC3";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "head0_jaw_fkcShape1" -p "head0_jaw_fkc";
	rename -uid "A30A9617-49EC-64E9-2C29-F580FB5B94A1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.6698442745663722 -8.6327206170054609 6.1941493829438592
		3.3828386046449411e-14 -8.6327206170054609 5.5024772373674189
		-1.6698442745663047 -8.6327206170054609 6.1941493829438592
		-2.3615164201427445 -8.6327206170054609 7.8639936575101963
		-1.6698442745663047 -8.6327206170054609 9.5338379320765334
		3.3447230155275599e-14 -8.6327206170054609 10.225510077652974
		1.6698442745663722 -8.6327206170054609 9.5338379320765334
		2.361516420142812 -8.6327206170054609 7.8639936575101963
		1.6698442745663722 -8.6327206170054609 6.1941493829438592
		3.3828386046449411e-14 -8.6327206170054609 5.5024772373674189
		-1.6698442745663047 -8.6327206170054609 6.1941493829438592
		;
createNode transform -n "lfArmBp0_ikc_SPACE_3_ofs" -p "head0_head_fkc";
	rename -uid "C16F7737-42BF-4601-F5D5-7EAFA0AB4F05";
	setAttr ".t" -type "double3" 9.7238019305171566 -58.945934199387366 3.74136458680427 ;
	setAttr ".r" -type "double3" 12.690821861900876 -13.480709470976148 -93.893558422799202 ;
createNode transform -n "lfArmBp0_ikc_SPACE_3" -p "lfArmBp0_ikc_SPACE_3_ofs";
	rename -uid "54A928FE-4E29-5AA3-BA96-DABBB5E63D06";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 0 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "rtArmBp0_ikc_SPACE_3_ofs" -p "head0_head_fkc";
	rename -uid "E97F8200-4E0C-A774-9C05-7ABCB5C68784";
	setAttr ".t" -type "double3" -9.7238018710278897 -58.945933438371924 3.741364467883642 ;
	setAttr ".r" -type "double3" -167.30917788057499 13.480709559118871 93.893558589383062 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtArmBp0_ikc_SPACE_3" -p "rtArmBp0_ikc_SPACE_3_ofs";
	rename -uid "B78C6083-4017-9F8E-0F36-BDB56CD6D91E";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 0 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999933 ;
createNode transform -n "head0_anchorF1" -p "master_ctl";
	rename -uid "C29B2D4D-4D50-4DF7-04E0-99B838CF96A0";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "head0_anchorF1Shape" -p "head0_anchorF1";
	rename -uid "1A5B831E-4E8E-E344-34A0-15830AF7A3FF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 3.1964385574259464 3.1964385574259464 3.1964385574259464 ;
createNode transform -n "lfArmBp0_ctl_data" -p "master_ctl";
	rename -uid "D35BB5B7-4C02-B232-ADE1-218FA9A734E2";
	setAttr -cb on ".ro";
createNode transform -n "lfArmBp0_FK" -p "lfArmBp0_ctl_data";
	rename -uid "79D99038-4616-FAA9-4AA4-18B82A22002D";
	setAttr -cb on ".ro";
createNode joint -n "lfArmBp0_clavicle_fk" -p "lfArmBp0_FK";
	rename -uid "5D41B5F7-4F06-A25B-A187-8EB8903A8206";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.1137443400138403 -7.0168606226744599 9.04231130782299 ;
	setAttr ".radi" 1.109933623684531;
createNode joint -n "lfArmBp0_upr_fk" -p "lfArmBp0_clavicle_fk";
	rename -uid "8D6F61F5-48ED-9DB3-FF87-1B991F7FD97B";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 5.2528462629847068 -5.0799175820391014 -100.31206222910023 ;
	setAttr ".radi" 1.109933623684531;
createNode joint -n "lfArmBp0_lwr_fk" -p "lfArmBp0_upr_fk";
	rename -uid "25C7CD0F-40D1-E8C3-0670-26BAD89F3619";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -8.8146403628748438 0 ;
	setAttr ".pa" -type "double3" 0 -45 0 ;
	setAttr ".radi" 1.109933623684531;
createNode joint -n "lfArmBp0_palm_fk" -p "lfArmBp0_lwr_fk";
	rename -uid "9CCF9A3E-479F-ECB3-CF8B-2896E1550C45";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".radi" 1.109933623684531;
createNode joint -n "lfArmBp0_ball_fk" -p "lfArmBp0_palm_fk";
	rename -uid "8C73D306-4AAB-5F82-9749-7BB3A8EE5D09";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 8.5523331894636119 -0.35556014072068365 0.61956145912590799 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 1.109933623684531;
createNode transform -n "lfArmBp0_clavicle_fkc_ofs" -p "lfArmBp0_FK";
	rename -uid "54143A3C-4DC0-CE1C-2856-6CAF2A23DA55";
	setAttr -cb on ".ro";
createNode transform -n "lfArmBp0_clavicle_fkc" -p "lfArmBp0_clavicle_fkc_ofs";
	rename -uid "0010E274-4D86-942D-E7C1-278F9121DA7D";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfArmBp0_clavicle_fkcShape1" -p "lfArmBp0_clavicle_fkc";
	rename -uid "0D28ADE8-4A67-D8D1-B9AD-A08FAC56F807";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 25 0 no 3
		26 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		26
		10.58183639898726 10.581836398987257 -1.0311696089830397e-16
		10.314213212325754 10.930610141642656 -9.9603332593802425e-17
		10.145978171763815 11.336765558830486 -8.930190691203721e-17
		10.088596310110567 11.772623973174749 -7.2914697056222664e-17
		10.145977937862792 12.208482340738808 -5.1558480449151986e-17
		10.314213118765345 12.614637711146433 -2.6688631865117457e-17
		10.581836492547671 12.963411266681016 3.1577059243900385e-32
		10.930610048082251 13.231034640463339 2.6688631865117457e-17
		11.336765418489875 13.399269821365891 5.1558480449151986e-17
		11.772623786053936 13.456651449118116 7.2914697056222664e-17
		12.208482948881468 13.399270335948136 8.930190691203721e-17
		12.614637617586029 13.231034546902931 9.9603332593802425e-17
		12.963411360241428 12.963411360241423 1.0311696089830397e-16
		13.231034546902935 12.614637617586025 9.9603332593802425e-17
		13.399270335948142 12.208482948881462 8.930190691203721e-17
		13.456651449118121 11.772623786053931 7.2914697056222664e-17
		13.399269821365895 11.336765418489872 5.1558480449151986e-17
		13.231034640463342 10.930610048082247 2.6688631865117457e-17
		12.963411266681019 10.581836492547668 -7.7148768042421136e-32
		12.614637711146436 10.314213118765341 -2.6688631865117457e-17
		12.208482340738811 10.145977937862789 -5.1558480449151986e-17
		11.772623973174753 10.088596310110564 -7.2914697056222664e-17
		11.336765558830489 10.145978171763812 -8.930190691203721e-17
		10.93061014164266 10.31421321232575 -9.9603332593802425e-17
		10.58183639898726 10.581836398987257 -1.0311696089830397e-16
		0 0 0
		;
createNode transform -n "lfArmBp0_upr_fkc_ofs" -p "lfArmBp0_FK";
	rename -uid "394C8298-4599-E28C-5C16-59948BED62C4";
	setAttr -cb on ".ro";
createNode transform -n "lfArmBp0_upr_fkc_SPACE_1_ofs" -p "lfArmBp0_upr_fkc_ofs";
	rename -uid "94E0C3BC-4F2F-D74F-9297-10BA6E876EA8";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -1.7763568394002505e-15 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 1 ;
createNode transform -n "lfArmBp0_upr_fkc_SPACE_1" -p "lfArmBp0_upr_fkc_SPACE_1_ofs";
	rename -uid "F01BA184-4621-EE93-AA9F-AE96FD7F5B1E";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "lfArmBp0_upr_fkc_ofs1" -p "lfArmBp0_upr_fkc_ofs";
	rename -uid "BD066905-4818-0FE0-3FFE-CD83CB8B8945";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 1 ;
createNode transform -n "lfArmBp0_upr_fkc" -p "lfArmBp0_upr_fkc_ofs1";
	rename -uid "2D3CE050-40A8-EA64-F9CD-479C3A3AAC0F";
	addAttr -ci true -sn "isolate" -ln "isolate" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 4;
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000002 1.0000000000000004 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".isolate";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfArmBp0_upr_fkcShape1" -p "lfArmBp0_upr_fkc";
	rename -uid "45A6B48B-4FB3-B1C0-3582-2187D3330D56";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 20 0 no 3
		25 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 20 20
		23
		-1.9632216639954834e-16 -7.3958043492060694 4.3386038211883085
		-1.6457092501546652e-16 -7.7224741593942099 3.7501698132690597
		-1.0106844224730208e-16 -8.3758137797704393 2.5733017974305379
		9.0860837883452732e-20 -8.4040196446031796 -0.24878666297280583
		1.0070499894519265e-16 -8.2770876875426094 -1.578155146654336
		1.9759421799117983e-16 -7.7907087163722357 -3.2455846828299095
		2.8685112748728027e-16 -7.002560010076774 -4.6766126657548286
		3.6509494653747144e-16 -5.9961837945834091 -5.9759146329312216
		4.2930556140319139e-16 -4.101126619031632 -7.5976260199835002
		4.7701896352324075e-16 -2.5014690877750074 -8.2742603470881022
		5.0640057740949803e-16 0.65144519964277348 -9.4728380535025902
		5.1632157078357651e-16 3.0625162565652328e-15 -11.536065392720964
		5.0640057740949527e-16 -0.65144519964280967 -9.4728380535025583
		4.770189635232585e-16 2.5014690877751642 -8.2742603470884095
		4.2930556140316783e-16 4.1011266190312528 -7.5976260199830108
		3.650949465375522e-16 5.9961837945847822 -5.9759146329329598
		2.8685112748698174e-16 7.0025600100717247 -4.6766126657484204
		1.9759421799227179e-16 7.7907087163906015 -3.2455846828534729
		1.0070499894112802e-16 8.2770876874742996 -1.5781551465665533
		9.0860845045706369e-20 8.4040196445558628 -0.24878666312354764
		-1.0106844225378915e-16 8.3758137798742762 2.5733017975807018
		-1.6457092501761836e-16 7.7224741594284181 3.7501698133188821
		-1.96322166399533e-16 7.3958043492054868 4.3386038211879718
		;
createNode transform -n "lfArmBp0_lwr_fkc_ofs" -p "lfArmBp0_FK";
	rename -uid "AB88EE16-401C-DC92-2614-34B5779D2F4F";
	setAttr -cb on ".ro";
createNode transform -n "lfArmBp0_lwr_fkc" -p "lfArmBp0_lwr_fkc_ofs";
	rename -uid "1BA2FE1A-4E1D-F751-306A-83BA6D5B517D";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfArmBp0_lwr_fkcShape1" -p "lfArmBp0_lwr_fkc";
	rename -uid "4E618A19-4A23-0DAC-34E4-C69B2F450737";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 20 0 no 3
		25 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 20 20
		23
		-1.9632216639954834e-16 -7.3958043492060694 4.3386038211883085
		-1.6457092501546652e-16 -7.7224741593942099 3.7501698132690597
		-1.0106844224730208e-16 -8.3758137797704393 2.5733017974305379
		9.0860837883452732e-20 -8.4040196446031796 -0.24878666297280583
		1.0070499894519265e-16 -8.2770876875426094 -1.578155146654336
		1.9759421799117983e-16 -7.7907087163722357 -3.2455846828299095
		2.8685112748728027e-16 -7.002560010076774 -4.6766126657548286
		3.6509494653747144e-16 -5.9961837945834091 -5.9759146329312216
		4.2930556140319139e-16 -4.101126619031632 -7.5976260199835002
		4.7701896352324075e-16 -2.5014690877750074 -8.2742603470881022
		5.0640057740949803e-16 0.65144519964277348 -9.4728380535025902
		5.1632157078357651e-16 3.0625162565652328e-15 -11.536065392720964
		5.0640057740949527e-16 -0.65144519964280967 -9.4728380535025583
		4.770189635232585e-16 2.5014690877751642 -8.2742603470884095
		4.2930556140316783e-16 4.1011266190312528 -7.5976260199830108
		3.650949465375522e-16 5.9961837945847822 -5.9759146329329598
		2.8685112748698174e-16 7.0025600100717247 -4.6766126657484204
		1.9759421799227179e-16 7.7907087163906015 -3.2455846828534729
		1.0070499894112802e-16 8.2770876874742996 -1.5781551465665533
		9.0860845045706369e-20 8.4040196445558628 -0.24878666312354764
		-1.0106844225378915e-16 8.3758137798742762 2.5733017975807018
		-1.6457092501761836e-16 7.7224741594284181 3.7501698133188821
		-1.96322166399533e-16 7.3958043492054868 4.3386038211879718
		;
createNode transform -n "lfArmBp0_palm_fkc_ofs" -p "lfArmBp0_FK";
	rename -uid "7FE1AEC1-49F6-22AA-1EC4-B78681A7F734";
	setAttr -cb on ".ro";
createNode transform -n "lfArmBp0_palm_fkc" -p "lfArmBp0_palm_fkc_ofs";
	rename -uid "701E407D-403C-CC26-E7BC-C9B6CF000ED9";
	addAttr -uap -ci true -k true -sn "palmRoll" -ln "palmRoll" -at "double";
	addAttr -uap -ci true -k true -sn "palmBank" -ln "palmBank" -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 5;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -av -k on ".palmRoll";
	setAttr -av -k on ".palmBank";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfArmBp0_palm_fkcShape1" -p "lfArmBp0_palm_fkc";
	rename -uid "CEC985DF-4AE6-7CF1-ABAA-6786E7AD863E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 20 0 no 3
		25 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 20 20
		23
		-1.9632216639954834e-16 -7.3958043492060694 4.3386038211883085
		-1.6457092501546652e-16 -7.7224741593942099 3.7501698132690597
		-1.0106844224730208e-16 -8.3758137797704393 2.5733017974305379
		9.0860837883452732e-20 -8.4040196446031796 -0.24878666297280583
		1.0070499894519265e-16 -8.2770876875426094 -1.578155146654336
		1.9759421799117983e-16 -7.7907087163722357 -3.2455846828299095
		2.8685112748728027e-16 -7.002560010076774 -4.6766126657548286
		3.6509494653747144e-16 -5.9961837945834091 -5.9759146329312216
		4.2930556140319139e-16 -4.101126619031632 -7.5976260199835002
		4.7701896352324075e-16 -2.5014690877750074 -8.2742603470881022
		5.0640057740949803e-16 0.65144519964277348 -9.4728380535025902
		5.1632157078357651e-16 3.0625162565652328e-15 -11.536065392720964
		5.0640057740949527e-16 -0.65144519964280967 -9.4728380535025583
		4.770189635232585e-16 2.5014690877751642 -8.2742603470884095
		4.2930556140316783e-16 4.1011266190312528 -7.5976260199830108
		3.650949465375522e-16 5.9961837945847822 -5.9759146329329598
		2.8685112748698174e-16 7.0025600100717247 -4.6766126657484204
		1.9759421799227179e-16 7.7907087163906015 -3.2455846828534729
		1.0070499894112802e-16 8.2770876874742996 -1.5781551465665533
		9.0860845045706369e-20 8.4040196445558628 -0.24878666312354764
		-1.0106844225378915e-16 8.3758137798742762 2.5733017975807018
		-1.6457092501761836e-16 7.7224741594284181 3.7501698133188821
		-1.96322166399533e-16 7.3958043492054868 4.3386038211879718
		;
createNode transform -n "lfArmBp0_ikc_matcher" -p "lfArmBp0_palm_fkc";
	rename -uid "9B917FA0-4B6E-12B5-1966-32866CF06B62";
	setAttr ".t" -type "double3" 8.5265128291212022e-14 1.0658141036401503e-14 -1.7763568394002505e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "lfArmBp0_IK" -p "lfArmBp0_ctl_data";
	rename -uid "BC6410D0-418A-C113-713E-C783170E425E";
	setAttr -cb on ".ro";
createNode joint -n "lfArmBp0_clavicle_ik" -p "lfArmBp0_IK";
	rename -uid "4274BD41-4526-DAB0-A9DB-9FB75063975B";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.1137443400138403 -7.0168606226744599 9.04231130782299 ;
	setAttr ".radi" 1.6649004355267965;
createNode joint -n "lfArmBp0_upr_ik" -p "lfArmBp0_clavicle_ik";
	rename -uid "734A5B74-4C40-0F7E-4E35-8FA0F16A8AAC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 11.010418324255827 2.1316282072803006e-14 -1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" 8.519295784479469e-07 7.7608916721418102e-05 5.60853085963582e-08 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 5.2528462629847068 -5.0799175820391014 -100.31206222910023 ;
	setAttr ".radi" 1.6649004355267965;
createNode joint -n "lfArmBp0_lwr_ik" -p "lfArmBp0_upr_ik";
	rename -uid "401B2BF4-4342-7C14-CE7B-9D9680D5D116";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 26.301240952582251 -1.7763568394002505e-15 -2.1316282072803006e-14 ;
	setAttr ".r" -type "double3" 3.2569301525317888e-14 -0.00018174959335637706 8.717678565684607e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -8.8146403628748438 0 ;
	setAttr ".pa" -type "double3" 0 -45 0 ;
	setAttr ".radi" 1.6649004355267965;
createNode joint -n "lfArmBp0_palm_ik" -p "lfArmBp0_lwr_ik";
	rename -uid "21291886-450A-457C-923B-CDB6B53CF112";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 19.634620621812179 -1.4210854715202004e-14 0 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 1.6649004355267965;
createNode joint -n "lfArmBp0_ball_ik" -p "lfArmBp0_palm_ik";
	rename -uid "3913DA40-4BDC-D07B-0E68-0989A315833A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 8.5523331894636119 -0.35556014072068365 0.61956145912590799 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 1.6649004355267965;
createNode ikEffector -n "effector1" -p "lfArmBp0_lwr_ik";
	rename -uid "795752D6-4CAE-80BB-2D03-E1816016377D";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "lfArmBp0_softJ" -p "lfArmBp0_clavicle_ik";
	rename -uid "97E780A9-4537-8F7C-FB3F-AF8D11C14B94";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 11.010418324255831 2.1316282072803006e-14 -1.7763568394002505e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 100.85906713042716 -8.8304370763728652 -100.66077218391409 ;
createNode joint -n "lfArmBp0_softJ_end" -p "lfArmBp0_softJ";
	rename -uid "AC3BD226-417C-1E7A-A369-6489FFDE95EE";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 45.802890777587891 7.1054273576010019e-15 3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 3.46871614338172e-14 1.2910456107512321e-30 -2.1325315072572948e-15 ;
createNode ikEffector -n "effector2" -p "lfArmBp0_softJ";
	rename -uid "FD663B2D-47F8-A054-712D-4FA01F95759C";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "lfArmBp0_pvChainJ" -p "lfArmBp0_clavicle_ik";
	rename -uid "7483F323-4446-A2AD-49AD-DBB0E41FDD83";
	setAttr ".ove" yes;
	setAttr ".ovc" 5;
	setAttr ".t" -type "double3" 11.010418324255832 2.1316282072803006e-14 0 ;
	setAttr ".r" -type "double3" 2.5444437451708131e-14 1.9736049046693793e-30 -1.9736049046693789e-30 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 100.85906713017036 -8.8304370768000329 -100.66077218395417 ;
	setAttr ".radi" 0.55496681184226548;
createNode joint -n "lfArmBp0_pvChainJ_end" -p "lfArmBp0_pvChainJ";
	rename -uid "4E9CB006-4549-ED18-5BE1-C0958621DE0C";
	setAttr ".ove" yes;
	setAttr ".ovc" 5;
	setAttr ".t" -type "double3" 45.802886266747819 3.5527136788005009e-15 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 3.46871614338172e-14 1.2910456107512321e-30 -2.1325315072572948e-15 ;
	setAttr ".radi" 0.55496681184226548;
createNode ikEffector -n "effector4" -p "lfArmBp0_pvChainJ";
	rename -uid "82BE7723-4325-50E5-B14B-169BEB52EBCB";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfArmBp0_pvc_SPACE_1_ofs" -p "lfArmBp0_pvChainJ";
	rename -uid "86DF97E7-4029-403C-D6B6-C3AD65AB09F7";
	setAttr ".t" -type "double3" 27.184441982412476 -24.373773771538296 2.374396542019948 ;
	setAttr ".r" -type "double3" 168.68926705424769 84.330314529592158 -98.988835894729263 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "lfArmBp0_pvc_SPACE_1" -p "lfArmBp0_pvc_SPACE_1_ofs";
	rename -uid "07612AD1-49D9-798F-8FEF-88A7105FF2F6";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 0 1.1102230246251565e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "lfArmBp0_ikCstG" -p "lfArmBp0_IK";
	rename -uid "AFFAD992-4FAA-3CE5-3E57-BA8E92FF90A5";
	setAttr -cb on ".ro";
createNode transform -n "lfArmBp0_dist_loc1" -p "lfArmBp0_ikCstG";
	rename -uid "448FAC30-489A-17A9-F570-D8B19EA2D076";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -1.7763568394002505e-15 0 ;
	setAttr ".r" -type "double3" -165.70015985926176 -11.755758482761712 -93.86736376341895 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 1 ;
createNode locator -n "lfArmBp0_dist_loc1Shape" -p "lfArmBp0_dist_loc1";
	rename -uid "F5D08076-487A-4BC4-D5A1-3E9BBAC82628";
	setAttr -k off ".v";
createNode transform -n "lfArmBp0_softJ_posGrp" -p "lfArmBp0_ikCstG";
	rename -uid "45C5BE48-4EA5-FC79-FABC-0A905C4BF48A";
	setAttr ".t" -type "double3" -4.493491646329062e-06 5.3290705182007514e-15 -3.9710268850967623e-07 ;
	setAttr ".r" -type "double3" -165.70015985926176 -11.755758482761712 -93.86736376341895 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 1 ;
createNode transform -n "lfArmBp0_1_ikh_ofs" -p "lfArmBp0_ikCstG";
	rename -uid "87E4C46D-45DB-4C95-6F76-8E8EFD6FE142";
	setAttr ".r" -type "double3" -165.70015985926176 -11.755758482761705 -93.86736376341895 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 1 ;
createNode ikHandle -n "lfArmBp0_1_ikh" -p "lfArmBp0_1_ikh_ofs";
	rename -uid "F290D404-4CF5-511D-BB75-CF937FBF8E74";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "lfArmBp0_line_8" -p "lfArmBp0_IK";
	rename -uid "4474FFEA-4020-F009-5EEE-ACA132D545AF";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape1" -p "lfArmBp0_line_8";
	rename -uid "827B10FA-46A0-2B72-2701-AF8C5FEE1C73";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		11.02032839492788 34.037158553135619 17.145212398302235
		15.72702577783385 29.569160335108037 -4.6916561623903519
		;
createNode transform -n "lfArmBp0_ikc_ofs" -p "lfArmBp0_IK";
	rename -uid "3EFE8EB6-4D43-7453-5107-79BA5FA7F05C";
	setAttr ".t" -type "double3" 9.7238019305171282 14.987574836639116 21.722429970193311 ;
	setAttr ".r" -type "double3" 12.690821861900876 -13.480709470976148 -93.893558422799202 ;
	setAttr -cb on ".ro";
createNode transform -n "lfArmBp0_ikc_ofs1" -p "lfArmBp0_ikc_ofs";
	rename -uid "9BA3BCCD-4262-0741-182A-3B8C643A612A";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "lfArmBp0_ikc" -p "lfArmBp0_ikc_ofs1";
	rename -uid "FAAAB30E-4ABE-54CE-5B50-C593FDBD30AD";
	addAttr -ci true -sn "stretchy" -ln "stretchy" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "squashy" -ln "squashy" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "limbScale1" -ln "limbScale1" -dv 1 -at "double";
	addAttr -ci true -sn "limbScale2" -ln "limbScale2" -dv 1 -at "double";
	addAttr -ci true -sn "softIK" -ln "softIK" -min 0 -at "double";
	addAttr -ci true -sn "palmAlign" -ln "palmAlign" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "_______________" -ln "_______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "master:COG:head" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 0 3.5527136788005009e-15 ;
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".stretchy";
	setAttr -k on ".squashy";
	setAttr -k on ".limbScale1";
	setAttr -k on ".limbScale2";
	setAttr -k on ".softIK";
	setAttr -k on ".palmAlign";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on "._______________";
	setAttr -k on ".space";
createNode nurbsCurve -n "lfArmBp0_ikcShape1" -p "lfArmBp0_ikc";
	rename -uid "E674005C-497D-E926-5991-9ABF72FAA20C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		4.1622510888169915 -4.1622510888169915 -4.1622510888169915
		4.1622510888169915 1.4194991777527359 -4.1622510888169915
		-4.1622510888169915 4.1622510888169915 -4.1622510888169915
		-4.1622510888169915 -4.1622510888169915 -4.1622510888169915
		4.1622510888169915 -4.1622510888169915 -4.1622510888169915
		4.1622510888169915 -4.1622510888169915 4.1622510888169915
		-4.1622510888169915 -4.1622510888169915 4.1622510888169915
		-4.1622510888169915 -4.1622510888169915 -4.1622510888169915
		-4.1622510888169915 4.1622510888169915 -4.1622510888169915
		-4.1622510888169915 4.1622510888169915 4.1622510888169915
		-4.1622510888169915 -4.1622510888169915 4.1622510888169915
		-4.1622510888169915 4.1622510888169915 4.1622510888169915
		4.1622510888169915 1.4194991777527359 4.1622510888169915
		4.1622510888169915 -4.1622510888169915 4.1622510888169915
		4.1622510888169915 -4.1622510888169915 -4.1622510888169915
		4.1622510888169915 1.4194991777527359 -4.1622510888169915
		4.1622510888169915 1.4194991777527359 4.1622510888169915
		;
createNode transform -n "lfArmBp0_pvc_ofs" -p "lfArmBp0_IK";
	rename -uid "FF02D641-46F2-146B-C3B8-2284B5352786";
	setAttr ".t" -type "double3" 15.72702577783385 29.569160335108037 -4.6916561623903501 ;
	setAttr ".r" -type "double3" -11.310732945752255 -12.163396436862786 0 ;
	setAttr -cb on ".ro";
createNode transform -n "lfArmBp0_pvc_ofs1" -p "lfArmBp0_pvc_ofs";
	rename -uid "60B173D3-4EEC-CBD5-E24F-458C55788D92";
createNode transform -n "lfArmBp0_pvc" -p "lfArmBp0_pvc_ofs1";
	rename -uid "536F687E-4405-3320-C9AF-0EB0043014BE";
	addAttr -ci true -sn "fkPin" -ln "fkPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "arm:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 7.1054273576010019e-15 9.5479180117763462e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".fkPin";
	setAttr -k on ".pvPin";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -k on ".space";
createNode nurbsCurve -n "lfArmBp0_pvcShape1" -p "lfArmBp0_pvc";
	rename -uid "0A47F5F4-4924-B29A-54F6-CBB40545EBA2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.3735428593096071
		-1.3735428593096071 0 0
		0 0 -1.3735428593096071
		1.3735428593096071 0 0
		0 0 1.3735428593096071
		0 1.3735428593096071 0
		1.3735428593096071 0 0
		0 0 -1.3735428593096071
		0 1.3735428593096071 0
		-1.3735428593096071 0 0
		0 -1.3735428593096071 0
		1.3735428593096071 0 0
		0 0 1.3735428593096071
		0 -1.3735428593096071 0
		0 0 -1.3735428593096071
		;
createNode transform -n "lfArmBp0_pin_fkc_ofs" -p "lfArmBp0_pvc";
	rename -uid "0D46903A-4943-34B0-90C8-C1B2F688C84B";
	setAttr ".t" -type "double3" -0.30299904792153853 -19.610751675825668 23.700039846290547 ;
	setAttr ".r" -type "double3" 1.9900286365617045e-16 -2.6833116348076533 -90.885187150005805 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
createNode transform -n "lfArmBp0_pin_fkc" -p "lfArmBp0_pin_fkc_ofs";
	rename -uid "4F8457AB-4CBF-E1F3-4B56-E1B86A1FEE8B";
	addAttr -uap -ci true -k true -sn "palmRoll" -ln "palmRoll" -at "double";
	addAttr -uap -ci true -k true -sn "palmBank" -ln "palmBank" -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -cb on ".ro";
	setAttr -av -k on ".palmRoll";
	setAttr -av -k on ".palmBank";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfArmBp0_pin_fkcShape1" -p "lfArmBp0_pin_fkc";
	rename -uid "DDA58165-47AA-F688-279B-F3B15907DE76";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.0895571929546806e-15 -5.7451342670475674 -5.7451342670475709
		2.138400845844465e-15 -3.8708019494648235e-15 -5.1947756836630399
		2.0895571929546806e-15 5.7451342670475603 -5.7451342670475665
		1.9716381837123204e-15 5.1947756836630514 -2.0171173098433559e-15
		1.8537191744699602e-15 5.7451342670475603 5.7451342670475638
		1.8048755215801758e-15 -3.0323494456982024e-15 5.1947756836630452
		1.8537191744699602e-15 -5.7451342670475674 5.7451342670475665
		1.9716381837123204e-15 -5.1947756836630585 -1.0394094952525954e-15
		2.0895571929546806e-15 -5.7451342670475674 -5.7451342670475709
		2.138400845844465e-15 -3.8708019494648235e-15 -5.1947756836630399
		2.0895571929546806e-15 5.7451342670475603 -5.7451342670475665
		;
createNode transform -n "lfArmBp0_palm_ikc_ofs" -p "lfArmBp0_IK";
	rename -uid "0F59C4F5-4F75-A1CF-3B02-A6AFA43FCBC7";
	setAttr -cb on ".ro";
createNode transform -n "lfArmBp0_palm_ikc" -p "lfArmBp0_palm_ikc_ofs";
	rename -uid "490D9E11-4C5E-B057-5090-B7B181FE216D";
	addAttr -ci true -sn "palmRoll" -ln "palmRoll" -at "double";
	addAttr -ci true -sn "palmBank" -ln "palmBank" -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 0 3.5527136788005009e-15 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".palmRoll";
	setAttr -k on ".palmBank";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfArmBp0_palm_ikcShape1" -p "lfArmBp0_palm_ikc";
	rename -uid "BE64D16B-42F2-273A-9850-868DAACB5D39";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.8847676828958582 -6.8941611204570759 -6.8941611204570838
		3.8847676828958582 -3.8170592479718701e-16 -6.233730820395647
		3.8847676828958582 6.8941611204570759 -6.8941611204570794
		3.8847676828958582 6.2337308203956647 -2.4205407718120269e-15
		3.8847676828958582 6.8941611204570759 6.8941611204570759
		3.8847676828958582 6.2443707972275767e-16 6.2337308203956532
		3.8847676828958582 -6.8941611204570759 6.8941611204570794
		3.8847676828958582 -6.2337308203956647 -1.2472913943031145e-15
		3.8847676828958582 -6.8941611204570759 -6.8941611204570838
		3.8847676828958582 -3.8170592479718701e-16 -6.233730820395647
		3.8847676828958582 6.8941611204570759 -6.8941611204570794
		;
createNode transform -n "lfArmBp0_BF" -p "lfArmBp0_ctl_data";
	rename -uid "3C9CA1FE-41FE-20BA-4FC4-4EBA5AD88D0B";
	setAttr -cb on ".ro";
createNode joint -n "lfArmBp0_clavicle_bf" -p "lfArmBp0_BF";
	rename -uid "6A4CBB3C-4887-15DB-2584-E7B8B0E536E7";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 3;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.1137443400138403 -7.0168606226744599 9.04231130782299 ;
	setAttr ".radi" 2.2198672473690619;
createNode joint -n "lfArmBp0_upr_bf" -p "lfArmBp0_clavicle_bf";
	rename -uid "7DBDBA86-4576-669B-213A-95BF816FC4B6";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 5.2528462629847068 -5.0799175820391014 -100.31206222910023 ;
	setAttr ".radi" 2.2198672473690619;
createNode joint -n "lfArmBp0_lwr_bf" -p "lfArmBp0_upr_bf";
	rename -uid "8644BF65-4DAD-DC30-E94E-AF9E8E96175D";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -8.8146403628748438 0 ;
	setAttr ".pa" -type "double3" 0 -45 0 ;
	setAttr ".radi" 2.2198672473690619;
createNode joint -n "lfArmBp0_palm_bf" -p "lfArmBp0_lwr_bf";
	rename -uid "2090FA91-4DF7-311B-23DB-B69F70A3569A";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".radi" 2.2198672473690619;
createNode joint -n "lfArmBp0_ball_bf" -p "lfArmBp0_palm_bf";
	rename -uid "D0CE2C69-446B-EF09-085A-9BAAA45BE65B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 8.5523331894636119 -0.35556014072068365 0.61956145912590799 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 2.2198672473690619;
createNode transform -n "lfArmBp0_palmIn" -p "lfArmBp0_ball_bf";
	rename -uid "EBF5D103-40BE-9028-D9CC-5EB188F3DEF1";
	setAttr ".t" -type "double3" 1.4432899320127035e-14 -2.6438448244479336 -1.7802311160540967 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
createNode locator -n "lfArmBp0_palmInShape" -p "lfArmBp0_palmIn";
	rename -uid "A01EF55C-4396-BEC8-B418-8887AADF4E8F";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.55496681184226548 0.55496681184226548 0.55496681184226548 ;
createNode transform -n "lfArmBp0_palmOut" -p "lfArmBp0_palmIn";
	rename -uid "0B727246-4933-935F-7DDC-7690EE73FC3F";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 7.0782673636346143 -1.2846278202148866 ;
	setAttr -cb on ".ro";
createNode locator -n "lfArmBp0_palmOutShape" -p "lfArmBp0_palmOut";
	rename -uid "7CF52715-492B-F49F-9817-899B22054293";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.55496681184226548 0.55496681184226548 0.55496681184226548 ;
createNode transform -n "lfArmBp0_ballRoll" -p "lfArmBp0_palmOut";
	rename -uid "B09A3B45-4358-F103-5906-C78707267B45";
	setAttr ".t" -type "double3" -1.5987211554602254e-14 -4.4344225391866736 3.0648589362689904 ;
	setAttr -cb on ".ro";
createNode locator -n "lfArmBp0_ballRollShape" -p "lfArmBp0_ballRoll";
	rename -uid "A91DDD19-4A03-0156-EFED-F19E16277BA4";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.55496681184226548 0.55496681184226548 0.55496681184226548 ;
createNode transform -n "lfHand0_handJ_SPACE_1_ofs" -p "lfArmBp0_ballRoll";
	rename -uid "D61FD2F2-4637-4F50-7446-7E85362A5B11";
	setAttr ".t" -type "double3" -8.2789548582790431 0.42094760112817298 -0.094903571921967966 ;
	setAttr ".r" -type "double3" 169.57792961921569 11.339576189734688 7.6993745422865105 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "lfHand0_handJ_SPACE_1" -p "lfHand0_handJ_SPACE_1_ofs";
	rename -uid "5B4E98C7-49AF-744E-0C17-35868C6C5676";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999978 ;
createNode transform -n "lfHand0_grp_SPACE_1_ofs" -p "lfArmBp0_palm_bf";
	rename -uid "E219231B-46EB-6425-B353-1AB5032C13C3";
	setAttr ".t" -type "double3" 0.27337833118456167 0.065387460407499987 0.52465788720395068 ;
	setAttr ".r" -type "double3" 169.57792961921572 11.339576189734712 7.6993745422865061 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "lfHand0_grp_SPACE_1" -p "lfHand0_grp_SPACE_1_ofs";
	rename -uid "D4EA679D-470A-6E9B-CAEC-A8B2161EDF0F";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999933 0.99999999999999956 ;
createNode transform -n "lfArmBp0_setting" -p "lfArmBp0_ctl_data";
	rename -uid "AEBDA75A-4DB5-89E6-2D17-579C33B15FA7";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
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
	setAttr -l on -k on ".______________";
	setAttr -k on ".fkIkBlend";
createNode nurbsCurve -n "lfArmBp0_settingShape1" -p "lfArmBp0_setting";
	rename -uid "0A81E9CB-48EF-FC77-92AB-47A6196EB646";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-1.3874170296056638 -2.1149479807643979e-33 3.4539720924252699e-17
		-1.3607581922355563 1.6573857243464229e-17 -0.27067162912441972
		-1.2818061905145841 3.2510792005500381e-17 -0.53094152718583953
		-1.1535951259199784 4.71983532572093e-17 -0.77080758568401753
		-0.981051989717172 6.0072107414250349e-17 -0.981051989717172
		-0.77080758568401753 7.0637329735410013e-17 -1.1535951259199784
		-0.53094152718583953 7.8487996461380873e-17 -1.2818061905145841
		-0.27067162912441972 8.332241114184351e-17 -1.3607581922355563
		8.4954791254019633e-17 8.4954791254019633e-17 -1.3874170296056638
		0.27067162912441972 8.332241114184351e-17 -1.3607581922355563
		0.53094152718583953 7.8487996461380873e-17 -1.2818061905145841
		0.77080758568401753 7.0637329735410013e-17 -1.1535951259199784
		0.981051989717172 6.0072107414250349e-17 -0.981051989717172
		1.1535951259199784 4.71983532572093e-17 -0.77080758568401753
		1.2818061905145841 3.2510792005500381e-17 -0.53094152718583953
		1.3607581922355563 1.6573857243464229e-17 -0.27067162912441972
		1.3874170296056638 9.1888551745845243e-33 -1.5006538840622187e-16
		1.3346116762173232 1.625539600275019e-17 -0.26547074705361995
		1.1842345096614177 3.0036055543356322e-17 -0.490525994858586
		0.95917922877785211 3.9243998230690437e-17 -0.64090309525729205
		0.69370851480283191 4.2477395627009817e-17 -0.69370851480283191
		0.42823776774921191 3.9243998230690437e-17 -0.64090309525729205
		0.20318251994424588 3.0036055543356322e-17 -0.490525994858586
		0.052805419545539772 1.625539600275019e-17 -0.26547074705361995
		0 9.1888551745845243e-33 -1.5006538840622187e-16
		-0.052805419545539772 -1.625539600275019e-17 0.26547074705361995
		-0.20318251994424588 -3.0036055543356322e-17 0.490525994858586
		-0.42823776774921191 -3.9243998230690437e-17 0.64090309525729205
		-0.69370851480283191 -4.2477395627009817e-17 0.69370851480283191
		-0.95917922877785211 -3.9243998230690437e-17 0.64090309525729205
		-1.1842345096614177 -3.0036055543356322e-17 0.490525994858586
		-1.3346116762173232 -1.625539600275019e-17 0.26547074705361995
		-1.3874170296056638 -2.1149479807643979e-33 3.4539720924252699e-17
		-1.3607581922355563 -1.6573857243464229e-17 0.27067162912441972
		-1.2818061905145841 -3.2510792005500381e-17 0.53094152718583953
		-1.1535951259199784 -4.71983532572093e-17 0.77080758568401753
		-0.981051989717172 -6.0072107414250349e-17 0.981051989717172
		-0.77080758568401753 -7.0637329735410013e-17 1.1535951259199784
		-0.53094152718583953 -7.8487996461380873e-17 1.2818061905145841
		-0.27067162912441972 -8.332241114184351e-17 1.3607581922355563
		-1.6197190780528214e-16 -8.4954791254019633e-17 1.3874170296056638
		0.27067162912441972 -8.332241114184351e-17 1.3607581922355563
		0.53094152718583953 -7.8487996461380873e-17 1.2818061905145841
		0.77080758568401753 -7.0637329735410013e-17 1.1535951259199784
		0.981051989717172 -6.0072107414250349e-17 0.981051989717172
		1.1535951259199784 -4.71983532572093e-17 0.77080758568401753
		1.2818061905145841 -3.2510792005500381e-17 0.53094152718583953
		1.3607581922355563 -1.6573857243464229e-17 0.27067162912441972
		1.3874170296056638 9.1888551745845243e-33 -1.5006538840622187e-16
		;
	setAttr ".adot" yes;
createNode transform -n "lfArmBp0_upr_fkc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "E898F8DC-4ACD-8E61-E1B7-54BF5037319C";
	setAttr ".t" -type "double3" 11.915394033737446 60.227952254802041 14.909936481380793 ;
	setAttr ".r" -type "double3" 12.381085853865011 -4.8753801294787555 -91.957327849164713 ;
	setAttr -cb on ".ro";
createNode transform -n "lfArmBp0_upr_fkc_SPACE_2" -p "lfArmBp0_upr_fkc_SPACE_2_ofs";
	rename -uid "F4D18873-4E50-7D84-22E7-53B38D6C14AF";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 1.7763568394002505e-15 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "lfArmBp0_anchorM1" -p "master_ctl";
	rename -uid "0469DF66-485D-1D9C-EBA6-F38644BAF0CF";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "lfArmBp0_anchorM1Shape" -p "lfArmBp0_anchorM1";
	rename -uid "741EEF7D-4EFF-F5E1-2EFB-15B7C084B4CF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 1.6515627486383742 1.6515627486383742 1.6515627486383742 ;
createNode transform -n "lfArmBp0_anchorF1" -p "master_ctl";
	rename -uid "C7FB45C9-4E02-BA27-E2D1-B9A5D588C6C0";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "lfArmBp0_anchorF1Shape" -p "lfArmBp0_anchorF1";
	rename -uid "BD8FABC3-48AE-8B7F-8891-FFAD92EDC010";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 1.6515627486383742 1.6515627486383742 1.6515627486383742 ;
createNode transform -n "lfHand0_ctl_data" -p "master_ctl";
	rename -uid "38A10DC5-439D-57AB-AFF7-95BECD69CE78";
	setAttr -cb on ".ro";
createNode transform -n "lfHand0_fgr00_1_ctl_ofs_ofs" -p "lfHand0_ctl_data";
	rename -uid "988CB017-450C-4BA9-D215-D3A31B1B9F49";
	setAttr -cb on ".ro";
createNode transform -n "lfHand0_fgr00_1_ctl_ofs" -p "lfHand0_fgr00_1_ctl_ofs_ofs";
	rename -uid "EF6166B9-4383-17C6-2A7D-9186B7A4CA59";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -5.3290705182007514e-15 1.7763568394002505e-15 ;
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "lfHand0_fgr00_1_ctl" -p "lfHand0_fgr00_1_ctl_ofs";
	rename -uid "3DB982E7-4AAF-7661-0B7C-1EBE6EF69DE0";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999967 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr00_1_ctlShape1" -p "lfHand0_fgr00_1_ctl";
	rename -uid "BFDFCF4F-4F88-0A01-9A34-A598BA7F99A7";
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
		3.2401760558859138e-16 -0.17817407968254925 -0.89087039841272775
		3.3159155642894609e-16 -3.5625785631093851e-15 -0.80552893419981098
		3.2401760558859138e-16 0.17817407968254212 -0.89087039841272708
		3.0573247074906025e-16 0.16110578683995944 1.3107059034535545e-15
		2.8744733590952912e-16 0.17817407968254212 0.89087039841272997
		2.7987338506917441e-16 -3.5365756019474491e-15 0.80552893419981508
		2.8744733590952912e-16 -0.17817407968254925 0.89087039841273041
		3.0573247074906025e-16 -0.16110578683996657 1.4623143619906468e-15
		3.2401760558859138e-16 -0.17817407968254925 -0.89087039841272775
		3.3159155642894609e-16 -3.5625785631093851e-15 -0.80552893419981098
		3.2401760558859138e-16 0.17817407968254212 -0.89087039841272708
		;
createNode transform -n "lfHand0_fgr00_2_ctl_ofs_ofs" -p "lfHand0_fgr00_1_ctl";
	rename -uid "68618FA6-4533-2F1D-957E-5BA083339AC6";
	setAttr ".t" -type "double3" 4.1564406166867371 -0.58823287137961522 0.28277819055973108 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "lfHand0_fgr00_2_ctl_ofs" -p "lfHand0_fgr00_2_ctl_ofs_ofs";
	rename -uid "49250308-43DE-556B-52B0-EDAF94AF762D";
	setAttr ".t" -type "double3" 0 0 -8.8817841970012523e-16 ;
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "lfHand0_fgr00_2_ctl" -p "lfHand0_fgr00_2_ctl_ofs";
	rename -uid "41E94E76-4008-1458-956B-F8B243B632D9";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr00_2_ctlShape1" -p "lfHand0_fgr00_2_ctl";
	rename -uid "471EDE9B-4F40-116F-9328-AFB2EA2F715D";
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
		-3.2286960732119092e-15 -0.17817407968254931 -0.89087039841272897
		-3.2211221223715547e-15 -3.623725057259197e-15 -0.8055289341998122
		-3.2286960732119092e-15 0.17817407968254206 -0.8908703984127283
		-3.2469812080514405e-15 0.16110578683995938 9.3087950434264304e-17
		-3.2652663428909719e-15 0.17817407968254206 0.89087039841272875
		-3.2728402937313264e-15 -3.5977220960972614e-15 0.80552893419981386
		-3.2652663428909719e-15 -0.17817407968254931 0.89087039841272919
		-3.2469812080514405e-15 -0.16110578683996662 2.4469640897135661e-16
		-3.2286960732119092e-15 -0.17817407968254931 -0.89087039841272897
		-3.2211221223715547e-15 -3.623725057259197e-15 -0.8055289341998122
		-3.2286960732119092e-15 0.17817407968254206 -0.8908703984127283
		;
createNode transform -n "lfHand0_fgr00_3_ctl_ofs_ofs" -p "lfHand0_fgr00_2_ctl";
	rename -uid "C0965AC3-4599-F92F-E845-F387671DA6CA";
	setAttr ".t" -type "double3" 2.9405409999120664 1.2434497875801753e-14 1.1546319456101628e-14 ;
	setAttr ".r" -type "double3" 0 -26.105210869895288 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 0.99999999999999978 ;
createNode transform -n "lfHand0_fgr00_3_ctl_ofs" -p "lfHand0_fgr00_3_ctl_ofs_ofs";
	rename -uid "6C66F6DD-40FA-6F3D-C919-E689824C3895";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
createNode transform -n "lfHand0_fgr00_3_ctl" -p "lfHand0_fgr00_3_ctl_ofs";
	rename -uid "3B77A600-42F5-67F8-DBC5-CEA8CC29A310";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr00_3_ctlShape1" -p "lfHand0_fgr00_3_ctl";
	rename -uid "5BD04903-402F-C90C-3FA2-2797FA3C1A3E";
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
		-1.9109379399352493e-15 -0.17817407968254395 -0.89087039841272941
		-1.9033639890948948e-15 1.7359187080164608e-15 -0.80552893419981264
		-1.9109379399352493e-15 0.17817407968254745 -0.89087039841272875
		-1.9292230747747807e-15 0.16110578683996477 -3.1278470057216576e-16
		-1.9475082096143116e-15 0.17817407968254745 0.8908703984127283
		-1.9550821604546665e-15 1.7619216691783964e-15 0.80552893419981342
		-1.9475082096143116e-15 -0.17817407968254395 0.89087039841272875
		-1.9292230747747807e-15 -0.16110578683996127 -1.6117624203507348e-16
		-1.9109379399352493e-15 -0.17817407968254395 -0.89087039841272941
		-1.9033639890948948e-15 1.7359187080164608e-15 -0.80552893419981264
		-1.9109379399352493e-15 0.17817407968254745 -0.89087039841272875
		;
createNode transform -n "lfHand0_fgr01_1_ctl_ofs_ofs" -p "lfHand0_ctl_data";
	rename -uid "78A42B23-4FAA-BAF0-C8AE-278AEED484F0";
	setAttr -cb on ".ro";
createNode transform -n "lfHand0_fgr01_1_ctl_ofs" -p "lfHand0_fgr01_1_ctl_ofs_ofs";
	rename -uid "51E29C8C-4434-57C4-3BF6-AFA89DEB4105";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -2.6645352591003757e-15 0 ;
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "lfHand0_fgr01_1_ctl" -p "lfHand0_fgr01_1_ctl_ofs";
	rename -uid "26E5083D-4032-E2E7-D685-3AAF0B98211E";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr01_1_ctlShape1" -p "lfHand0_fgr01_1_ctl";
	rename -uid "0C64C6AC-42FD-62D3-CBF4-5DA88075F9E8";
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
		3.8002981667018272e-15 -0.17817407968254825 -0.89087039841272941
		3.8078721175421821e-15 -2.6132536492594475e-15 -0.80552893419981264
		3.8002981667018272e-15 0.17817407968254312 -0.89087039841272875
		3.7820130318622958e-15 0.16110578683996044 -3.1278470057216576e-16
		3.7637278970227645e-15 0.17817407968254312 0.8908703984127283
		3.7561539461824104e-15 -2.5872506880975115e-15 0.80552893419981342
		3.7637278970227645e-15 -0.17817407968254825 0.89087039841272875
		3.7820130318622958e-15 -0.16110578683996557 -1.6117624203507348e-16
		3.8002981667018272e-15 -0.17817407968254825 -0.89087039841272941
		3.8078721175421821e-15 -2.6132536492594475e-15 -0.80552893419981264
		3.8002981667018272e-15 0.17817407968254312 -0.89087039841272875
		;
createNode transform -n "lfHand0_fgr01_2_ctl_ofs_ofs" -p "lfHand0_fgr01_1_ctl";
	rename -uid "263AB008-414B-DFDE-EE4D-8FAD316DB9DC";
	setAttr ".t" -type "double3" 6.122680435764158 -6.2172489379008766e-15 -4.6185277824406512e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999967 ;
createNode transform -n "lfHand0_fgr01_2_ctl_ofs" -p "lfHand0_fgr01_2_ctl_ofs_ofs";
	rename -uid "D660CA58-4BF0-7F87-279D-8FA5BA162C40";
	setAttr ".t" -type "double3" -4.4408920985006262e-16 0 0 ;
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode transform -n "lfHand0_fgr01_2_ctl" -p "lfHand0_fgr01_2_ctl_ofs";
	rename -uid "F17CC49A-4D83-F73C-5D47-7A8D8095D5B9";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr01_2_ctlShape1" -p "lfHand0_fgr01_2_ctl";
	rename -uid "B3282EED-44B3-94F2-F174-C4A305D1856C";
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
		-8.69893284860594e-16 -0.17817407968254573 -0.89087039841272941
		-8.6231933402023939e-16 -2.515150784633682e-17 -0.80552893419981264
		-8.69893284860594e-16 0.17817407968254564 -0.89087039841272875
		-8.8817841970012523e-16 0.16110578683996296 -3.1278470057216576e-16
		-9.0646355453965637e-16 0.17817407968254564 0.8908703984127283
		-9.1403750538001107e-16 8.5145331559889767e-19 0.80552893419981342
		-9.0646355453965637e-16 -0.17817407968254573 0.89087039841272875
		-8.8817841970012523e-16 -0.16110578683996304 -1.6117624203507348e-16
		-8.69893284860594e-16 -0.17817407968254573 -0.89087039841272941
		-8.6231933402023939e-16 -2.515150784633682e-17 -0.80552893419981264
		-8.69893284860594e-16 0.17817407968254564 -0.89087039841272875
		;
createNode transform -n "lfHand0_fgr01_3_ctl_ofs_ofs" -p "lfHand0_fgr01_2_ctl";
	rename -uid "9A3345B3-4C87-3D5C-8634-ECB7E0E9A5BB";
	setAttr ".t" -type "double3" 4.7373858002689024 -1.2434497875801753e-14 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 0 -66.298785885298074 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "lfHand0_fgr01_3_ctl_ofs" -p "lfHand0_fgr01_3_ctl_ofs_ofs";
	rename -uid "0046D78A-47AE-8C51-009F-338C68EB36F5";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "lfHand0_fgr01_3_ctl" -p "lfHand0_fgr01_3_ctl_ofs";
	rename -uid "38B354A1-41E2-82DA-DC96-C98DBD6CE99C";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr01_3_ctlShape1" -p "lfHand0_fgr01_3_ctl";
	rename -uid "BB70F23D-4574-E6FE-0EC1-908320B57A47";
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
		-3.6872947793354998e-15 -0.17817407968254398 -0.89087039841272775
		-3.6797208284951449e-15 1.7053454609415546e-15 -0.80552893419981098
		-3.6872947793354998e-15 0.17817407968254739 -0.89087039841272708
		-3.7055799141750311e-15 0.16110578683996471 1.3107059034535545e-15
		-3.7238650490145617e-15 0.17817407968254739 0.89087039841272997
		-3.7314389998549166e-15 1.7313484221034904e-15 0.80552893419981508
		-3.7238650490145617e-15 -0.17817407968254398 0.89087039841273041
		-3.7055799141750311e-15 -0.1611057868399613 1.4623143619906468e-15
		-3.6872947793354998e-15 -0.17817407968254398 -0.89087039841272775
		-3.6797208284951449e-15 1.7053454609415546e-15 -0.80552893419981098
		-3.6872947793354998e-15 0.17817407968254739 -0.89087039841272708
		;
createNode transform -n "lfHand0_fgr01_4_ctl_ofs_ofs" -p "lfHand0_fgr01_3_ctl";
	rename -uid "0F271537-4A4B-66A7-1952-1F9CB63DBF7A";
	setAttr ".t" -type "double3" 3.4593422476708149 -8.8817841970012523e-15 -1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" 0 -19.821093119868163 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999967 1.0000000000000002 ;
createNode transform -n "lfHand0_fgr01_4_ctl_ofs" -p "lfHand0_fgr01_4_ctl_ofs_ofs";
	rename -uid "685826BA-4B55-86EC-E1D8-929CC75F4FAC";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 -8.8817841970012523e-16 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "lfHand0_fgr01_4_ctl" -p "lfHand0_fgr01_4_ctl_ofs";
	rename -uid "3E700B56-464B-86E4-C716-7D981F6C4D5F";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr01_4_ctlShape1" -p "lfHand0_fgr01_4_ctl";
	rename -uid "E48E9F97-4D38-6B9A-C74D-4295D85BCECB";
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
		-3.6872947793354998e-15 -0.17817407968254398 -0.89087039841272941
		-3.6797208284951449e-15 1.7053454609415546e-15 -0.80552893419981264
		-3.6872947793354998e-15 0.17817407968254739 -0.89087039841272875
		-3.7055799141750311e-15 0.16110578683996471 -3.1278470057216576e-16
		-3.7238650490145617e-15 0.17817407968254739 0.8908703984127283
		-3.7314389998549166e-15 1.7313484221034904e-15 0.80552893419981342
		-3.7238650490145617e-15 -0.17817407968254398 0.89087039841272875
		-3.7055799141750311e-15 -0.1611057868399613 -1.6117624203507348e-16
		-3.6872947793354998e-15 -0.17817407968254398 -0.89087039841272941
		-3.6797208284951449e-15 1.7053454609415546e-15 -0.80552893419981264
		-3.6872947793354998e-15 0.17817407968254739 -0.89087039841272875
		;
createNode transform -n "lfHand0_fgr02_1_ctl_ofs_ofs" -p "lfHand0_ctl_data";
	rename -uid "E464B0E1-4894-9C16-AB34-D8871065C894";
	setAttr -cb on ".ro";
createNode transform -n "lfHand0_fgr02_1_ctl_ofs" -p "lfHand0_fgr02_1_ctl_ofs_ofs";
	rename -uid "ADE1DBCB-4677-8506-343C-4290DBCFB5CB";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 3.5527136788005009e-15 ;
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "lfHand0_fgr02_1_ctl" -p "lfHand0_fgr02_1_ctl_ofs";
	rename -uid "5E728A85-43F1-EC46-1FB8-3B99EE7478A6";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr02_1_ctlShape1" -p "lfHand0_fgr02_1_ctl";
	rename -uid "B29C37A2-4530-6AC8-4386-769B2EA3536B";
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
		1.7115137021406128e-16 -0.17817407968254748 -0.89087039841272619
		1.7872532105441592e-16 -1.7862217237091342e-15 -0.80552893419980942
		1.7115137021406128e-16 0.1781740796825439 -0.89087039841272553
		1.528662353745301e-16 0.16110578683996121 2.9341965074792747e-15
		1.3458110053499897e-16 0.1781740796825439 0.89087039841273152
		1.2700714969464431e-16 -1.7602187625471986e-15 0.80552893419981664
		1.3458110053499897e-16 -0.17817407968254748 0.89087039841273197
		1.528662353745301e-16 -0.16110578683996479 3.0858049660163669e-15
		1.7115137021406128e-16 -0.17817407968254748 -0.89087039841272619
		1.7872532105441592e-16 -1.7862217237091342e-15 -0.80552893419980942
		1.7115137021406128e-16 0.1781740796825439 -0.89087039841272553
		;
createNode transform -n "lfHand0_fgr02_2_ctl_ofs_ofs" -p "lfHand0_fgr02_1_ctl";
	rename -uid "F046CA56-4EAF-091C-EB07-0C9C5C1ECFEC";
	setAttr ".t" -type "double3" 6.2585520346885435 1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "lfHand0_fgr02_2_ctl_ofs" -p "lfHand0_fgr02_2_ctl_ofs_ofs";
	rename -uid "FC1FFEE4-486A-95D8-203C-A08BC5E22F3A";
	setAttr -cb on ".ro" 3;
createNode transform -n "lfHand0_fgr02_2_ctl" -p "lfHand0_fgr02_2_ctl_ofs";
	rename -uid "83148C0F-450C-7EA7-5949-E8AEB42D9621";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr02_2_ctlShape1" -p "lfHand0_fgr02_2_ctl";
	rename -uid "BBF6B9C5-45AA-8834-22C5-B69F1955AE25";
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
		1.8285134839531164e-17 -0.1781740796825457 -0.89087039841272941
		2.585908567988579e-17 -9.8648843088838037e-18 -0.80552893419981264
		1.8285134839531155e-17 0.1781740796825457 -0.89087039841272875
		-1.0553936882080039e-32 0.16110578683996302 -3.1278470057216576e-16
		-1.8285134839531161e-17 0.1781740796825457 0.8908703984127283
		-2.5859085679885815e-17 1.6138076853051911e-17 0.80552893419981342
		-1.8285134839531155e-17 -0.1781740796825457 0.89087039841272875
		-1.5420870833993925e-32 -0.16110578683996302 -1.6117624203507348e-16
		1.8285134839531164e-17 -0.1781740796825457 -0.89087039841272941
		2.585908567988579e-17 -9.8648843088838037e-18 -0.80552893419981264
		1.8285134839531155e-17 0.1781740796825457 -0.89087039841272875
		;
createNode transform -n "lfHand0_fgr02_3_ctl_ofs_ofs" -p "lfHand0_fgr02_2_ctl";
	rename -uid "85BA10C1-4F7C-BC4F-8B0F-028CDA7C722F";
	setAttr ".t" -type "double3" 4.7872756746817471 -1.4210854715202004e-14 -1.0658141036401503e-14 ;
	setAttr ".r" -type "double3" 0 -71.232806517331994 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999956 0.99999999999999956 ;
createNode transform -n "lfHand0_fgr02_3_ctl_ofs" -p "lfHand0_fgr02_3_ctl_ofs_ofs";
	rename -uid "D95696FE-4EC3-D619-FD3A-DD87166AE832";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 1.7763568394002505e-15 1.7763568394002505e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
createNode transform -n "lfHand0_fgr02_3_ctl" -p "lfHand0_fgr02_3_ctl_ofs";
	rename -uid "BAC74CD0-4EAF-BF5F-17B5-368B64B668A6";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 1.0000000000000004 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr02_3_ctlShape1" -p "lfHand0_fgr02_3_ctl";
	rename -uid "D4583994-4236-B850-0FA3-B9AC985D4B97";
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
		3.5709988136400323e-15 -0.17817407968254562 -0.89087039841272619
		3.5785727644803864e-15 5.1281609840928255e-17 -0.80552893419980942
		3.5709988136400323e-15 0.17817407968254576 -0.89087039841272553
		3.5527136788005009e-15 0.16110578683996307 2.9341965074792747e-15
		3.5344285439609696e-15 0.17817407968254576 0.89087039841273152
		3.5268545931206151e-15 7.7284571002863978e-17 0.80552893419981664
		3.5344285439609696e-15 -0.17817407968254562 0.89087039841273197
		3.5527136788005009e-15 -0.16110578683996293 3.0858049660163669e-15
		3.5709988136400323e-15 -0.17817407968254562 -0.89087039841272619
		3.5785727644803864e-15 5.1281609840928255e-17 -0.80552893419980942
		3.5709988136400323e-15 0.17817407968254576 -0.89087039841272553
		;
createNode transform -n "lfHand0_fgr02_4_ctl_ofs_ofs" -p "lfHand0_fgr02_3_ctl";
	rename -uid "63368270-4C30-F5AE-7951-18B734460B75";
	setAttr ".t" -type "double3" 3.6945286731120461 2.3092638912203256e-14 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 0 -20.417257060770368 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999933 0.99999999999999967 ;
createNode transform -n "lfHand0_fgr02_4_ctl_ofs" -p "lfHand0_fgr02_4_ctl_ofs_ofs";
	rename -uid "1EFD4BD1-47BD-6237-8DDF-D29379CD69CA";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 2.2204460492503131e-16 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "lfHand0_fgr02_4_ctl" -p "lfHand0_fgr02_4_ctl_ofs";
	rename -uid "946737B0-4A59-6F44-B9EA-BEBFA8AF6060";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999967 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr02_4_ctlShape1" -p "lfHand0_fgr02_4_ctl";
	rename -uid "7CEACC8A-42D2-4B6C-E60B-47B8DCF0C8DA";
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
		3.5709988136400323e-15 -0.17817407968254562 -0.89087039841272964
		3.5785727644803864e-15 5.1281609840928255e-17 -0.80552893419981286
		3.5709988136400323e-15 0.17817407968254576 -0.89087039841272897
		3.5527136788005009e-15 0.16110578683996307 -5.1572102607538075e-16
		3.5344285439609696e-15 0.17817407968254576 0.89087039841272808
		3.5268545931206151e-15 7.7284571002863978e-17 0.8055289341998132
		3.5344285439609696e-15 -0.17817407968254562 0.89087039841272853
		3.5527136788005009e-15 -0.16110578683996293 -3.6411256753828849e-16
		3.5709988136400323e-15 -0.17817407968254562 -0.89087039841272964
		3.5785727644803864e-15 5.1281609840928255e-17 -0.80552893419981286
		3.5709988136400323e-15 0.17817407968254576 -0.89087039841272897
		;
createNode transform -n "lfHand0_fgr03_1_ctl_ofs_ofs" -p "lfHand0_ctl_data";
	rename -uid "9D6970A2-4A74-9BCD-965F-4CB206DAA9B1";
	setAttr -cb on ".ro";
createNode transform -n "lfHand0_fgr03_1_ctl_ofs" -p "lfHand0_fgr03_1_ctl_ofs_ofs";
	rename -uid "2F515E63-4507-208F-1018-AAAB4AF1EE9C";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 8.8817841970012523e-16 0 ;
	setAttr -cb on ".ro" 3;
createNode transform -n "lfHand0_fgr03_1_ctl" -p "lfHand0_fgr03_1_ctl_ofs";
	rename -uid "6ECEA8C5-4A77-CAB0-3291-519DD30D5A4A";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr03_1_ctlShape1" -p "lfHand0_fgr03_1_ctl";
	rename -uid "F89650A0-4762-8D7D-CDF9-5DAD400F4C32";
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
		1.7182088565525165e-15 -0.17817407968254478 -0.89087039841272941
		1.7257828073928712e-15 9.0888678246614746e-16 -0.80552893419981264
		1.7182088565525165e-15 0.17817407968254659 -0.89087039841272875
		1.6999237217129854e-15 0.1611057868399639 -3.1278470057216576e-16
		1.6816385868734542e-15 0.17817407968254659 0.8908703984127283
		1.6740646360330995e-15 9.3488974362808326e-16 0.80552893419981342
		1.6816385868734542e-15 -0.17817407968254478 0.89087039841272875
		1.6999237217129854e-15 -0.1611057868399621 -1.6117624203507348e-16
		1.7182088565525165e-15 -0.17817407968254478 -0.89087039841272941
		1.7257828073928712e-15 9.0888678246614746e-16 -0.80552893419981264
		1.7182088565525165e-15 0.17817407968254659 -0.89087039841272875
		;
createNode transform -n "lfHand0_fgr03_2_ctl_ofs_ofs" -p "lfHand0_fgr03_1_ctl";
	rename -uid "55CAF031-4FBC-8190-4D5C-2BA3134A7F9D";
	setAttr ".t" -type "double3" 6.2239324419496933 1.7763568394002505e-15 -2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "lfHand0_fgr03_2_ctl_ofs" -p "lfHand0_fgr03_2_ctl_ofs_ofs";
	rename -uid "73AB172A-4CE1-C74C-483D-D5A73F280FA5";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 8.8817841970012523e-16 0 ;
	setAttr -cb on ".ro" 3;
createNode transform -n "lfHand0_fgr03_2_ctl" -p "lfHand0_fgr03_2_ctl_ofs";
	rename -uid "DA06B860-4BEB-7EC6-93D5-E7A8212CF901";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr03_2_ctlShape1" -p "lfHand0_fgr03_2_ctl";
	rename -uid "69FA633A-4504-1DAF-48E8-2CB13D1BAA25";
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
		7.5359731916512627e-16 -0.1781740796825439 -0.89087039841272619
		7.6117127000548088e-16 1.7817785786288199e-15 -0.80552893419980942
		7.5359731916512627e-16 0.17817407968254748 -0.89087039841272553
		7.3531218432559503e-16 0.16110578683996479 2.9341965074792747e-15
		7.170270494860639e-16 0.17817407968254748 0.89087039841273152
		7.0945309864570929e-16 1.8077815397907555e-15 0.80552893419981664
		7.170270494860639e-16 -0.1781740796825439 0.89087039841273197
		7.3531218432559503e-16 -0.16110578683996121 3.0858049660163669e-15
		7.5359731916512627e-16 -0.1781740796825439 -0.89087039841272619
		7.6117127000548088e-16 1.7817785786288199e-15 -0.80552893419980942
		7.5359731916512627e-16 0.17817407968254748 -0.89087039841272553
		;
createNode transform -n "lfHand0_fgr03_3_ctl_ofs_ofs" -p "lfHand0_fgr03_2_ctl";
	rename -uid "18C84C0A-425B-303B-58F8-B98BDEDC9846";
	setAttr ".t" -type "double3" 4.6225742785655131 -2.042810365310288e-14 0 ;
	setAttr ".r" -type "double3" 0 -68.665304122595515 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "lfHand0_fgr03_3_ctl_ofs" -p "lfHand0_fgr03_3_ctl_ofs_ofs";
	rename -uid "F03086FA-4A5C-AACA-A0B6-05ACF133DE9C";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 2.6645352591003757e-15 -1.7763568394002505e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "lfHand0_fgr03_3_ctl" -p "lfHand0_fgr03_3_ctl_ofs";
	rename -uid "0DB0F540-4629-8AD9-25CB-0BBF4C0D643F";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr03_3_ctlShape1" -p "lfHand0_fgr03_3_ctl";
	rename -uid "43A83E8F-446C-7A6F-F3CC-FA8A134632B2";
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
		1.8285134839531164e-17 -0.1781740796825457 -0.89087039841272941
		2.585908567988579e-17 -9.8648843088838037e-18 -0.80552893419981264
		1.8285134839531155e-17 0.1781740796825457 -0.89087039841272875
		-1.0553936882080039e-32 0.16110578683996302 -3.1278470057216576e-16
		-1.8285134839531161e-17 0.1781740796825457 0.8908703984127283
		-2.5859085679885815e-17 1.6138076853051911e-17 0.80552893419981342
		-1.8285134839531155e-17 -0.1781740796825457 0.89087039841272875
		-1.5420870833993925e-32 -0.16110578683996302 -1.6117624203507348e-16
		1.8285134839531164e-17 -0.1781740796825457 -0.89087039841272941
		2.585908567988579e-17 -9.8648843088838037e-18 -0.80552893419981264
		1.8285134839531155e-17 0.1781740796825457 -0.89087039841272875
		;
createNode transform -n "lfHand0_fgr03_4_ctl_ofs_ofs" -p "lfHand0_fgr03_3_ctl";
	rename -uid "0CBE7425-405E-BDA1-82C8-3EB8C47721B0";
	setAttr ".t" -type "double3" 3.556471498450918 1.5099033134902129e-14 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 0 -18.554958795381445 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1 ;
createNode transform -n "lfHand0_fgr03_4_ctl_ofs" -p "lfHand0_fgr03_4_ctl_ofs_ofs";
	rename -uid "5B1BD9C1-4512-D182-7EE2-C2A3737C0C75";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -2.6645352591003757e-15 4.4408920985006262e-16 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "lfHand0_fgr03_4_ctl" -p "lfHand0_fgr03_4_ctl_ofs";
	rename -uid "D2402D8E-49FC-F71C-F49B-88AF3BAF1945";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr03_4_ctlShape1" -p "lfHand0_fgr03_4_ctl";
	rename -uid "A6DBE50E-4980-EFB2-2346-6A8AD3552165";
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
		-6.9342759873869403e-15 -0.17817407968254759 -0.89087039841272897
		-6.9267020365465854e-15 -1.9085147120087584e-15 -0.8055289341998122
		-6.9342759873869403e-15 0.17817407968254378 -0.8908703984127283
		-6.9525611222264717e-15 0.1611057868399611 9.3087950434264304e-17
		-6.9708462570660022e-15 0.17817407968254378 0.89087039841272875
		-6.9784202079063571e-15 -1.8825117508468228e-15 0.80552893419981386
		-6.9708462570660022e-15 -0.17817407968254759 0.89087039841272919
		-6.9525611222264717e-15 -0.1611057868399649 2.4469640897135661e-16
		-6.9342759873869403e-15 -0.17817407968254759 -0.89087039841272897
		-6.9267020365465854e-15 -1.9085147120087584e-15 -0.8055289341998122
		-6.9342759873869403e-15 0.17817407968254378 -0.8908703984127283
		;
createNode transform -n "lfHand0_fgr04_1_ctl_ofs_ofs" -p "lfHand0_ctl_data";
	rename -uid "F2BEFF62-42A9-DC6C-4F06-A7A36111DE75";
	setAttr -cb on ".ro";
createNode transform -n "lfHand0_fgr04_1_ctl_ofs" -p "lfHand0_fgr04_1_ctl_ofs_ofs";
	rename -uid "6246DCD0-4146-7DA7-3F20-518EA7A84DF3";
	setAttr ".t" -type "double3" -2.2204460492503131e-15 0 0 ;
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "lfHand0_fgr04_1_ctl" -p "lfHand0_fgr04_1_ctl_ofs";
	rename -uid "974E27AF-4349-C21E-6C57-A6BD13C8048B";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr04_1_ctlShape1" -p "lfHand0_fgr04_1_ctl";
	rename -uid "B0407A95-445D-1054-F260-29A18FDCE8E6";
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
		1.350552764389719e-15 -0.17817407968254564 -0.89087039841273585
		1.3581267152300737e-15 1.3065050997295718e-17 -0.80552893419981908
		1.350552764389719e-15 0.17817407968254573 -0.89087039841273519
		1.3322676295501878e-15 0.16110578683996304 -6.8067471166750469e-15
		1.3139824947106567e-15 0.17817407968254573 0.89087039841272186
		1.306408543870302e-15 3.9068012159231434e-17 0.80552893419980698
		1.3139824947106567e-15 -0.17817407968254564 0.89087039841272231
		1.3322676295501878e-15 -0.16110578683996296 -6.6551386581379543e-15
		1.350552764389719e-15 -0.17817407968254564 -0.89087039841273585
		1.3581267152300737e-15 1.3065050997295718e-17 -0.80552893419981908
		1.350552764389719e-15 0.17817407968254573 -0.89087039841273519
		;
createNode transform -n "lfHand0_fgr04_2_ctl_ofs_ofs" -p "lfHand0_fgr04_1_ctl";
	rename -uid "4C58F725-402E-CE71-C4FA-138820DAAEC8";
	setAttr ".t" -type "double3" 5.8093929308999339 0.32877069222828581 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "lfHand0_fgr04_2_ctl_ofs" -p "lfHand0_fgr04_2_ctl_ofs_ofs";
	rename -uid "987A3183-4461-8577-4DBD-7EB56598EB6A";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "lfHand0_fgr04_2_ctl" -p "lfHand0_fgr04_2_ctl_ofs";
	rename -uid "93F27694-4F0A-B2B8-C891-9DA9F672D242";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr04_2_ctlShape1" -p "lfHand0_fgr04_2_ctl";
	rename -uid "4D9231EA-43AF-66AB-0268-E685B7D5FCAF";
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
		-2.8744733590952912e-16 -0.17817407968254212 -0.89087039841273263
		-2.7987338506917446e-16 3.5428487944916172e-15 -0.80552893419981586
		-2.8744733590952912e-16 0.17817407968254925 -0.89087039841273197
		-3.0573247074906025e-16 0.16110578683996657 -3.5597659086236063e-15
		-3.2401760558859138e-16 0.17817407968254925 0.89087039841272508
		-3.3159155642894609e-16 3.5688517556535532e-15 0.8055289341998102
		-3.2401760558859138e-16 -0.17817407968254212 0.89087039841272553
		-3.0573247074906025e-16 -0.16110578683995944 -3.4081574500865142e-15
		-2.8744733590952912e-16 -0.17817407968254212 -0.89087039841273263
		-2.7987338506917446e-16 3.5428487944916172e-15 -0.80552893419981586
		-2.8744733590952912e-16 0.17817407968254925 -0.89087039841273197
		;
createNode transform -n "lfHand0_fgr04_3_ctl_ofs_ofs" -p "lfHand0_fgr04_2_ctl";
	rename -uid "32B198E7-4858-245A-EF7D-6BBC55D74DBE";
	setAttr ".t" -type "double3" 4.702292268989174 -1.9539925233402755e-14 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 0 -65.544883513719512 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 0.99999999999999989 ;
createNode transform -n "lfHand0_fgr04_3_ctl_ofs" -p "lfHand0_fgr04_3_ctl_ofs_ofs";
	rename -uid "104868BF-4AB8-3A65-8F53-7BBD48BCBE01";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 1.7763568394002505e-15 -1.7763568394002505e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "lfHand0_fgr04_3_ctl" -p "lfHand0_fgr04_3_ctl_ofs";
	rename -uid "B8489B36-44FF-171E-EE5A-91923D43A649";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr04_3_ctlShape1" -p "lfHand0_fgr04_3_ctl";
	rename -uid "1999D04E-44A9-6890-2801-4CA6073A2565";
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
		-1.3458110053499897e-16 -0.1781740796825439 -0.89087039841272619
		-1.2700714969464433e-16 1.7664919550913667e-15 -0.80552893419980942
		-1.3458110053499897e-16 0.17817407968254748 -0.89087039841272553
		-1.5286623537453012e-16 0.16110578683996479 2.9341965074792747e-15
		-1.7115137021406128e-16 0.17817407968254748 0.89087039841273152
		-1.7872532105441594e-16 1.7924949162533023e-15 0.80552893419981664
		-1.7115137021406128e-16 -0.1781740796825439 0.89087039841273197
		-1.5286623537453012e-16 -0.16110578683996121 3.0858049660163669e-15
		-1.3458110053499897e-16 -0.1781740796825439 -0.89087039841272619
		-1.2700714969464433e-16 1.7664919550913667e-15 -0.80552893419980942
		-1.3458110053499897e-16 0.17817407968254748 -0.89087039841272553
		;
createNode transform -n "lfHand0_fgr04_4_ctl_ofs_ofs" -p "lfHand0_fgr04_3_ctl";
	rename -uid "D46E81AD-47D4-9CF2-BC2D-78A339D3FE61";
	setAttr ".t" -type "double3" 3.4452574625156309 2.1316282072803006e-14 1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" 0 -13.546793162252596 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "lfHand0_fgr04_4_ctl_ofs" -p "lfHand0_fgr04_4_ctl_ofs_ofs";
	rename -uid "F386B6FB-4E08-2DB1-A6DA-BFB2E3AD81E5";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 8.8817841970012523e-16 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "lfHand0_fgr04_4_ctl" -p "lfHand0_fgr04_4_ctl_ofs";
	rename -uid "396AF24B-4781-4A31-0C27-DFA489EA8EF8";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000004 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr04_4_ctlShape1" -p "lfHand0_fgr04_4_ctl";
	rename -uid "D594C32B-4CA0-3EB0-419C-F58ECB5CF2C4";
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
		-3.5344285439609696e-15 -0.17817407968254576 -0.89087039841273019
		-3.5268545931206151e-15 -7.1011378458695859e-17 -0.80552893419981342
		-3.5344285439609696e-15 0.17817407968254562 -0.89087039841272953
		-3.5527136788005009e-15 0.16110578683996293 -1.1245300025850259e-15
		-3.5709988136400323e-15 0.17817407968254562 0.89087039841272753
		-3.5785727644803864e-15 -4.5008417296760143e-17 0.80552893419981264
		-3.5709988136400323e-15 -0.17817407968254576 0.89087039841272797
		-3.5527136788005009e-15 -0.16110578683996307 -9.7292154404793359e-16
		-3.5344285439609696e-15 -0.17817407968254576 -0.89087039841273019
		-3.5268545931206151e-15 -7.1011378458695859e-17 -0.80552893419981342
		-3.5344285439609696e-15 0.17817407968254562 -0.89087039841272953
		;
createNode transform -n "lfHand0_fgr00_2_ikc_ofs" -p "lfHand0_ctl_data";
	rename -uid "9595581C-4378-9D3E-4381-CA9755372BC0";
	setAttr ".t" -type "double3" 6.7711003625594177 9.348844560254582 21.848236700195457 ;
	setAttr ".r" -type "double3" -103.935391258324 29.463742724317413 -89.610988072279369 ;
	setAttr -cb on ".ro";
createNode transform -n "lfHand0_fgr00_2_ikc_ofs1" -p "lfHand0_fgr00_2_ikc_ofs";
	rename -uid "091F479F-4234-D500-CF53-DD8622F9794F";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfHand0_fgr00_2_ikc" -p "lfHand0_fgr00_2_ikc_ofs1";
	rename -uid "887FE4A4-41F5-2C1F-CE29-3DAA6573EE78";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 0 -8.8817841970012523e-16 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr00_2_ikcShape1" -p "lfHand0_fgr00_2_ikc";
	rename -uid "DB82A96B-44D9-B905-1566-75970153183C";
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
		-3.2469812080514405e-15 -3.8216558843632531e-17 -4.4408920985006262e-16
		-3.2469812080514405e-15 -3.8216558843632531e-17 -2.3142303769158681
		0.26724218194519572 -3.8216558843632531e-17 -2.3142303769158681
		0.26724218194519572 -3.8216558843632531e-17 -2.8487147408062676
		-0.26724218194520216 -3.8216558843632531e-17 -2.8487147408062676
		-0.26724218194520216 -3.8216558843632531e-17 -2.3142303769158681
		-3.2469812080514405e-15 -3.8216558843632531e-17 -2.3142303769158681
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfHand0_fgr00_2_1_ikj_ikh" -p "lfHand0_fgr00_2_ikc";
	rename -uid "3266E9AC-45AA-542B-6792-698C2AEFCB55";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.9566081224471432 0 0.62562076311349912 ;
	setAttr ".r" -type "double3" 0 3.9012395161850124 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999956 0.99999999999999922 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.5049989467905045 -0.84504157737209518 -0.17572932667304611 ;
	setAttr ".roc" yes;
createNode transform -n "lfHand0_fgr01_2_ikc_ofs" -p "lfHand0_ctl_data";
	rename -uid "77D41933-449F-D73B-B015-248DC1C16BF6";
	setAttr ".t" -type "double3" 7.8008489896441189 6.9735724318615899 23.708155690759913 ;
	setAttr ".r" -type "double3" 7.9061029156742615 -172.31111262154505 88.112071239853975 ;
	setAttr -cb on ".ro";
createNode transform -n "lfHand0_fgr01_2_ikc_ofs1" -p "lfHand0_fgr01_2_ikc_ofs";
	rename -uid "6428D7B6-41DB-53C7-5194-D491AA47D979";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode transform -n "lfHand0_fgr01_2_ikc" -p "lfHand0_fgr01_2_ikc_ofs1";
	rename -uid "793CF28C-4EB8-F771-B415-348FA83AA810";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -4.4408920985006262e-16 0 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999956 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr01_2_ikcShape1" -p "lfHand0_fgr01_2_ikc";
	rename -uid "60BEB997-4238-5C2F-DD28-ADB9C33A655E";
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
		-1.2176179530192902e-15 0 0
		-1.2176179530192902e-15 0 -2.3142303769158676
		0.26724218194519772 0 -2.3142303769158676
		0.26724218194519772 0 -2.8487147408062672
		-0.26724218194520016 0 -2.8487147408062672
		-0.26724218194520016 0 -2.3142303769158676
		-1.2176179530192902e-15 0 -2.3142303769158676
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfHand0_fgr01_2_1_ikj_ikh" -p "lfHand0_fgr01_2_ikc";
	rename -uid "104A771D-4B71-2DB1-EBA7-27A8DF843840";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.5943012940789423 -5.3290705182007514e-15 4.6829892424507484 ;
	setAttr ".r" -type "double3" 0 3.9012395161850013 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000011 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.066699675863312199 -0.1363133609338521 -0.98841783718761789 ;
	setAttr ".roc" yes;
createNode transform -n "lfHand0_fgr02_2_ikc_ofs" -p "lfHand0_ctl_data";
	rename -uid "CC14C7CF-41AA-9F3E-59A4-68BBC5C5B6AB";
	setAttr ".t" -type "double3" 9.4287697104368906 6.9176210443146591 24.282791763109884 ;
	setAttr ".r" -type "double3" 2.5897516677720853 -172.40368445791049 91.210113442512124 ;
	setAttr -cb on ".ro";
createNode transform -n "lfHand0_fgr02_2_ikc_ofs1" -p "lfHand0_fgr02_2_ikc_ofs";
	rename -uid "A681B9F1-442D-FA2E-8792-5E946D51F4A3";
	setAttr -cb on ".ro";
createNode transform -n "lfHand0_fgr02_2_ikc" -p "lfHand0_fgr02_2_ikc_ofs1";
	rename -uid "0924372F-4FD6-A55D-AD9E-669478CB3A54";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 0 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr02_2_ikcShape1" -p "lfHand0_fgr02_2_ikc";
	rename -uid "F255F8B1-4E77-4344-A3A6-F8972B5C3597";
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
		4.0587265100643007e-16 0 0
		4.0587265100643007e-16 0 -2.3142303769158676
		0.26724218194519933 0 -2.3142303769158676
		0.26724218194519933 0 -2.8487147408062672
		-0.26724218194519855 0 -2.8487147408062672
		-0.26724218194519855 0 -2.3142303769158676
		4.0587265100643007e-16 0 -2.3142303769158676
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfHand0_fgr02_2_1_ikj_ikh" -p "lfHand0_fgr02_2_ikc";
	rename -uid "1EEEE5F6-42F3-2E8B-0C89-03BEC41D2260";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.2935519556906412 -8.8817841970012523e-15 5.4620699951082869 ;
	setAttr ".r" -type "double3" 0 3.9012395161850004 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.064515426012671032 -0.044787768886333817 -0.99691113724573654 ;
	setAttr ".roc" yes;
createNode transform -n "lfHand0_fgr03_2_ikc_ofs" -p "lfHand0_ctl_data";
	rename -uid "10BA82E7-4559-072A-8ED5-FE8F07804722";
	setAttr ".t" -type "double3" 11.028387763597937 6.7307447651061389 24.220576627728683 ;
	setAttr ".r" -type "double3" 170.77031574450046 -3.1995728360163289 -82.466110505950525 ;
	setAttr -cb on ".ro";
createNode transform -n "lfHand0_fgr03_2_ikc_ofs1" -p "lfHand0_fgr03_2_ikc_ofs";
	rename -uid "C2999014-4372-CE5F-D02D-0EB423CE967D";
	setAttr -cb on ".ro";
createNode transform -n "lfHand0_fgr03_2_ikc" -p "lfHand0_fgr03_2_ikc_ofs1";
	rename -uid "7D20849E-4C41-BCE9-6DCC-8C891C21F372";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr03_2_ikcShape1" -p "lfHand0_fgr03_2_ikc";
	rename -uid "92CDCB1F-4DDA-E2C9-637B-2FAB0AC619F5";
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
		0 8.8817841970012523e-16 7.6433117687265062e-17
		0 8.8817841970012523e-16 -2.3142303769158676
		0.26724218194519894 8.8817841970012523e-16 -2.3142303769158676
		0.26724218194519894 8.8817841970012523e-16 -2.8487147408062672
		-0.26724218194519894 8.8817841970012523e-16 -2.8487147408062672
		-0.26724218194519894 8.8817841970012523e-16 -2.3142303769158676
		0 8.8817841970012523e-16 -2.3142303769158676
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfHand0_fgr03_2_1_ikj_ikh" -p "lfHand0_fgr03_2_ikc";
	rename -uid "DC73B91C-45E3-25EC-A885-A79E8318FEE8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.3800664197727031 8.8817841970012523e-16 5.053136242422827 ;
	setAttr ".r" -type "double3" 0 3.9012395161850124 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.011366607812438772 0.16014256653534553 -0.98702844873403262 ;
	setAttr ".roc" yes;
createNode transform -n "lfHand0_fgr04_2_ikc_ofs" -p "lfHand0_ctl_data";
	rename -uid "C7191639-4615-2CA9-27F9-1485396C070D";
	setAttr ".t" -type "double3" 12.744028384394859 7.2917123655971317 23.607200405681965 ;
	setAttr ".r" -type "double3" 167.41113336135589 -2.3913301248526051 -81.83041037877841 ;
	setAttr -cb on ".ro";
createNode transform -n "lfHand0_fgr04_2_ikc_ofs1" -p "lfHand0_fgr04_2_ikc_ofs";
	rename -uid "A8FCF8B7-40FB-3B79-64B9-F0A050D04660";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "lfHand0_fgr04_2_ikc" -p "lfHand0_fgr04_2_ikc_ofs1";
	rename -uid "787A1810-492D-295D-DFFA-0FA0F945B5FF";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 3.5527136788005009e-15 -3.5527136788005009e-15 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr04_2_ikcShape1" -p "lfHand0_fgr04_2_ikc";
	rename -uid "D7BF2B0B-4F20-5E51-9CCD-32AA9D635A39";
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
		1.6234906040257203e-15 1.4706243686511901e-15 -3.3998474434259707e-15
		1.6234906040257203e-15 1.4706243686511901e-15 -2.3142303769158712
		0.26724218194520055 1.4706243686511901e-15 -2.3142303769158712
		0.26724218194520055 1.4706243686511901e-15 -2.8487147408062703
		-0.26724218194519733 1.4706243686511901e-15 -2.8487147408062703
		-0.26724218194519733 1.4706243686511901e-15 -2.3142303769158712
		1.6234906040257203e-15 1.4706243686511901e-15 -2.3142303769158712
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfHand0_fgr04_2_1_ikj_ikh" -p "lfHand0_fgr04_2_ikc";
	rename -uid "E0F7F747-4626-EF1B-3385-23875BD039F6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.7855002048546584 -5.3290705182007514e-15 4.4433354385565167 ;
	setAttr ".r" -type "double3" 0 3.9012395161850124 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000011 1.0000000000000011 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.024715599037858239 0.21776379940968651 -0.97568850912105098 ;
	setAttr ".roc" yes;
createNode transform -n "lfHand0_smartScale" -p "lfHand0_ctl_data";
	rename -uid "34C04E0F-45CD-3C72-CE29-F79563E542AE";
	setAttr -cb on ".ro";
createNode transform -n "lfHand0_smart_ctl_ofs" -p "lfHand0_smartScale";
	rename -uid "064EB44F-497C-E158-2C2F-E4A15E1BA04A";
	setAttr ".t" -type "double3" 18.932328818432275 -3.5527136788005009e-15 3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
createNode transform -n "lfHand0_smart_ctl" -p "lfHand0_smart_ctl_ofs";
	rename -uid "DD1108FE-4875-8A30-580B-A1BDF07DBFFB";
	addAttr -ci true -sn "palmScale" -ln "palmScale" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "showCtls" -ln "showCtls" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -k on ".palmScale";
	setAttr -cb on ".showCtls";
createNode nurbsCurve -n "lfHand0_smart_ctlShape1" -p "lfHand0_smart_ctl";
	rename -uid "CA39CB83-44A9-F55A-C67E-22B68B54A8EB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 23 0 no 3
		24 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23
		24
		-0.43028028248835043 -0.86056040083783047 0.74526712446421461
		0.43028015938419767 -0.86056040083783047 0.74526720653364986
		0.86056040083783047 -0.86056040083783047 0
		0.43028040559250325 -0.86056040083783047 -0.74526712446421461
		-0.43028007731476248 -0.86056040083783047 -0.74526728860308511
		-0.86056040083783047 -0.86056040083783047 -1.2823349249926665e-07
		-0.43028028248835043 -0.86056040083783047 0.74526712446421461
		-0.43028028248835043 0.86056040083783047 0.74526712446421461
		-0.86056040083783047 0.86056040083783047 -1.2823349249926665e-07
		-0.43028007731476248 0.86056040083783047 -0.74526728860308511
		0.43028040559250325 0.86056040083783047 -0.74526712446421461
		0.86056040083783047 0.86056040083783047 0
		0.43028015938419767 0.86056040083783047 0.74526720653364986
		-0.43028028248835043 0.86056040083783047 0.74526712446421461
		0.43028015938419767 0.86056040083783047 0.74526720653364986
		0.43028015938419767 -0.86056040083783047 0.74526720653364986
		0.86056040083783047 -0.86056040083783047 0
		0.86056040083783047 0.86056040083783047 0
		0.43028040559250325 0.86056040083783047 -0.74526712446421461
		0.43028040559250325 -0.86056040083783047 -0.74526712446421461
		-0.43028007731476248 -0.86056040083783047 -0.74526728860308511
		-0.43028007731476248 0.86056040083783047 -0.74526728860308511
		-0.86056040083783047 0.86056040083783047 -1.2823349249926665e-07
		-0.86056040083783047 -0.86056040083783047 -1.2823349249926665e-07
		;
createNode transform -n "lfHand0_grp_ofs" -p "lfHand0_ctl_data";
	rename -uid "61AA4DE1-45C0-82B5-F439-129854DBC88D";
createNode transform -n "lfHand0_grp" -p "lfHand0_grp_ofs";
	rename -uid "1DD5F5F5-4154-A22B-00C8-879868563234";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 0 -en "palmIK" -at "enum";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
	setAttr -k on ".space";
createNode transform -n "lfHand0_anchorF1" -p "master_ctl";
	rename -uid "B71BCE03-4CB2-47D1-FFC4-798844368FBF";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "lfHand0_anchorF1Shape" -p "lfHand0_anchorF1";
	rename -uid "6D75F8EE-4083-A68E-DB71-67A386D5FEAD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 2.5816812025134914 2.5816812025134914 2.5816812025134914 ;
createNode transform -n "lfLegBp0_ctl_data" -p "master_ctl";
	rename -uid "439EF160-414A-A87E-68E7-17BD80F5F5B3";
	setAttr ".t" -type "double3" 5.8362665560894751 51.646830813409281 -15.548650060442803 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_FK" -p "lfLegBp0_ctl_data";
	rename -uid "01870FA7-4F1E-3336-B1D4-DDA7037F3F9F";
	setAttr ".t" -type "double3" -5.8362665560894751 -51.646830813409281 15.548650060442803 ;
	setAttr -cb on ".ro";
createNode joint -n "lfLegBp0_hip_fk" -p "lfLegBp0_FK";
	rename -uid "AEE9AEAD-43E3-EF2A-BC64-8BA84B2437E3";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 5.7717774525367505 126.36157877602781 101.38868297058508 ;
	setAttr ".radi" 1.0786626489001134;
createNode joint -n "lfLegBp0_upr_fk" -p "lfLegBp0_hip_fk";
	rename -uid "50A560AF-4F48-D8F4-DF5B-5091AE2221C3";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -47.120804172589665 73.264493320448423 -21.979263367878179 ;
	setAttr ".radi" 1.0786626489001134;
createNode joint -n "lfLegBp0_lwr_fk" -p "lfLegBp0_upr_fk";
	rename -uid "7E0F2620-445F-13C6-79FD-0F9F4539DE45";
	setAttr ".v" no;
	setAttr -cb on ".ro" 2;
	setAttr ".jo" -type "double3" 0 -39.831183511772039 0 ;
	setAttr ".pa" -type "double3" 0 -45 0 ;
	setAttr ".radi" 1.0786626489001134;
createNode joint -n "lfLegBp0_palm_fk" -p "lfLegBp0_lwr_fk";
	rename -uid "A65FF0ED-4C64-4BDE-B945-C58E41FDC24C";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 23.715212324665817 15.972799340118446 2.6437541264943625 ;
	setAttr ".radi" 1.0786626489001134;
createNode joint -n "lfLegBp0_ball_fk" -p "lfLegBp0_palm_fk";
	rename -uid "B16BF127-4F2A-1BD8-DF45-CCAC47A8B46C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.4681892616587917 1.0835776720341528e-13 -7.8489850559674554 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 69.448694296522731 0 ;
	setAttr ".radi" 1.0786626489001134;
createNode joint -n "lfLegBp0_tip_fk" -p "lfLegBp0_ball_fk";
	rename -uid "CBEDB085-4BC8-AF80-A214-CA9E29C5B4ED";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.6013666280159295 7.460698725481052e-14 2.2204460492503131e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 20.551305703477279 0 ;
	setAttr ".radi" 1.0786626489001134;
createNode transform -n "lfLegBp0_upr_fkc_ofs" -p "lfLegBp0_FK";
	rename -uid "E336236B-4875-C1A8-3B3A-68BD5CC2A8E7";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_upr_fkc" -p "lfLegBp0_upr_fkc_ofs";
	rename -uid "6C9747CD-4738-5710-5A0F-02BC52C38908";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000004 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegBp0_upr_fkcShape1" -p "lfLegBp0_upr_fkc";
	rename -uid "6388575E-432C-C98E-577A-0D875E2EC391";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 20 0 no 3
		25 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 20 20
		23
		1.2719402525673574e-16 4.7916246160013696 -2.8109127671711831
		1.066228983554542e-16 5.0032688172125628 -2.4296756840754283
		6.5480644552890649e-17 5.4265572196349154 -1.6672015178839037
		-5.8867299197767229e-20 5.4448313531661361 0.16118494245474496
		-6.5245175388120853e-17 5.3625941465972584 1.0224617487873284
		-1.2801816735561907e-16 5.0474769070213412 2.1027629619804964
		-1.858463067297539e-16 4.5368478308803031 3.0299033493415974
		-2.3653923906119116e-16 3.8848326044858998 3.8717005353650125
		-2.7814028044517474e-16 2.6570550454326112 4.9223816831273375
		-3.090530387222569e-16 1.6206622418879846 5.3607623574530407
		-3.2808892146168488e-16 -0.42206103720406379 6.1373018886620629
		-3.3451657609150536e-16 -1.9841558252467315e-15 7.4740342358430754
		-3.280889214616831e-16 0.42206103720408722 6.1373018886620425
		-3.0905303872226844e-16 -1.6206622418880861 5.3607623574532406
		-2.7814028044515945e-16 -2.6570550454323656 4.9223816831270204
		-2.3653923906124352e-16 -3.8848326044867894 3.8717005353661387
		-1.858463067295605e-16 -4.536847830877031 3.0299033493374452
		-1.2801816735632651e-16 -5.0474769070332401 2.1027629619957628
		-6.5245175385487451e-17 -5.3625941465530014 1.0224617487304555
		-5.8867303838078041e-20 -5.4448313531354788 0.1611849425524082
		6.5480644557093516e-17 -5.4265572197021905 -1.6672015179811923
		1.0662289835684836e-16 -5.0032688172347255 -2.4296756841077074
		1.2719402525672578e-16 -4.7916246160009921 -2.8109127671709651
		;
createNode transform -n "lfLegBp0_lwr_fkc_ofs" -p "lfLegBp0_FK";
	rename -uid "BAE0AC25-4F27-58AE-BA33-85B558743AAB";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_lwr_fkc" -p "lfLegBp0_lwr_fkc_ofs";
	rename -uid "4D52E969-4F5C-04F5-BA65-70A681684535";
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
createNode nurbsCurve -n "lfLegBp0_lwr_fkcShape1" -p "lfLegBp0_lwr_fkc";
	rename -uid "76C04B3B-4064-9BE0-AD1F-2CB1CCF24014";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 20 0 no 3
		25 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 20 20
		23
		1.2719402525673574e-16 4.7916246160013696 -2.8109127671711831
		1.066228983554542e-16 5.0032688172125628 -2.4296756840754283
		6.5480644552890649e-17 5.4265572196349154 -1.6672015178839037
		-5.8867299197767229e-20 5.4448313531661361 0.16118494245474496
		-6.5245175388120853e-17 5.3625941465972584 1.0224617487873284
		-1.2801816735561907e-16 5.0474769070213412 2.1027629619804964
		-1.858463067297539e-16 4.5368478308803031 3.0299033493415974
		-2.3653923906119116e-16 3.8848326044858998 3.8717005353650125
		-2.7814028044517474e-16 2.6570550454326112 4.9223816831273375
		-3.090530387222569e-16 1.6206622418879846 5.3607623574530407
		-3.2808892146168488e-16 -0.42206103720406379 6.1373018886620629
		-3.3451657609150536e-16 -1.9841558252467315e-15 7.4740342358430754
		-3.280889214616831e-16 0.42206103720408722 6.1373018886620425
		-3.0905303872226844e-16 -1.6206622418880861 5.3607623574532406
		-2.7814028044515945e-16 -2.6570550454323656 4.9223816831270204
		-2.3653923906124352e-16 -3.8848326044867894 3.8717005353661387
		-1.858463067295605e-16 -4.536847830877031 3.0299033493374452
		-1.2801816735632651e-16 -5.0474769070332401 2.1027629619957628
		-6.5245175385487451e-17 -5.3625941465530014 1.0224617487304555
		-5.8867303838078041e-20 -5.4448313531354788 0.1611849425524082
		6.5480644557093516e-17 -5.4265572197021905 -1.6672015179811923
		1.0662289835684836e-16 -5.0032688172347255 -2.4296756841077074
		1.2719402525672578e-16 -4.7916246160009921 -2.8109127671709651
		;
createNode transform -n "lfLegBp0_palm_fkc_ofs" -p "lfLegBp0_FK";
	rename -uid "DD0E696A-406A-A366-C3AE-B19B6EB961CE";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_palm_fkc" -p "lfLegBp0_palm_fkc_ofs";
	rename -uid "7488989E-4D7A-5330-EA28-8298819771C7";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegBp0_palm_fkcShape1" -p "lfLegBp0_palm_fkc";
	rename -uid "C3979FF0-4535-7FB2-B88F-E0B36938AF05";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 20 0 no 3
		25 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 20 20
		23
		1.2719402525673574e-16 4.7916246160013696 -2.8109127671711831
		1.066228983554542e-16 5.0032688172125628 -2.4296756840754283
		6.5480644552890649e-17 5.4265572196349154 -1.6672015178839037
		-5.8867299197767229e-20 5.4448313531661361 0.16118494245474496
		-6.5245175388120853e-17 5.3625941465972584 1.0224617487873284
		-1.2801816735561907e-16 5.0474769070213412 2.1027629619804964
		-1.858463067297539e-16 4.5368478308803031 3.0299033493415974
		-2.3653923906119116e-16 3.8848326044858998 3.8717005353650125
		-2.7814028044517474e-16 2.6570550454326112 4.9223816831273375
		-3.090530387222569e-16 1.6206622418879846 5.3607623574530407
		-3.2808892146168488e-16 -0.42206103720406379 6.1373018886620629
		-3.3451657609150536e-16 -1.9841558252467315e-15 7.4740342358430754
		-3.280889214616831e-16 0.42206103720408722 6.1373018886620425
		-3.0905303872226844e-16 -1.6206622418880861 5.3607623574532406
		-2.7814028044515945e-16 -2.6570550454323656 4.9223816831270204
		-2.3653923906124352e-16 -3.8848326044867894 3.8717005353661387
		-1.858463067295605e-16 -4.536847830877031 3.0299033493374452
		-1.2801816735632651e-16 -5.0474769070332401 2.1027629619957628
		-6.5245175385487451e-17 -5.3625941465530014 1.0224617487304555
		-5.8867303838078041e-20 -5.4448313531354788 0.1611849425524082
		6.5480644557093516e-17 -5.4265572197021905 -1.6672015179811923
		1.0662289835684836e-16 -5.0032688172347255 -2.4296756841077074
		1.2719402525672578e-16 -4.7916246160009921 -2.8109127671709651
		;
createNode transform -n "lfLegBp0_ikc_matcher" -p "lfLegBp0_palm_fkc";
	rename -uid "3E16D484-4B90-0E87-CC53-51926553D9E6";
	setAttr ".t" -type "double3" 1.7763568394002505e-14 -7.9936057773011271e-14 -3.1974423109204508e-14 ;
	setAttr ".r" -type "double3" 0 180 89.999999999999773 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
createNode transform -n "lfLegBp0_ball_fkc_ofs" -p "lfLegBp0_FK";
	rename -uid "2BD76EC7-4C7E-A3CE-E054-4CA3C5E5A943";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_ball_fkc" -p "lfLegBp0_ball_fkc_ofs";
	rename -uid "FD66B471-4A7B-B2F4-C8C7-4584461A42A2";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegBp0_ball_fkcShape1" -p "lfLegBp0_ball_fkc";
	rename -uid "8C76C56C-46BD-F178-1C53-16B89DBBB800";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.7298395215204824e-17 -2.7916361909141001 -2.7916361909141036
		8.1032167615556412e-17 -1.5456326815285048e-16 -2.5242097274163182
		5.7298395215204787e-17 2.7916361909141001 -2.7916361909141014
		-3.3071872417280675e-32 2.5242097274163253 -9.8014379155177075e-16
		-5.7298395215204812e-17 2.7916361909141001 2.7916361909141001
		-8.1032167615556486e-17 2.5285181478137418e-16 2.5242097274163204
		-5.7298395215204787e-17 -2.7916361909141001 2.7916361909141014
		-4.8322922382751469e-32 -2.5242097274163253 -5.050627242551928e-16
		5.7298395215204824e-17 -2.7916361909141001 -2.7916361909141036
		8.1032167615556412e-17 -1.5456326815285048e-16 -2.5242097274163182
		5.7298395215204787e-17 2.7916361909141001 -2.7916361909141014
		;
createNode transform -n "lfLegBp0_toe00_2_ikc_ofs" -p "lfLegBp0_ball_fkc_ofs";
	rename -uid "CAE29AC6-4524-E3CC-C34A-699D99DFE59A";
	setAttr ".t" -type "double3" 0.087901177631648508 3.5481000851797244 1.7060344535797927 ;
	setAttr ".r" -type "double3" 6.7501608739097696 7.6776584215117021 19.134576048299007 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999989 ;
createNode transform -n "lfLegBp0_toe00_2_ikc_ofs1" -p "lfLegBp0_toe00_2_ikc_ofs";
	rename -uid "EBD563B0-43FA-8DED-E69C-6C8F394B0BD1";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "lfLegBp0_toe00_2_ikc" -p "lfLegBp0_toe00_2_ikc_ofs1";
	rename -uid "0945380C-4E96-3DEB-6EC8-BC8CE5FC33A5";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe00_2_ikcShape1" -p "lfLegBp0_toe00_2_ikc";
	rename -uid "DA47F7CF-4036-C8FC-9281-66ADE61F63ED";
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
		-3.4238311205499584e-15 -3.3306690738754696e-16 -1.208273983598837e-17
		-3.4238311205499584e-15 -3.3306690738754696e-16 -0.97557165134364887
		0.11265684667764074 -3.3306690738754696e-16 -0.97557165134364887
		0.11265684667764074 -3.3306690738754696e-16 -1.2008853446989378
		-0.1126568466776476 -3.3306690738754696e-16 -1.2008853446989378
		-0.1126568466776476 -3.3306690738754696e-16 -0.97557165134364887
		-3.4238311205499584e-15 -3.3306690738754696e-16 -0.97557165134364887
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegBp0_toe00_2_1_ikj_ikh" -p "lfLegBp0_toe00_2_ikc";
	rename -uid "F905D091-4BE9-D496-5A79-8589CABE73A4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.1333352719419789 -0.23289527129174381 0.24522044789437603 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000009 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.92359235767708403 -0.33179939695880439 -0.1920581084418464 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegBp0_toe01_2_ikc_ofs" -p "lfLegBp0_ball_fkc_ofs";
	rename -uid "A43D5C9B-47FA-CCAB-98D5-72AC90955F4A";
	setAttr ".t" -type "double3" 0.31294414992851394 1.1377543490384561 -0.025546625333493722 ;
	setAttr ".r" -type "double3" -2.2625570441499763 12.715776393464191 -6.3992236291162872 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "lfLegBp0_toe01_2_ikc_ofs1" -p "lfLegBp0_toe01_2_ikc_ofs";
	rename -uid "8E4AFC08-4985-0740-9F9E-D4A8BD9BBB14";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999967 ;
createNode transform -n "lfLegBp0_toe01_2_ikc" -p "lfLegBp0_toe01_2_ikc_ofs1";
	rename -uid "058AEBFA-4291-F9A0-D40E-E1935CAFDBF0";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe01_2_ikcShape1" -p "lfLegBp0_toe01_2_ikc";
	rename -uid "9AEF5CB1-4E62-8271-E173-C7B0B1952716";
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
		0 -4.0275799453294569e-18 -1.1102230246251565e-16
		0 -4.0275799453294569e-18 -0.97557165134364898
		0.11265684667764417 -4.0275799453294569e-18 -0.97557165134364898
		0.11265684667764417 -4.0275799453294569e-18 -1.2008853446989378
		-0.11265684667764417 -4.0275799453294569e-18 -1.2008853446989378
		-0.11265684667764417 -4.0275799453294569e-18 -0.97557165134364898
		0 -4.0275799453294569e-18 -0.97557165134364898
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegBp0_toe01_2_1_ikj_ikh" -p "lfLegBp0_toe01_2_ikc";
	rename -uid "2CE29546-4BCA-A94D-CB6A-0AB018A1BC9A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.9256999959548331 0.081278246112022501 0.81836973370825061 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000009 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.98497061678381159 0.10971437992947149 -0.13340029576132781 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegBp0_toe02_2_ikc_ofs" -p "lfLegBp0_ball_fkc_ofs";
	rename -uid "1162A4F5-4904-6BF3-5DCA-2AB3B9C2450C";
	setAttr ".t" -type "double3" 0.2884804020631595 -0.18417597191854007 0.13483691236017625 ;
	setAttr ".r" -type "double3" -2.6934827162365691 12.144864192597229 -7.6139345063535568 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "lfLegBp0_toe02_2_ikc_ofs1" -p "lfLegBp0_toe02_2_ikc_ofs";
	rename -uid "50195C16-42F9-6B69-2F0B-FCB469C2FCB5";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "lfLegBp0_toe02_2_ikc" -p "lfLegBp0_toe02_2_ikc_ofs1";
	rename -uid "A7C27050-4740-F5BA-6AB9-D5A26B0C0F93";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe02_2_ikcShape1" -p "lfLegBp0_toe02_2_ikc";
	rename -uid "524DB465-41F6-6A63-526C-88BCBFFA6B9F";
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
		1.7119155602749792e-15 -4.0275799453294569e-18 -1.1102230246251565e-16
		1.7119155602749792e-15 -4.0275799453294569e-18 -0.97557165134364898
		0.11265684667764587 -4.0275799453294569e-18 -0.97557165134364898
		0.11265684667764587 -4.0275799453294569e-18 -1.2008853446989378
		-0.11265684667764246 -4.0275799453294569e-18 -1.2008853446989378
		-0.11265684667764246 -4.0275799453294569e-18 -0.97557165134364898
		1.7119155602749792e-15 -4.0275799453294569e-18 -0.97557165134364898
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegBp0_toe02_2_1_ikj_ikh" -p "lfLegBp0_toe02_2_ikc";
	rename -uid "091C1FAC-4BDF-AA42-5048-D8B7A9629B33";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.3099075007462337 0.084175803612016153 1.1113044012427982 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000007 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.98118307302160623 0.13088037202071676 -0.14195106704634639 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegBp0_toe03_2_ikc_ofs" -p "lfLegBp0_ball_fkc_ofs";
	rename -uid "2D33F8C7-47EA-928F-9237-628995EC58B1";
	setAttr ".t" -type "double3" 0.19142563010252189 -1.4060084168635587 0.32078617372497575 ;
	setAttr ".r" -type "double3" -3.3518704834799635 11.520464255122308 -9.4752094356702106 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "lfLegBp0_toe03_2_ikc_ofs1" -p "lfLegBp0_toe03_2_ikc_ofs";
	rename -uid "9B55F907-42A2-099C-F07A-5BBBB183A6E0";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "lfLegBp0_toe03_2_ikc" -p "lfLegBp0_toe03_2_ikc_ofs1";
	rename -uid "AA56AFDC-4533-46BD-EED5-88A566835E61";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe03_2_ikcShape1" -p "lfLegBp0_toe03_2_ikc";
	rename -uid "1953B1C1-453B-9371-B3BE-969D91C031AE";
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
		0 -1.8146188488808802e-15 -1.1191531525191702e-15
		0 -1.8146188488808802e-15 -0.97557165134364998
		0.11265684667764417 -1.8146188488808802e-15 -0.97557165134364998
		0.11265684667764417 -1.8146188488808802e-15 -1.2008853446989389
		-0.11265684667764417 -1.8146188488808802e-15 -1.2008853446989389
		-0.11265684667764417 -1.8146188488808802e-15 -0.97557165134364998
		0 -1.8146188488808802e-15 -0.97557165134364998
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegBp0_toe03_2_1_ikj_ikh" -p "lfLegBp0_toe03_2_ikc";
	rename -uid "307B5A10-47D8-C5BC-E6D3-97A48372DF39";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.0060129569803644 0.14506549608208807 0.91352906656780952 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000009 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.97508435231403445 0.16320767866999636 -0.15024566381587007 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegBp0_toe04_2_ikc_ofs" -p "lfLegBp0_ball_fkc_ofs";
	rename -uid "F65ADEA1-43E4-F688-C816-F58E26B9CCF3";
	setAttr ".t" -type "double3" -0.060596954941546599 -2.613467326685889 0.47345404662619295 ;
	setAttr ".r" -type "double3" -4.0518855610888762 10.566491200550272 -11.448192295800506 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "lfLegBp0_toe04_2_ikc_ofs1" -p "lfLegBp0_toe04_2_ikc_ofs";
	rename -uid "0803F822-4CAC-A0DC-74D2-2D9AB4B8B0F0";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 1 ;
createNode transform -n "lfLegBp0_toe04_2_ikc" -p "lfLegBp0_toe04_2_ikc_ofs1";
	rename -uid "46280194-4BA8-C345-B460-4080FFB77ADF";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe04_2_ikcShape1" -p "lfLegBp0_toe04_2_ikc";
	rename -uid "1D1036EB-4C46-E8D0-A575-AC8267F8E78E";
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
		-1.7119155602749792e-15 -1.7743430494275858e-15 -8.9301278940134838e-18
		-1.7119155602749792e-15 -1.7743430494275858e-15 -0.97557165134364898
		0.11265684667764246 -1.7743430494275858e-15 -0.97557165134364898
		0.11265684667764246 -1.7743430494275858e-15 -1.2008853446989378
		-0.11265684667764587 -1.7743430494275858e-15 -1.2008853446989378
		-0.11265684667764587 -1.7743430494275858e-15 -0.97557165134364898
		-1.7119155602749792e-15 -1.7743430494275858e-15 -0.97557165134364898
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegBp0_toe04_2_1_ikj_ikh" -p "lfLegBp0_toe04_2_ikc";
	rename -uid "982CD04F-47F2-39E2-A5C8-42A74B5680DD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.4532211288825181 0.16923373883701309 0.7342912608275185 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.96653798097082344 0.19787905754404472 -0.16324279440859016 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegBp0_quadScap_ofs" -p "lfLegBp0_FK";
	rename -uid "293268C4-400F-FB45-0412-228ECC0A0673";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_quadScap" -p "lfLegBp0_quadScap_ofs";
	rename -uid "AE1D28F6-47BD-AFD6-98B0-34B2557C1EBE";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "lfLegBp0_hip_fkc_ofs" -p "lfLegBp0_quadScap";
	rename -uid "FA43EDB7-4608-2D64-3E96-AD951605972C";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
createNode transform -n "lfLegBp0_hip_fkc" -p "lfLegBp0_hip_fkc_ofs";
	rename -uid "64D2669B-4C38-E865-1C0D-A0859006310A";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "autoAim" -ln "autoAim" -dv 0.3 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -k on ".autoAim";
createNode nurbsCurve -n "lfLegBp0_hip_fkcShape1" -p "lfLegBp0_hip_fkc";
	rename -uid "8FAB5B61-4728-C9E1-2F63-4EA8789DA062";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.5832723818282002 -8.0899698667508506 -5.5832723818282073
		3.0912653630570096e-16 -8.0899698667508506 -5.0484194548326364
		-5.5832723818282002 -8.0899698667508506 -5.5832723818282028
		-5.0484194548326506 -8.0899698667508506 -1.9602875831035415e-15
		-5.5832723818282002 -8.0899698667508506 5.5832723818282002
		-5.0570362956274835e-16 -8.0899698667508506 5.0484194548326409
		5.5832723818282002 -8.0899698667508506 5.5832723818282028
		5.0484194548326506 -8.0899698667508506 -1.0101254485103856e-15
		5.5832723818282002 -8.0899698667508506 -5.5832723818282073
		3.0912653630570096e-16 -8.0899698667508506 -5.0484194548326364
		-5.5832723818282002 -8.0899698667508506 -5.5832723818282028
		;
createNode joint -n "lfLegBp0_autoAim" -p "lfLegBp0_quadScap_ofs";
	rename -uid "080EE13E-44FE-F68F-A37E-28A46A9CED22";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 2.5444437451708134e-14 -3.7488035813488617e-30 7.4976071626977191e-30 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 118.40529398764579 45.075350333843673 3.3656578687122525 ;
	setAttr ".radi" 1.61799397335017;
createNode joint -n "lfLegBp0_autoAim_end" -p "lfLegBp0_autoAim";
	rename -uid "E8582340-46D2-20AB-D0DA-4BA7D414588B";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 48.22701377784189 -7.1054273576010019e-15 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -9.5416640443905519e-15 -9.1440947092076119e-15 8.3489560388417351e-15 ;
	setAttr ".radi" 1.61799397335017;
createNode ikEffector -n "effector14" -p "lfLegBp0_autoAim";
	rename -uid "2C7DE101-40F6-CF59-E8A2-8ABB1F12DF96";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegBp0_IK" -p "lfLegBp0_ctl_data";
	rename -uid "8AF47B4E-4D2B-0FCD-21AA-1197292AE875";
	setAttr ".t" -type "double3" -5.8362665560894751 -51.646830813409281 15.548650060442803 ;
	setAttr -cb on ".ro";
createNode joint -n "lfLegBp0_hip_ik" -p "lfLegBp0_IK";
	rename -uid "0C431806-4EFD-A6C7-A4C7-00BC86AF152B";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 5.7717774525367505 126.36157877602781 101.38868297058508 ;
	setAttr ".radi" 1.61799397335017;
createNode joint -n "lfLegBp0_upr_ik" -p "lfLegBp0_hip_ik";
	rename -uid "D6D7B215-4AC6-5AC6-4F1C-EDB3B9F1316D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 11.295196069982897 -5.3290705182007514e-15 0 ;
	setAttr ".r" -type "double3" 8.016479500612956e-07 0.00087561636601577483 2.9376385253822893e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -47.120804172589665 73.264493320448423 -21.979263367878179 ;
	setAttr ".radi" 1.61799397335017;
createNode joint -n "lfLegBp0_lwr_ik" -p "lfLegBp0_upr_ik";
	rename -uid "C202DDEE-4EF0-7454-1F30-B3B38C79E657";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 21.61159335993613 -2.4868995751603507e-14 5.3845816694320092e-15 ;
	setAttr ".r" -type "double3" 1.0255386541274757e-13 -0.001731430097163528 8.8746439512785398e-12 ;
	setAttr -cb on ".ro" 2;
	setAttr ".jo" -type "double3" 0 -39.831183511772039 0 ;
	setAttr ".pa" -type "double3" 0 -45 0 ;
	setAttr ".radi" 1.61799397335017;
createNode joint -n "lfLegBp0_palm_ik" -p "lfLegBp0_lwr_ik";
	rename -uid "752F65DD-44D3-281A-D1C4-73B53B20D395";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 22.053068729775909 -3.5527136788005009e-14 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 1.4132214829706103e-08 9.3185406667591029e-18 -7.5551256164863305e-08 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 23.715212324665817 15.972799340118446 2.6437541264943625 ;
	setAttr ".radi" 1.61799397335017;
createNode joint -n "lfLegBp0_ball_ik" -p "lfLegBp0_palm_ik";
	rename -uid "86230246-4BDA-33B8-65FF-85A31CCC7834";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.4681892616587917 1.0835776720341528e-13 -7.8489850559674554 ;
	setAttr ".r" -type "double3" 7.4749116234943607e-08 8.4479573342779998e-22 2.5142730713097725e-23 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 69.448694296522731 0 ;
	setAttr ".radi" 1.61799397335017;
createNode joint -n "lfLegBp0_tip_ik" -p "lfLegBp0_ball_ik";
	rename -uid "49B9B755-470C-C101-44FB-FC98E639CDF0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.6013666280159295 7.460698725481052e-14 2.2204460492503131e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 20.551305703477279 0 ;
	setAttr ".radi" 1.61799397335017;
createNode ikEffector -n "effector12" -p "lfLegBp0_ball_ik";
	rename -uid "FDFBE47A-4700-A6C3-52DA-9E92703FA4D8";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector11" -p "lfLegBp0_palm_ik";
	rename -uid "272814E7-4F31-45C2-C376-BEABDD342D07";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector10" -p "lfLegBp0_lwr_ik";
	rename -uid "B10C6CB9-4C0F-9F2C-5404-3CBE51F735A2";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "lfLegBp0_softJ" -p "lfLegBp0_hip_ik";
	rename -uid "E2819B17-4740-D75D-C91C-0182C2155CB2";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 11.295196069982889 -3.5527136788005009e-15 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -146.74133888045472 56.279280908848726 5.0329720950519921 ;
createNode joint -n "lfLegBp0_softJ_end" -p "lfLegBp0_softJ";
	rename -uid "DBBF56BD-4DC6-E4FB-7922-228AF1F6B0B1";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 41.053592681884766 -3.9968028886505635e-15 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -9.5416640443905519e-15 3.1805546814635187e-15 7.5538173684758535e-15 ;
createNode ikEffector -n "effector13" -p "lfLegBp0_softJ";
	rename -uid "67CA5D20-497F-BCFB-1B65-24882BEC4E6C";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "lfLegBp0_pvChainJ" -p "lfLegBp0_hip_ik";
	rename -uid "5B8BB981-4EFC-F40B-2604-FFA10FC800D1";
	setAttr ".ove" yes;
	setAttr ".ovc" 5;
	setAttr ".t" -type "double3" 11.295196069982889 -1.7763568394002505e-15 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -2.5444437451708134e-14 1.3211603142415276e-29 1.1009669285346058e-29 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -146.74133888089912 56.279280908786532 5.0329720950980246 ;
createNode joint -n "lfLegBp0_pvChainJ_end" -p "lfLegBp0_pvChainJ";
	rename -uid "B61F67E7-4AE3-85EA-98A8-FEA8CA84A099";
	setAttr ".ove" yes;
	setAttr ".ovc" 5;
	setAttr ".t" -type "double3" 41.053368017323628 -2.1316282072803006e-14 -1.7763568394002505e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -9.5416640443905519e-15 3.1805546814635187e-15 7.5538173684758535e-15 ;
createNode ikEffector -n "effector20" -p "lfLegBp0_pvChainJ";
	rename -uid "0DF39F45-4486-C122-F2AF-24B0863DED4B";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegBp0_pvc_SPACE_1_ofs" -p "lfLegBp0_pvChainJ";
	rename -uid "A12C99F9-45BB-9227-64EB-3D815B63D296";
	setAttr ".t" -type "double3" 21.286687967454345 29.088841901278585 19.918707612777233 ;
	setAttr ".r" -type "double3" -1.6673696113276282 55.606887918372223 85.498336215391632 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegBp0_pvc_SPACE_1" -p "lfLegBp0_pvc_SPACE_1_ofs";
	rename -uid "4ECC82DF-4B6E-618B-CC2C-3CBEAD27F55B";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 3.5527136788005009e-15 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "lfLegBp0_ikCstG" -p "lfLegBp0_IK";
	rename -uid "A389D8DD-42D7-ED64-9058-739D3528B32C";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_heelRollG" -p "lfLegBp0_ikCstG";
	rename -uid "49ACBA67-4321-489D-DE1C-8EBACE50F2D4";
	setAttr ".t" -type "double3" 1.2434497875801753e-14 3.6540582853666423 2.5053504932438138 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_heelRollG_ctl" -p "lfLegBp0_heelRollG";
	rename -uid "776745F2-464D-155C-58C3-59AF68F86BA5";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegBp0_toeRollG" -p "lfLegBp0_heelRollG_ctl";
	rename -uid "266A99D0-4727-197C-B4B3-B3AD53D1C282";
	setAttr ".t" -type "double3" 1.139058052825904 1.9984014443252818e-15 -16.746157349371501 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_toeRollG_ctl" -p "lfLegBp0_toeRollG";
	rename -uid "4E501151-44B3-8943-696C-F4802859DE6E";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegBp0_footRollG" -p "lfLegBp0_toeRollG_ctl";
	rename -uid "9767A96F-49B3-3EEB-5555-D89D64344C19";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_outRollG" -p "lfLegBp0_footRollG";
	rename -uid "09AC477B-4733-F455-CE6A-A5966FE5EA2D";
	setAttr ".t" -type "double3" 1.1550078830907911 -1.5543122344752192e-15 13.260811151465175 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_outRollG_ctl" -p "lfLegBp0_outRollG";
	rename -uid "D4826221-4992-EAD3-EA74-7C91521AB3CD";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegBp0_inRollG" -p "lfLegBp0_outRollG_ctl";
	rename -uid "05935DAE-4001-9398-E14B-F1AA005BF90B";
	setAttr ".t" -type "double3" -4.9189533863814621 -2.2204460492503131e-16 0.32393823290298229 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_inRollG_ctl" -p "lfLegBp0_inRollG";
	rename -uid "11A978B3-49AC-E82F-B415-128ED4E4DE39";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegBp0_ballRollG" -p "lfLegBp0_inRollG_ctl";
	rename -uid "C9D09B0E-4656-F276-6A6D-F08F8499D858";
	setAttr ".t" -type "double3" 2.6248874504646516 -2.1858690237078533 -7.1929275842079257 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_ballG_ikc" -p "lfLegBp0_ballRollG";
	rename -uid "9DC473A4-4895-56E9-CA4F-6E91819A5E77";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode transform -n "lfLegBp0_dist_loc1" -p "lfLegBp0_ballG_ikc";
	rename -uid "55B7BB9A-4012-ED51-CF65-F0BA24A01475";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.6645352591003757e-14 -1.4681892616588037 7.8489850559674821 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "lfLegBp0_dist_loc1Shape" -p "lfLegBp0_dist_loc1";
	rename -uid "B7D9EAE9-4CDF-5518-1F7D-1ABC57ADAA4D";
	setAttr -k off ".v";
createNode transform -n "lfLegBp0_softJ_posGrp" -p "lfLegBp0_ballG_ikc";
	rename -uid "E8C45976-4B1B-16C8-693D-458C3634AC2B";
	setAttr ".t" -type "double3" -1.4839953877299195e-05 -1.4684132331478246 7.8489945809152637 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_1_ikh_ofs" -p "lfLegBp0_ballG_ikc";
	rename -uid "9C924816-4662-F67D-07F3-3489BDD6169A";
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegBp0_1_ikh" -p "lfLegBp0_1_ikh_ofs";
	rename -uid "2574DCAB-4772-9219-AA8A-82A7460F0823";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode nurbsCurve -n "stickCShape1" -p "lfLegBp0_ballG_ikc";
	rename -uid "FF2506BE-4ABC-A754-1318-E3B4D9B7AF64";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 25 0 no 3
		26 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		26
		5.0105885530280908e-17 -7.2716786400466091 -4.423208941843725e-16
		4.8398567392822054e-17 -7.2995613601340779 -0.21178934429250065
		4.339296936595358e-17 -7.3813090103296481 -0.40914558120546862
		3.5430208884620971e-17 -7.5113507044265786 -0.57861922661757603
		2.5052942765140454e-17 -7.6808242533987299 -0.70866098500781083
		1.2968356723703417e-17 -7.8781805224583499 -0.79040857091007666
		-1.5343707786521806e-32 -8.0899698667508506 -0.81829116241093725
		-1.2968356723703417e-17 -8.3017592110433522 -0.79040857091007666
		-2.5052942765140454e-17 -8.4991154801029722 -0.70866098500781083
		-3.5430208884620971e-17 -8.6685890290751235 -0.57861922661757603
		-4.339296936595358e-17 -8.7986312375184852 -0.40914558120546862
		-4.8398567392822054e-17 -8.8803783733676234 -0.21178934429250065
		-5.0105885530280908e-17 -8.9082610934550921 -2.4179840523692451e-16
		-4.8398567392822054e-17 -8.8803783733676234 0.21178934429250065
		-4.339296936595358e-17 -8.7986312375184852 0.40914558120546862
		-3.5430208884620971e-17 -8.6685890290751235 0.57861922661757603
		-2.5052942765140454e-17 -8.4991154801029722 0.70866098500781083
		-1.2968356723703417e-17 -8.3017592110433522 0.79040857091007666
		3.7487599582653405e-32 -8.0899698667508506 0.81829116241093725
		1.2968356723703417e-17 -7.8781805224583499 0.79040857091007666
		2.5052942765140454e-17 -7.6808242533987299 0.70866098500781083
		3.5430208884620971e-17 -7.5113507044265786 0.57861922661757603
		4.339296936595358e-17 -7.3813090103296481 0.40914558120546862
		4.8398567392822054e-17 -7.2995613601340779 0.21178934429250065
		5.0105885530280908e-17 -7.2716786400466091 -4.423208941843725e-16
		0 0 0
		;
createNode transform -n "lfLegBp0_toe_wiggle_grp" -p "lfLegBp0_inRollG_ctl";
	rename -uid "EA6DB359-4C1F-4902-D4C5-A1AAB3331198";
	setAttr ".t" -type "double3" 2.6248874504646516 -2.1858690237078533 -7.1929275842079257 ;
	setAttr ".r" -type "double3" 179.99999999999997 69.448694296522746 90.000000000000114 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
createNode ikHandle -n "lfLegBp0_2_ikh" -p "lfLegBp0_toe_wiggle_grp";
	rename -uid "F211CEBA-40A0-4252-6DE2-2C8C0F07F13A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.8582352035662097e-05 -1.8196253336100199e-05 9.8357878507648877e-05 ;
	setAttr ".r" -type "double3" 179.99907163252092 69.449481193531497 -0.00095094247074740653 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.93635821935315733 -2.8570422584981004e-16 0.35104598708685503 ;
	setAttr ".roc" yes;
createNode ikHandle -n "lfLegBp0_3_ikh" -p "lfLegBp0_toe_wiggle_grp";
	rename -uid "D59ACD5F-4CAA-727F-B445-2CA6B4F9803F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.6012980450346053 -2.7604521829260875e-05 7.6947962117657198e-06 ;
	setAttr ".r" -type "double3" 179.99967411226069 0.0007868994809647617 -8.1657951064625513e-05 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.93635821935315733 -2.8570422584981004e-16 0.35104598708685503 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "diamondShape2" -p "lfLegBp0_inRollG_ctl";
	rename -uid "C3D1DD4D-4B38-8EDD-D153-C9949368747F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.33371125700347259
		-0.33371125700347259 0 0
		0 0 -0.33371125700347259
		0.33371125700347259 0 0
		0 0 0.33371125700347259
		0 0.33371125700347259 0
		0.33371125700347259 0 0
		0 0 -0.33371125700347259
		0 0.33371125700347259 0
		-0.33371125700347259 0 0
		0 -0.33371125700347259 0
		0.33371125700347259 0 0
		0 0 0.33371125700347259
		0 -0.33371125700347259 0
		0 0 -0.33371125700347259
		;
createNode nurbsCurve -n "diamondShape3" -p "lfLegBp0_outRollG_ctl";
	rename -uid "BE0BE9B9-474E-DFAB-04AB-9E89B7635D01";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.33371125700347259
		-0.33371125700347259 0 0
		0 0 -0.33371125700347259
		0.33371125700347259 0 0
		0 0 0.33371125700347259
		0 0.33371125700347259 0
		0.33371125700347259 0 0
		0 0 -0.33371125700347259
		0 0.33371125700347259 0
		-0.33371125700347259 0 0
		0 -0.33371125700347259 0
		0.33371125700347259 0 0
		0 0 0.33371125700347259
		0 -0.33371125700347259 0
		0 0 -0.33371125700347259
		;
createNode nurbsCurve -n "diamondShape1" -p "lfLegBp0_toeRollG_ctl";
	rename -uid "20E904E2-470C-7CAE-5A43-D0877638244E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.33371125700347259
		-0.33371125700347259 0 0
		0 0 -0.33371125700347259
		0.33371125700347259 0 0
		0 0 0.33371125700347259
		0 0.33371125700347259 0
		0.33371125700347259 0 0
		0 0 -0.33371125700347259
		0 0.33371125700347259 0
		-0.33371125700347259 0 0
		0 -0.33371125700347259 0
		0.33371125700347259 0 0
		0 0 0.33371125700347259
		0 -0.33371125700347259 0
		0 0 -0.33371125700347259
		;
createNode nurbsCurve -n "diamondShape4" -p "lfLegBp0_heelRollG_ctl";
	rename -uid "8D5C4343-40BD-6DA4-27DD-AEA0164294E2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.33371125700347259
		-0.33371125700347259 0 0
		0 0 -0.33371125700347259
		0.33371125700347259 0 0
		0 0 0.33371125700347259
		0 0.33371125700347259 0
		0.33371125700347259 0 0
		0 0 -0.33371125700347259
		0 0.33371125700347259 0
		-0.33371125700347259 0 0
		0 -0.33371125700347259 0
		0.33371125700347259 0 0
		0 0 0.33371125700347259
		0 -0.33371125700347259 0
		0 0 -0.33371125700347259
		;
createNode transform -n "lfLegBp0_line_28" -p "lfLegBp0_IK";
	rename -uid "CE481A38-4729-9E0B-B99F-22922BB64F6B";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape2" -p "lfLegBp0_line_28";
	rename -uid "FA78D8D2-4052-397A-A83E-2786508BB52C";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		11.377273067088939 25.334279342620842 -16.944488239470992
		22.210413057416886 26.144115693761968 8.6846701791122527
		;
createNode transform -n "lfLegBp0_ikc_ofs" -p "lfLegBp0_IK";
	rename -uid "30A517E2-4BFF-DBDA-B025-1797E9897CA5";
	setAttr ".t" -type "double3" 9.8703472642102934 4.1550585815679568 -22.904098452446132 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_ikc_ofs1" -p "lfLegBp0_ikc_ofs";
	rename -uid "AF9EB6FB-4B88-B21E-C666-2CAF1155DEC4";
createNode transform -n "lfLegBp0_ikc" -p "lfLegBp0_ikc_ofs1";
	rename -uid "2386B5B1-4369-3206-D6D7-49AC7EAB4CCD";
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
	addAttr -uap -ci true -k true -sn "palmScale" -ln "palmScale" -dv 1 -min 0.01 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "extraCtl" -ln "extraCtl" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 1 -en "master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -cb on ".gimbalCtl";
	setAttr -k on ".kneeTwist";
	setAttr -k on ".stretchy";
	setAttr -k on ".squashy";
	setAttr -k on ".limbScale1";
	setAttr -k on ".limbScale2";
	setAttr -k on ".softIK";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -av -k on ".palmScale";
	setAttr -l on -k on ".wsMirror";
	setAttr -cb on ".extraCtl";
	setAttr -k on ".space";
createNode nurbsCurve -n "lfLegBp0_ikcShape1" -p "lfLegBp0_ikc";
	rename -uid "2F7D08FA-4CAE-E322-8F3D-D7A5F2DC4C8D";
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
		5.393313244500562 -4.155058581567955 5.3933132445005683
		5.2896822428099401 -4.155058581567955 6.4454964621040327
		4.9827717190161103 -4.155058581567955 7.4572448687261419
		4.4843760724310648 -4.155058581567955 8.3896775404954536
		3.8136483682495683 -4.155058581567955 9.2069616127501348
		2.9963642959948844 -4.155058581567955 9.8776893169316349
		2.0639316242255736 -4.155058581567955 10.376084963516679
		1.0521832176034638 -4.155058581567955 10.68299548731051
		-6.2963421723684889e-16 -4.155058581567955 10.786626489001131
		-1.0521832176034651 -4.155058581567955 10.68299548731051
		-2.063931624225575 -4.155058581567955 10.376084963516679
		-2.9963642959948862 -4.155058581567955 9.8776893169316349
		-3.813648368249571 -4.155058581567955 9.2069616127501366
		-4.4843760724310684 -4.155058581567955 8.3896775404954536
		-4.9827717190161138 -4.155058581567955 7.4572448687261419
		-5.2896822428099446 -4.155058581567955 6.4454964621040318
		-5.3933132445005665 -4.155058581567955 5.3933132445005665
		-5.2896822110022592 -2.5399726220230026 5.3933132445005674
		-4.9827716949315608 -0.9673242345446087 5.3933132445005674
		-4.484376174324364 0.39449311309981905 5.3933132445005674
		-3.8136483672750638 1.4781155626585338 5.3933132445005674
		-2.996364230884994 2.2941188132543671 5.3933132445005674
		-2.0639315585144429 2.7925143338615639 5.3933132445005674
		-1.0521831944661892 3.0994248499322623 5.3933132445005674
		3.3024519021819466e-16 3.2030558834305696 5.3933132445005674
		1.0521831944661892 3.0994248499322623 5.3933132445005674
		2.0639315585144429 2.7925143338615639 5.3933132445005674
		2.996364230884994 2.2941188132543671 5.3933132445005674
		3.8136483672750638 1.4781155626585338 5.3933132445005674
		4.484376174324364 0.39449311309981905 5.3933132445005674
		4.9827716949315608 -0.9673242345446087 5.3933132445005674
		5.2896822110022592 -2.5399726220230026 5.3933132445005674
		5.3933132445005674 -4.155058581567955 5.3933132445005674
		5.3933132445005674 -4.1550585815679568 -5.0697144498305322
		5.3933132445005674 -3.8314597868979212 -5.3933132445005674
		5.2896822110022592 -2.5399726220230026 -5.3933132445005674
		4.9827716949315608 -0.9673242345446087 -5.3933132445005674
		4.484376174324364 0.39449311309981905 -5.3933132445005674
		3.8136483672750638 1.4781155626585338 -5.3933132445005674
		2.996364230884994 2.2941188132543671 -5.3933132445005674
		2.0639315585144429 2.7925143338615639 -5.3933132445005674
		1.0521831944661892 3.0994248499322623 -5.3933132445005674
		3.3024519021819466e-16 3.2030558834305696 -5.3933132445005674
		-1.0521831944661892 3.0994248499322623 -5.3933132445005674
		-2.0639315585144429 2.7925143338615639 -5.3933132445005674
		-2.996364230884994 2.2941188132543671 -5.3933132445005674
		-3.8136483672750638 1.4781155626585338 -5.3933132445005674
		-4.484376174324364 0.39449311309981905 -5.3933132445005674
		-4.9827716949315608 -0.9673242345446087 -5.3933132445005674
		-5.2896822110022592 -2.5399726220230026 -5.3933132445005674
		-5.3933132445005674 -3.8314597868979212 -5.3933132445005674
		-5.3933132445005674 -4.1550585815679542 -5.0697144498305322
		-5.3933132445005674 -4.155058581567955 5.3933132445005674
		;
createNode transform -n "lfLegBp0_ikc_gmb" -p "lfLegBp0_ikc";
	rename -uid "D8373C84-48D7-4BA5-AC7A-D6B730DFFA56";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
createNode nurbsCurve -n "lfLegBp0_ikc_gmbShape" -p "lfLegBp0_ikc_gmb";
	rename -uid "864F4B2F-440A-4E0E-CC49-56AF4FD19411";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".tw" yes;
	setAttr -s 53 ".cp[0:52]" -type "double3" -1.0786626489001119 0.73581146378063167 
		-0.53933130811031837 -1.0579364485619882 0.73581146378063167 -0.74976795163101162 
		-0.99655434380322205 0.73581146378063167 -0.95211763295543239 -0.89687521448621288 
		0.73581146378063167 -1.1386041673092961 -0.7627296736499134 0.73581146378063167 -1.3020609817602313 
		-0.59927285919897688 0.73581146378063167 -1.4362065225965317 -0.41278632484511468 
		0.73581146378063167 -1.5358856519135404 -0.21043664352069269 0.73581146378063167 
		-1.5972677566723057 1.2592684344736972e-16 0.73581146378063167 -1.6179939570104303 
		0.21043664352069302 0.73581146378063167 -1.5972677566723057 0.4127863248451149 0.73581146378063167 
		-1.5358856519135404 0.59927285919897733 0.73581146378063167 -1.4362065225965317 0.76272967364991384 
		0.73581146378063167 -1.3020609817602313 0.89687521448621332 0.73581146378063167 -1.1386041673092961 
		0.9965543438032225 0.73581146378063167 -0.95211763295543239 1.0579364485619891 0.73581146378063167 
		-0.74976795163101073 1.0786626489001128 0.73581146378063167 -0.53933130811031837 
		1.057936442200452 0.41279427187164153 -0.53933130811031926 0.99655433898631207 0.098264594375962799 
		-0.53933130811031926 0.89687523486487253 -0.17409887515292272 -0.53933130811031926 
		0.76272967345501241 -0.39082336506466575 -0.53933130811031926 0.59927284617699872 
		-0.55402401518383226 -0.53933130811031926 0.41278631170288849 -0.65370311930527158 
		-0.53933130811031926 0.21043663889323783 -0.71508522251941109 -0.53933130811031926 
		-6.6049038043638941e-17 -0.73581142921907272 -0.53933130811031926 -0.21043663889323783 
		-0.71508522251941109 -0.53933130811031926 -0.41278631170288849 -0.65370311930527158 
		-0.53933130811031926 -0.59927284617699872 -0.55402401518383226 -0.53933130811031926 
		-0.76272967345501241 -0.39082336506466575 -0.53933130811031926 -0.89687523486487253 
		-0.17409887515292272 -0.53933130811031926 -0.99655433898631207 0.098264594375962799 
		-0.53933130811031926 -1.057936442200452 0.41279427187164153 -0.53933130811031926 
		-1.0786626489001137 0.73581146378063167 -0.53933130811031926 -1.0786626489001137 
		0.73581146378063256 1.5532742307559011 -1.0786626489001137 0.67109170484662473 1.6179939896899085 
		-1.057936442200452 0.41279427187164153 1.6179939896899085 -0.99655433898631207 0.098264594375962799 
		1.6179939896899085 -0.89687523486487253 -0.17409887515292272 1.6179939896899085 -0.76272967345501241 
		-0.39082336506466575 1.6179939896899085 -0.59927284617699872 -0.55402401518383226 
		1.6179939896899085 -0.41278631170288849 -0.65370311930527158 1.6179939896899085 -0.21043663889323783 
		-0.71508522251941109 1.6179939896899085 -6.6049038043638941e-17 -0.73581142921907272 
		1.6179939896899085 0.21043663889323783 -0.71508522251941109 1.6179939896899085 0.41278631170288849 
		-0.65370311930527158 1.6179939896899085 0.59927284617699872 -0.55402401518383226 
		1.6179939896899085 0.76272967345501241 -0.39082336506466575 1.6179939896899085 0.89687523486487253 
		-0.17409887515292272 1.6179939896899085 0.99655433898631207 0.098264594375962799 
		1.6179939896899085 1.057936442200452 0.41279427187164153 1.6179939896899085 1.0786626489001137 
		0.67109170484662473 1.6179939896899085 1.0786626489001137 0.73581146378063167 1.5532742307559011 
		1.0786626489001137 0.73581146378063167 -0.53933130811031926;
createNode nurbsCurve -n "lfLegBp0_ikc_gmbShapeOrig" -p "lfLegBp0_ikc_gmb";
	rename -uid "4CAA05FB-4991-CD83-D677-2D9DC070F842";
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
		5.393313244500562 -4.155058581567955 5.3933132445005683
		5.2896822428099401 -4.155058581567955 6.4454964621040327
		4.9827717190161103 -4.155058581567955 7.4572448687261419
		4.4843760724310648 -4.155058581567955 8.3896775404954536
		3.8136483682495683 -4.155058581567955 9.2069616127501348
		2.9963642959948844 -4.155058581567955 9.8776893169316349
		2.0639316242255736 -4.155058581567955 10.376084963516679
		1.0521832176034638 -4.155058581567955 10.68299548731051
		-6.2963421723684889e-16 -4.155058581567955 10.786626489001131
		-1.0521832176034651 -4.155058581567955 10.68299548731051
		-2.063931624225575 -4.155058581567955 10.376084963516679
		-2.9963642959948862 -4.155058581567955 9.8776893169316349
		-3.813648368249571 -4.155058581567955 9.2069616127501366
		-4.4843760724310684 -4.155058581567955 8.3896775404954536
		-4.9827717190161138 -4.155058581567955 7.4572448687261419
		-5.2896822428099446 -4.155058581567955 6.4454964621040318
		-5.3933132445005665 -4.155058581567955 5.3933132445005665
		-5.2896822110022592 -2.5399726220230026 5.3933132445005674
		-4.9827716949315608 -0.9673242345446087 5.3933132445005674
		-4.484376174324364 0.39449311309981905 5.3933132445005674
		-3.8136483672750638 1.4781155626585338 5.3933132445005674
		-2.996364230884994 2.2941188132543671 5.3933132445005674
		-2.0639315585144429 2.7925143338615639 5.3933132445005674
		-1.0521831944661892 3.0994248499322623 5.3933132445005674
		3.3024519021819466e-16 3.2030558834305696 5.3933132445005674
		1.0521831944661892 3.0994248499322623 5.3933132445005674
		2.0639315585144429 2.7925143338615639 5.3933132445005674
		2.996364230884994 2.2941188132543671 5.3933132445005674
		3.8136483672750638 1.4781155626585338 5.3933132445005674
		4.484376174324364 0.39449311309981905 5.3933132445005674
		4.9827716949315608 -0.9673242345446087 5.3933132445005674
		5.2896822110022592 -2.5399726220230026 5.3933132445005674
		5.3933132445005674 -4.155058581567955 5.3933132445005674
		5.3933132445005674 -4.1550585815679568 -5.0697144498305322
		5.3933132445005674 -3.8314597868979212 -5.3933132445005674
		5.2896822110022592 -2.5399726220230026 -5.3933132445005674
		4.9827716949315608 -0.9673242345446087 -5.3933132445005674
		4.484376174324364 0.39449311309981905 -5.3933132445005674
		3.8136483672750638 1.4781155626585338 -5.3933132445005674
		2.996364230884994 2.2941188132543671 -5.3933132445005674
		2.0639315585144429 2.7925143338615639 -5.3933132445005674
		1.0521831944661892 3.0994248499322623 -5.3933132445005674
		3.3024519021819466e-16 3.2030558834305696 -5.3933132445005674
		-1.0521831944661892 3.0994248499322623 -5.3933132445005674
		-2.0639315585144429 2.7925143338615639 -5.3933132445005674
		-2.996364230884994 2.2941188132543671 -5.3933132445005674
		-3.8136483672750638 1.4781155626585338 -5.3933132445005674
		-4.484376174324364 0.39449311309981905 -5.3933132445005674
		-4.9827716949315608 -0.9673242345446087 -5.3933132445005674
		-5.2896822110022592 -2.5399726220230026 -5.3933132445005674
		-5.3933132445005674 -3.8314597868979212 -5.3933132445005674
		-5.3933132445005674 -4.1550585815679542 -5.0697144498305322
		-5.3933132445005674 -4.155058581567955 5.3933132445005674
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode transform -n "lfLegBp0_smart_ctl_ofs" -p "lfLegBp0_ikc_gmb";
	rename -uid "511BC70F-4621-000B-2B8F-3CAC624D9660";
	setAttr ".t" -type "double3" 1.1390580528259164 -3.6540582853666428 14.240806856127687 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_smart_ctl" -p "lfLegBp0_smart_ctl_ofs";
	rename -uid "BA72A5F2-4B0A-B127-E9AD-1EA91536E42B";
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
createNode nurbsCurve -n "lfLegBp0_smart_ctlShape1" -p "lfLegBp0_smart_ctl";
	rename -uid "2493F4CF-4A5F-FF14-5326-B4AC019DC922";
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
		1.39581809545705 2.8649197607602412e-17 -1.3958180954570518
		7.7281634076425241e-17 4.0516083807778206e-17 -1.2621048637081591
		-1.39581809545705 2.8649197607602394e-17 -1.3958180954570507
		-1.2621048637081627 -1.6535936208640337e-32 -4.9007189577588537e-16
		-1.39581809545705 -2.8649197607602406e-17 1.39581809545705
		-1.2642590739068709e-16 -4.0516083807778243e-17 1.2621048637081602
		1.39581809545705 -2.8649197607602394e-17 1.3958180954570507
		1.2621048637081627 -2.4161461191375734e-32 -2.525313621275964e-16
		1.39581809545705 2.8649197607602412e-17 -1.3958180954570518
		7.7281634076425241e-17 4.0516083807778206e-17 -1.2621048637081591
		-1.39581809545705 2.8649197607602394e-17 -1.3958180954570507
		;
createNode ikHandle -n "lfLegBp0_autoAimJ_ikh" -p "lfLegBp0_ikc";
	rename -uid "18E62DB8-4319-550E-E508-4AA3251F64F0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1.4210854715202004e-14 0 ;
	setAttr ".r" -type "double3" -60.884872188367176 8.7728294136324276 -85.14479498163098 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegBp0_pvc_ofs" -p "lfLegBp0_IK";
	rename -uid "6319A33F-434D-0C98-9C22-F9B0ECEC4C7C";
	setAttr ".t" -type "double3" 22.210413057416886 26.144115693761972 8.6846701791122491 ;
	setAttr ".r" -type "double3" -1.667376757112039 22.913190369300132 7.4728137005945011e-06 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_pvc_ofs1" -p "lfLegBp0_pvc_ofs";
	rename -uid "22C66360-4D1E-826B-ED5E-EC931AF89CF2";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "lfLegBp0_pvc" -p "lfLegBp0_pvc_ofs1";
	rename -uid "EE7C1B8A-408A-5B9E-15CD-228920353ADA";
	addAttr -ci true -sn "fkPin" -ln "fkPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 -2.4868995751603507e-14 3.5527136788005009e-15 ;
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".fkPin";
	setAttr -k on ".pvPin";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -k on ".space";
createNode nurbsCurve -n "lfLegBp0_pvcShape1" -p "lfLegBp0_pvc";
	rename -uid "6B162A6F-4162-2FE9-5EC4-04A4EB3417B7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.3348450280138904
		-1.3348450280138904 0 0
		0 0 -1.3348450280138904
		1.3348450280138904 0 0
		0 0 1.3348450280138904
		0 1.3348450280138904 0
		1.3348450280138904 0 0
		0 0 -1.3348450280138904
		0 1.3348450280138904 0
		-1.3348450280138904 0 0
		0 -1.3348450280138904 0
		1.3348450280138904 0 0
		0 0 1.3348450280138904
		0 -1.3348450280138904 0
		0 0 -1.3348450280138904
		;
createNode transform -n "lfLegBp0_pin_fkc_ofs" -p "lfLegBp0_pvc";
	rename -uid "51CCE376-46F0-B696-5F4D-77A3B372E913";
	setAttr ".t" -type "double3" 0.93225976611669026 -20.993332372616944 -34.526179165141301 ;
	setAttr ".r" -type "double3" -157.08680983106535 1.6673796665475478 -90.000006886093061 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_pin_fkc" -p "lfLegBp0_pin_fkc_ofs";
	rename -uid "6B9B6A0C-44CF-3AF8-426D-0A8BBBEF24DD";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfLegBp0_pin_fkcShape1" -p "lfLegBp0_pin_fkc";
	rename -uid "5C3F752F-47A7-9E26-238F-FFAE4238E5F8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-8.4344809645924415e-16 -5.5832723818281984 -5.5832723818282073
		-7.9598055165854097e-16 1.4672303030945494e-15 -5.0484194548326364
		-8.4344809645924415e-16 5.583272381828202 -5.5832723818282028
		-9.5804488688965377e-16 5.0484194548326524 -1.9602875831035415e-15
		-1.0726416773200633e-15 5.583272381828202 5.5832723818282002
		-1.1201092221207669e-15 2.2820604689629987e-15 5.0484194548326409
		-1.0726416773200633e-15 -5.5832723818281984 5.5832723818282028
		-9.5804488688965377e-16 -5.0484194548326489 -1.0101254485103856e-15
		-8.4344809645924415e-16 -5.5832723818281984 -5.5832723818282073
		-7.9598055165854097e-16 1.4672303030945494e-15 -5.0484194548326364
		-8.4344809645924415e-16 5.583272381828202 -5.5832723818282028
		;
createNode transform -n "lfLegBp0_BF" -p "lfLegBp0_ctl_data";
	rename -uid "2A68F9DD-4C7E-F7DB-0E6B-B2A02964DD6B";
	setAttr ".t" -type "double3" -5.8362665560894751 -51.646830813409281 15.548650060442803 ;
	setAttr -cb on ".ro";
createNode joint -n "lfLegBp0_hip_bf" -p "lfLegBp0_BF";
	rename -uid "5E2BDB23-408B-9393-74B1-3D94673CE062";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 3;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 5.7717774525367505 126.36157877602781 101.38868297058508 ;
	setAttr ".radi" 2.1573252978002269;
createNode joint -n "lfLegBp0_upr_bf" -p "lfLegBp0_hip_bf";
	rename -uid "0B80CFAC-479E-2EBE-D465-A4871F3B7F6E";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -47.120804172589665 73.264493320448423 -21.979263367878179 ;
	setAttr ".radi" 2.1573252978002269;
createNode joint -n "lfLegBp0_lwr_bf" -p "lfLegBp0_upr_bf";
	rename -uid "34318594-432C-B347-E679-ABB04A901AD5";
	setAttr ".v" no;
	setAttr -cb on ".ro" 2;
	setAttr ".jo" -type "double3" 0 -39.831183511772039 0 ;
	setAttr ".pa" -type "double3" 0 -45 0 ;
	setAttr ".radi" 2.1573252978002269;
createNode joint -n "lfLegBp0_palm_bf" -p "lfLegBp0_lwr_bf";
	rename -uid "8E5A0238-4815-0E64-D3AB-389338E76C95";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 23.715212324665817 15.972799340118446 2.6437541264943625 ;
	setAttr ".radi" 2.1573252978002269;
createNode joint -n "lfLegBp0_ball_bf" -p "lfLegBp0_palm_bf";
	rename -uid "9F391E98-402C-AE73-AB06-9E815E666286";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 69.448694296522731 0 ;
	setAttr ".radi" 2.1573252978002269;
createNode joint -n "lfLegBp0_tip_bf" -p "lfLegBp0_ball_bf";
	rename -uid "1C44EA29-4979-4EA4-CF03-4BA043866E79";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.6013666280159295 7.460698725481052e-14 2.2204460492503131e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 20.551305703477279 0 ;
	setAttr ".radi" 2.1573252978002269;
createNode transform -n "lfLegBp0_setting" -p "lfLegBp0_ctl_data";
	rename -uid "7B0061A2-4EE1-7D41-5B4E-A7A5479F8EB7";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -ci true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "moduleScale" -ln "moduleScale" -dv 1 -min 0.01 -at "double";
	addAttr -ci true -sn "palmScale" -ln "palmScale" -dv 1 -min 0.01 -at "double";
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
	setAttr -l on -k on ".______________";
	setAttr -k on ".fkIkBlend";
	setAttr -k on ".moduleScale";
	setAttr -k on ".palmScale";
createNode nurbsCurve -n "lfLegBp0_settingShape1" -p "lfLegBp0_setting";
	rename -uid "2D67BF61-4AFB-09B2-4174-859D23859BA0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		2.6966566222502837 2.6966566222502837 -6.7133216021959732e-17
		2.6448411055011296 2.6966566222502837 0.52609159723309451
		2.4913858474657804 2.6966566222502837 1.0319658435505255
		2.242188087162182 2.6966566222502837 1.498182115442497
		1.9068241836375317 2.6966566222502837 1.9068241836375317
		1.498182115442497 2.6966566222502837 2.242188087162182
		1.0319658435505255 2.6966566222502837 2.4913858474657804
		0.52609159723309451 2.6966566222502837 2.6448411055011296
		-1.6512259510909733e-16 2.6966566222502837 2.6966566222502837
		-0.52609159723309451 2.6966566222502837 2.6448411055011296
		-1.0319658435505255 2.6966566222502837 2.4913858474657804
		-1.498182115442497 2.6966566222502837 2.242188087162182
		-1.9068241836375317 2.6966566222502837 1.9068241836375317
		-2.242188087162182 2.6966566222502837 1.498182115442497
		-2.4913858474657804 2.6966566222502837 1.0319658435505255
		-2.6448411055011296 2.6966566222502837 0.52609159723309451
		-2.6966566222502837 2.6966566222502837 2.9167497211074103e-16
		-2.5940213634446398 2.6966566222502837 0.51598288962861072
		-2.3017404029439077 2.6966566222502837 0.95341209181876585
		-1.8643111364604485 2.6966566222502837 1.2456929237328902
		-1.3483283111251418 2.6966566222502837 1.3483283111251418
		-0.83234542149653101 2.6966566222502837 1.2456929237328902
		-0.39491621930637594 2.6966566222502837 0.95341209181876585
		-0.10263538739225166 2.6966566222502837 0.51598288962861072
		0 2.6966566222502837 2.9167497211074103e-16
		0.10263538739225166 2.6966566222502837 -0.51598288962861072
		0.39491621930637594 2.6966566222502837 -0.95341209181876585
		0.83234542149653101 2.6966566222502837 -1.2456929237328902
		1.3483283111251418 2.6966566222502837 -1.3483283111251418
		1.8643111364604485 2.6966566222502837 -1.2456929237328902
		2.3017404029439077 2.6966566222502837 -0.95341209181876585
		2.5940213634446398 2.6966566222502837 -0.51598288962861072
		2.6966566222502837 2.6966566222502837 -6.7133216021959732e-17
		2.6448411055011296 2.6966566222502837 -0.52609159723309451
		2.4913858474657804 2.6966566222502837 -1.0319658435505255
		2.242188087162182 2.6966566222502837 -1.498182115442497
		1.9068241836375317 2.6966566222502837 -1.9068241836375317
		1.498182115442497 2.6966566222502837 -2.242188087162182
		1.0319658435505255 2.6966566222502837 -2.4913858474657804
		0.52609159723309451 2.6966566222502837 -2.6448411055011296
		3.1481710868560576e-16 2.6966566222502837 -2.6966566222502837
		-0.52609159723309451 2.6966566222502837 -2.6448411055011296
		-1.0319658435505255 2.6966566222502837 -2.4913858474657804
		-1.498182115442497 2.6966566222502837 -2.242188087162182
		-1.9068241836375317 2.6966566222502837 -1.9068241836375317
		-2.242188087162182 2.6966566222502837 -1.498182115442497
		-2.4913858474657804 2.6966566222502837 -1.0319658435505255
		-2.6448411055011296 2.6966566222502837 -0.52609159723309451
		-2.6966566222502837 2.6966566222502837 2.9167497211074103e-16
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp0_toe00_3_ctl_ofs" -p "lfLegBp0_ctl_data";
	rename -uid "B9C8D764-45C7-0442-DCB4-12873FE83A67";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "lfLegBp0_toe00_3_ctl" -p "lfLegBp0_toe00_3_ctl_ofs";
	rename -uid "EC64C4B6-412C-DB48-3777-81B91FB9B7CB";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe00_3_ctlShape1" -p "lfLegBp0_toe00_3_ctl";
	rename -uid "2FF43428-4099-89D1-E73B-F89CB6324B1E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-8.4021592764783352e-18 -0.37554943292677839 -0.37554943292677928
		-5.2093346544251619e-18 4.2329633293614573e-16 -0.33957344972270659
		-8.4021592764783398e-18 0.37554943292677928 -0.375549432926779
		-1.6110319781317831e-17 0.33957344972270798 -1.3185544961123368e-16
		-2.3818480286157316e-17 0.37554943292677928 0.37554943292677884
		-2.7011304908210505e-17 4.7810451455370263e-16 0.33957344972270687
		-2.3818480286157316e-17 -0.37554943292677839 0.375549432926779
		-1.6110319781317834e-17 -0.33957344972270709 -6.794439057060073e-17
		-8.4021592764783352e-18 -0.37554943292677839 -0.37554943292677928
		-5.2093346544251619e-18 4.2329633293614573e-16 -0.33957344972270659
		-8.4021592764783398e-18 0.37554943292677928 -0.375549432926779
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp0_toe01_3_ctl_ofs" -p "lfLegBp0_ctl_data";
	rename -uid "881DB6A5-4BBD-2EE4-7133-52B649A7BE5D";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "lfLegBp0_toe01_3_ctl" -p "lfLegBp0_toe01_3_ctl_ofs";
	rename -uid "33CA3A7B-4562-9906-DD81-8EAFEE8BA5A0";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe01_3_ctlShape1" -p "lfLegBp0_toe01_3_ctl";
	rename -uid "97EB3500-45BA-57D6-344B-67A8AFAAE1B1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.5604218393053402e-15 -0.37554943292677873 -0.37554943292677906
		3.563614663927394e-15 1.0808968133662575e-16 -0.33957344972270637
		3.5604218393053402e-15 0.37554943292677895 -0.37554943292677878
		3.5527136788005009e-15 0.33957344972270764 8.2133995423138714e-17
		3.5450055182956617e-15 0.37554943292677895 0.37554943292677906
		3.5418126936736083e-15 1.6289786295418261e-16 0.33957344972270709
		3.5450055182956617e-15 -0.37554943292677873 0.37554943292677923
		3.5527136788005009e-15 -0.33957344972270742 1.4604505446377168e-16
		3.5604218393053402e-15 -0.37554943292677873 -0.37554943292677906
		3.563614663927394e-15 1.0808968133662575e-16 -0.33957344972270637
		3.5604218393053402e-15 0.37554943292677895 -0.37554943292677878
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp0_toe01_4_ctl_ofs" -p "lfLegBp0_ctl_data";
	rename -uid "20EE6AE9-4182-8C1B-19B9-EF8805D2B227";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "lfLegBp0_toe01_4_ctl" -p "lfLegBp0_toe01_4_ctl_ofs";
	rename -uid "B3F06C6C-442E-EFF2-DE94-AF98869A50AD";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe01_4_ctlShape1" -p "lfLegBp0_toe01_4_ctl";
	rename -uid "82FE6807-4895-BA3F-614E-F989DDC15C2C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.7081605048394925e-18 -0.37554943292677884 -0.37554943292677972
		1.0900985126892667e-17 -2.0792876913916882e-17 -0.33957344972270703
		7.7081605048394879e-18 0.37554943292677884 -0.37554943292677945
		-4.4490478281375412e-33 0.33957344972270753 -5.5983433967997853e-16
		-7.708160504839491e-18 0.37554943292677884 0.37554943292677839
		-1.0900985126892676e-17 3.401530470363998e-17 0.33957344972270642
		-7.7081605048394879e-18 -0.37554943292677884 0.37554943292677856
		-6.5007203149435998e-33 -0.33957344972270753 -4.9592328063934552e-16
		7.7081605048394925e-18 -0.37554943292677884 -0.37554943292677972
		1.0900985126892667e-17 -2.0792876913916882e-17 -0.33957344972270703
		7.7081605048394879e-18 0.37554943292677884 -0.37554943292677945
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp0_toe02_3_ctl_ofs" -p "lfLegBp0_ctl_data";
	rename -uid "6D3782C5-417A-4671-3387-4EB485CC8364";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_toe02_3_ctl" -p "lfLegBp0_toe02_3_ctl_ofs";
	rename -uid "DAB5A554-497D-AB11-3AC0-29B046FB58E9";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe02_3_ctlShape1" -p "lfLegBp0_toe02_3_ctl";
	rename -uid "BA33A6A0-480A-08EA-CF0B-42B0DE61A108";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.7840649999050901e-15 -0.37554943292677878 -0.37554943292677972
		1.7872578245271431e-15 4.3648402211354429e-17 -0.33957344972270703
		1.7840649999050901e-15 0.37554943292677889 -0.37554943292677945
		1.7763568394002505e-15 0.33957344972270759 -5.5983433967997853e-16
		1.768648678895411e-15 0.37554943292677889 0.37554943292677839
		1.7654558542733578e-15 9.8456583828911297e-17 0.33957344972270642
		1.768648678895411e-15 -0.37554943292677878 0.37554943292677856
		1.7763568394002505e-15 -0.33957344972270748 -4.9592328063934552e-16
		1.7840649999050901e-15 -0.37554943292677878 -0.37554943292677972
		1.7872578245271431e-15 4.3648402211354429e-17 -0.33957344972270703
		1.7840649999050901e-15 0.37554943292677889 -0.37554943292677945
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp0_toe02_4_ctl_ofs" -p "lfLegBp0_ctl_data";
	rename -uid "630C538D-4AE2-2BBF-B5F4-37BEAE07E57F";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "lfLegBp0_toe02_4_ctl" -p "lfLegBp0_toe02_4_ctl_ofs";
	rename -uid "834A1358-43D8-CB46-80DC-09B6FED03CB2";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe02_4_ctlShape1" -p "lfLegBp0_toe02_4_ctl";
	rename -uid "036126D6-45FB-3A0E-EA00-3C9766D11197";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.768648678895411e-15 -0.37554943292677889 -0.37554943292677928
		-1.7654558542733578e-15 -8.5234156039188187e-17 -0.33957344972270659
		-1.768648678895411e-15 0.37554943292677878 -0.375549432926779
		-1.7763568394002505e-15 0.33957344972270748 -1.3185544961123368e-16
		-1.7840649999050901e-15 0.37554943292677878 0.37554943292677884
		-1.7872578245271431e-15 -3.042597442163133e-17 0.33957344972270687
		-1.7840649999050901e-15 -0.37554943292677889 0.375549432926779
		-1.7763568394002505e-15 -0.33957344972270759 -6.794439057060073e-17
		-1.768648678895411e-15 -0.37554943292677889 -0.37554943292677928
		-1.7654558542733578e-15 -8.5234156039188187e-17 -0.33957344972270659
		-1.768648678895411e-15 0.37554943292677878 -0.375549432926779
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp0_toe03_3_ctl_ofs" -p "lfLegBp0_ctl_data";
	rename -uid "D1BA9640-480B-85A1-0E4B-2CBA4DEAB474";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_toe03_3_ctl" -p "lfLegBp0_toe03_3_ctl_ofs";
	rename -uid "7BD10F5F-4BA1-5EB1-846F-478BF79FA076";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe03_3_ctlShape1" -p "lfLegBp0_toe03_3_ctl";
	rename -uid "7BB6D1FA-4132-2CC9-8EF3-518B898BF236";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.8330899580206825e-15 -0.37554943292677712 -0.37554943292677861
		-1.8298971333986291e-15 1.6911226833610623e-15 -0.33957344972270592
		-1.8330899580206825e-15 0.37554943292678056 -0.37554943292677834
		-1.8407981185255217e-15 0.33957344972270925 5.1011288549188356e-16
		-1.8485062790303614e-15 0.37554943292678056 0.3755494329267795
		-1.8516991036524144e-15 1.7459308649786191e-15 0.33957344972270753
		-1.8485062790303614e-15 -0.37554943292677712 0.37554943292677967
		-1.8407981185255217e-15 -0.33957344972270581 5.7402394453251648e-16
		-1.8330899580206825e-15 -0.37554943292677712 -0.37554943292677861
		-1.8298971333986291e-15 1.6911226833610623e-15 -0.33957344972270592
		-1.8330899580206825e-15 0.37554943292678056 -0.37554943292677834
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp0_toe03_4_ctl_ofs" -p "lfLegBp0_ctl_data";
	rename -uid "F268AF48-480C-76A4-C805-4F83088FB6B9";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "lfLegBp0_toe03_4_ctl" -p "lfLegBp0_toe03_4_ctl_ofs";
	rename -uid "EB6BD143-4E13-40CC-9A62-91975768B21D";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe03_4_ctlShape1" -p "lfLegBp0_toe03_4_ctl";
	rename -uid "01DC0C55-4668-FD36-3DE2-5D831CCC8588";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-3.609446797420933e-15 -0.37554943292677717 -0.375549432926781
		-3.6062539727988799e-15 1.626681404235791e-15 -0.33957344972270831
		-3.609446797420933e-15 0.3755494329267805 -0.37554943292678072
		-3.6171549579257722e-15 0.3395734497227092 -1.8437710098862129e-15
		-3.6248631184306114e-15 0.3755494329267805 0.37554943292677712
		-3.6280559430526653e-15 1.6814895858533478e-15 0.33957344972270515
		-3.6248631184306114e-15 -0.37554943292677717 0.37554943292677728
		-3.6171549579257722e-15 -0.33957344972270587 -1.7798599508455801e-15
		-3.609446797420933e-15 -0.37554943292677717 -0.375549432926781
		-3.6062539727988799e-15 1.626681404235791e-15 -0.33957344972270831
		-3.609446797420933e-15 0.3755494329267805 -0.37554943292678072
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp0_toe04_3_ctl_ofs" -p "lfLegBp0_ctl_data";
	rename -uid "99122609-4E9F-508A-3325-038E353FD72C";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "lfLegBp0_toe04_3_ctl" -p "lfLegBp0_toe04_3_ctl_ofs";
	rename -uid "1BF108BD-4CC5-986A-8E6F-51AE639108D1";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe04_3_ctlShape1" -p "lfLegBp0_toe04_3_ctl";
	rename -uid "F651CE27-4774-9F06-E60E-0091C6F37FAA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.2149439630110802e-17 -0.37554943292678061 -0.37554943292677845
		7.5342264252163973e-17 -1.7971497163141674e-15 -0.33957344972270576
		7.2149439630110802e-17 0.37554943292677706 -0.37554943292677817
		6.4441279125271298e-17 0.33957344972270576 7.2410233052625586e-16
		5.673311862043182e-17 0.37554943292677706 0.37554943292677967
		5.354029399837863e-17 -1.7423415346966106e-15 0.3395734497227077
		5.673311862043182e-17 -0.37554943292678061 0.37554943292677984
		6.4441279125271298e-17 -0.33957344972270931 7.8801338956688888e-16
		7.2149439630110802e-17 -0.37554943292678061 -0.37554943292677845
		7.5342264252163973e-17 -1.7971497163141674e-15 -0.33957344972270576
		7.2149439630110802e-17 0.37554943292677706 -0.37554943292677817
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp0_toe04_4_ctl_ofs" -p "lfLegBp0_ctl_data";
	rename -uid "D3669B89-40BE-90AA-1742-90A1ADD812B7";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_toe04_4_ctl" -p "lfLegBp0_toe04_4_ctl_ofs";
	rename -uid "D58778FA-4314-C28C-C977-939227526C23";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe04_4_ctlShape1" -p "lfLegBp0_toe04_4_ctl";
	rename -uid "DC4FAD3C-4B10-B41F-4340-63AF98D1CF80";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-5.673311862043182e-17 -0.37554943292677706 -0.37554943292677845
		-5.3540293998378643e-17 1.7555639624863335e-15 -0.33957344972270576
		-5.673311862043182e-17 0.37554943292678061 -0.37554943292677817
		-6.4441279125271311e-17 0.33957344972270931 7.2410233052625586e-16
		-7.2149439630110802e-17 0.37554943292678061 0.37554943292677967
		-7.5342264252163985e-17 1.8103721441038906e-15 0.3395734497227077
		-7.2149439630110802e-17 -0.37554943292677706 0.37554943292677984
		-6.4441279125271311e-17 -0.33957344972270576 7.8801338956688888e-16
		-5.673311862043182e-17 -0.37554943292677706 -0.37554943292677845
		-5.3540293998378643e-17 1.7555639624863335e-15 -0.33957344972270576
		-5.673311862043182e-17 0.37554943292678061 -0.37554943292677817
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp0_anchorF1" -p "master_ctl";
	rename -uid "649D22F0-4AA7-A487-BA82-2FBD350033CB";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "lfLegBp0_anchorF1Shape" -p "lfLegBp0_anchorF1";
	rename -uid "E5B1914C-4352-3EC4-60BA-B1A05B0C83DD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 2.7207911311485939 2.7207911311485939 2.7207911311485939 ;
createNode transform -n "neckQd0_ctl_data" -p "master_ctl";
	rename -uid "188CCCA5-4030-B340-B0C4-53808EDC9F0D";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_IK" -p "neckQd0_ctl_data";
	rename -uid "BC1C8498-47CD-519C-347B-1082064E7381";
	setAttr ".t" -type "double3" -4.1604042047768875e-05 66.211829493164458 9.6762037106629979 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_cog_ctl_ofs" -p "neckQd0_IK";
	rename -uid "78196550-4E18-9875-DC55-8C91670BF0DE";
	setAttr ".r" -type "double3" -39.718114652890492 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_cog_ctl_ofs1" -p "neckQd0_cog_ctl_ofs";
	rename -uid "8444B6D4-4D5B-AED1-B123-2DA89A7D0BCE";
	setAttr ".t" -type "double3" 6.7762635780344027e-21 0 7.1054273576010019e-15 ;
createNode transform -n "neckQd0_cog_ctl" -p "neckQd0_cog_ctl_ofs1";
	rename -uid "FBA9C76C-4EEA-004B-C393-63AA6CA9E09C";
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
	rename -uid "27239875-4043-B1F1-822C-CCB4A77873C2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.1994848970712626 4.1994848970712679 8.6194521376326806e-17
		2.325109956528157e-16 3.7971927222558977 1.2189746113265917e-16
		-4.1994848970712626 4.1994848970712653 8.6194521376326756e-17
		-3.7971927222559088 1.4744396361447228e-15 -4.9750332506171263e-32
		-4.1994848970712626 -4.1994848970712626 -8.6194521376326793e-17
		-3.8036739200739022e-16 -3.7971927222559017 -1.2189746113265929e-16
		4.1994848970712626 -4.1994848970712653 -8.6194521376326756e-17
		3.7971927222559088 7.5977066405950395e-16 -7.2692632152137034e-32
		4.1994848970712626 4.1994848970712679 8.6194521376326806e-17
		2.325109956528157e-16 3.7971927222558977 1.2189746113265917e-16
		-4.1994848970712626 4.1994848970712653 8.6194521376326756e-17
		;
createNode transform -n "neckQd0_base_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "D2BDFEE5-4B1B-5EA9-D55B-E08F3BB1035E";
	setAttr ".t" -type "double3" 2.405573570202213e-18 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_base_ctl" -p "neckQd0_base_ctl_ofs";
	rename -uid "6C9074E0-44EF-F5EA-66E6-23A66A3A603E";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode nurbsCurve -n "neckQd0_base_ctlShape1" -p "neckQd0_base_ctl";
	rename -uid "988F2C4E-4F33-072E-E06F-3D99763D39D3";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.9072822786115229 1.9072822786115231 1.1678735687860359e-16
		1.651622640114279e-16 2.6973044656862748 1.651622640114279e-16
		-1.9072822786115229 1.9072822786115227 1.1678735687860357e-16
		-2.6973044656862757 1.3982873980945183e-16 8.5620409318226632e-33
		-1.9072822786115229 -1.9072822786115229 -1.1678735687860357e-16
		-2.7019083309878739e-16 -2.6973044656862761 -1.6516226401142803e-16
		1.9072822786115229 -1.9072822786115227 -1.1678735687860357e-16
		2.6973044656862757 -3.6783045762723702e-16 -2.2523119628105097e-32
		1.9072822786115229 1.9072822786115231 1.1678735687860359e-16
		1.651622640114279e-16 2.6973044656862748 1.651622640114279e-16
		-1.9072822786115229 1.9072822786115227 1.1678735687860357e-16
		;
createNode transform -n "neckQd0_tangent0_ctl_ofs" -p "neckQd0_base_ctl";
	rename -uid "670C335E-402B-78B0-C6FB-65B24B2A7E5C";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_tangent0_ctl" -p "neckQd0_tangent0_ctl_ofs";
	rename -uid "1E800E3B-403C-0612-9504-38BEEAFD86EB";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "neckQd0_tangent0_ctlShape1" -p "neckQd0_tangent0_ctl";
	rename -uid "C01FC230-433D-F6F4-AD37-33A1E4F43D4C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-5.7705061811427251e-08 0.38774325976343316 -0.082968057635104064
		-7.0372392274225668e-08 0.41432087547265678 -0.15240647394856877
		-7.4202641150266743e-08 0.38138118555102801 -0.20315426235348988
		-6.8480025570986021e-08 0.34283965386735726 -0.21785123072296081
		-6.0417558815341464e-08 0.28853934069037124 -0.21838320001074463
		2.5016846085247899e-08 -0.28685718423781054 -0.22402031904732139
		3.3079312841034804e-08 -0.34115749741479262 -0.22455228833510107
		3.8801928411219775e-08 -0.37969902909846515 -0.21061048729193899
		5.2663659767895481e-08 -0.41432087547265678 -0.15899116463497248
		5.7688309526432237e-08 -0.3894254162159948 -0.089143728183046028
		7.4202641167689284e-08 -0.071296589327987991 0.34542043585103488
		7.0662455676380436e-08 -0.035739046404943832 0.38136954067672529
		6.6413474430743874e-08 -0.00012609193634568363 0.39611953195773647
		5.7737787682165242e-08 0.035832929209232547 0.38222232266468154
		4.8353305179770783e-08 0.071847361900370471 0.3471259998269498
		-5.7705061811427251e-08 0.38774325976343316 -0.082968057635104064
		;
	setAttr ".adot" yes;
createNode joint -n "neckQd0_0_ikj" -p "neckQd0_tangent0_ctl";
	rename -uid "1516D6D5-4E38-5197-ABB7-7DABBA0499B3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" -39.718114652890392 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 39.718114652890392 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.7691975635490057 -0.63901103920845792 0
		 0 0.63901103920845792 0.7691975635490057 0 -4.160404204776647e-05 66.211829493164458 9.6762037106629979 1;
	setAttr ".radi" 0.32452849822151436;
createNode joint -n "neckQd0_two_ikj" -p "neckQd0_base_ctl";
	rename -uid "E231027B-4AAA-32FB-091C-2C9F81B87381";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -2.405573570202213e-18 0 0 ;
	setAttr ".r" -type "double3" -39.718114652890414 -1.5193356202865466e-15 -1.828871780971538e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 39.718114652890492 0 0 ;
	setAttr ".radi" 1.6226424911075719;
createNode joint -n "neckQd0_two_ikj_end" -p "neckQd0_two_ikj";
	rename -uid "3A2F15B9-405B-A1F4-5795-AE87730E910F";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -5.4537808730908965e-15 7.1054273576010019e-15 8.1132124555378482 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 1.6226424911075719;
createNode ikEffector -n "effector22" -p "neckQd0_two_ikj";
	rename -uid "AC81B792-43C9-4CA0-F1AE-BEB8A7B7E3B2";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "neckQd0_fore_ctl_SPACE_1_ofs" -p "neckQd0_base_ctl";
	rename -uid "CA4C9A43-4BAE-374F-1A77-1F936D3CD3DA";
	setAttr ".t" -type "double3" -5.4561864466610988e-15 0 8.1132124555378553 ;
	setAttr ".r" -type "double3" 39.718114652890492 0 0 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_1" -p "neckQd0_fore_ctl_SPACE_1_ofs";
	rename -uid "A7053FFD-4148-71AC-7145-EB8DC257DE16";
createNode transform -n "neckQd0_mid_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "203CB775-45AC-6870-F82F-C9821DFBBCE8";
	setAttr ".t" -type "double3" -2.7396027070178408e-15 2.8421709430404007e-14 4.0566062277689454 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_mid_ctl_ofs1" -p "neckQd0_mid_ctl_ofs";
	rename -uid "436CECC6-495D-ADB4-93FA-2989AC00A6F1";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_mid_ctl_ofs2" -p "neckQd0_mid_ctl_ofs1";
	rename -uid "2616A375-4563-2F57-A7AE-219C6D4247EF";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_mid_ctl" -p "neckQd0_mid_ctl_ofs2";
	rename -uid "913677F8-484E-D13E-8CFF-A59012FFD889";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "neckQd0_mid_ctlShape1" -p "neckQd0_mid_ctl";
	rename -uid "5BF241EF-4171-67B6-7C21-DA93C4A40A72";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.9072822786115229 1.9072822786115231 1.1678735687860359e-16
		1.651622640114279e-16 2.6973044656862748 1.651622640114279e-16
		-1.9072822786115229 1.9072822786115227 1.1678735687860357e-16
		-2.6973044656862757 1.3982873980945183e-16 8.5620409318226632e-33
		-1.9072822786115229 -1.9072822786115229 -1.1678735687860357e-16
		-2.7019083309878739e-16 -2.6973044656862761 -1.6516226401142803e-16
		1.9072822786115229 -1.9072822786115227 -1.1678735687860357e-16
		2.6973044656862757 -3.6783045762723702e-16 -2.2523119628105097e-32
		1.9072822786115229 1.9072822786115231 1.1678735687860359e-16
		1.651622640114279e-16 2.6973044656862748 1.651622640114279e-16
		-1.9072822786115229 1.9072822786115227 1.1678735687860357e-16
		;
createNode joint -n "neckQd0_1_ikj" -p "neckQd0_mid_ctl";
	rename -uid "93F1D76E-4A36-AC59-834C-EBAA1FC565E2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" -39.718114652890307 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 39.718114652890307 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.7691975635490057 -0.63901103920845792 0
		 0 0.63901103920845792 0.7691975635490057 0 -4.1604042050508478e-05 68.80404565443061 12.796535337340575 1;
	setAttr ".radi" 0.32452849822151436;
createNode transform -n "neckQd0_fore_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "F62C7CB9-4408-1310-75ED-6AB0B80F93D0";
	setAttr ".t" -type "double3" -5.4537808730908965e-15 7.1054273576010019e-15 8.1132124555378482 ;
	setAttr ".r" -type "double3" 39.718114652890492 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_fore_ctl_ofs1" -p "neckQd0_fore_ctl_ofs";
	rename -uid "23A74C20-40FD-28DA-33E8-648D2672A512";
createNode transform -n "neckQd0_fore_ctl" -p "neckQd0_fore_ctl_ofs1";
	rename -uid "87BADBCB-4C72-5CAA-1531-FF9243219BBF";
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
	rename -uid "5654D382-4925-A026-7494-E19329B38B65";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.370516387055801 16.031961662949598 -3.3158845199138476
		4.650631190482928e-16 19.169664725177082 -3.3158845199138458
		-5.370516387055801 16.031961662949591 -3.3158845199138476
		-7.5950571115212639 5.553528397880473e-16 3.4005553882191238e-32
		-5.370516387055801 -7.5750852875292045 -4.6384019753204188e-16
		-7.6080206535849092e-16 -10.712788349756693 -6.559690981236295e-16
		5.370516387055801 -7.5750852875291965 -4.6384019753204188e-16
		7.5950571115212639 -1.4608991648082838e-15 -8.945427430297532e-32
		5.370516387055801 16.031961662949598 -3.3158845199138476
		4.650631190482928e-16 19.169664725177082 -3.3158845199138458
		-5.370516387055801 16.031961662949591 -3.3158845199138476
		;
createNode transform -n "neckQd0_tangent1_ctl_ofs" -p "neckQd0_fore_ctl";
	rename -uid "C1FB903A-4245-55A2-3FC4-0D8D0CF06B41";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_tangent1_ctl" -p "neckQd0_tangent1_ctl_ofs";
	rename -uid "5D29F572-46CB-E031-B08D-D3A12F252466";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "neckQd0_tangent1_ctlShape1" -p "neckQd0_tangent1_ctl";
	rename -uid "BE5489D5-4AD6-4263-F94E-87A9952E928A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-5.7705061811427251e-08 -0.38774325976343316 0.08296805763510412
		-7.0372392274225668e-08 -0.41432087547265678 0.15240647394856882
		-7.4202641150266743e-08 -0.38138118555102801 0.20315426235348991
		-6.8480025570986021e-08 -0.34283965386735726 0.21785123072296084
		-6.0417558815341464e-08 -0.28853934069037118 0.21838320001074468
		2.5016846085247899e-08 0.28685718423781059 0.22402031904732136
		3.3079312841034804e-08 0.34115749741479262 0.22455228833510105
		3.8801928411219775e-08 0.37969902909846515 0.21061048729193896
		5.2663659767895481e-08 0.41432087547265678 0.15899116463497243
		5.7688309526432237e-08 0.3894254162159948 0.089143728183045973
		7.4202641167689284e-08 0.07129658932798795 -0.34542043585103488
		7.0662455676380436e-08 0.035739046404943783 -0.38136954067672529
		6.6413474430743874e-08 0.00012609193634563514 -0.39611953195773647
		5.7737787682165242e-08 -0.035832929209232589 -0.38222232266468154
		4.8353305179770783e-08 -0.071847361900370527 -0.3471259998269498
		-5.7705061811427251e-08 -0.38774325976343316 0.08296805763510412
		;
	setAttr ".adot" yes;
createNode joint -n "neckQd0_2_ikj" -p "neckQd0_tangent1_ctl";
	rename -uid "B331C70A-4105-B4B8-45C1-C09C279D2555";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4.1604042053222656e-05 71.396261815696704 15.916866964018151 1;
	setAttr ".radi" 0.32452849822151436;
createNode ikHandle -n "neckQd0_two_ikj_ikh" -p "neckQd0_tangent1_ctl";
	rename -uid "751E4177-43E5-D42B-E1CE-4AADA88E8124";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -39.718114652890492 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "neckQd0_anchorToRbj" -p "neckQd0_fore_ctl";
	rename -uid "E7A01106-40A4-02C8-D2DF-2EA6C00C32D6";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "neckQd0_anchorToRbjShape" -p "neckQd0_anchorToRbj";
	rename -uid "597AEDE1-4E34-9472-0F95-55852B8D6CBB";
	setAttr -k off ".v";
createNode transform -n "head0_head_fkc_SPACE_1_ofs" -p "neckQd0_anchorToRbj";
	rename -uid "320193F6-4960-BA70-A1E6-CB88D5CE1E43";
	setAttr ".t" -type "double3" 4.1604042024800947e-05 2.5372472203297605 2.0641984193708716 ;
createNode transform -n "head0_head_fkc_SPACE_1" -p "head0_head_fkc_SPACE_1_ofs";
	rename -uid "D587F781-40CE-C70E-4BC6-B09B07D9D917";
createNode transform -n "neckQd0_setting" -p "neckQd0_IK";
	rename -uid "2530B46D-4D7A-CD73-BF5D-B0A4631067A7";
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
	rename -uid "321B29D3-414A-82AC-0D0E-B58FA2DABC7F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-0.60849093416533939 0.81132124555378593 1.5148370390827763e-17
		-0.5967989478995307 0.81132124555378593 -0.11871068967978891
		-0.5621723170767331 0.81132124555378593 -0.23285940634324515
		-0.5059417326159974 0.81132124555378593 -0.33805944273864569
		-0.43026806572890142 0.81132124555378593 -0.43026806572890142
		-0.33805944273864569 0.81132124555378593 -0.5059417326159974
		-0.23285940634324515 0.81132124555378593 -0.5621723170767331
		-0.11871068967978891 0.81132124555378593 -0.5967989478995307
		3.7259323756947485e-17 0.81132124555378593 -0.60849093416533939
		0.11871068967978891 0.81132124555378593 -0.5967989478995307
		0.23285940634324515 0.81132124555378593 -0.5621723170767331
		0.33805944273864569 0.81132124555378593 -0.5059417326159974
		0.43026806572890142 0.81132124555378593 -0.43026806572890142
		0.5059417326159974 0.81132124555378593 -0.33805944273864569
		0.5621723170767331 0.81132124555378593 -0.23285940634324515
		0.5967989478995307 0.81132124555378593 -0.11871068967978891
		0.60849093416533939 0.81132124555378593 -6.5815415573455843e-17
		0.585331654636145 0.81132124555378593 -0.11642969591784538
		0.5193794999471204 0.81132124555378593 -0.21513403286445071
		0.42067514849296067 0.81132124555378593 -0.28108615853836655
		0.3042454670826697 0.81132124555378593 -0.3042454670826697
		0.18781577116482431 0.81132124555378593 -0.28108615853836655
		0.089111434218218974 0.81132124555378593 -0.21513403286445071
		0.023159308544303168 0.81132124555378593 -0.11642969591784538
		0 0.81132124555378593 -6.5815415573455843e-17
		-0.023159308544303168 0.81132124555378593 0.11642969591784538
		-0.089111434218218974 0.81132124555378593 0.21513403286445071
		-0.18781577116482431 0.81132124555378593 0.28108615853836655
		-0.3042454670826697 0.81132124555378593 0.3042454670826697
		-0.42067514849296067 0.81132124555378593 0.28108615853836655
		-0.5193794999471204 0.81132124555378593 0.21513403286445071
		-0.585331654636145 0.81132124555378593 0.11642969591784538
		-0.60849093416533939 0.81132124555378593 1.5148370390827763e-17
		-0.5967989478995307 0.81132124555378593 0.11871068967978891
		-0.5621723170767331 0.81132124555378593 0.23285940634324515
		-0.5059417326159974 0.81132124555378593 0.33805944273864569
		-0.43026806572890142 0.81132124555378593 0.43026806572890142
		-0.33805944273864569 0.81132124555378593 0.5059417326159974
		-0.23285940634324515 0.81132124555378593 0.5621723170767331
		-0.11871068967978891 0.81132124555378593 0.5967989478995307
		-7.1037356026248984e-17 0.81132124555378593 0.60849093416533939
		0.11871068967978891 0.81132124555378593 0.5967989478995307
		0.23285940634324515 0.81132124555378593 0.5621723170767331
		0.33805944273864569 0.81132124555378593 0.5059417326159974
		0.43026806572890142 0.81132124555378593 0.43026806572890142
		0.5059417326159974 0.81132124555378593 0.33805944273864569
		0.5621723170767331 0.81132124555378593 0.23285940634324515
		0.5967989478995307 0.81132124555378593 0.11871068967978891
		0.60849093416533939 0.81132124555378593 -6.5815415573455843e-17
		;
	setAttr ".adot" yes;
createNode transform -n "neckQd0_anchorF1" -p "master_ctl";
	rename -uid "132116BB-4512-D59D-4000-F894AF8D9779";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "neckQd0_anchorF1Shape" -p "neckQd0_anchorF1";
	rename -uid "565D0D92-46EA-54A0-5433-2C8D6F975531";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 1.2169818683306788 1.2169818683306788 1.2169818683306788 ;
createNode transform -n "neckQd0_anchorM1" -p "master_ctl";
	rename -uid "ED1F7709-49C9-6951-BCD7-638FE4FBE070";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "neckQd0_anchorM1Shape" -p "neckQd0_anchorM1";
	rename -uid "7A2EB7EB-46C2-1199-81BA-349A2972B343";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 1.2169818683306788 1.2169818683306788 1.2169818683306788 ;
createNode transform -n "rtArmBp0_ctl_data" -p "master_ctl";
	rename -uid "5D49D711-4181-621C-CCE3-4C9EE587C6C9";
	setAttr -cb on ".ro";
createNode transform -n "rtArmBp0_FK" -p "rtArmBp0_ctl_data";
	rename -uid "CADD2BA5-48D5-DA13-B621-828C2D03B0D0";
	setAttr -cb on ".ro";
createNode joint -n "rtArmBp0_clavicle_fk" -p "rtArmBp0_FK";
	rename -uid "0DF75EFF-438B-707E-C754-4989D1034EB3";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 178.8862556599862 7.0168606226744545 -9.0423113078230219 ;
	setAttr ".radi" 1.1099336085019111;
createNode joint -n "rtArmBp0_upr_fk" -p "rtArmBp0_clavicle_fk";
	rename -uid "A8438AE7-42F7-8F6F-431A-C3BB1A8E67EE";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 5.2528465092008538 -5.0799175352001136 -100.31206232914657 ;
	setAttr ".radi" 1.1099336085019111;
createNode joint -n "rtArmBp0_lwr_fk" -p "rtArmBp0_upr_fk";
	rename -uid "25357E51-425E-F49F-0A5E-FAA544E342C3";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -8.8146405219716737 0 ;
	setAttr ".pa" -type "double3" 0 -45 0 ;
	setAttr ".radi" 1.1099336085019111;
createNode joint -n "rtArmBp0_palm_fk" -p "rtArmBp0_lwr_fk";
	rename -uid "CEB42098-469B-B3BA-AA33-D2A8D84B1C22";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".radi" 1.1099336085019111;
createNode joint -n "rtArmBp0_ball_fk" -p "rtArmBp0_palm_fk";
	rename -uid "291AEA8F-40D2-5AF6-CD23-81B133E10908";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -8.5523331894636279 0.35556014072067121 -0.61956145912587246 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 1.1099336085019111;
createNode transform -n "rtArmBp0_clavicle_fkc_ofs" -p "rtArmBp0_FK";
	rename -uid "E864B47F-4704-2C32-7404-1C914A245177";
	setAttr -cb on ".ro";
createNode transform -n "rtArmBp0_clavicle_fkc" -p "rtArmBp0_clavicle_fkc_ofs";
	rename -uid "B5CA39DA-4A85-CA57-06F2-7296FAC567CD";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtArmBp0_clavicle_fkcShape1" -p "rtArmBp0_clavicle_fkc";
	rename -uid "5CE09798-4A1B-2F89-97D0-F090A7839993";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 25 0 no 3
		26 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		26
		-10.581836254239867 -10.581836254239864 1.0311695948778214e-16
		-10.31421307123914 -10.930609992124436 9.9603331231342994e-17
		-10.145978032978462 -11.336765403756527 8.9301905690489476e-17
		-10.088596172110133 -11.772623812138747 7.2914696058833183e-17
		-10.145977799077443 -12.208482173740762 5.1558479743891071e-17
		-10.314212977678734 -12.614637538592648 2.668863150004756e-17
		-10.581836347800273 -12.963411089356406 -3.1577058811962411e-32
		-10.930609898564033 -13.231034459477947 -2.668863150004756e-17
		-11.336765263415918 -13.399269638079236 -5.1558479743891071e-17
		-11.772623625017935 -13.456651265046549 -7.2914696058833183e-17
		-12.208482781883413 -13.399270152661478 -8.9301905690489476e-17
		-12.614637445032244 -13.231034365917539 -9.9603331231342994e-17
		-12.963411182916818 -12.963411182916815 -1.0311695948778214e-16
		-13.231034365917544 -12.614637445032239 -9.9603331231342994e-17
		-13.399270152661481 -12.20848278188341 -8.9301905690489476e-17
		-13.456651265046553 -11.772623625017932 -7.2914696058833183e-17
		-13.399269638079241 -11.336765263415913 -5.1558479743891071e-17
		-13.23103445947795 -10.930609898564029 -2.668863150004756e-17
		-12.963411089356409 -10.581836347800269 7.7148766987114418e-32
		-12.614637538592651 -10.31421297767873 2.668863150004756e-17
		-12.208482173740766 -10.145977799077439 5.1558479743891071e-17
		-11.77262381213875 -10.08859617211013 7.2914696058833183e-17
		-11.33676540375653 -10.145978032978459 8.9301905690489476e-17
		-10.93060999212444 -10.314213071239136 9.9603331231342994e-17
		-10.581836254239867 -10.581836254239864 1.0311695948778214e-16
		0 0 0
		;
createNode transform -n "rtArmBp0_upr_fkc_ofs" -p "rtArmBp0_FK";
	rename -uid "080EA933-4CAF-6031-8A41-08A54982D990";
	setAttr -cb on ".ro";
createNode transform -n "rtArmBp0_upr_fkc_SPACE_1_ofs" -p "rtArmBp0_upr_fkc_ofs";
	rename -uid "3ECFC6D7-4910-76B5-D7B1-26B1705070CE";
	setAttr ".t" -type "double3" 0 5.3290705182007514e-15 3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "rtArmBp0_upr_fkc_SPACE_1" -p "rtArmBp0_upr_fkc_SPACE_1_ofs";
	rename -uid "D2D296D2-456F-C6E1-C08E-7C827B574F0E";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
createNode transform -n "rtArmBp0_upr_fkc_ofs1" -p "rtArmBp0_upr_fkc_ofs";
	rename -uid "8466C0DE-4A22-86C2-1585-D18A80A58604";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "rtArmBp0_upr_fkc" -p "rtArmBp0_upr_fkc_ofs1";
	rename -uid "90CD5820-46EB-67D4-0375-8D9C941D201D";
	addAttr -ci true -sn "isolate" -ln "isolate" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 4;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".isolate";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtArmBp0_upr_fkcShape1" -p "rtArmBp0_upr_fkc";
	rename -uid "EB4A43BB-408B-6145-8CDE-82B89F99F1E9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 20 0 no 3
		25 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 20 20
		23
		1.9632216371408613e-16 7.3958042480399433 -4.3386037618411812
		1.6457092276432489e-16 7.7224740537596155 -3.7501697619710348
		1.0106844086480164e-16 8.3758136651989066 -2.5733017622307188
		-9.0860836640580612e-20 8.404019529645824 0.24878665956968943
		-1.007049975676637e-16 8.277087574321536 1.5781551250669825
		-1.9759421528831742e-16 7.7907086098042706 3.2455846384340314
		-2.8685112356348563e-16 7.0025599142897796 4.6766126017841279
		-3.6509494154339106e-16 5.9961837125624875 5.9759145511875591
		-4.2930555553078336e-16 4.1011265629329205 7.5976259160566855
		-4.7701895699816811e-16 2.5014690535577775 8.2742602339057054
		-5.0640057048251851e-16 -0.65144519073174978 9.4728379239250238
		-5.1632156372088925e-16 -3.0625162146735207e-15 11.536065234920812
		-5.0640057048251585e-16 0.65144519073178597 9.4728379239249918
		-4.7701895699818586e-16 -2.5014690535579343 8.2742602339060127
		-4.2930555553075985e-16 -4.1011265629325413 7.5976259160561961
		-3.6509494154347182e-16 -5.9961837125638606 5.9759145511892973
		-2.868511235631871e-16 -7.0025599142847303 4.6766126017777196
		-1.9759421528940935e-16 -7.7907086098226364 3.2455846384575948
		-1.0070499756359907e-16 -8.2770875742532262 1.5781551249791999
		-9.0860843802834166e-20 -8.4040195295985054 0.24878665972043126
		1.010684408712887e-16 -8.3758136653027435 -2.5733017623808827
		1.6457092276647676e-16 -7.7224740537938228 -3.7501697620208576
		1.963221637140708e-16 -7.3958042480393607 -4.3386037618408446
		;
createNode transform -n "rtArmBp0_lwr_fkc_ofs" -p "rtArmBp0_FK";
	rename -uid "A2F90A43-4C6D-2C71-145A-4DBB281E7A8D";
	setAttr -cb on ".ro";
createNode transform -n "rtArmBp0_lwr_fkc" -p "rtArmBp0_lwr_fkc_ofs";
	rename -uid "0AC64DB6-410E-0D28-D07A-C6B9A1825E31";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtArmBp0_lwr_fkcShape1" -p "rtArmBp0_lwr_fkc";
	rename -uid "D0065910-407B-2CCF-17B9-6797DDD0DB1C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 20 0 no 3
		25 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 20 20
		23
		1.9632216371408613e-16 7.3958042480399433 -4.3386037618411812
		1.6457092276432489e-16 7.7224740537596155 -3.7501697619710348
		1.0106844086480164e-16 8.3758136651989066 -2.5733017622307188
		-9.0860836640580612e-20 8.404019529645824 0.24878665956968943
		-1.007049975676637e-16 8.277087574321536 1.5781551250669825
		-1.9759421528831742e-16 7.7907086098042706 3.2455846384340314
		-2.8685112356348563e-16 7.0025599142897796 4.6766126017841279
		-3.6509494154339106e-16 5.9961837125624875 5.9759145511875591
		-4.2930555553078336e-16 4.1011265629329205 7.5976259160566855
		-4.7701895699816811e-16 2.5014690535577775 8.2742602339057054
		-5.0640057048251851e-16 -0.65144519073174978 9.4728379239250238
		-5.1632156372088925e-16 -3.0625162146735207e-15 11.536065234920812
		-5.0640057048251585e-16 0.65144519073178597 9.4728379239249918
		-4.7701895699818586e-16 -2.5014690535579343 8.2742602339060127
		-4.2930555553075985e-16 -4.1011265629325413 7.5976259160561961
		-3.6509494154347182e-16 -5.9961837125638606 5.9759145511892973
		-2.868511235631871e-16 -7.0025599142847303 4.6766126017777196
		-1.9759421528940935e-16 -7.7907086098226364 3.2455846384575948
		-1.0070499756359907e-16 -8.2770875742532262 1.5781551249791999
		-9.0860843802834166e-20 -8.4040195295985054 0.24878665972043126
		1.010684408712887e-16 -8.3758136653027435 -2.5733017623808827
		1.6457092276647676e-16 -7.7224740537938228 -3.7501697620208576
		1.963221637140708e-16 -7.3958042480393607 -4.3386037618408446
		;
createNode transform -n "rtArmBp0_palm_fkc_ofs" -p "rtArmBp0_FK";
	rename -uid "117B779B-4D83-1548-CD1A-0D8FA5929B8E";
	setAttr -cb on ".ro";
createNode transform -n "rtArmBp0_palm_fkc" -p "rtArmBp0_palm_fkc_ofs";
	rename -uid "18108274-49DB-7B82-D0B0-11A7A088FD37";
	addAttr -uap -ci true -k true -sn "palmRoll" -ln "palmRoll" -at "double";
	addAttr -uap -ci true -k true -sn "palmBank" -ln "palmBank" -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 5;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -av -k on ".palmRoll";
	setAttr -av -k on ".palmBank";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtArmBp0_palm_fkcShape1" -p "rtArmBp0_palm_fkc";
	rename -uid "2D818CFF-4CCC-E136-14E1-D080AC6C4914";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 20 0 no 3
		25 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 20 20
		23
		1.9632216371408613e-16 7.3958042480399433 -4.3386037618411812
		1.6457092276432489e-16 7.7224740537596155 -3.7501697619710348
		1.0106844086480164e-16 8.3758136651989066 -2.5733017622307188
		-9.0860836640580612e-20 8.404019529645824 0.24878665956968943
		-1.007049975676637e-16 8.277087574321536 1.5781551250669825
		-1.9759421528831742e-16 7.7907086098042706 3.2455846384340314
		-2.8685112356348563e-16 7.0025599142897796 4.6766126017841279
		-3.6509494154339106e-16 5.9961837125624875 5.9759145511875591
		-4.2930555553078336e-16 4.1011265629329205 7.5976259160566855
		-4.7701895699816811e-16 2.5014690535577775 8.2742602339057054
		-5.0640057048251851e-16 -0.65144519073174978 9.4728379239250238
		-5.1632156372088925e-16 -3.0625162146735207e-15 11.536065234920812
		-5.0640057048251585e-16 0.65144519073178597 9.4728379239249918
		-4.7701895699818586e-16 -2.5014690535579343 8.2742602339060127
		-4.2930555553075985e-16 -4.1011265629325413 7.5976259160561961
		-3.6509494154347182e-16 -5.9961837125638606 5.9759145511892973
		-2.868511235631871e-16 -7.0025599142847303 4.6766126017777196
		-1.9759421528940935e-16 -7.7907086098226364 3.2455846384575948
		-1.0070499756359907e-16 -8.2770875742532262 1.5781551249791999
		-9.0860843802834166e-20 -8.4040195295985054 0.24878665972043126
		1.010684408712887e-16 -8.3758136653027435 -2.5733017623808827
		1.6457092276647676e-16 -7.7224740537938228 -3.7501697620208576
		1.963221637140708e-16 -7.3958042480393607 -4.3386037618408446
		;
createNode transform -n "rtArmBp0_ikc_matcher" -p "rtArmBp0_palm_fkc";
	rename -uid "077860D9-48FF-B1AB-9304-5CBDB3749FE8";
	setAttr ".t" -type "double3" -3.730349362740526e-14 -2.1316282072803006e-14 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999956 ;
createNode transform -n "rtArmBp0_IK" -p "rtArmBp0_ctl_data";
	rename -uid "581BFC9E-4312-2CB0-6018-4FAACDFC18B8";
	setAttr -cb on ".ro";
createNode joint -n "rtArmBp0_clavicle_ik" -p "rtArmBp0_IK";
	rename -uid "04DF9416-4295-F7E1-D0C9-4AAEDAA1CCE6";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 178.8862556599862 7.0168606226744545 -9.0423113078230219 ;
	setAttr ".radi" 1.6649004127528668;
createNode joint -n "rtArmBp0_upr_ik" -p "rtArmBp0_clavicle_ik";
	rename -uid "AF6DE7F4-46E0-4D75-FD71-6DB9325663F4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -11.010418324255834 -2.1316282072803006e-14 -3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" -1.2575332186337592e-13 6.6752870056753112e-05 1.9102378063595399e-12 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 5.2528465092008538 -5.0799175352001136 -100.31206232914657 ;
	setAttr ".radi" 1.6649004127528668;
createNode joint -n "rtArmBp0_lwr_ik" -p "rtArmBp0_upr_ik";
	rename -uid "BCF7CF19-4F01-551D-3D5F-ADBE289B475A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -26.30124056963124 3.0198066269804258e-14 1.0658141036401503e-14 ;
	setAttr ".r" -type "double3" 4.8853980830236456e-14 -0.00015633241302451831 -8.3818997211402073e-13 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -8.8146405219716737 0 ;
	setAttr ".pa" -type "double3" 0 -45 0 ;
	setAttr ".radi" 1.6649004127528668;
createNode joint -n "rtArmBp0_palm_ik" -p "rtArmBp0_lwr_ik";
	rename -uid "280C86B3-4A55-5C67-C946-CB920467467E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -19.634620240744912 2.1316282072803006e-14 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 1.6649004127528668;
createNode joint -n "rtArmBp0_ball_ik" -p "rtArmBp0_palm_ik";
	rename -uid "7FB3494E-42E9-75AC-117E-DCAED0DC0070";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -8.5523331894636279 0.35556014072067121 -0.61956145912587246 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 1.6649004127528668;
createNode ikEffector -n "effector23" -p "rtArmBp0_lwr_ik";
	rename -uid "F4E952E7-454B-DD56-8825-78B68280BBD4";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "rtArmBp0_softJ" -p "rtArmBp0_clavicle_ik";
	rename -uid "4437855F-4F48-32AC-A15C-0788C115AF59";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -11.010418324255848 -3.5527136788005009e-14 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 2.5444437451708131e-14 -1.973604710301386e-30 1.282843061695899e-29 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 100.85906788556382 -8.8304370842176034 -100.66077230548305 ;
createNode joint -n "rtArmBp0_softJ_end" -p "rtArmBp0_softJ";
	rename -uid "6084BB8E-4D40-2A30-288D-55B217A49BCB";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -45.802890777587891 3.5527136788005009e-15 -2.3092638912203256e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.2339689440630851e-15 3.9756933518293952e-15 -3.2416245952832116e-16 ;
createNode ikEffector -n "effector24" -p "rtArmBp0_softJ";
	rename -uid "9E86CABB-4DDE-BB4F-9756-968B09983EAE";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "rtArmBp0_pvChainJ" -p "rtArmBp0_clavicle_ik";
	rename -uid "12AF645C-4603-9170-0F5B-529D82E53C37";
	setAttr ".ove" yes;
	setAttr ".ovc" 5;
	setAttr ".t" -type "double3" -11.010418324255845 -3.5527136788005009e-14 -8.8817841970012523e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 100.85906788968339 -8.8304370773648913 -100.66077230484032 ;
	setAttr ".radi" 0.55496680425095557;
createNode joint -n "rtArmBp0_pvChainJ_end" -p "rtArmBp0_pvChainJ";
	rename -uid "8F7D1B9F-4D4B-AE19-4AC2-2A9939840820";
	setAttr ".ove" yes;
	setAttr ".ovc" 5;
	setAttr ".t" -type "double3" -45.802886266691871 -3.5527136788005009e-15 -1.0658141036401503e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.2339689440630851e-15 3.9756933518293952e-15 -3.2416245952832116e-16 ;
	setAttr ".radi" 0.55496680425095557;
createNode ikEffector -n "effector26" -p "rtArmBp0_pvChainJ";
	rename -uid "CA9A43D0-4FCE-9182-061E-1885D0C4136B";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtArmBp0_pvc_SPACE_1_ofs" -p "rtArmBp0_pvChainJ";
	rename -uid "20F11703-42C0-00BC-E1C3-F6BCA2F623C1";
	setAttr ".t" -type "double3" -27.151016163970947 23.568204982580145 -2.2959214321008421 ;
	setAttr ".r" -type "double3" -11.310734760043122 84.330313980261565 -98.988835917788222 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 1.0000000000000004 ;
createNode transform -n "rtArmBp0_pvc_SPACE_1" -p "rtArmBp0_pvc_SPACE_1_ofs";
	rename -uid "BACE6A54-41A1-6B75-CE60-7F949E1EDF12";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 3.5527136788005009e-15 -1.1102230246251565e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000002 ;
createNode transform -n "rtArmBp0_ikCstG" -p "rtArmBp0_IK";
	rename -uid "35CA0CE5-4E29-F9AA-C68D-ADAF5CCECD71";
	setAttr -cb on ".ro";
createNode transform -n "rtArmBp0_dist_loc1" -p "rtArmBp0_ikCstG";
	rename -uid "CAC127E7-4013-BF7D-BDFD-A9AAACBFE80A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.7763568394002505e-15 5.3290705182007514e-15 -1.0658141036401503e-14 ;
	setAttr ".r" -type "double3" -165.70015972029594 11.755758692754101 93.86736393040448 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999989 0.99999999999999944 ;
createNode locator -n "rtArmBp0_dist_loc1Shape" -p "rtArmBp0_dist_loc1";
	rename -uid "84D943D8-4A57-3998-8D98-32A09B7D2BDE";
	setAttr -k off ".v";
createNode transform -n "rtArmBp0_softJ_posGrp" -p "rtArmBp0_ikCstG";
	rename -uid "23EA8288-4A10-5A1C-2367-50AAE0305A9A";
	setAttr ".t" -type "double3" 4.4934916871852693e-06 1.7763568394002505e-15 -3.9626551995297632e-07 ;
	setAttr ".r" -type "double3" -165.70015972029594 11.755758692754101 93.86736393040448 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999989 0.99999999999999944 ;
createNode transform -n "rtArmBp0_1_ikh_ofs" -p "rtArmBp0_ikCstG";
	rename -uid "6B2A25A5-4EB6-42CA-FCED-678CB1B547A2";
	setAttr ".r" -type "double3" -165.70015972029591 11.755758692754087 93.86736393040448 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 0.99999999999999944 ;
createNode ikHandle -n "rtArmBp0_1_ikh" -p "rtArmBp0_1_ikh_ofs";
	rename -uid "2B97004D-4AAD-3E67-C324-A0941DB2847F";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "rtArmBp0_line_9" -p "rtArmBp0_IK";
	rename -uid "2AD1681B-4766-3A71-4359-C79DA68A45AC";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape3" -p "rtArmBp0_line_9";
	rename -uid "217A49EF-4EDC-8B43-72A9-8F8AF3655705";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-11.020327311431737 34.037159383573389 17.145217188728566
		-15.559658358416932 29.728039324102756 -3.9151496754244888
		;
createNode transform -n "rtArmBp0_ikc_ofs" -p "rtArmBp0_IK";
	rename -uid "28C5FE1B-4C02-C25B-0356-EAB191BDF5E7";
	setAttr ".t" -type "double3" -9.7238018710279182 14.987575597654558 21.722429851272686 ;
	setAttr ".r" -type "double3" 12.690822119425013 166.51929044088112 -86.106441410616924 ;
	setAttr -cb on ".ro";
createNode transform -n "rtArmBp0_ikc_ofs1" -p "rtArmBp0_ikc_ofs";
	rename -uid "87E26967-4F29-88CB-58E6-53A7398ADCCC";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999933 ;
createNode transform -n "rtArmBp0_ikc" -p "rtArmBp0_ikc_ofs1";
	rename -uid "6C15839B-4D55-AC42-3CB5-F485A8AC19E9";
	addAttr -ci true -sn "stretchy" -ln "stretchy" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "squashy" -ln "squashy" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "limbScale1" -ln "limbScale1" -dv 1 -at "double";
	addAttr -ci true -sn "limbScale2" -ln "limbScale2" -dv 1 -at "double";
	addAttr -ci true -sn "softIK" -ln "softIK" -min 0 -at "double";
	addAttr -ci true -sn "palmAlign" -ln "palmAlign" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "_______________" -ln "_______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "master:COG:head" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".stretchy";
	setAttr -k on ".squashy";
	setAttr -k on ".limbScale1";
	setAttr -k on ".limbScale2";
	setAttr -k on ".softIK";
	setAttr -k on ".palmAlign";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on "._______________";
	setAttr -k on ".space";
createNode nurbsCurve -n "rtArmBp0_ikcShape1" -p "rtArmBp0_ikc";
	rename -uid "4D2FB2B9-4D5F-246E-376C-4694B8FA9956";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-4.1622510318821675 4.1622510318821675 4.1622510318821675
		-4.1622510318821675 -1.4194991583356142 4.1622510318821675
		4.1622510318821675 -4.1622510318821675 4.1622510318821675
		4.1622510318821675 4.1622510318821675 4.1622510318821675
		-4.1622510318821675 4.1622510318821675 4.1622510318821675
		-4.1622510318821675 4.1622510318821675 -4.1622510318821675
		4.1622510318821675 4.1622510318821675 -4.1622510318821675
		4.1622510318821675 4.1622510318821675 4.1622510318821675
		4.1622510318821675 -4.1622510318821675 4.1622510318821675
		4.1622510318821675 -4.1622510318821675 -4.1622510318821675
		4.1622510318821675 4.1622510318821675 -4.1622510318821675
		4.1622510318821675 -4.1622510318821675 -4.1622510318821675
		-4.1622510318821675 -1.4194991583356142 -4.1622510318821675
		-4.1622510318821675 4.1622510318821675 -4.1622510318821675
		-4.1622510318821675 4.1622510318821675 4.1622510318821675
		-4.1622510318821675 -1.4194991583356142 4.1622510318821675
		-4.1622510318821675 -1.4194991583356142 -4.1622510318821675
		;
createNode transform -n "rtArmBp0_pvc_ofs" -p "rtArmBp0_IK";
	rename -uid "C2DADB9A-4628-375D-8D2C-70845CBAD955";
	setAttr ".t" -type "double3" -15.559658358416934 29.728039324102756 -3.9151496754244892 ;
	setAttr ".r" -type "double3" -11.31073476004318 12.163396637700897 2.0334972671381305e-16 ;
	setAttr -cb on ".ro";
createNode transform -n "rtArmBp0_pvc_ofs1" -p "rtArmBp0_pvc_ofs";
	rename -uid "6C693B89-4943-6756-BDC0-47AE343539A8";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtArmBp0_pvc" -p "rtArmBp0_pvc_ofs1";
	rename -uid "A0E609F1-49B6-07BB-BE0E-C2B98B7F31BF";
	addAttr -ci true -sn "fkPin" -ln "fkPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "arm:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 1.0658141036401503e-14 1.0436096431476471e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".fkPin";
	setAttr -k on ".pvPin";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -k on ".space";
createNode nurbsCurve -n "rtArmBp0_pvcShape1" -p "rtArmBp0_pvc";
	rename -uid "3FFA5A71-490B-BBB7-D7F5-C798EC581402";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.3735428405211152
		-1.3735428405211152 0 0
		0 0 -1.3735428405211152
		1.3735428405211152 0 0
		0 0 1.3735428405211152
		0 1.3735428405211152 0
		1.3735428405211152 0 0
		0 0 -1.3735428405211152
		0 1.3735428405211152 0
		-1.3735428405211152 0 0
		0 -1.3735428405211152 0
		1.3735428405211152 0 0
		0 0 1.3735428405211152
		0 -1.3735428405211152 0
		0 0 -1.3735428405211152
		;
createNode transform -n "rtArmBp0_pin_fkc_ofs" -p "rtArmBp0_pvc";
	rename -uid "9A439ED1-4A2E-E2AD-E43D-B3A243F967AB";
	setAttr ".t" -type "double3" 0.30299907288497607 -19.61075132185249 22.889967233575284 ;
	setAttr ".r" -type "double3" 179.99999999999997 2.683309945353606 90.885187238897927 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "rtArmBp0_pin_fkc" -p "rtArmBp0_pin_fkc_ofs";
	rename -uid "53E66DDF-49F6-1285-B21D-59B3D95AE565";
	addAttr -uap -ci true -k true -sn "palmRoll" -ln "palmRoll" -at "double";
	addAttr -uap -ci true -k true -sn "palmBank" -ln "palmBank" -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -cb on ".ro";
	setAttr -av -k on ".palmRoll";
	setAttr -av -k on ".palmBank";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtArmBp0_pin_fkcShape1" -p "rtArmBp0_pin_fkc";
	rename -uid "351985A1-4884-2DFD-424E-0FAA36C42C87";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-8.6790007074192156e-16 -5.7451341884607094 -5.7451341884607183
		-8.190564185202625e-16 1.4582685730870109e-15 -5.1947756126044622
		-8.6790007074192156e-16 5.7451341884607139 -5.7451341884607148
		-9.8581907837128492e-16 5.1947756126044791 -2.0171172822515029e-15
		-1.1037380860006484e-15 5.7451341884607139 5.7451341884607112
		-1.1525817382223076e-15 2.2967210653845624e-15 5.1947756126044675
		-1.1037380860006484e-15 -5.7451341884607094 5.7451341884607148
		-9.8581907837128492e-16 -5.1947756126044755 -1.0394094810346648e-15
		-8.6790007074192156e-16 -5.7451341884607094 -5.7451341884607183
		-8.190564185202625e-16 1.4582685730870109e-15 -5.1947756126044622
		-8.6790007074192156e-16 5.7451341884607139 -5.7451341884607148
		;
createNode transform -n "rtArmBp0_palm_ikc_ofs" -p "rtArmBp0_IK";
	rename -uid "65B59C5B-4CA9-490B-E810-76BF7030DAE6";
	setAttr -cb on ".ro";
createNode transform -n "rtArmBp0_palm_ikc" -p "rtArmBp0_palm_ikc_ofs";
	rename -uid "6B816E06-4A63-2500-7E6A-999C0460B1C1";
	addAttr -ci true -sn "palmRoll" -ln "palmRoll" -at "double";
	addAttr -ci true -sn "palmBank" -ln "palmBank" -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 -3.5527136788005009e-15 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".palmRoll";
	setAttr -k on ".palmBank";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtArmBp0_palm_ikcShape1" -p "rtArmBp0_palm_ikc";
	rename -uid "B927785C-4814-5345-3159-18A6E5CF1517";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-3.8847676297566891 6.8941610261528536 6.8941610261528616
		-3.8847676297566891 3.8170591957588746e-16 6.2337307351253548
		-3.8847676297566891 -6.8941610261528536 6.8941610261528572
		-3.8847676297566891 -6.2337307351253726 2.4205407387018035e-15
		-3.8847676297566891 -6.8941610261528536 -6.8941610261528536
		-3.8847676297566891 -6.2443707118117414e-16 -6.233730735125361
		-3.8847676297566891 6.8941610261528536 -6.8941610261528572
		-3.8847676297566891 6.2337307351253726 1.2472913772415977e-15
		-3.8847676297566891 6.8941610261528536 6.8941610261528616
		-3.8847676297566891 3.8170591957588746e-16 6.2337307351253548
		-3.8847676297566891 -6.8941610261528536 6.8941610261528572
		;
createNode transform -n "rtArmBp0_BF" -p "rtArmBp0_ctl_data";
	rename -uid "9D2D691B-4148-54A0-316A-57A720E702F8";
	setAttr -cb on ".ro";
createNode joint -n "rtArmBp0_clavicle_bf" -p "rtArmBp0_BF";
	rename -uid "F4F8D8EF-4315-9BCD-BF83-19ACC633F73C";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 3;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 178.8862556599862 7.0168606226744545 -9.0423113078230219 ;
	setAttr ".radi" 2.2198672170038223;
createNode joint -n "rtArmBp0_upr_bf" -p "rtArmBp0_clavicle_bf";
	rename -uid "B4B85EBB-4AB6-2DDF-011F-EF80D10BEBB4";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 5.2528465092008538 -5.0799175352001136 -100.31206232914657 ;
	setAttr ".radi" 2.2198672170038223;
createNode joint -n "rtArmBp0_lwr_bf" -p "rtArmBp0_upr_bf";
	rename -uid "124CAFFE-4F72-2EE7-6F7F-EB8B9F76D6CC";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -8.8146405219716737 0 ;
	setAttr ".pa" -type "double3" 0 -45 0 ;
	setAttr ".radi" 2.2198672170038223;
createNode joint -n "rtArmBp0_palm_bf" -p "rtArmBp0_lwr_bf";
	rename -uid "472CA9AF-4C45-0081-5D2A-059ADC3D902C";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".radi" 2.2198672170038223;
createNode joint -n "rtArmBp0_ball_bf" -p "rtArmBp0_palm_bf";
	rename -uid "780DA807-43EE-B87D-0DE1-979663F027B7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -8.5523331894636279 0.35556014072067121 -0.61956145912587246 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 2.2198672170038223;
createNode transform -n "rtArmBp0_palmIn" -p "rtArmBp0_ball_bf";
	rename -uid "7FE280EF-480E-EB7A-BCC5-7098CA1F79F9";
	setAttr ".t" -type "double3" -9.9920072216264089e-15 2.6438448244479407 1.7802311160540789 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1 ;
createNode locator -n "rtArmBp0_palmInShape" -p "rtArmBp0_palmIn";
	rename -uid "59CEDC68-4310-1D4F-CC7B-74B47DD7844C";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.55496680425095557 0.55496680425095557 0.55496680425095557 ;
createNode transform -n "rtArmBp0_palmOut" -p "rtArmBp0_palmIn";
	rename -uid "1C29437D-45E8-5665-48F4-528DCD5CD6A2";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -7.0782673636346072 1.2846278202149115 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000004 1 ;
createNode locator -n "rtArmBp0_palmOutShape" -p "rtArmBp0_palmOut";
	rename -uid "B75F072E-441E-B180-5B5F-30A7793BF8D4";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.55496680425095557 0.55496680425095557 0.55496680425095557 ;
createNode transform -n "rtArmBp0_ballRoll" -p "rtArmBp0_palmOut";
	rename -uid "B230CB2D-4E4A-68B9-8662-47B1687BDCCA";
	setAttr ".t" -type "double3" 1.5987211554602254e-14 4.434422539186663 -3.0648589362689904 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999911 1.0000000000000007 1 ;
createNode locator -n "rtArmBp0_ballRollShape" -p "rtArmBp0_ballRoll";
	rename -uid "A678ECED-4FF2-8D42-70EC-9CB7F8BFEC63";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.55496680425095557 0.55496680425095557 0.55496680425095557 ;
createNode transform -n "rtHand0_handJ_SPACE_1_ofs" -p "rtArmBp0_ballRoll";
	rename -uid "F3F1B740-4565-1DB9-4639-C3B4407FFDC7";
	setAttr ".t" -type "double3" 8.278954992187753 -0.42094769883547478 0.094903521201214147 ;
	setAttr ".r" -type "double3" 169.57792742512157 11.339561909655435 7.6993742495494031 ;
	setAttr ".s" -type "double3" 1.0000000000000016 0.99999999999999867 1.0000000000000002 ;
createNode transform -n "rtHand0_handJ_SPACE_1" -p "rtHand0_handJ_SPACE_1_ofs";
	rename -uid "1372B0A7-4AE5-BF1D-C1FC-E5BDD846A458";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 1.7763568394002505e-15 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999711 1.0000000000000029 1.0000000000000002 ;
createNode transform -n "rtHand0_grp_SPACE_1_ofs" -p "rtArmBp0_palm_bf";
	rename -uid "2C04B724-4DA6-2148-2049-02B9BEC7C6D5";
	setAttr ".t" -type "double3" -0.27337819727588553 -0.06538755811481245 -0.52465793792465121 ;
	setAttr ".r" -type "double3" 169.57792742512163 11.339561909655487 7.6993742495494049 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtHand0_grp_SPACE_1" -p "rtHand0_grp_SPACE_1_ofs";
	rename -uid "52B9F1B0-45AF-6169-32F9-BEB537D6182C";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 0 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 1 ;
createNode transform -n "rtArmBp0_setting" -p "rtArmBp0_ctl_data";
	rename -uid "8F98EE15-4356-A9DD-151E-568065CF3554";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
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
	setAttr -l on -k on ".______________";
	setAttr -k on ".fkIkBlend";
createNode nurbsCurve -n "rtArmBp0_settingShape1" -p "rtArmBp0_setting";
	rename -uid "E61619BC-4837-5322-71E5-05A30A638AF4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-1.3874170106273889 -2.1149479518343338e-33 3.4539720451788903e-17
		-1.3607581736219438 1.6573857016752859e-17 -0.27067162542194206
		-1.2818061729809447 3.2510791560790011e-17 -0.53094151992316796
		-1.1535951101401194 4.7198352611589924e-17 -0.77080757514025322
		-0.98105197629750518 6.0072106592532771e-17 -0.98105197629750518
		-0.77080757514025322 7.0637328769172303e-17 -1.1535951101401194
		-0.53094151992316796 7.8487995387755048e-17 -1.2818061729809447
		-0.27067162542194206 8.3322410002088424e-17 -1.3607581736219438
		8.4954790091935457e-17 8.4954790091935457e-17 -1.3874170106273889
		0.27067162542194206 8.3322410002088424e-17 -1.3607581736219438
		0.53094151992316796 7.8487995387755048e-17 -1.2818061729809447
		0.77080757514025322 7.0637328769172303e-17 -1.1535951101401194
		0.98105197629750518 6.0072106592532771e-17 -0.98105197629750518
		1.1535951101401194 4.7198352611589924e-17 -0.77080757514025322
		1.2818061729809447 3.2510791560790011e-17 -0.53094151992316796
		1.3607581736219438 1.6573857016752859e-17 -0.27067162542194206
		1.3874170106273889 9.1888550488915169e-33 -1.5006538635349935e-16
		1.3346116579613652 1.6255395780395006e-17 -0.26547074342228438
		1.1842344934624471 3.0036055132497508e-17 -0.49052598814875259
		0.95917921565737962 3.9243997693877524e-17 -0.64090308649047234
		0.69370850531369443 4.2477395045967729e-17 -0.69370850531369443
		0.42823776189141011 3.9243997693877524e-17 -0.64090308649047234
		0.20318251716494187 3.0036055132497508e-17 -0.49052598814875259
		0.052805418823222157 1.6255395780395006e-17 -0.26547074342228438
		0 9.1888550488915169e-33 -1.5006538635349935e-16
		-0.052805418823222157 -1.6255395780395006e-17 0.26547074342228438
		-0.20318251716494187 -3.0036055132497508e-17 0.49052598814875259
		-0.42823776189141011 -3.9243997693877524e-17 0.64090308649047234
		-0.69370850531369443 -4.2477395045967729e-17 0.69370850531369443
		-0.95917921565737962 -3.9243997693877524e-17 0.64090308649047234
		-1.1842344934624471 -3.0036055132497508e-17 0.49052598814875259
		-1.3346116579613652 -1.6255395780395006e-17 0.26547074342228438
		-1.3874170106273889 -2.1149479518343338e-33 3.4539720451788903e-17
		-1.3607581736219438 -1.6573857016752859e-17 0.27067162542194206
		-1.2818061729809447 -3.2510791560790011e-17 0.53094151992316796
		-1.1535951101401194 -4.7198352611589924e-17 0.77080757514025322
		-0.98105197629750518 -6.0072106592532771e-17 0.98105197629750518
		-0.77080757514025322 -7.0637328769172303e-17 1.1535951101401194
		-0.53094151992316796 -7.8487995387755048e-17 1.2818061729809447
		-0.27067162542194206 -8.3322410002088424e-17 1.3607581736219438
		-1.6197190558969209e-16 -8.4954790091935457e-17 1.3874170106273889
		0.27067162542194206 -8.3322410002088424e-17 1.3607581736219438
		0.53094151992316796 -7.8487995387755048e-17 1.2818061729809447
		0.77080757514025322 -7.0637328769172303e-17 1.1535951101401194
		0.98105197629750518 -6.0072106592532771e-17 0.98105197629750518
		1.1535951101401194 -4.7198352611589924e-17 0.77080757514025322
		1.2818061729809447 -3.2510791560790011e-17 0.53094151992316796
		1.3607581736219438 -1.6573857016752859e-17 0.27067162542194206
		1.3874170106273889 9.1888550488915169e-33 -1.5006538635349935e-16
		;
	setAttr ".adot" yes;
createNode transform -n "rtArmBp0_upr_fkc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "251C11FD-4008-E405-88B7-91A0734A2F99";
	setAttr ".t" -type "double3" -11.915394033737446 60.22795225480197 14.909936481380763 ;
	setAttr ".r" -type "double3" -167.61891390083878 4.8753800706357131 91.957327942573485 ;
	setAttr -cb on ".ro";
createNode transform -n "rtArmBp0_upr_fkc_SPACE_2" -p "rtArmBp0_upr_fkc_SPACE_2_ofs";
	rename -uid "1528D11C-497A-0E59-0F85-4F9FCA410001";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "rtArmBp0_anchorM1" -p "master_ctl";
	rename -uid "BD503411-45C9-C3E0-C320-708100328D06";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "rtArmBp0_anchorM1Shape" -p "rtArmBp0_anchorM1";
	rename -uid "1FB380CB-47DA-53FF-7488-3687B05287DF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 1.6515627486383742 1.6515627486383742 1.6515627486383742 ;
createNode transform -n "rtArmBp0_anchorF1" -p "master_ctl";
	rename -uid "9EF06E3B-484D-240A-2A12-F0B98E19B193";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "rtArmBp0_anchorF1Shape" -p "rtArmBp0_anchorF1";
	rename -uid "907F6F64-4C23-B88E-B895-059FEDB348DC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 1.6515627486383742 1.6515627486383742 1.6515627486383742 ;
createNode transform -n "rtHand0_ctl_data" -p "master_ctl";
	rename -uid "CFB5A771-4BC1-1705-741E-8985C5C6F867";
	setAttr -cb on ".ro";
createNode transform -n "rtHand0_fgr00_1_ctl_ofs_ofs" -p "rtHand0_ctl_data";
	rename -uid "BF59D94B-486A-C320-E20A-E5839412132D";
	setAttr -cb on ".ro";
createNode transform -n "rtHand0_fgr00_1_ctl_ofs" -p "rtHand0_fgr00_1_ctl_ofs_ofs";
	rename -uid "0FF060F9-434B-804E-2FAD-80B7CBE07EF1";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 -1.7763568394002505e-15 ;
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 0.99999999999999978 ;
createNode transform -n "rtHand0_fgr00_1_ctl" -p "rtHand0_fgr00_1_ctl_ofs";
	rename -uid "D920231E-4BFE-FEF8-9FF9-53A1BB1D4407";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr00_1_ctlShape1" -p "rtHand0_fgr00_1_ctl";
	rename -uid "68DE77FA-4F3E-586D-242C-1D90A5DDB76F";
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
		-3.53442854396097e-15 -0.17817407968254564 -0.89087039841272975
		-3.5268545931206151e-15 -7.101137845869581e-17 -0.80552893419981297
		-3.53442854396097e-15 0.17817407968254551 -0.89087039841272908
		-3.5527136788005009e-15 0.16110578683996285 -1.1245300025850259e-15
		-3.5709988136400323e-15 0.17817407968254551 0.89087039841272708
		-3.5785727644803872e-15 -4.5008417296760112e-17 0.8055289341998122
		-3.5709988136400323e-15 -0.17817407968254564 0.89087039841272753
		-3.5527136788005009e-15 -0.16110578683996296 -9.7292154404793359e-16
		-3.53442854396097e-15 -0.17817407968254564 -0.89087039841272975
		-3.5268545931206151e-15 -7.101137845869581e-17 -0.80552893419981297
		-3.53442854396097e-15 0.17817407968254551 -0.89087039841272908
		;
createNode transform -n "rtHand0_fgr00_2_ctl_ofs_ofs" -p "rtHand0_fgr00_1_ctl";
	rename -uid "6E64F86D-4702-C55F-D426-70936078CB66";
	setAttr ".t" -type "double3" -4.15644061668673 0.58823287137960456 -0.28277819055973108 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
createNode transform -n "rtHand0_fgr00_2_ctl_ofs" -p "rtHand0_fgr00_2_ctl_ofs_ofs";
	rename -uid "5633D608-4DAF-7B23-B399-3D9C8C05858A";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -3.5527136788005009e-15 4.4408920985006262e-16 ;
	setAttr -cb on ".ro" 3;
createNode transform -n "rtHand0_fgr00_2_ctl" -p "rtHand0_fgr00_2_ctl_ofs";
	rename -uid "E4F196BF-4C27-8FC3-259D-0288898C5901";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999956 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr00_2_ctlShape1" -p "rtHand0_fgr00_2_ctl";
	rename -uid "8B1F9893-468B-0DB5-663C-FDB6D0097531";
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
		-2.8744733590952897e-16 -0.17817407968254201 -0.89087039841272897
		-2.7987338506917431e-16 3.5428487944916172e-15 -0.8055289341998122
		-2.8744733590952897e-16 0.17817407968254914 -0.8908703984127283
		-3.057324707490601e-16 0.16110578683996646 -3.1278470057216561e-16
		-3.2401760558859123e-16 0.17817407968254914 0.89087039841272786
		-3.3159155642894589e-16 3.5688517556535532e-15 0.80552893419981297
		-3.2401760558859123e-16 -0.17817407968254201 0.8908703984127283
		-3.057324707490601e-16 -0.16110578683995935 -1.6117624203507339e-16
		-2.8744733590952897e-16 -0.17817407968254201 -0.89087039841272897
		-2.7987338506917431e-16 3.5428487944916172e-15 -0.8055289341998122
		-2.8744733590952897e-16 0.17817407968254914 -0.8908703984127283
		;
createNode transform -n "rtHand0_fgr00_3_ctl_ofs_ofs" -p "rtHand0_fgr00_2_ctl";
	rename -uid "C3C4D9F3-4790-1200-38E3-93B483140A94";
	setAttr ".t" -type "double3" -2.94054099991207 -5.3290705182007514e-15 0 ;
	setAttr ".r" -type "double3" 0 -26.105210869895313 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "rtHand0_fgr00_3_ctl_ofs" -p "rtHand0_fgr00_3_ctl_ofs_ofs";
	rename -uid "1B1ACA9D-4179-41D1-F767-4EAE644B59B5";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 0 -1.7763568394002505e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtHand0_fgr00_3_ctl" -p "rtHand0_fgr00_3_ctl_ofs";
	rename -uid "EA44E050-4556-C703-CA7A-1ABAC6D4902E";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr00_3_ctlShape1" -p "rtHand0_fgr00_3_ctl";
	rename -uid "E89FA284-46D1-5827-EEAB-D6B2431167BC";
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
		1.8285134839531155e-17 -0.17817407968254559 -0.89087039841272897
		2.5859085679885778e-17 -9.8648843088837975e-18 -0.8055289341998122
		1.8285134839531145e-17 0.17817407968254559 -0.8908703984127283
		-1.0553936882080034e-32 0.16110578683996291 -3.1278470057216561e-16
		-1.8285134839531152e-17 0.17817407968254559 0.89087039841272786
		-2.5859085679885803e-17 1.6138076853051902e-17 0.80552893419981297
		-1.8285134839531145e-17 -0.17817407968254559 0.8908703984127283
		-1.542087083399392e-32 -0.16110578683996291 -1.6117624203507339e-16
		1.8285134839531155e-17 -0.17817407968254559 -0.89087039841272897
		2.5859085679885778e-17 -9.8648843088837975e-18 -0.8055289341998122
		1.8285134839531145e-17 0.17817407968254559 -0.8908703984127283
		;
createNode transform -n "rtHand0_fgr01_1_ctl_ofs_ofs" -p "rtHand0_ctl_data";
	rename -uid "6673A74F-4657-5DE6-2FCA-A39517A58FA9";
	setAttr -cb on ".ro";
createNode transform -n "rtHand0_fgr01_1_ctl_ofs" -p "rtHand0_fgr01_1_ctl_ofs_ofs";
	rename -uid "FA5E215E-47A5-0BC1-F8E4-8EAE354CA491";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
createNode transform -n "rtHand0_fgr01_1_ctl" -p "rtHand0_fgr01_1_ctl_ofs";
	rename -uid "468D811E-4359-725D-684B-ECBC3BF73306";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr01_1_ctlShape1" -p "rtHand0_fgr01_1_ctl";
	rename -uid "30502048-4745-F387-38C4-0C9D7B4D3E10";
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
		1.7182088565525167e-15 -0.1781740796825447 -0.89087039841272897
		1.7257828073928712e-15 9.0888678246614746e-16 -0.8055289341998122
		1.7182088565525167e-15 0.17817407968254648 -0.8908703984127283
		1.6999237217129856e-15 0.16110578683996379 -3.1278470057216561e-16
		1.6816385868734544e-15 0.17817407968254648 0.89087039841272786
		1.6740646360330997e-15 9.3488974362808326e-16 0.80552893419981297
		1.6816385868734544e-15 -0.1781740796825447 0.8908703984127283
		1.6999237217129856e-15 -0.16110578683996202 -1.6117624203507339e-16
		1.7182088565525167e-15 -0.1781740796825447 -0.89087039841272897
		1.7257828073928712e-15 9.0888678246614746e-16 -0.8055289341998122
		1.7182088565525167e-15 0.17817407968254648 -0.8908703984127283
		;
createNode transform -n "rtHand0_fgr01_2_ctl_ofs_ofs" -p "rtHand0_fgr01_1_ctl";
	rename -uid "DE69F352-41C9-161C-4459-FBB6458528A4";
	setAttr ".t" -type "double3" -6.1226804357641527 -4.4408920985006262e-15 3.907985046680551e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "rtHand0_fgr01_2_ctl_ofs" -p "rtHand0_fgr01_2_ctl_ofs_ofs";
	rename -uid "AFCE1271-499F-DF1D-678E-619BBDC49F68";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 1.7763568394002505e-15 3.5527136788005009e-15 ;
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "rtHand0_fgr01_2_ctl" -p "rtHand0_fgr01_2_ctl_ofs";
	rename -uid "39E710D1-4B1F-3030-9390-33ACC0B20B23";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr01_2_ctlShape1" -p "rtHand0_fgr01_2_ctl";
	rename -uid "EFC8A1F7-4A1A-8288-81E8-2F8E4E8924CC";
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
		4.6237434468959375e-16 -0.17817407968254559 -0.89087039841272575
		4.6994829552994846e-16 -2.2215725401572954e-18 -0.80552893419980898
		4.6237434468959375e-16 0.17817407968254559 -0.89087039841272508
		4.4408920985006262e-16 0.16110578683996291 2.9341965074792755e-15
		4.2580407501053148e-16 0.17817407968254559 0.89087039841273108
		4.1823012417017682e-16 2.3781388621778405e-17 0.80552893419981619
		4.2580407501053148e-16 -0.17817407968254559 0.89087039841273152
		4.4408920985006262e-16 -0.16110578683996291 3.0858049660163677e-15
		4.6237434468959375e-16 -0.17817407968254559 -0.89087039841272575
		4.6994829552994846e-16 -2.2215725401572954e-18 -0.80552893419980898
		4.6237434468959375e-16 0.17817407968254559 -0.89087039841272508
		;
createNode transform -n "rtHand0_fgr01_3_ctl_ofs_ofs" -p "rtHand0_fgr01_2_ctl";
	rename -uid "B750A0CA-49A3-85F1-3D96-848E342EF60E";
	setAttr ".t" -type "double3" -4.737385800268906 1.0658141036401503e-14 2.4868995751603507e-14 ;
	setAttr ".r" -type "double3" 0 -66.298785885297974 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "rtHand0_fgr01_3_ctl_ofs" -p "rtHand0_fgr01_3_ctl_ofs_ofs";
	rename -uid "A35CB94C-4855-5AC0-2345-1DB707285222";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtHand0_fgr01_3_ctl" -p "rtHand0_fgr01_3_ctl_ofs";
	rename -uid "40434BDE-4F46-25DE-765A-288617B57969";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr01_3_ctlShape1" -p "rtHand0_fgr01_3_ctl";
	rename -uid "4D20B06B-4423-4460-5F67-9AAA4C74AC40";
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
		-3.53442854396097e-15 -0.17817407968254564 -0.89087039841272897
		-3.5268545931206151e-15 -7.101137845869581e-17 -0.8055289341998122
		-3.53442854396097e-15 0.17817407968254551 -0.8908703984127283
		-3.5527136788005009e-15 0.16110578683996285 -3.1278470057216561e-16
		-3.5709988136400323e-15 0.17817407968254551 0.89087039841272786
		-3.5785727644803872e-15 -4.5008417296760112e-17 0.80552893419981297
		-3.5709988136400323e-15 -0.17817407968254564 0.8908703984127283
		-3.5527136788005009e-15 -0.16110578683996296 -1.6117624203507339e-16
		-3.53442854396097e-15 -0.17817407968254564 -0.89087039841272897
		-3.5268545931206151e-15 -7.101137845869581e-17 -0.8055289341998122
		-3.53442854396097e-15 0.17817407968254551 -0.8908703984127283
		;
createNode transform -n "rtHand0_fgr01_4_ctl_ofs_ofs" -p "rtHand0_fgr01_3_ctl";
	rename -uid "C850DAA9-47AF-0666-E9B2-4BBCB70C24D5";
	setAttr ".t" -type "double3" -3.459342247670822 -7.1054273576010019e-15 -5.3290705182007514e-15 ;
	setAttr ".r" -type "double3" 0 -19.821093119868152 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "rtHand0_fgr01_4_ctl_ofs" -p "rtHand0_fgr01_4_ctl_ofs_ofs";
	rename -uid "7835CC99-4551-8344-6B05-DBA4AD083E56";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "rtHand0_fgr01_4_ctl" -p "rtHand0_fgr01_4_ctl_ofs";
	rename -uid "732C4630-4D9C-00E8-AFD0-F390BC8F2F0F";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr01_4_ctlShape1" -p "rtHand0_fgr01_4_ctl";
	rename -uid "BEAFF523-4455-07AA-9C0C-85B4E0C7AB84";
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
		-3.53442854396097e-15 -0.17817407968254564 -0.89087039841272897
		-3.5268545931206151e-15 -7.101137845869581e-17 -0.8055289341998122
		-3.53442854396097e-15 0.17817407968254551 -0.8908703984127283
		-3.5527136788005009e-15 0.16110578683996285 -3.1278470057216561e-16
		-3.5709988136400323e-15 0.17817407968254551 0.89087039841272786
		-3.5785727644803872e-15 -4.5008417296760112e-17 0.80552893419981297
		-3.5709988136400323e-15 -0.17817407968254564 0.8908703984127283
		-3.5527136788005009e-15 -0.16110578683996296 -1.6117624203507339e-16
		-3.53442854396097e-15 -0.17817407968254564 -0.89087039841272897
		-3.5268545931206151e-15 -7.101137845869581e-17 -0.8055289341998122
		-3.53442854396097e-15 0.17817407968254551 -0.8908703984127283
		;
createNode transform -n "rtHand0_fgr02_1_ctl_ofs_ofs" -p "rtHand0_ctl_data";
	rename -uid "CFDE59E5-4D0B-76A9-721F-D395740072F0";
	setAttr -cb on ".ro";
createNode transform -n "rtHand0_fgr02_1_ctl_ofs" -p "rtHand0_fgr02_1_ctl_ofs_ofs";
	rename -uid "CD010FB0-46DE-CD98-F1A6-D2B96BD940C8";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 1.7763568394002505e-15 3.5527136788005009e-15 ;
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "rtHand0_fgr02_1_ctl" -p "rtHand0_fgr02_1_ctl_ofs";
	rename -uid "50D13944-441C-D268-CAD7-3E945A715AE2";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr02_1_ctlShape1" -p "rtHand0_fgr02_1_ctl";
	rename -uid "83F1B22D-44DD-5C68-6CD2-9B86238C5E83";
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
		-1.9109379399352493e-15 -0.17817407968254384 -0.89087039841273219
		-1.9033639890948948e-15 1.7359187080164608e-15 -0.80552893419981542
		-1.9109379399352493e-15 0.17817407968254734 -0.89087039841273152
		-1.9292230747747807e-15 0.16110578683996465 -3.5597659086236063e-15
		-1.9475082096143116e-15 0.17817407968254734 0.89087039841272464
		-1.9550821604546665e-15 1.7619216691783964e-15 0.80552893419980975
		-1.9475082096143116e-15 -0.17817407968254384 0.89087039841272508
		-1.9292230747747807e-15 -0.16110578683996116 -3.4081574500865142e-15
		-1.9109379399352493e-15 -0.17817407968254384 -0.89087039841273219
		-1.9033639890948948e-15 1.7359187080164608e-15 -0.80552893419981542
		-1.9109379399352493e-15 0.17817407968254734 -0.89087039841273152
		;
createNode transform -n "rtHand0_fgr02_2_ctl_ofs_ofs" -p "rtHand0_fgr02_1_ctl";
	rename -uid "A49EB2A1-4A3B-7C1E-9B96-BBAE2F226DC9";
	setAttr ".t" -type "double3" -6.2585520346885373 -1.7763568394002505e-15 3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "rtHand0_fgr02_2_ctl_ofs" -p "rtHand0_fgr02_2_ctl_ofs_ofs";
	rename -uid "5AFC15B9-45FF-23EE-D26D-01AE427BD931";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 -1.7763568394002505e-15 3.5527136788005009e-15 ;
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "rtHand0_fgr02_2_ctl" -p "rtHand0_fgr02_2_ctl_ofs";
	rename -uid "C8828795-43B1-86D2-0B4F-4B8EB83CE990";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr02_2_ctlShape1" -p "rtHand0_fgr02_2_ctl";
	rename -uid "11243A49-432C-9CE7-B69D-C0A1E386C856";
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
		7.6810681543865395e-16 -0.17817407968254914 -0.89087039841272897
		7.7568076627900856e-16 -3.5549352513406583e-15 -0.8055289341998122
		7.6810681543865395e-16 0.17817407968254201 -0.8908703984127283
		7.4982168059912272e-16 0.16110578683995935 -3.1278470057216561e-16
		7.3153654575959158e-16 0.17817407968254201 0.89087039841272786
		7.2396259491923697e-16 -3.5289322901787227e-15 0.80552893419981297
		7.3153654575959158e-16 -0.17817407968254914 0.8908703984127283
		7.4982168059912272e-16 -0.16110578683996646 -1.6117624203507339e-16
		7.6810681543865395e-16 -0.17817407968254914 -0.89087039841272897
		7.7568076627900856e-16 -3.5549352513406583e-15 -0.8055289341998122
		7.6810681543865395e-16 0.17817407968254201 -0.8908703984127283
		;
createNode transform -n "rtHand0_fgr02_3_ctl_ofs_ofs" -p "rtHand0_fgr02_2_ctl";
	rename -uid "69C7C59D-46A8-C050-3187-5FAE393C0DF5";
	setAttr ".t" -type "double3" -4.7872756746817515 5.3290705182007514e-15 -1.7763568394002505e-14 ;
	setAttr ".r" -type "double3" 0 -71.232806517331937 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999944 1.0000000000000002 ;
createNode transform -n "rtHand0_fgr02_3_ctl_ofs" -p "rtHand0_fgr02_3_ctl_ofs_ofs";
	rename -uid "95C083CE-4073-971F-A333-289C5ABA76E8";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -1.7763568394002505e-15 -1.7763568394002505e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "rtHand0_fgr02_3_ctl" -p "rtHand0_fgr02_3_ctl_ofs";
	rename -uid "27A79CFF-4348-2C5F-2599-4ABA0E7565B5";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr02_3_ctlShape1" -p "rtHand0_fgr02_3_ctl";
	rename -uid "C34F5095-4D61-1B28-5026-74BF9B137B18";
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
		-3.3815623085864398e-15 -0.17817407968254742 -0.89087039841273064
		-3.3739883577460853e-15 -1.8473682178589465e-15 -0.80552893419981386
		-3.3815623085864398e-15 0.17817407968254373 -0.89087039841272997
		-3.3998474434259711e-15 0.16110578683996107 -1.9362753045978861e-15
		-3.4181325782655021e-15 0.17817407968254373 0.89087039841272619
		-3.425706529105857e-15 -1.8213652566970105e-15 0.80552893419981131
		-3.4181325782655021e-15 -0.17817407968254742 0.89087039841272664
		-3.3998474434259711e-15 -0.16110578683996474 -1.7846668460607939e-15
		-3.3815623085864398e-15 -0.17817407968254742 -0.89087039841273064
		-3.3739883577460853e-15 -1.8473682178589465e-15 -0.80552893419981386
		-3.3815623085864398e-15 0.17817407968254373 -0.89087039841272997
		;
createNode transform -n "rtHand0_fgr02_4_ctl_ofs_ofs" -p "rtHand0_fgr02_3_ctl";
	rename -uid "27353626-436B-9B74-E850-5695D3EA2AA0";
	setAttr ".t" -type "double3" -3.6945286731120497 -8.8817841970012523e-15 1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" 0 -20.417257060770318 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999933 0.99999999999999978 ;
createNode transform -n "rtHand0_fgr02_4_ctl_ofs" -p "rtHand0_fgr02_4_ctl_ofs_ofs";
	rename -uid "D8D48ED8-456E-6434-AC9B-D183F7B88EAA";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 0 4.4408920985006262e-16 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtHand0_fgr02_4_ctl" -p "rtHand0_fgr02_4_ctl_ofs";
	rename -uid "E9B733F6-437F-2642-B93E-20BBF4DA41B9";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr02_4_ctlShape1" -p "rtHand0_fgr02_4_ctl";
	rename -uid "AEE81E11-4BE5-01ED-92C1-26A23789B306";
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
		-3.53442854396097e-15 -0.17817407968254564 -0.89087039841272941
		-3.5268545931206151e-15 -7.101137845869581e-17 -0.80552893419981264
		-3.53442854396097e-15 0.17817407968254551 -0.89087039841272875
		-3.5527136788005009e-15 0.16110578683996285 -7.1865735157859568e-16
		-3.5709988136400323e-15 0.17817407968254551 0.89087039841272742
		-3.5785727644803872e-15 -4.5008417296760112e-17 0.80552893419981253
		-3.5709988136400323e-15 -0.17817407968254564 0.89087039841272786
		-3.5527136788005009e-15 -0.16110578683996296 -5.6704889304150353e-16
		-3.53442854396097e-15 -0.17817407968254564 -0.89087039841272941
		-3.5268545931206151e-15 -7.101137845869581e-17 -0.80552893419981264
		-3.53442854396097e-15 0.17817407968254551 -0.89087039841272875
		;
createNode transform -n "rtHand0_fgr03_1_ctl_ofs_ofs" -p "rtHand0_ctl_data";
	rename -uid "A4DB74AD-48DF-7067-D27B-8D828B8FD73A";
	setAttr -cb on ".ro";
createNode transform -n "rtHand0_fgr03_1_ctl_ofs" -p "rtHand0_fgr03_1_ctl_ofs_ofs";
	rename -uid "04C06393-4B15-EBC6-7AF7-4AA88D341AB2";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 0 0 ;
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtHand0_fgr03_1_ctl" -p "rtHand0_fgr03_1_ctl_ofs";
	rename -uid "70B8DF20-44EF-343F-528A-7F9FC3DD6C1A";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr03_1_ctlShape1" -p "rtHand0_fgr03_1_ctl";
	rename -uid "AFD30E2C-450E-76A4-9F1F-33A2838E90B3";
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
		9.8289667222692146e-16 -0.17817407968254645 -0.89087039841273219
		9.9047062306727598e-16 -8.8275668047155608e-16 -0.80552893419981542
		9.8289667222692146e-16 0.17817407968254473 -0.89087039841273152
		9.6461153738739033e-16 0.16110578683996205 -3.5597659086236063e-15
		9.463264025478592e-16 0.17817407968254473 0.89087039841272464
		9.3875245170750449e-16 -8.5675371930962038e-16 0.80552893419980975
		9.463264025478592e-16 -0.17817407968254645 0.89087039841272508
		9.6461153738739033e-16 -0.16110578683996377 -3.4081574500865142e-15
		9.8289667222692146e-16 -0.17817407968254645 -0.89087039841273219
		9.9047062306727598e-16 -8.8275668047155608e-16 -0.80552893419981542
		9.8289667222692146e-16 0.17817407968254473 -0.89087039841273152
		;
createNode transform -n "rtHand0_fgr03_2_ctl_ofs_ofs" -p "rtHand0_fgr03_1_ctl";
	rename -uid "8A6A6869-4DD3-45AF-4606-999D12CBBDEA";
	setAttr ".t" -type "double3" -6.2239324419496915 4.4408920985006262e-15 2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
createNode transform -n "rtHand0_fgr03_2_ctl_ofs" -p "rtHand0_fgr03_2_ctl_ofs_ofs";
	rename -uid "35DDA2F3-4AA4-7EF2-865C-74B3E5654916";
	setAttr ".t" -type "double3" -4.4408920985006262e-16 0 0 ;
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "rtHand0_fgr03_2_ctl" -p "rtHand0_fgr03_2_ctl_ofs";
	rename -uid "B95D0E02-4B6E-04D4-8F8D-F39F834FCCC0";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr03_2_ctlShape1" -p "rtHand0_fgr03_2_ctl";
	rename -uid "006492F8-4BA1-F575-6BFF-5987A21847F9";
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
		-5.0223719269779648e-16 -0.17817407968254473 -0.89087039841272897
		-4.9466324185744187e-16 8.7067022362251492e-16 -0.8055289341998122
		-5.0223719269779648e-16 0.17817407968254645 -0.8908703984127283
		-5.2052232753732772e-16 0.16110578683996377 -3.1278470057216561e-16
		-5.3880746237685885e-16 0.17817407968254645 0.89087039841272786
		-5.4638141321721346e-16 8.9667318478445071e-16 0.80552893419981297
		-5.3880746237685885e-16 -0.17817407968254473 0.8908703984127283
		-5.2052232753732772e-16 -0.16110578683996205 -1.6117624203507339e-16
		-5.0223719269779648e-16 -0.17817407968254473 -0.89087039841272897
		-4.9466324185744187e-16 8.7067022362251492e-16 -0.8055289341998122
		-5.0223719269779648e-16 0.17817407968254645 -0.8908703984127283
		;
createNode transform -n "rtHand0_fgr03_3_ctl_ofs_ofs" -p "rtHand0_fgr03_2_ctl";
	rename -uid "439380BC-48EB-5A4B-0BF4-C2B9156CDB5E";
	setAttr ".t" -type "double3" -4.6225742785655175 1.2434497875801753e-14 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 0 -68.665304122595458 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999956 0.99999999999999989 ;
createNode transform -n "rtHand0_fgr03_3_ctl_ofs" -p "rtHand0_fgr03_3_ctl_ofs_ofs";
	rename -uid "DDFA58B2-49E3-CBA1-5ACD-50BEBE800D57";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -8.8817841970012523e-16 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtHand0_fgr03_3_ctl" -p "rtHand0_fgr03_3_ctl_ofs";
	rename -uid "0223AF74-489A-2EB8-594A-F1BFF677B5AE";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr03_3_ctlShape1" -p "rtHand0_fgr03_3_ctl";
	rename -uid "50B7130F-4493-BEE9-A966-5ABFCE936399";
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
		3.5709988136400323e-15 -0.17817407968254551 -0.89087039841272897
		3.5785727644803872e-15 5.1281609840928224e-17 -0.8055289341998122
		3.5709988136400323e-15 0.17817407968254564 -0.8908703984127283
		3.5527136788005009e-15 0.16110578683996296 -3.1278470057216561e-16
		3.53442854396097e-15 0.17817407968254564 0.89087039841272786
		3.5268545931206151e-15 7.7284571002863928e-17 0.80552893419981297
		3.53442854396097e-15 -0.17817407968254551 0.8908703984127283
		3.5527136788005009e-15 -0.16110578683996285 -1.6117624203507339e-16
		3.5709988136400323e-15 -0.17817407968254551 -0.89087039841272897
		3.5785727644803872e-15 5.1281609840928224e-17 -0.8055289341998122
		3.5709988136400323e-15 0.17817407968254564 -0.8908703984127283
		;
createNode transform -n "rtHand0_fgr03_4_ctl_ofs_ofs" -p "rtHand0_fgr03_3_ctl";
	rename -uid "1666ACDE-4B85-EA1A-7274-0590077936B0";
	setAttr ".t" -type "double3" -3.5564714984509109 -2.4868995751603507e-14 -1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" 0 -18.55495879538142 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
createNode transform -n "rtHand0_fgr03_4_ctl_ofs" -p "rtHand0_fgr03_4_ctl_ofs_ofs";
	rename -uid "DDB90DD4-49C0-0C97-B70E-DEB16CA1982A";
	setAttr ".t" -type "double3" 0 0 4.4408920985006262e-16 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
createNode transform -n "rtHand0_fgr03_4_ctl" -p "rtHand0_fgr03_4_ctl_ofs";
	rename -uid "A02F7C0E-4FA8-861E-F415-BCAB402194D9";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr03_4_ctlShape1" -p "rtHand0_fgr03_4_ctl";
	rename -uid "B328304A-4666-E9B8-82EE-238C6E98BE3A";
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
		1.8285134839531155e-17 -0.17817407968254559 -0.89087039841272819
		2.5859085679885778e-17 -9.8648843088837975e-18 -0.80552893419981142
		1.8285134839531145e-17 0.17817407968254559 -0.89087039841272753
		-1.0553936882080034e-32 0.16110578683996291 4.9896060144069462e-16
		-1.8285134839531152e-17 0.17817407968254559 0.89087039841272864
		-2.5859085679885803e-17 1.6138076853051902e-17 0.80552893419981375
		-1.8285134839531145e-17 -0.17817407968254559 0.89087039841272908
		-1.542087083399392e-32 -0.16110578683996291 6.5056905997778687e-16
		1.8285134839531155e-17 -0.17817407968254559 -0.89087039841272819
		2.5859085679885778e-17 -9.8648843088837975e-18 -0.80552893419981142
		1.8285134839531145e-17 0.17817407968254559 -0.89087039841272753
		;
createNode transform -n "rtHand0_fgr04_1_ctl_ofs_ofs" -p "rtHand0_ctl_data";
	rename -uid "657F168E-4FA5-11A2-A805-7894CDE4B0EB";
	setAttr -cb on ".ro";
createNode transform -n "rtHand0_fgr04_1_ctl_ofs" -p "rtHand0_fgr04_1_ctl_ofs_ofs";
	rename -uid "0EBA019B-4C95-381D-4367-91816CFB8C26";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -1.7763568394002505e-15 3.5527136788005009e-15 ;
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "rtHand0_fgr04_1_ctl" -p "rtHand0_fgr04_1_ctl_ofs";
	rename -uid "F458D595-4075-81C4-18EC-FDA916D5A04E";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr04_1_ctlShape1" -p "rtHand0_fgr04_1_ctl";
	rename -uid "01614851-43A2-9987-71E9-57975242FA2D";
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
		1.9475082096143116e-15 -0.17817407968254734 -0.89087039841272575
		1.9550821604546665e-15 -1.7556484766342282e-15 -0.80552893419980898
		1.9475082096143116e-15 0.17817407968254384 -0.89087039841272508
		1.9292230747747807e-15 0.16110578683996116 2.9341965074792755e-15
		1.9109379399352493e-15 0.17817407968254384 0.89087039841273108
		1.9033639890948948e-15 -1.7296455154722926e-15 0.80552893419981619
		1.9109379399352493e-15 -0.17817407968254734 0.89087039841273152
		1.9292230747747807e-15 -0.16110578683996465 3.0858049660163677e-15
		1.9475082096143116e-15 -0.17817407968254734 -0.89087039841272575
		1.9550821604546665e-15 -1.7556484766342282e-15 -0.80552893419980898
		1.9475082096143116e-15 0.17817407968254384 -0.89087039841272508
		;
createNode transform -n "rtHand0_fgr04_2_ctl_ofs_ofs" -p "rtHand0_fgr04_1_ctl";
	rename -uid "2F05E7B6-46D3-9872-8F65-E99AE4B13019";
	setAttr ".t" -type "double3" -5.8093929308999357 -0.3287706922282716 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 1.0000000000000004 ;
createNode transform -n "rtHand0_fgr04_2_ctl_ofs" -p "rtHand0_fgr04_2_ctl_ofs_ofs";
	rename -uid "64FFD512-4503-FE40-DC66-158DF3FF6898";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 3.5527136788005009e-15 ;
	setAttr -cb on ".ro" 3;
createNode transform -n "rtHand0_fgr04_2_ctl" -p "rtHand0_fgr04_2_ctl_ofs";
	rename -uid "AC47BCD7-48DA-EE33-22F3-459E003357DC";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr04_2_ctlShape1" -p "rtHand0_fgr04_2_ctl";
	rename -uid "CBF920C1-480B-47CC-11D2-19839FA2F067";
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
		-8.698932848605941e-16 -0.17817407968254562 -0.89087039841273219
		-8.6231933402023949e-16 -2.5151507846336804e-17 -0.80552893419981542
		-8.698932848605941e-16 0.17817407968254556 -0.89087039841273152
		-8.8817841970012523e-16 0.16110578683996288 -3.5597659086236063e-15
		-9.0646355453965637e-16 0.17817407968254556 0.89087039841272464
		-9.1403750538001107e-16 8.5145331559889709e-19 0.80552893419980975
		-9.0646355453965637e-16 -0.17817407968254562 0.89087039841272508
		-8.8817841970012523e-16 -0.16110578683996293 -3.4081574500865142e-15
		-8.698932848605941e-16 -0.17817407968254562 -0.89087039841273219
		-8.6231933402023949e-16 -2.5151507846336804e-17 -0.80552893419981542
		-8.698932848605941e-16 0.17817407968254556 -0.89087039841273152
		;
createNode transform -n "rtHand0_fgr04_3_ctl_ofs_ofs" -p "rtHand0_fgr04_2_ctl";
	rename -uid "9BD7E1DF-4B9D-5EE8-1D60-209A021BAE55";
	setAttr ".t" -type "double3" -4.7022922689891704 1.5987211554602254e-14 -3.5527136788005009e-14 ;
	setAttr ".r" -type "double3" 0 -65.544883513719455 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "rtHand0_fgr04_3_ctl_ofs" -p "rtHand0_fgr04_3_ctl_ofs_ofs";
	rename -uid "FA53650F-4E19-B0CE-B19B-9BA64B992567";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 1.7763568394002505e-15 ;
	setAttr -cb on ".ro";
createNode transform -n "rtHand0_fgr04_3_ctl" -p "rtHand0_fgr04_3_ctl_ofs";
	rename -uid "7DC52E03-415A-9C42-6E9D-52B53A4BD7D4";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr04_3_ctlShape1" -p "rtHand0_fgr04_3_ctl";
	rename -uid "67896CE8-42F7-B61A-E61E-729F3BE02DFF";
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
		3.4181325782655021e-15 -0.17817407968254373 -0.89087039841272897
		3.4257065291058566e-15 1.8276384492411787e-15 -0.8055289341998122
		3.4181325782655021e-15 0.17817407968254742 -0.8908703984127283
		3.3998474434259711e-15 0.16110578683996474 -3.1278470057216561e-16
		3.3815623085864398e-15 0.17817407968254742 0.89087039841272786
		3.3739883577460853e-15 1.8536414104031143e-15 0.80552893419981297
		3.3815623085864398e-15 -0.17817407968254373 0.8908703984127283
		3.3998474434259711e-15 -0.16110578683996107 -1.6117624203507339e-16
		3.4181325782655021e-15 -0.17817407968254373 -0.89087039841272897
		3.4257065291058566e-15 1.8276384492411787e-15 -0.8055289341998122
		3.4181325782655021e-15 0.17817407968254742 -0.8908703984127283
		;
createNode transform -n "rtHand0_fgr04_4_ctl_ofs_ofs" -p "rtHand0_fgr04_3_ctl";
	rename -uid "9EB9DC32-4587-91FB-7590-5EAC1DAA293D";
	setAttr ".t" -type "double3" -3.4452574625156203 -3.1974423109204508e-14 -1.2434497875801753e-14 ;
	setAttr ".r" -type "double3" 0 -13.546793162252655 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "rtHand0_fgr04_4_ctl_ofs" -p "rtHand0_fgr04_4_ctl_ofs_ofs";
	rename -uid "67F7A684-4FE2-F5A4-1773-00AAEA2BA719";
	setAttr ".t" -type "double3" 0 0 8.8817841970012523e-16 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "rtHand0_fgr04_4_ctl" -p "rtHand0_fgr04_4_ctl_ofs";
	rename -uid "E9161681-4D5D-C091-0AF0-B2ADF05418BD";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr04_4_ctlShape1" -p "rtHand0_fgr04_4_ctl";
	rename -uid "1FB560B5-41C1-C7C2-016D-6EB999FE6C98";
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
		1.8285134839531155e-17 -0.17817407968254559 -0.89087039841273064
		2.5859085679885778e-17 -9.8648843088837975e-18 -0.80552893419981386
		1.8285134839531145e-17 0.17817407968254559 -0.89087039841272997
		-1.0553936882080034e-32 0.16110578683996291 -1.9362753045978861e-15
		-1.8285134839531152e-17 0.17817407968254559 0.89087039841272619
		-2.5859085679885803e-17 1.6138076853051902e-17 0.80552893419981131
		-1.8285134839531145e-17 -0.17817407968254559 0.89087039841272664
		-1.542087083399392e-32 -0.16110578683996291 -1.7846668460607939e-15
		1.8285134839531155e-17 -0.17817407968254559 -0.89087039841273064
		2.5859085679885778e-17 -9.8648843088837975e-18 -0.80552893419981386
		1.8285134839531145e-17 0.17817407968254559 -0.89087039841272997
		;
createNode transform -n "rtHand0_fgr00_2_ikc_ofs" -p "rtHand0_ctl_data";
	rename -uid "2279ADAC-4A11-F506-E2D1-5FAC54CE8068";
	setAttr ".t" -type "double3" -6.7711003625594177 9.3488445602545838 21.848236700195464 ;
	setAttr ".r" -type "double3" 76.064608741676054 -29.463742724317367 89.610988072279298 ;
	setAttr -cb on ".ro";
createNode transform -n "rtHand0_fgr00_2_ikc_ofs1" -p "rtHand0_fgr00_2_ikc_ofs";
	rename -uid "A8D9121C-4A2B-7D57-E86B-46AC81861CC1";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "rtHand0_fgr00_2_ikc" -p "rtHand0_fgr00_2_ikc_ofs1";
	rename -uid "47A252F8-43A1-826D-54F3-76871FE87113";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 0 8.8817841970012523e-16 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr00_2_ikcShape1" -p "rtHand0_fgr00_2_ikc";
	rename -uid "5912125C-4EC5-E6C0-8A38-638DFAD292E3";
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
		0 -3.6291467964877664e-15 1.1939108904491854e-15
		0 -3.6291467964877664e-15 2.3142303769158681
		-0.26724218194519878 -3.6291467964877664e-15 2.3142303769158681
		-0.26724218194519878 -3.6291467964877664e-15 2.8487147408062672
		0.26724218194519878 -3.6291467964877664e-15 2.8487147408062672
		0.26724218194519878 -3.6291467964877664e-15 2.3142303769158681
		0 -3.6291467964877664e-15 2.3142303769158681
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtHand0_fgr00_2_1_ikj_ikh" -p "rtHand0_fgr00_2_ikc";
	rename -uid "1784E4FE-4DAA-AE32-933A-2E9BB9D65287";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.8257863849893621 -1.7763568394002505e-15 -1.2927301285260264 ;
	setAttr ".r" -type "double3" 0 -3.9012395161850217 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.47646691100619343 0.8450415773720964 0.24266028770422271 ;
	setAttr ".roc" yes;
createNode transform -n "rtHand0_fgr01_2_ikc_ofs" -p "rtHand0_ctl_data";
	rename -uid "C279D11D-4032-9BD7-B67B-B19A6D500C40";
	setAttr ".t" -type "double3" -7.8008489896441144 6.9735724318616024 23.708155690759895 ;
	setAttr ".r" -type "double3" 7.9061029156742819 7.6888873784548979 91.887928760146025 ;
	setAttr -cb on ".ro";
createNode transform -n "rtHand0_fgr01_2_ikc_ofs1" -p "rtHand0_fgr01_2_ikc_ofs";
	rename -uid "3C9BE510-42B5-AA94-CB8B-02AF4E26713B";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
createNode transform -n "rtHand0_fgr01_2_ikc" -p "rtHand0_fgr01_2_ikc_ofs1";
	rename -uid "B93D8E33-490B-C604-6DA9-BFB1DD6E7640";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 0 3.5527136788005009e-15 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr01_2_ikcShape1" -p "rtHand0_fgr01_2_ikc";
	rename -uid "89B76DC9-4346-3C0D-B095-A7B69F3F6ACF";
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
		4.8230576869369517e-16 1.4706243686511905e-15 3.3998474434259711e-15
		4.8230576869369517e-16 1.4706243686511905e-15 2.3142303769158703
		-0.26724218194519828 1.4706243686511905e-15 2.3142303769158703
		-0.26724218194519828 1.4706243686511905e-15 2.8487147408062694
		0.26724218194519928 1.4706243686511905e-15 2.8487147408062694
		0.26724218194519928 1.4706243686511905e-15 2.3142303769158703
		4.8230576869369517e-16 1.4706243686511905e-15 2.3142303769158703
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtHand0_fgr01_2_1_ikj_ikh" -p "rtHand0_fgr01_2_ikc";
	rename -uid "4A9A9038-4872-2A89-0608-C48B0304D4B7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.8974957277219247 0 -5.5348660276019217 ;
	setAttr ".r" -type "double3" 0 -3.9012395161850248 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.20026823101834579 0.13631336093385252 0.97021198883321413 ;
	setAttr ".roc" yes;
createNode transform -n "rtHand0_fgr02_2_ikc_ofs" -p "rtHand0_ctl_data";
	rename -uid "C128AE9B-4EFD-D903-D03D-95ADF04606E2";
	setAttr ".t" -type "double3" -9.4287697104368799 6.9176210443146697 24.282791763109895 ;
	setAttr ".r" -type "double3" 2.5897516677721004 7.5963155420894966 88.789886557487932 ;
	setAttr -cb on ".ro";
createNode transform -n "rtHand0_fgr02_2_ikc_ofs1" -p "rtHand0_fgr02_2_ikc_ofs";
	rename -uid "A99E7B0B-4F72-E49E-8EEC-4B87ACFF6CDC";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "rtHand0_fgr02_2_ikc" -p "rtHand0_fgr02_2_ikc_ofs1";
	rename -uid "57F0E67C-43DF-9CA2-F742-4DA241940390";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 -3.5527136788005009e-15 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr02_2_ikcShape1" -p "rtHand0_fgr02_2_ikc";
	rename -uid "0199AB6B-4190-2913-C509-24B490F35FDE";
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
		0 -1.7763568394002505e-15 1.5286623537453005e-16
		0 -1.7763568394002505e-15 2.3142303769158672
		-0.26724218194519878 -1.7763568394002505e-15 2.3142303769158672
		-0.26724218194519878 -1.7763568394002505e-15 2.8487147408062659
		0.26724218194519878 -1.7763568394002505e-15 2.8487147408062659
		0.26724218194519878 -1.7763568394002505e-15 2.3142303769158672
		0 -1.7763568394002505e-15 2.3142303769158672
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtHand0_fgr02_2_1_ikj_ikh" -p "rtHand0_fgr02_2_ikc";
	rename -uid "BA2C5779-4864-ECB9-81EE-6F9D3E9CF835";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.4937639494375254 1.4210854715202004e-14 -6.2659047645412507 ;
	setAttr ".r" -type "double3" 0 -3.9012395161850204 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999922 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.19925724018393923 0.044787768886334046 0.97892318799406519 ;
	setAttr ".roc" yes;
createNode transform -n "rtHand0_fgr03_2_ikc_ofs" -p "rtHand0_ctl_data";
	rename -uid "815DA90F-4584-6085-D659-22940D952129";
	setAttr ".t" -type "double3" -11.028387763597934 6.7307447651061354 24.220576627728668 ;
	setAttr ".r" -type "double3" -9.2296842554996559 3.1995728360163018 82.46611050595051 ;
	setAttr -cb on ".ro";
createNode transform -n "rtHand0_fgr03_2_ikc_ofs1" -p "rtHand0_fgr03_2_ikc_ofs";
	rename -uid "9D1DB24A-478A-A5AC-66BC-3BA36B4B2B03";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "rtHand0_fgr03_2_ikc" -p "rtHand0_fgr03_2_ikc_ofs1";
	rename -uid "E85F9BFB-4F92-02EA-05C3-1E8BD771ED18";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 0 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr03_2_ikcShape1" -p "rtHand0_fgr03_2_ikc";
	rename -uid "ED5D0507-4D70-FEC5-9415-C986C7794DDE";
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
		-4.8230576869369517e-16 -5.8244594895106523e-16 -3.4762805611132362e-15
		-4.8230576869369517e-16 -5.8244594895106523e-16 2.3142303769158632
		-0.26724218194519928 -5.8244594895106523e-16 2.3142303769158632
		-0.26724218194519928 -5.8244594895106523e-16 2.8487147408062623
		0.26724218194519828 -5.8244594895106523e-16 2.8487147408062623
		0.26724218194519828 -5.8244594895106523e-16 2.3142303769158632
		-4.8230576869369517e-16 -5.8244594895106523e-16 2.3142303769158632
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtHand0_fgr03_2_1_ikj_ikh" -p "rtHand0_fgr03_2_ikc";
	rename -uid "EC19ED12-429E-2605-58F7-9694FCD94B40";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.6349936678283026 1.2434497875801753e-14 -5.8725020024460903 ;
	setAttr ".r" -type "double3" 0 -3.9012395161850244 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.12273606632596097 -0.16014256653534745 0.9794336202144085 ;
	setAttr ".roc" yes;
createNode transform -n "rtHand0_fgr04_2_ikc_ofs" -p "rtHand0_ctl_data";
	rename -uid "190476DB-465F-F2CD-F3DA-69AEA993DFDA";
	setAttr ".t" -type "double3" -12.744028384394852 7.2917123655971361 23.607200405681972 ;
	setAttr ".r" -type "double3" -12.588866638644095 2.3913301248526206 81.830410378778438 ;
	setAttr -cb on ".ro";
createNode transform -n "rtHand0_fgr04_2_ikc_ofs1" -p "rtHand0_fgr04_2_ikc_ofs";
	rename -uid "92F7ACDF-4EC0-FD7D-9CBD-AF907835E456";
	setAttr -cb on ".ro";
createNode transform -n "rtHand0_fgr04_2_ikc" -p "rtHand0_fgr04_2_ikc_ofs1";
	rename -uid "2847B756-439D-427B-E208-05A560E0967C";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 3.5527136788005009e-15 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr04_2_ikcShape1" -p "rtHand0_fgr04_2_ikc";
	rename -uid "7A2F2FEB-4806-58CB-DC7B-AF9E922B2C19";
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
		-2.8938346121621706e-15 -3.057324707490601e-16 3.5527136788005009e-15
		-2.8938346121621706e-15 -3.057324707490601e-16 2.3142303769158703
		-0.26724218194520166 -3.057324707490601e-16 2.3142303769158703
		-0.26724218194520166 -3.057324707490601e-16 2.8487147408062694
		0.26724218194519589 -3.057324707490601e-16 2.8487147408062694
		0.26724218194519589 -3.057324707490601e-16 2.3142303769158703
		-2.8938346121621706e-15 -3.057324707490601e-16 2.3142303769158703
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtHand0_fgr04_2_1_ikj_ikh" -p "rtHand0_fgr04_2_ikc";
	rename -uid "D794CCD4-4781-6170-FE56-688B0D265581";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.1194595391493305 1.7763568394002505e-15 -5.323387812129539 ;
	setAttr ".r" -type "double3" 0 -3.9012395161850137 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999978 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.10797116799187979 -0.21776379940968588 0.97001090434547532 ;
	setAttr ".roc" yes;
createNode transform -n "rtHand0_smartScale" -p "rtHand0_ctl_data";
	rename -uid "6B51B3F8-4A8C-01A5-4309-B2B9F3849EC4";
	setAttr -cb on ".ro";
createNode transform -n "rtHand0_smart_ctl_ofs" -p "rtHand0_smartScale";
	rename -uid "0F0273C7-40EB-A13C-CC51-568BA0670D98";
	setAttr ".t" -type "double3" -18.932328818432257 3.5527136788005009e-15 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rtHand0_smart_ctl" -p "rtHand0_smart_ctl_ofs";
	rename -uid "1798DE34-42B9-2343-63F6-1B8FF6CECA81";
	addAttr -ci true -sn "palmScale" -ln "palmScale" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "showCtls" -ln "showCtls" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -k on ".palmScale";
	setAttr -cb on ".showCtls";
createNode nurbsCurve -n "rtHand0_smart_ctlShape1" -p "rtHand0_smart_ctl";
	rename -uid "4ADBCE46-4270-888C-48BD-CD8C8AE23115";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 23 0 no 3
		24 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23
		24
		-0.43028028248835026 -0.86056040083783003 0.74526712446421428
		0.43028015938419745 -0.86056040083783003 0.74526720653364953
		0.86056040083783003 -0.86056040083783003 0
		0.43028040559250302 -0.86056040083783003 -0.74526712446421428
		-0.43028007731476225 -0.86056040083783003 -0.74526728860308467
		-0.86056040083783003 -0.86056040083783003 -1.2823349249926657e-07
		-0.43028028248835026 -0.86056040083783003 0.74526712446421428
		-0.43028028248835026 0.86056040083783003 0.74526712446421428
		-0.86056040083783003 0.86056040083783003 -1.2823349249926657e-07
		-0.43028007731476225 0.86056040083783003 -0.74526728860308467
		0.43028040559250302 0.86056040083783003 -0.74526712446421428
		0.86056040083783003 0.86056040083783003 0
		0.43028015938419745 0.86056040083783003 0.74526720653364953
		-0.43028028248835026 0.86056040083783003 0.74526712446421428
		0.43028015938419745 0.86056040083783003 0.74526720653364953
		0.43028015938419745 -0.86056040083783003 0.74526720653364953
		0.86056040083783003 -0.86056040083783003 0
		0.86056040083783003 0.86056040083783003 0
		0.43028040559250302 0.86056040083783003 -0.74526712446421428
		0.43028040559250302 -0.86056040083783003 -0.74526712446421428
		-0.43028007731476225 -0.86056040083783003 -0.74526728860308467
		-0.43028007731476225 0.86056040083783003 -0.74526728860308467
		-0.86056040083783003 0.86056040083783003 -1.2823349249926657e-07
		-0.86056040083783003 -0.86056040083783003 -1.2823349249926657e-07
		;
createNode transform -n "rtHand0_grp_ofs" -p "rtHand0_ctl_data";
	rename -uid "1FC87151-452A-1AB3-8D68-539F4E0C8E45";
createNode transform -n "rtHand0_grp" -p "rtHand0_grp_ofs";
	rename -uid "7E29D9FF-4F73-CA4E-567D-128EC741D390";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 0 -en "palmIK" -at "enum";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr -k on ".space";
createNode transform -n "rtHand0_anchorF1" -p "master_ctl";
	rename -uid "9B98060C-4200-09BE-3A12-2F990108E3F0";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "rtHand0_anchorF1Shape" -p "rtHand0_anchorF1";
	rename -uid "458D5F52-479D-A1DB-6F40-4F9F6503EB5B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 2.5816812025134901 2.5816812025134901 2.5816812025134901 ;
createNode transform -n "rtLegBp0_ctl_data" -p "master_ctl";
	rename -uid "D8E3375A-4F26-9BC7-A332-8B918741CE4B";
	setAttr ".t" -type "double3" -5.8362665560894742 51.646830813409281 -15.548650060442801 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_FK" -p "rtLegBp0_ctl_data";
	rename -uid "E53F9D76-45B8-D79F-4525-6FB165C2F972";
	setAttr ".t" -type "double3" 5.8362665560894742 -51.646830813409281 15.548650060442801 ;
	setAttr -cb on ".ro";
createNode joint -n "rtLegBp0_hip_fk" -p "rtLegBp0_FK";
	rename -uid "A7619EC2-4567-C7CD-0CF2-39A0D6C0287C";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 5.7717784987580893 -53.638424303370016 78.611315730231539 ;
	setAttr ".radi" 1.0786626510081931;
createNode joint -n "rtLegBp0_upr_fk" -p "rtLegBp0_hip_fk";
	rename -uid "9C289E40-43E6-2C01-0873-F18DBC338508";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -47.120807028639923 73.264495955539942 -21.979265522484631 ;
	setAttr ".radi" 1.0786626510081931;
createNode joint -n "rtLegBp0_lwr_fk" -p "rtLegBp0_upr_fk";
	rename -uid "EEB3F2A4-4234-2ED5-76FB-0F8B089779F0";
	setAttr ".v" no;
	setAttr -cb on ".ro" 2;
	setAttr ".jo" -type "double3" 0 -39.831182739424982 0 ;
	setAttr ".pa" -type "double3" 0 -45 0 ;
	setAttr ".radi" 1.0786626510081931;
createNode joint -n "rtLegBp0_palm_fk" -p "rtLegBp0_lwr_fk";
	rename -uid "4038F083-4E25-682F-4551-6D8FF52A8BF4";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 23.715212289416215 15.972799032100099 2.643754066958508 ;
	setAttr ".radi" 1.0786626510081931;
createNode joint -n "rtLegBp0_ball_fk" -p "rtLegBp0_palm_fk";
	rename -uid "9A31E9A7-400C-6BFF-4465-F3B0486AFC34";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.4681892169060502 -8.8817841970012523e-15 7.8489852827152955 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 69.448695121428798 0 ;
	setAttr ".radi" 1.0786626510081931;
createNode joint -n "rtLegBp0_tip_fk" -p "rtLegBp0_ball_fk";
	rename -uid "BB8413B5-4CB2-AF24-21EC-0B957FEE6F04";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.6013667351883338 -3.5527136788005009e-15 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 20.551304878571212 0 ;
	setAttr ".radi" 1.0786626510081931;
createNode transform -n "rtLegBp0_upr_fkc_ofs" -p "rtLegBp0_FK";
	rename -uid "881F8826-4C4E-8211-AA0D-9794C25D3A9C";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_upr_fkc" -p "rtLegBp0_upr_fkc_ofs";
	rename -uid "F7DCBD9A-412D-B3D3-E8A3-15987A00C1D5";
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
createNode nurbsCurve -n "rtLegBp0_upr_fkcShape1" -p "rtLegBp0_upr_fkc";
	rename -uid "AF6055AF-4040-A37A-0FEF-3D91D884EE9A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 20 0 no 3
		25 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 20 20
		23
		-1.2719402550531683e-16 -4.7916246253658601 2.8109127726646781
		-1.0662289856383221e-16 -5.0032688269906798 2.4296756888238544
		-6.5480644680862464e-17 -5.4265572302402845 1.6672015211421918
		5.8867299312814279e-20 -5.4448313638072188 -0.16118494276975606
		6.5245175515632478e-17 -5.3625941570776217 -1.0224617507855722
		1.2801816760581082e-16 -5.0474769168858558 -2.102762966090022
		1.8584630709296183e-16 -4.5368478397468719 -3.0299033552630759
		2.3653923952347066e-16 -3.8848326120782057 -3.871700542931654
		2.7814028098875699e-16 -2.6570550506254151 -4.9223816927473729
		3.0905303932625338e-16 -1.6206622450553188 -5.3607623679298237
		3.2808892210288404e-16 0.42206103802891692 -6.137301900656472
		3.3451657674526639e-16 1.9841558291244577e-15 -7.4740342504499218
		3.2808892210288231e-16 -0.42206103802894041 -6.1373019006564524
		3.0905303932626492e-16 1.6206622450554202 -5.3607623679300236
		2.7814028098874171e-16 2.65705505062517 -4.9223816927470558
		2.3653923952352297e-16 3.8848326120790952 -3.8717005429327802
		1.8584630709276843e-16 4.5368478397436007 -3.0299033552589236
		1.2801816760651828e-16 5.0474769168977547 -2.1027629661052885
		6.5245175512999075e-17 5.3625941570333646 -1.022461750728699
		5.8867303953125103e-20 5.4448313637765624 -0.1611849428674193
		-6.548064468506533e-17 5.4265572303075595 1.6672015212394804
		-1.0662289856522636e-16 5.0032688270128425 2.4296756888561339
		-1.2719402550530689e-16 4.7916246253654826 2.81091277266446
		;
createNode transform -n "rtLegBp0_lwr_fkc_ofs" -p "rtLegBp0_FK";
	rename -uid "D310C190-4388-0C22-7D12-2B91D7E32CAD";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_lwr_fkc" -p "rtLegBp0_lwr_fkc_ofs";
	rename -uid "484041E8-4308-C886-5B45-D9975BD2F347";
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
createNode nurbsCurve -n "rtLegBp0_lwr_fkcShape1" -p "rtLegBp0_lwr_fkc";
	rename -uid "971BC8F7-4811-102D-0DA8-96BA5A8EF9C8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 20 0 no 3
		25 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 20 20
		23
		-1.2719402550531683e-16 -4.7916246253658601 2.8109127726646781
		-1.0662289856383221e-16 -5.0032688269906798 2.4296756888238544
		-6.5480644680862464e-17 -5.4265572302402845 1.6672015211421918
		5.8867299312814279e-20 -5.4448313638072188 -0.16118494276975606
		6.5245175515632478e-17 -5.3625941570776217 -1.0224617507855722
		1.2801816760581082e-16 -5.0474769168858558 -2.102762966090022
		1.8584630709296183e-16 -4.5368478397468719 -3.0299033552630759
		2.3653923952347066e-16 -3.8848326120782057 -3.871700542931654
		2.7814028098875699e-16 -2.6570550506254151 -4.9223816927473729
		3.0905303932625338e-16 -1.6206622450553188 -5.3607623679298237
		3.2808892210288404e-16 0.42206103802891692 -6.137301900656472
		3.3451657674526639e-16 1.9841558291244577e-15 -7.4740342504499218
		3.2808892210288231e-16 -0.42206103802894041 -6.1373019006564524
		3.0905303932626492e-16 1.6206622450554202 -5.3607623679300236
		2.7814028098874171e-16 2.65705505062517 -4.9223816927470558
		2.3653923952352297e-16 3.8848326120790952 -3.8717005429327802
		1.8584630709276843e-16 4.5368478397436007 -3.0299033552589236
		1.2801816760651828e-16 5.0474769168977547 -2.1027629661052885
		6.5245175512999075e-17 5.3625941570333646 -1.022461750728699
		5.8867303953125103e-20 5.4448313637765624 -0.1611849428674193
		-6.548064468506533e-17 5.4265572303075595 1.6672015212394804
		-1.0662289856522636e-16 5.0032688270128425 2.4296756888561339
		-1.2719402550530689e-16 4.7916246253654826 2.81091277266446
		;
createNode transform -n "rtLegBp0_palm_fkc_ofs" -p "rtLegBp0_FK";
	rename -uid "EC3D0B04-421C-C063-5E15-5F98EB69F21A";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_palm_fkc" -p "rtLegBp0_palm_fkc_ofs";
	rename -uid "B0CDD206-4792-37F7-8320-4893F7BA9EEB";
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
createNode nurbsCurve -n "rtLegBp0_palm_fkcShape1" -p "rtLegBp0_palm_fkc";
	rename -uid "7C3F428E-4393-B1D9-05C8-FA915AD4853F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 20 0 no 3
		25 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 20 20
		23
		-1.2719402550531683e-16 -4.7916246253658601 2.8109127726646781
		-1.0662289856383221e-16 -5.0032688269906798 2.4296756888238544
		-6.5480644680862464e-17 -5.4265572302402845 1.6672015211421918
		5.8867299312814279e-20 -5.4448313638072188 -0.16118494276975606
		6.5245175515632478e-17 -5.3625941570776217 -1.0224617507855722
		1.2801816760581082e-16 -5.0474769168858558 -2.102762966090022
		1.8584630709296183e-16 -4.5368478397468719 -3.0299033552630759
		2.3653923952347066e-16 -3.8848326120782057 -3.871700542931654
		2.7814028098875699e-16 -2.6570550506254151 -4.9223816927473729
		3.0905303932625338e-16 -1.6206622450553188 -5.3607623679298237
		3.2808892210288404e-16 0.42206103802891692 -6.137301900656472
		3.3451657674526639e-16 1.9841558291244577e-15 -7.4740342504499218
		3.2808892210288231e-16 -0.42206103802894041 -6.1373019006564524
		3.0905303932626492e-16 1.6206622450554202 -5.3607623679300236
		2.7814028098874171e-16 2.65705505062517 -4.9223816927470558
		2.3653923952352297e-16 3.8848326120790952 -3.8717005429327802
		1.8584630709276843e-16 4.5368478397436007 -3.0299033552589236
		1.2801816760651828e-16 5.0474769168977547 -2.1027629661052885
		6.5245175512999075e-17 5.3625941570333646 -1.022461750728699
		5.8867303953125103e-20 5.4448313637765624 -0.1611849428674193
		-6.548064468506533e-17 5.4265572303075595 1.6672015212394804
		-1.0662289856522636e-16 5.0032688270128425 2.4296756888561339
		-1.2719402550530689e-16 4.7916246253654826 2.81091277266446
		;
createNode transform -n "rtLegBp0_ikc_matcher" -p "rtLegBp0_palm_fkc";
	rename -uid "77AA1F39-44CA-6470-D82A-A6A3B5D2EBE8";
	setAttr ".t" -type "double3" 3.5527136788005009e-14 -1.7763568394002505e-15 -1.0658141036401503e-14 ;
	setAttr ".r" -type "double3" 0 0 -89.999999999999986 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
createNode transform -n "rtLegBp0_ball_fkc_ofs" -p "rtLegBp0_FK";
	rename -uid "062A4153-4900-1414-FAC6-99B03DF540C3";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_ball_fkc" -p "rtLegBp0_ball_fkc_ofs";
	rename -uid "812161C2-4ACE-48A3-2CB0-9AB17C1DCA2E";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegBp0_ball_fkcShape1" -p "rtLegBp0_ball_fkc";
	rename -uid "CB369745-47B3-AEA0-4E67-6FA2F926AD17";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-5.7298395327185688e-17 2.7916361963699226 2.7916361963699257
		-8.1032167773921274e-17 1.5456326845492053e-16 2.5242097323494965
		-5.7298395327185664e-17 -2.7916361963699226 2.7916361963699239
		3.3071872481914548e-32 -2.5242097323495036 9.801437934673106e-16
		5.7298395327185676e-17 -2.7916361963699226 -2.7916361963699226
		8.103216777392136e-17 -2.5285181527553405e-16 -2.5242097323494992
		5.7298395327185664e-17 2.7916361963699226 -2.7916361963699239
		4.8322922477191163e-32 2.5242097323495036 5.0506272524226004e-16
		-5.7298395327185688e-17 2.7916361963699226 2.7916361963699257
		-8.1032167773921274e-17 1.5456326845492053e-16 2.5242097323494965
		-5.7298395327185664e-17 -2.7916361963699226 2.7916361963699239
		;
createNode transform -n "rtLegBp0_toe00_2_ikc_ofs" -p "rtLegBp0_ball_fkc_ofs";
	rename -uid "06BAEDD1-49E2-118F-DE9A-C7BF1DB15FAC";
	setAttr ".t" -type "double3" -0.08751950956666299 -3.5481439808935491 -1.7061783415008174 ;
	setAttr ".r" -type "double3" 6.7506030563141586 7.6773919741766319 19.135862018022497 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "rtLegBp0_toe00_2_ikc_ofs1" -p "rtLegBp0_toe00_2_ikc_ofs";
	rename -uid "26A32EB5-4D71-EB42-BE40-B99ACF16771B";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 1 1 ;
createNode transform -n "rtLegBp0_toe00_2_ikc" -p "rtLegBp0_toe00_2_ikc_ofs1";
	rename -uid "6B8B05DA-4474-4B5A-4D87-43A7359C5EE9";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe00_2_ikcShape1" -p "rtLegBp0_toe00_2_ikc";
	rename -uid "1042D2DF-4A88-BD96-B10B-81BB76B859C1";
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
		0 8.8817841970012523e-16 -3.2220639705774645e-17
		0 8.8817841970012523e-16 0.97557165567758963
		-0.11265684717811801 8.8817841970012523e-16 0.97557165567758963
		-0.11265684717811801 8.8817841970012523e-16 1.2008853500338263
		0.11265684717811801 8.8817841970012523e-16 1.2008853500338263
		0.11265684717811801 8.8817841970012523e-16 0.97557165567758963
		0 8.8817841970012523e-16 0.97557165567758963
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegBp0_toe00_2_1_ikj_ikh" -p "rtLegBp0_toe00_2_ikc";
	rename -uid "7FF9101C-4BA8-5BB9-284D-F4A761FE8589";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.1333123426772165 0.23292285518302303 -0.24521895415962636 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000009 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.92358445516581567 0.33182120689999384 0.19205843076390997 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegBp0_toe01_2_ikc_ofs" -p "rtLegBp0_ball_fkc_ofs";
	rename -uid "39C0CD60-4903-1FF6-97BC-C493F35B7A05";
	setAttr ".t" -type "double3" -0.31256242217292574 -1.1377982452579882 0.025402745874016031 ;
	setAttr ".r" -type "double3" -2.2623556006114325 12.715712928681898 -6.3986497316351674 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "rtLegBp0_toe01_2_ikc_ofs1" -p "rtLegBp0_toe01_2_ikc_ofs";
	rename -uid "C636E049-481A-8C9A-E7F8-19A916262355";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegBp0_toe01_2_ikc" -p "rtLegBp0_toe01_2_ikc_ofs1";
	rename -uid "E1ACDC54-413E-9C25-18D2-CF9FC373213B";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe01_2_ikcShape1" -p "rtLegBp0_toe01_2_ikc";
	rename -uid "434F4F93-40C5-DD24-AD31-008798620D84";
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
		0 -1.2082739889665492e-17 3.3306690738754696e-16
		0 -1.2082739889665492e-17 0.97557165567758997
		-0.11265684717811801 -1.2082739889665492e-17 0.97557165567758997
		-0.11265684717811801 -1.2082739889665492e-17 1.2008853500338268
		0.11265684717811801 -1.2082739889665492e-17 1.2008853500338268
		0.11265684717811801 -1.2082739889665492e-17 0.97557165567758997
		0 -1.2082739889665492e-17 0.97557165567758997
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegBp0_toe01_2_1_ikj_ikh" -p "rtLegBp0_toe01_2_ikc";
	rename -uid "A9C53444-4A63-64F3-89A6-62B8E1F69492";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.9257053068509151 -0.08120307366008106 -0.81811089695926775 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999967 0.99999999999999944 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.98497147857539868 -0.10970463422869907 0.13340194759350213 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegBp0_toe02_2_ikc_ofs" -p "rtLegBp0_ball_fkc_ofs";
	rename -uid "CC4800CA-419B-B9C0-48C7-26A9CCDD24B9";
	setAttr ".t" -type "double3" -0.28848043987292193 0.18417601571731801 -0.13483731069492633 ;
	setAttr ".r" -type "double3" -2.6934829543431817 12.144866371020486 -7.6139342342463365 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
createNode transform -n "rtLegBp0_toe02_2_ikc_ofs1" -p "rtLegBp0_toe02_2_ikc_ofs";
	rename -uid "47278000-4101-CD65-DA8F-C482D92FD63E";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "rtLegBp0_toe02_2_ikc" -p "rtLegBp0_toe02_2_ikc_ofs1";
	rename -uid "515B079E-418B-E196-C43A-3DBDF84C5917";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe02_2_ikcShape1" -p "rtLegBp0_toe02_2_ikc";
	rename -uid "08E89158-4969-E366-2C5A-9195A680EBBF";
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
		0 -1.7683016794738068e-15 -1.5760332551348202e-16
		0 -1.7683016794738068e-15 0.97557165567758941
		-0.11265684717811801 -1.7683016794738068e-15 0.97557165567758941
		-0.11265684717811801 -1.7683016794738068e-15 1.2008853500338261
		0.11265684717811801 -1.7683016794738068e-15 1.2008853500338261
		0.11265684717811801 -1.7683016794738068e-15 0.97557165567758941
		0 -1.7683016794738068e-15 0.97557165567758941
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegBp0_toe02_2_1_ikj_ikh" -p "rtLegBp0_toe02_2_ikc";
	rename -uid "0065ABFC-495F-7662-257A-CF88F0F62D08";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.3099074998486149 -0.084175794189794928 -1.1113044010183002 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.98118307341243483 -0.13088036896682123 0.14195106716061406 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegBp0_toe03_2_ikc_ofs" -p "rtLegBp0_ball_fkc_ofs";
	rename -uid "AF837F5C-4FE7-F255-27B4-93B1F3F68BBC";
	setAttr ".t" -type "double3" -0.19104392256581448 1.4059645209545355 -0.32093005799807228 ;
	setAttr ".r" -type "double3" -3.3516781010188716 11.520391108377689 -9.4746573819440147 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
createNode transform -n "rtLegBp0_toe03_2_ikc_ofs1" -p "rtLegBp0_toe03_2_ikc_ofs";
	rename -uid "082820FC-491B-3B71-9DD2-2F9ADC957500";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999967 ;
createNode transform -n "rtLegBp0_toe03_2_ikc" -p "rtLegBp0_toe03_2_ikc_ofs1";
	rename -uid "F0DEBD91-46A2-3A05-D7EB-6581EC7B70BA";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe03_2_ikcShape1" -p "rtLegBp0_toe03_2_ikc";
	rename -uid "24597E64-4A9B-0055-D31F-D4A7AF6D6306";
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
		1.8407981188117998e-15 1.4096529871276407e-17 -3.8857805861880479e-16
		1.8407981188117998e-15 1.4096529871276407e-17 0.97557165567758919
		-0.11265684717811617 1.4096529871276407e-17 0.97557165567758919
		-0.11265684717811617 1.4096529871276407e-17 1.2008853500338259
		0.11265684717811986 1.4096529871276407e-17 1.2008853500338259
		0.11265684717811986 1.4096529871276407e-17 0.97557165567758919
		1.8407981188117998e-15 1.4096529871276407e-17 0.97557165567758919
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegBp0_toe03_2_1_ikj_ikh" -p "rtLegBp0_toe03_2_ikc";
	rename -uid "49910575-430D-C829-09EC-12AAE028AF00";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.0060156671364462 -0.1449940123081106 -0.91326783800408817 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000007 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.97508559764575919 -0.16319834852347659 0.15024771646525284 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegBp0_toe04_2_ikc_ofs" -p "rtLegBp0_ball_fkc_ofs";
	rename -uid "7FD464F3-4546-33FC-83D0-389CB69AFB79";
	setAttr ".t" -type "double3" 0.060978653329794241 2.6134234314568143 -0.47359794062372851 ;
	setAttr ".r" -type "double3" -4.0516938123627373 10.566405627682741 -11.4476385063994 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_toe04_2_ikc_ofs1" -p "rtLegBp0_toe04_2_ikc_ofs";
	rename -uid "9456BF41-451C-DAE9-03B0-D48ED0459D94";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "rtLegBp0_toe04_2_ikc" -p "rtLegBp0_toe04_2_ikc_ofs1";
	rename -uid "9607DDEE-4FA4-8F2E-2C56-B0AF00F77782";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe04_2_ikcShape1" -p "rtLegBp0_toe04_2_ikc";
	rename -uid "3FE9DD51-4BE6-454E-3410-8B9CE727B26F";
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
		0 1.7733361544278341e-15 1.882544743533745e-17
		0 1.7733361544278341e-15 0.97557165567758974
		-0.11265684717811801 1.7733361544278341e-15 0.97557165567758974
		-0.11265684717811801 1.7733361544278341e-15 1.2008853500338263
		0.11265684717811801 1.7733361544278341e-15 1.2008853500338263
		0.11265684717811801 1.7733361544278341e-15 0.97557165567758974
		0 1.7733361544278341e-15 0.97557165567758974
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegBp0_toe04_2_1_ikj_ikh" -p "rtLegBp0_toe04_2_ikc";
	rename -uid "784C0BEE-4544-098C-A2C6-A6B5AB1719CD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.4532209304758492 -0.16916848879181146 -0.73402911726540698 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000009 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.96653947583687105 -0.19786974438458363 0.16324523241481551 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegBp0_quadScap_ofs" -p "rtLegBp0_FK";
	rename -uid "2B16F91C-4B68-1F96-5C5D-B9AF0E52B474";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_quadScap" -p "rtLegBp0_quadScap_ofs";
	rename -uid "7E528E15-4529-8645-2952-FFB4975FDE1E";
	setAttr ".t" -type "double3" 0 0 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_hip_fkc_ofs" -p "rtLegBp0_quadScap";
	rename -uid "B90CBEE5-4627-8782-5E85-B08FEB2DB1E1";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 1.7763568394002505e-15 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_hip_fkc" -p "rtLegBp0_hip_fkc_ofs";
	rename -uid "5B1B1FB1-4108-1FF9-A957-09969F7C4082";
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
createNode nurbsCurve -n "rtLegBp0_hip_fkcShape1" -p "rtLegBp0_hip_fkc";
	rename -uid "FEB60F7F-4FDC-A27B-5BFF-AABDEC16D471";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-5.5832723927398451 8.0899698825614479 5.5832723927398513
		-3.0912653690984107e-16 8.0899698825614479 5.0484194646989931
		5.5832723927398451 8.0899698825614479 5.5832723927398478
		5.0484194646990073 8.0899698825614479 1.9602875869346212e-15
		5.5832723927398451 8.0899698825614479 -5.5832723927398451
		5.057036305510681e-16 8.0899698825614479 -5.0484194646989984
		-5.5832723927398451 8.0899698825614479 -5.5832723927398478
		-5.0484194646990073 8.0899698825614479 1.0101254504845201e-15
		-5.5832723927398451 8.0899698825614479 5.5832723927398513
		-3.0912653690984107e-16 8.0899698825614479 5.0484194646989931
		5.5832723927398451 8.0899698825614479 5.5832723927398478
		;
createNode joint -n "rtLegBp0_autoAim" -p "rtLegBp0_quadScap_ofs";
	rename -uid "38425DA7-41BE-1FAB-C075-DA8F318CE1C5";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 2.5444437451708131e-14 -5.623205360986265e-30 -3.7488035739908452e-30 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 118.40529425826875 45.075353487147318 3.3656585236663688 ;
	setAttr ".radi" 1.6179939765122897;
createNode joint -n "rtLegBp0_autoAim_end" -p "rtLegBp0_autoAim";
	rename -uid "ADCAA193-4B13-51AA-8593-9DB96DDC45A1";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -48.22701387250013 1.0658141036401503e-14 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.1805546814635176e-15 -4.3732626870123352e-15 5.5659706925611551e-15 ;
	setAttr ".radi" 1.6179939765122897;
createNode ikEffector -n "effector36" -p "rtLegBp0_autoAim";
	rename -uid "5D7D23A8-43F3-21DB-78AE-8F98F0FC4AFE";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegBp0_IK" -p "rtLegBp0_ctl_data";
	rename -uid "233AA161-4754-D0EB-C9FB-A8B5601B1257";
	setAttr ".t" -type "double3" 5.8362665560894742 -51.646830813409281 15.548650060442801 ;
	setAttr -cb on ".ro";
createNode joint -n "rtLegBp0_hip_ik" -p "rtLegBp0_IK";
	rename -uid "C39076AB-4189-1E34-645E-65A991B3A1D7";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 5.7717784987580893 -53.638424303370016 78.611315730231539 ;
	setAttr ".radi" 1.6179939765122897;
createNode joint -n "rtLegBp0_upr_ik" -p "rtLegBp0_hip_ik";
	rename -uid "B6806D0C-4554-9E89-38A8-A6B25DC83402";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -11.29519562304225 7.1054273576010019e-15 -2.1316282072803006e-14 ;
	setAttr ".r" -type "double3" -3.9767928722741518e-13 0.00087897562189319422 1.0852345523128113e-12 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -47.120807028639923 73.264495955539942 -21.979265522484631 ;
	setAttr ".radi" 1.6179939765122897;
createNode joint -n "rtLegBp0_lwr_ik" -p "rtLegBp0_upr_ik";
	rename -uid "E37C9997-44E9-B1E4-E3DC-4B8B49217AE5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -21.611593755189887 -3.5527136788005009e-15 1.2434497875801753e-14 ;
	setAttr ".r" -type "double3" 7.0675802251002314e-15 -0.0017380719965422317 -7.6037809608386672e-13 ;
	setAttr -cb on ".ro" 2;
	setAttr ".jo" -type "double3" 0 -39.831182739424982 0 ;
	setAttr ".pa" -type "double3" 0 -45 0 ;
	setAttr ".radi" 1.6179939765122897;
createNode joint -n "rtLegBp0_palm_ik" -p "rtLegBp0_lwr_ik";
	rename -uid "9595101F-4155-7A31-D2A1-698E9355B37E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -22.053069145189824 7.1054273576010019e-15 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 2.5049305886799457e-07 2.9273218450983028e-15 -1.3391436947210858e-06 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 23.715212289416215 15.972799032100099 2.643754066958508 ;
	setAttr ".radi" 1.6179939765122897;
createNode joint -n "rtLegBp0_ball_ik" -p "rtLegBp0_palm_ik";
	rename -uid "414FF9CE-4748-0A11-BFB8-F3A5EEF386CF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.4681892169060502 -8.8817841970012523e-15 7.8489852827152955 ;
	setAttr ".r" -type "double3" 7.100730815217029e-08 3.8214606903444666e-23 3.8214606950804458e-23 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 69.448695121428798 0 ;
	setAttr ".radi" 1.6179939765122897;
createNode joint -n "rtLegBp0_tip_ik" -p "rtLegBp0_ball_ik";
	rename -uid "9BC9E47E-4798-54E7-8FC2-A0A8DE8FEF1C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.6013667351883338 -3.5527136788005009e-15 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 20.551304878571212 0 ;
	setAttr ".radi" 1.6179939765122897;
createNode ikEffector -n "effector34" -p "rtLegBp0_ball_ik";
	rename -uid "FFDB61F4-48ED-0618-822B-83BCB466E9DD";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector33" -p "rtLegBp0_palm_ik";
	rename -uid "9941AF3E-46CC-398F-144F-179A535A6C44";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector32" -p "rtLegBp0_lwr_ik";
	rename -uid "F0698B6A-4014-60F8-C26A-D280268CD501";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "rtLegBp0_softJ" -p "rtLegBp0_hip_ik";
	rename -uid "B86406F8-4AD9-8D14-43C6-F2A845C84936";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -11.29519562304225 5.3290705182007514e-15 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -146.7413382608311 56.279283986642945 5.03297310688904 ;
createNode joint -n "rtLegBp0_softJ_end" -p "rtLegBp0_softJ";
	rename -uid "568875FB-4962-18CB-92C3-99A4E773946D";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -41.053592681884766 -1.3766765505351941e-14 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.1805546814635176e-15 -4.3732626870123352e-15 5.5659706925611551e-15 ;
createNode ikEffector -n "effector35" -p "rtLegBp0_softJ";
	rename -uid "3B9A2D27-4DA8-A807-7E51-3DBC02594391";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "rtLegBp0_pvChainJ" -p "rtLegBp0_hip_ik";
	rename -uid "694F247C-4E78-E8EB-0C4B-77830836B3B0";
	setAttr ".ove" yes;
	setAttr ".ovc" 5;
	setAttr ".t" -type "double3" -11.29519562304225 7.1054273576010019e-15 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 2.5444437451708134e-14 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -146.7413382581573 56.279283987017294 5.0329731066119239 ;
createNode joint -n "rtLegBp0_pvChainJ_end" -p "rtLegBp0_pvChainJ";
	rename -uid "B02FDF01-4882-701A-4331-6CA1289094D1";
	setAttr ".ove" yes;
	setAttr ".ovc" 5;
	setAttr ".t" -type "double3" -41.053368017721866 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.1805546814635176e-15 -4.3732626870123352e-15 5.5659706925611551e-15 ;
createNode ikEffector -n "effector42" -p "rtLegBp0_pvChainJ";
	rename -uid "162201B4-4766-1271-1915-4B93EF2131B6";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegBp0_pvc_SPACE_1_ofs" -p "rtLegBp0_pvChainJ";
	rename -uid "8C141B45-4838-FE11-05CA-A49DE5C45B2A";
	setAttr ".t" -type "double3" -21.286688390672257 -29.088841903157373 -19.918707609162134 ;
	setAttr ".r" -type "double3" 178.33262041465755 55.606887726295533 85.498324123741057 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999967 ;
createNode transform -n "rtLegBp0_pvc_SPACE_1" -p "rtLegBp0_pvc_SPACE_1_ofs";
	rename -uid "252C386D-44C3-7007-6868-F8865327431A";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000004 ;
createNode transform -n "rtLegBp0_ikCstG" -p "rtLegBp0_IK";
	rename -uid "B9608ACD-4BAB-142C-DB6C-A0B64D4D1CA3";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_heelRollG" -p "rtLegBp0_ikCstG";
	rename -uid "2425265F-4700-864B-A55C-9C9B648331E5";
	setAttr ".t" -type "double3" -5.3290705182007514e-15 -3.6540581892429755 -2.5053504932438457 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_heelRollG_ctl" -p "rtLegBp0_heelRollG";
	rename -uid "3AAF06F4-477A-BBF5-54A3-DEBDFF424EC1";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegBp0_toeRollG" -p "rtLegBp0_heelRollG_ctl";
	rename -uid "F839673B-49EE-7FA3-BA5B-819CFD2F607F";
	setAttr ".t" -type "double3" -1.139058052825904 0 16.746157349371501 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_toeRollG_ctl" -p "rtLegBp0_toeRollG";
	rename -uid "F9F579AE-423F-88AD-3250-6D801741489D";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegBp0_footRollG" -p "rtLegBp0_toeRollG_ctl";
	rename -uid "4F888927-4459-C0C8-3936-599091A70748";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_outRollG" -p "rtLegBp0_footRollG";
	rename -uid "2115FB45-423F-0115-B9EE-1A87E65927A4";
	setAttr ".t" -type "double3" -1.1550078830907911 0 -13.260811151465175 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_outRollG_ctl" -p "rtLegBp0_outRollG";
	rename -uid "9FFB0CD7-470E-3355-B848-06A1DED97049";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegBp0_inRollG" -p "rtLegBp0_outRollG_ctl";
	rename -uid "9F187B94-4F99-DD4F-EC39-1B990973678F";
	setAttr ".t" -type "double3" 4.9189533863814621 0 -0.32393823290298229 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_inRollG_ctl" -p "rtLegBp0_inRollG";
	rename -uid "C87E8A2D-49BD-293B-92D6-A3B313A74E9E";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegBp0_ballRollG" -p "rtLegBp0_inRollG_ctl";
	rename -uid "E6EFF40C-493E-DC90-C5DC-FCA8BDB0CAA8";
	setAttr ".t" -type "double3" -2.6248874504647599 2.1858689723369262 7.1929278109557959 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_ballG_ikc" -p "rtLegBp0_ballRollG";
	rename -uid "D82A4AC7-4B4A-B93A-D4CB-248DF13BE037";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode transform -n "rtLegBp0_dist_loc1" -p "rtLegBp0_ballG_ikc";
	rename -uid "AF958B44-4A60-CBFC-8950-27A54ABE46FA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.7763568394002505e-15 1.4681892169060493 -7.8489852827152955 ;
	setAttr -cb on ".ro";
createNode locator -n "rtLegBp0_dist_loc1Shape" -p "rtLegBp0_dist_loc1";
	rename -uid "23C7D4B1-409C-DF35-FF6A-2AA98A61EF52";
	setAttr -k off ".v";
createNode transform -n "rtLegBp0_softJ_posGrp" -p "rtLegBp0_ballG_ikc";
	rename -uid "C0778B4D-49DE-A513-16A0-C194FBADBC8E";
	setAttr ".t" -type "double3" 1.4839767795038483e-05 1.4684131884657869 -7.8489948072168385 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_1_ikh_ofs" -p "rtLegBp0_ballG_ikc";
	rename -uid "DE747B8E-4EC0-E420-A0AB-59BBDAF5B3F1";
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegBp0_1_ikh" -p "rtLegBp0_1_ikh_ofs";
	rename -uid "F8FBF23A-4CA0-9A9D-A475-A6989EC95EED";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode nurbsCurve -n "stickCShape2" -p "rtLegBp0_ballG_ikc";
	rename -uid "44EBFF70-4C1A-7371-2D2A-2AB3E88F7FD9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 25 0 no 3
		26 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		26
		-5.0105885628205127e-17 7.2716786542579834 4.4232089504882043e-16
		-4.8398567487409583e-17 7.2995613743999446 0.21178934470641023
		-4.3392969450758444e-17 7.3813090247552777 0.40914558200508055
		-3.5430208953863847e-17 7.5113507191063551 0.57861922774839802
		-2.5052942814102563e-17 7.6808242684097161 0.70866098639277941
		-1.2968356749048068e-17 7.8781805378550382 0.79040857245480822
		1.5343707816508715e-32 8.0899698825614479 0.81829116401016111
		1.2968356749048068e-17 8.3017592272678584 0.79040857245480822
		2.5052942814102563e-17 8.4991154967131806 0.70866098639277941
		3.5430208953863847e-17 8.6685890460165425 0.57861922774839802
		4.3392969450758444e-17 8.7986312547140528 0.40914558200508055
		4.8398567487409583e-17 8.880378390722953 0.21178934470641023
		5.0105885628205127e-17 8.9082611108649132 2.4179840570948217e-16
		4.8398567487409583e-17 8.880378390722953 -0.21178934470641023
		4.3392969450758444e-17 8.7986312547140528 -0.40914558200508055
		3.5430208953863847e-17 8.6685890460165425 -0.57861922774839802
		2.5052942814102563e-17 8.4991154967131806 -0.70866098639277941
		1.2968356749048068e-17 8.3017592272678584 -0.79040857245480822
		-3.7487599655917131e-32 8.0899698825614479 -0.81829116401016111
		-1.2968356749048068e-17 7.8781805378550382 -0.79040857245480822
		-2.5052942814102563e-17 7.6808242684097161 -0.70866098639277941
		-3.5430208953863847e-17 7.5113507191063551 -0.57861922774839802
		-4.3392969450758444e-17 7.3813090247552777 -0.40914558200508055
		-4.8398567487409583e-17 7.2995613743999446 -0.21178934470641023
		-5.0105885628205127e-17 7.2716786542579834 4.4232089504882043e-16
		0 0 0
		;
createNode transform -n "rtLegBp0_toe_wiggle_grp" -p "rtLegBp0_inRollG_ctl";
	rename -uid "A18954DD-42F4-8267-7857-858F7CFD842C";
	setAttr ".t" -type "double3" -2.6248874504647599 2.1858689723369262 7.1929278109557959 ;
	setAttr ".r" -type "double3" -9.0602226505952025e-15 69.448695121428784 90.000000000000043 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegBp0_2_ikh" -p "rtLegBp0_toe_wiggle_grp";
	rename -uid "2352F32F-4FC5-A018-B6F5-D9BC4EB206FB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.8582449459952954e-05 -1.8196298951167478e-05 9.8357832612805396e-05 ;
	setAttr ".r" -type "double3" -0.00092836784531363152 -69.449482018716054 0.00095094284329308248 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.93635822440728078 2.4044388884403548e-16 0.35104597360580014 ;
	setAttr ".roc" yes;
createNode ikHandle -n "rtLegBp0_3_ikh" -p "rtLegBp0_toe_wiggle_grp";
	rename -uid "73E59561-4320-8107-2E25-ACBCB13CE309";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.6012981521095835 -2.7604570394856864e-05 7.694716760653364e-06 ;
	setAttr ".r" -type "double3" -0.00032588785539519171 -0.00078689975942868539 8.1657975962008781e-05 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.93635822440728078 2.4044388884403548e-16 0.35104597360580014 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "diamondShape6" -p "rtLegBp0_inRollG_ctl";
	rename -uid "28806244-42D0-5F27-C7F4-DDB8E18C27A3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.33371125765565979
		-0.33371125765565979 0 0
		0 0 -0.33371125765565979
		0.33371125765565979 0 0
		0 0 0.33371125765565979
		0 0.33371125765565979 0
		0.33371125765565979 0 0
		0 0 -0.33371125765565979
		0 0.33371125765565979 0
		-0.33371125765565979 0 0
		0 -0.33371125765565979 0
		0.33371125765565979 0 0
		0 0 0.33371125765565979
		0 -0.33371125765565979 0
		0 0 -0.33371125765565979
		;
createNode nurbsCurve -n "diamondShape7" -p "rtLegBp0_outRollG_ctl";
	rename -uid "7ABE68DE-4706-8240-78DC-E487C52FDA56";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.33371125765565979
		-0.33371125765565979 0 0
		0 0 -0.33371125765565979
		0.33371125765565979 0 0
		0 0 0.33371125765565979
		0 0.33371125765565979 0
		0.33371125765565979 0 0
		0 0 -0.33371125765565979
		0 0.33371125765565979 0
		-0.33371125765565979 0 0
		0 -0.33371125765565979 0
		0.33371125765565979 0 0
		0 0 0.33371125765565979
		0 -0.33371125765565979 0
		0 0 -0.33371125765565979
		;
createNode nurbsCurve -n "diamondShape5" -p "rtLegBp0_toeRollG_ctl";
	rename -uid "8620B1D5-4C62-F28D-39C6-45897FF05CC8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.33371125765565979
		-0.33371125765565979 0 0
		0 0 -0.33371125765565979
		0.33371125765565979 0 0
		0 0 0.33371125765565979
		0 0.33371125765565979 0
		0.33371125765565979 0 0
		0 0 -0.33371125765565979
		0 0.33371125765565979 0
		-0.33371125765565979 0 0
		0 -0.33371125765565979 0
		0.33371125765565979 0 0
		0 0 0.33371125765565979
		0 -0.33371125765565979 0
		0 0 -0.33371125765565979
		;
createNode nurbsCurve -n "diamondShape8" -p "rtLegBp0_heelRollG_ctl";
	rename -uid "72383DEC-4986-2DF9-28C4-D092869F6299";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.33371125765565979
		-0.33371125765565979 0 0
		0 0 -0.33371125765565979
		0.33371125765565979 0 0
		0 0 0.33371125765565979
		0 0.33371125765565979 0
		0.33371125765565979 0 0
		0 0 -0.33371125765565979
		0 0.33371125765565979 0
		-0.33371125765565979 0 0
		0 -0.33371125765565979 0
		0.33371125765565979 0 0
		0 0 0.33371125765565979
		0 -0.33371125765565979 0
		0 0 -0.33371125765565979
		;
createNode transform -n "rtLegBp0_line_28" -p "rtLegBp0_IK";
	rename -uid "22443AC3-4926-BBDC-EC25-80AF19672B24";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape4" -p "rtLegBp0_line_28";
	rename -uid "0255957F-4C58-0CFC-420F-B19D98AAB0B9";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-11.377273498781946 25.334280190749933 -16.944487163674072
		-22.210413057983768 26.144115990768071 8.6846701804520539
		;
createNode transform -n "rtLegBp0_ikc_ofs" -p "rtLegBp0_IK";
	rename -uid "34D4120A-4EEC-BD70-D754-F7ABCB6CFBC2";
	setAttr ".t" -type "double3" -9.8703472642103005 4.1550584854442896 -22.9040984524461 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_ikc_ofs1" -p "rtLegBp0_ikc_ofs";
	rename -uid "B5F97F43-4B16-184F-33EC-C997FB51B097";
createNode transform -n "rtLegBp0_ikc" -p "rtLegBp0_ikc_ofs1";
	rename -uid "14040242-41C6-DD80-FC40-159464D1D107";
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
	addAttr -uap -ci true -k true -sn "palmScale" -ln "palmScale" -dv 1 -min 0.01 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "extraCtl" -ln "extraCtl" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 1 -en "master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -cb on ".gimbalCtl";
	setAttr -k on ".kneeTwist";
	setAttr -k on ".stretchy";
	setAttr -k on ".squashy";
	setAttr -k on ".limbScale1";
	setAttr -k on ".limbScale2";
	setAttr -k on ".softIK";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -av -k on ".palmScale";
	setAttr -l on -k on ".wsMirror";
	setAttr -cb on ".extraCtl";
	setAttr -k on ".space";
createNode nurbsCurve -n "rtLegBp0_ikcShape1" -p "rtLegBp0_ikc";
	rename -uid "DA35B341-4252-A90E-4CC1-F1A2973C62F4";
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
		5.3933132550409608 -4.1550584854442878 5.393313255040967
		5.2896822531478085 -4.1550584854442878 6.4454964747007608
		4.9827717287541686 -4.1550584854442878 7.4572448833001763
		4.4843760811950863 -4.1550584854442878 8.3896775568917832
		3.8136483757027557 -4.1550584854442878 9.2069616307437201
		2.9963643018508161 -4.1550584854442878 9.8776893362360543
		2.0639316282592097 -4.1550584854442878 10.376084983795137
		1.0521832196597936 -4.1550584854442878 10.682995508188776
		-6.2963421846737181e-16 -4.1550584854442878 10.786626510081927
		-1.0521832196597947 -4.1550584854442878 10.682995508188776
		-2.0639316282592111 -4.1550584854442878 10.376084983795137
		-2.9963643018508179 -4.1550584854442878 9.8776893362360543
		-3.8136483757027584 -4.1550584854442878 9.2069616307437219
		-4.484376081195089 -4.1550584854442878 8.389677556891785
		-4.9827717287541722 -4.1550584854442878 7.4572448833001763
		-5.289682253147812 -4.1550584854442878 6.4454964747007599
		-5.3933132550409644 -4.1550584854442878 5.3933132550409644
		-5.2896822213401267 -2.5399725227428993 5.3933132550409653
		-4.9827717046696192 -0.96732413219100666 5.3933132550409653
		-4.4843761830883855 0.39449321811488325 5.3933132550409653
		-3.8136483747282512 1.4781156697913707 5.3933132550409653
		-2.9963642367409258 2.2941189219819567 5.3933132550409653
		-2.0639315625480785 2.7925144435631903 5.3933132550409653
		-1.0521831965225188 3.0994249602336978 5.3933132550409653
		3.3024519086360796e-16 3.2030559939345356 5.3933132550409653
		1.0521831965225188 3.0994249602336978 5.3933132550409653
		2.0639315625480785 2.7925144435631903 5.3933132550409653
		2.9963642367409258 2.2941189219819567 5.3933132550409653
		3.8136483747282512 1.4781156697913707 5.3933132550409653
		4.4843761830883855 0.39449321811488325 5.3933132550409653
		4.9827717046696192 -0.96732413219100666 5.3933132550409653
		5.2896822213401267 -2.5399725227428993 5.3933132550409653
		5.3933132550409653 -4.1550584854442878 5.3933132550409653
		5.3933132550409653 -4.1550584854442896 -5.0697144597385071
		5.3933132550409653 -3.8314596901418296 -5.3933132550409653
		5.2896822213401267 -2.5399725227428993 -5.3933132550409653
		4.9827717046696192 -0.96732413219100666 -5.3933132550409653
		4.4843761830883855 0.39449321811488325 -5.3933132550409653
		3.8136483747282512 1.4781156697913707 -5.3933132550409653
		2.9963642367409258 2.2941189219819567 -5.3933132550409653
		2.0639315625480785 2.7925144435631903 -5.3933132550409653
		1.0521831965225188 3.0994249602336978 -5.3933132550409653
		3.3024519086360796e-16 3.2030559939345356 -5.3933132550409653
		-1.0521831965225188 3.0994249602336978 -5.3933132550409653
		-2.0639315625480785 2.7925144435631903 -5.3933132550409653
		-2.9963642367409258 2.2941189219819567 -5.3933132550409653
		-3.8136483747282512 1.4781156697913707 -5.3933132550409653
		-4.4843761830883855 0.39449321811488325 -5.3933132550409653
		-4.9827717046696192 -0.96732413219100666 -5.3933132550409653
		-5.2896822213401267 -2.5399725227428993 -5.3933132550409653
		-5.3933132550409653 -3.8314596901418296 -5.3933132550409653
		-5.3933132550409653 -4.1550584854442869 -5.0697144597385071
		-5.3933132550409653 -4.1550584854442878 5.3933132550409653
		;
createNode transform -n "rtLegBp0_ikc_gmb" -p "rtLegBp0_ikc";
	rename -uid "13138F04-4E34-902F-48F1-59855E6A592B";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
createNode nurbsCurve -n "rtLegBp0_ikc_gmbShape" -p "rtLegBp0_ikc_gmb";
	rename -uid "02DFD53F-4596-1516-FC0F-9BACD7947573";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".tw" yes;
	setAttr -s 53 ".cp[0:52]" -type "double3" -1.0786626510081918 0.73581146839775657 
		-0.5393313102183992 -1.0579364506295619 0.73581146839775657 -0.74976795415035724 
		-0.99655434575083346 0.73581146839775657 -0.95211763587024034 -0.896875216239017 
		0.73581146839775657 -1.138604170588561 -0.76272967514055079 0.73581146839775657 -1.3020609853589491 
		-0.59927286037016314 0.73581146839775657 -1.4362065264574149 -0.41278632565184181 
		0.73581146839775657 -1.5358856559692313 -0.21043664393195871 0.73581146839775657 
		-1.5972677608479593 1.259268436934743e-16 0.73581146839775657 -1.6179939612265901 
		0.21043664393195893 0.73581146839775657 -1.5972677608479593 0.41278632565184203 0.73581146839775657 
		-1.5358856559692313 0.59927286037016358 0.73581146839775657 -1.4362065264574149 0.76272967514055168 
		0.73581146839775657 -1.3020609853589491 0.89687521623901745 0.73581146839775657 -1.138604170588561 
		0.99655434575083435 0.73581146839775657 -0.95211763587024034 1.0579364506295619 0.73581146839775657 
		-0.74976795415035635 1.0786626510081927 0.73581146839775657 -0.53933131021839831 
		1.0579364442680248 0.41279427585747897 -0.53933131021839742 0.99655434093392348 0.098264597747100169 
		-0.53933131021839742 0.8968752366176771 -0.17409887231407767 -0.53933131021839742 
		0.76272967494565025 -0.39082336264937512 -0.53933131021839742 0.59927284734818498 
		-0.55402401308749227 -0.53933131021839742 0.41278631250961562 -0.65370311740373888 
		-0.53933131021839742 0.21043663930450374 -0.7150852207378402 -0.53933131021839742 
		-6.6049038172721582e-17 -0.73581142747800765 -0.53933131021839742 -0.21043663930450374 
		-0.7150852207378402 -0.53933131021839742 -0.41278631250961562 -0.65370311740373888 
		-0.53933131021839742 -0.59927284734818498 -0.55402401308749227 -0.53933131021839742 
		-0.76272967494565025 -0.39082336264937512 -0.53933131021839742 -0.8968752366176771 
		-0.17409887231407767 -0.53933131021839742 -0.99655434093392348 0.098264597747100169 
		-0.53933131021839742 -1.0579364442680248 0.41279427585747897 -0.53933131021839742 
		-1.0786626510081927 0.73581146839775657 -0.53933131021839742 -1.0786626510081927 
		0.73581146839775702 1.5532742327374964 -1.0786626510081927 0.67109170933726503 1.6179939917979875 
		-1.0579364442680248 0.41279427585747897 1.6179939917979875 -0.99655434093392348 0.098264597747100169 
		1.6179939917979875 -0.8968752366176771 -0.17409887231407767 1.6179939917979875 -0.76272967494565025 
		-0.39082336264937512 1.6179939917979875 -0.59927284734818498 -0.55402401308749227 
		1.6179939917979875 -0.41278631250961562 -0.65370311740373888 1.6179939917979875 -0.21043663930450374 
		-0.7150852207378402 1.6179939917979875 -6.6049038172721582e-17 -0.73581142747800765 
		1.6179939917979875 0.21043663930450374 -0.7150852207378402 1.6179939917979875 0.41278631250961562 
		-0.65370311740373888 1.6179939917979875 0.59927284734818498 -0.55402401308749227 
		1.6179939917979875 0.76272967494565025 -0.39082336264937512 1.6179939917979875 0.8968752366176771 
		-0.17409887231407767 1.6179939917979875 0.99655434093392348 0.098264597747100169 
		1.6179939917979875 1.0579364442680248 0.41279427585747897 1.6179939917979875 1.0786626510081927 
		0.67109170933726503 1.6179939917979875 1.0786626510081927 0.73581146839775613 1.5532742327374964 
		1.0786626510081927 0.73581146839775657 -0.53933131021839742;
createNode nurbsCurve -n "rtLegBp0_ikc_gmbShapeOrig" -p "rtLegBp0_ikc_gmb";
	rename -uid "1601CE5B-4B86-85AC-FEDA-539C230999C9";
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
		5.3933132550409608 -4.1550584854442878 5.393313255040967
		5.2896822531478085 -4.1550584854442878 6.4454964747007608
		4.9827717287541686 -4.1550584854442878 7.4572448833001763
		4.4843760811950863 -4.1550584854442878 8.3896775568917832
		3.8136483757027557 -4.1550584854442878 9.2069616307437201
		2.9963643018508161 -4.1550584854442878 9.8776893362360543
		2.0639316282592097 -4.1550584854442878 10.376084983795137
		1.0521832196597936 -4.1550584854442878 10.682995508188776
		-6.2963421846737181e-16 -4.1550584854442878 10.786626510081927
		-1.0521832196597947 -4.1550584854442878 10.682995508188776
		-2.0639316282592111 -4.1550584854442878 10.376084983795137
		-2.9963643018508179 -4.1550584854442878 9.8776893362360543
		-3.8136483757027584 -4.1550584854442878 9.2069616307437219
		-4.484376081195089 -4.1550584854442878 8.389677556891785
		-4.9827717287541722 -4.1550584854442878 7.4572448833001763
		-5.289682253147812 -4.1550584854442878 6.4454964747007599
		-5.3933132550409644 -4.1550584854442878 5.3933132550409644
		-5.2896822213401267 -2.5399725227428993 5.3933132550409653
		-4.9827717046696192 -0.96732413219100666 5.3933132550409653
		-4.4843761830883855 0.39449321811488325 5.3933132550409653
		-3.8136483747282512 1.4781156697913707 5.3933132550409653
		-2.9963642367409258 2.2941189219819567 5.3933132550409653
		-2.0639315625480785 2.7925144435631903 5.3933132550409653
		-1.0521831965225188 3.0994249602336978 5.3933132550409653
		3.3024519086360796e-16 3.2030559939345356 5.3933132550409653
		1.0521831965225188 3.0994249602336978 5.3933132550409653
		2.0639315625480785 2.7925144435631903 5.3933132550409653
		2.9963642367409258 2.2941189219819567 5.3933132550409653
		3.8136483747282512 1.4781156697913707 5.3933132550409653
		4.4843761830883855 0.39449321811488325 5.3933132550409653
		4.9827717046696192 -0.96732413219100666 5.3933132550409653
		5.2896822213401267 -2.5399725227428993 5.3933132550409653
		5.3933132550409653 -4.1550584854442878 5.3933132550409653
		5.3933132550409653 -4.1550584854442896 -5.0697144597385071
		5.3933132550409653 -3.8314596901418296 -5.3933132550409653
		5.2896822213401267 -2.5399725227428993 -5.3933132550409653
		4.9827717046696192 -0.96732413219100666 -5.3933132550409653
		4.4843761830883855 0.39449321811488325 -5.3933132550409653
		3.8136483747282512 1.4781156697913707 -5.3933132550409653
		2.9963642367409258 2.2941189219819567 -5.3933132550409653
		2.0639315625480785 2.7925144435631903 -5.3933132550409653
		1.0521831965225188 3.0994249602336978 -5.3933132550409653
		3.3024519086360796e-16 3.2030559939345356 -5.3933132550409653
		-1.0521831965225188 3.0994249602336978 -5.3933132550409653
		-2.0639315625480785 2.7925144435631903 -5.3933132550409653
		-2.9963642367409258 2.2941189219819567 -5.3933132550409653
		-3.8136483747282512 1.4781156697913707 -5.3933132550409653
		-4.4843761830883855 0.39449321811488325 -5.3933132550409653
		-4.9827717046696192 -0.96732413219100666 -5.3933132550409653
		-5.2896822213401267 -2.5399725227428993 -5.3933132550409653
		-5.3933132550409653 -3.8314596901418296 -5.3933132550409653
		-5.3933132550409653 -4.1550584854442869 -5.0697144597385071
		-5.3933132550409653 -4.1550584854442878 5.3933132550409653
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode transform -n "rtLegBp0_smart_ctl_ofs" -p "rtLegBp0_ikc_gmb";
	rename -uid "B6F8649E-40D0-2FB4-DE2B-24B841760BD1";
	setAttr ".t" -type "double3" -1.1390580528259111 -3.6540581892429755 14.240806856127655 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_smart_ctl" -p "rtLegBp0_smart_ctl_ofs";
	rename -uid "4EC28831-422C-CA84-063C-26AB0B783BFF";
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
createNode nurbsCurve -n "rtLegBp0_smart_ctlShape1" -p "rtLegBp0_smart_ctl";
	rename -uid "7E13BF87-4F1C-D97D-BBEA-E59D7F60753A";
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
		1.3958180981849613 2.8649197663592844e-17 -1.3958180981849628
		7.7281634227460266e-17 4.0516083886960637e-17 -1.2621048661747483
		-1.3958180981849613 2.8649197663592832e-17 -1.3958180981849619
		-1.2621048661747518 -1.6535936240957274e-32 -4.900718967336553e-16
		-1.3958180981849613 -2.8649197663592838e-17 1.3958180981849613
		-1.2642590763776703e-16 -4.051608388696068e-17 1.2621048661747496
		1.3958180981849613 -2.8649197663592832e-17 1.3958180981849619
		1.2621048661747518 -2.4161461238595582e-32 -2.5253136262113002e-16
		1.3958180981849613 2.8649197663592844e-17 -1.3958180981849628
		7.7281634227460266e-17 4.0516083886960637e-17 -1.2621048661747483
		-1.3958180981849613 2.8649197663592832e-17 -1.3958180981849619
		;
createNode ikHandle -n "rtLegBp0_autoAimJ_ikh" -p "rtLegBp0_ikc";
	rename -uid "452D53F4-4A79-5504-834B-6DB735F89246";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -1.0658141036401503e-14 -3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 119.11512781014136 -8.7728293962775599 85.144794991410933 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegBp0_pvc_ofs" -p "rtLegBp0_IK";
	rename -uid "7640BA6A-4D1E-CE94-8759-67A292E9B035";
	setAttr ".t" -type "double3" -22.210413057983772 26.144115990768071 8.6846701804520521 ;
	setAttr ".r" -type "double3" -1.6673795853424609 -22.913190168935071 5.3953309619914356e-17 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_pvc_ofs1" -p "rtLegBp0_pvc_ofs";
	rename -uid "6881882B-4DA8-A916-678D-3F90849E6CD6";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegBp0_pvc" -p "rtLegBp0_pvc_ofs1";
	rename -uid "CD75B501-4B0B-5B8E-93BE-87A2412492B4";
	addAttr -ci true -sn "fkPin" -ln "fkPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 1.0658141036401503e-14 0 3.5527136788005009e-15 ;
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".fkPin";
	setAttr -k on ".pvPin";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -k on ".space";
createNode nurbsCurve -n "rtLegBp0_pvcShape1" -p "rtLegBp0_pvc";
	rename -uid "A2C11E9D-499C-ABDB-E642-31A4A4BD49FA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.3348450306226392
		-1.3348450306226392 0 0
		0 0 -1.3348450306226392
		1.3348450306226392 0 0
		0 0 1.3348450306226392
		0 1.3348450306226392 0
		1.3348450306226392 0 0
		0 0 -1.3348450306226392
		0 1.3348450306226392 0
		-1.3348450306226392 0 0
		0 -1.3348450306226392 0
		1.3348450306226392 0 0
		0 0 1.3348450306226392
		0 -1.3348450306226392 0
		0 0 -1.3348450306226392
		;
createNode transform -n "rtLegBp0_pin_fkc_ofs" -p "rtLegBp0_pvc";
	rename -uid "7305F5D4-4B36-9EC6-8092-4CB8CB0BA6A0";
	setAttr ".t" -type "double3" -0.93226228919998277 -20.993332702427949 -34.526179148280661 ;
	setAttr ".r" -type "double3" 22.913190168935085 -1.6673795853424225 89.999999999999915 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "rtLegBp0_pin_fkc" -p "rtLegBp0_pin_fkc_ofs";
	rename -uid "F78B8D2D-4C2A-6510-5AE9-D08EE200C136";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtLegBp0_pin_fkcShape1" -p "rtLegBp0_pin_fkc";
	rename -uid "4BE45C6A-414A-E5FC-83BA-CCAA3448AB44";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.1459679065437138e-16 -5.5832723927398451 -5.5832723927398513
		1.6206433554784255e-16 -3.0912653690984107e-16 -5.0484194646989931
		1.1459679065437133e-16 5.5832723927398451 -5.5832723927398478
		-6.6143744963829096e-32 5.0484194646990073 -1.9602875869346212e-15
		-1.1459679065437135e-16 5.5832723927398451 5.5832723927398451
		-1.6206433554784272e-16 5.057036305510681e-16 5.0484194646989984
		-1.1459679065437133e-16 -5.5832723927398451 5.5832723927398478
		-9.6645844954382326e-32 -5.0484194646990073 -1.0101254504845201e-15
		1.1459679065437138e-16 -5.5832723927398451 -5.5832723927398513
		1.6206433554784255e-16 -3.0912653690984107e-16 -5.0484194646989931
		1.1459679065437133e-16 5.5832723927398451 -5.5832723927398478
		;
createNode transform -n "rtLegBp0_BF" -p "rtLegBp0_ctl_data";
	rename -uid "56B9DD96-4BEC-A8AC-FB1D-6AA006D7C628";
	setAttr ".t" -type "double3" 5.8362665560894742 -51.646830813409281 15.548650060442801 ;
	setAttr -cb on ".ro";
createNode joint -n "rtLegBp0_hip_bf" -p "rtLegBp0_BF";
	rename -uid "815F1B48-4575-2858-EDF4-B5B62FD5DC22";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 3;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 5.7717784987580893 -53.638424303370016 78.611315730231539 ;
	setAttr ".radi" 2.1573253020163863;
createNode joint -n "rtLegBp0_upr_bf" -p "rtLegBp0_hip_bf";
	rename -uid "4FE4AEA9-4570-2905-8E3C-C38ADB7A040E";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -47.120807028639923 73.264495955539942 -21.979265522484631 ;
	setAttr ".radi" 2.1573253020163863;
createNode joint -n "rtLegBp0_lwr_bf" -p "rtLegBp0_upr_bf";
	rename -uid "86FB2538-4E30-F5EC-B1E7-50A99D400E34";
	setAttr ".v" no;
	setAttr -cb on ".ro" 2;
	setAttr ".jo" -type "double3" 0 -39.831182739424982 0 ;
	setAttr ".pa" -type "double3" 0 -45 0 ;
	setAttr ".radi" 2.1573253020163863;
createNode joint -n "rtLegBp0_palm_bf" -p "rtLegBp0_lwr_bf";
	rename -uid "401301F0-43DE-6A00-BB82-D3A85B9BAF38";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 23.715212289416215 15.972799032100099 2.643754066958508 ;
	setAttr ".radi" 2.1573253020163863;
createNode joint -n "rtLegBp0_ball_bf" -p "rtLegBp0_palm_bf";
	rename -uid "445F3491-48C3-3423-29A4-0E89FA747060";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 69.448695121428798 0 ;
	setAttr ".radi" 2.1573253020163863;
createNode joint -n "rtLegBp0_tip_bf" -p "rtLegBp0_ball_bf";
	rename -uid "1A53ADA3-4C85-99D0-9C7E-A580F73A8C25";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.6013667351883338 -3.5527136788005009e-15 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 20.551304878571212 0 ;
	setAttr ".radi" 2.1573253020163863;
createNode transform -n "rtLegBp0_setting" -p "rtLegBp0_ctl_data";
	rename -uid "E37CE331-418A-E957-478F-968A9E091724";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -ci true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "moduleScale" -ln "moduleScale" -dv 1 -min 0.01 -at "double";
	addAttr -ci true -sn "palmScale" -ln "palmScale" -dv 1 -min 0.01 -at "double";
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
	setAttr -l on -k on ".______________";
	setAttr -k on ".fkIkBlend";
	setAttr -k on ".moduleScale";
	setAttr -k on ".palmScale";
createNode nurbsCurve -n "rtLegBp0_settingShape1" -p "rtLegBp0_setting";
	rename -uid "48F56CDF-4A08-4ACB-0EC2-CFAF14FF6496";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		2.6966566275204826 2.6966566275204826 -6.7133216153161241e-17
		2.6448411106700633 2.6966566275204826 0.5260915982612594
		2.4913858523348096 2.6966566275204826 1.0319658455673435
		2.2421880915441927 2.6966566275204826 1.4981821183704629
		1.9068241873641254 2.6966566275204826 1.9068241873641254
		1.4981821183704629 2.6966566275204826 2.2421880915441927
		1.0319658455673435 2.6966566275204826 2.4913858523348096
		0.5260915982612594 2.6966566275204826 2.6448411106700633
		-1.6512259543180398e-16 2.6966566275204826 2.6966566275204826
		-0.5260915982612594 2.6966566275204826 2.6448411106700633
		-1.0319658455673435 2.6966566275204826 2.4913858523348096
		-1.4981821183704629 2.6966566275204826 2.2421880915441927
		-1.9068241873641254 2.6966566275204826 1.9068241873641254
		-2.2421880915441927 2.6966566275204826 1.4981821183704629
		-2.4913858523348096 2.6966566275204826 1.0319658455673435
		-2.6448411106700633 2.6966566275204826 0.5260915982612594
		-2.6966566275204826 2.6966566275204826 2.9167497268077478e-16
		-2.5940213685142544 2.6966566275204826 0.51598289063701963
		-2.301740407442304 2.6966566275204826 0.9534120936820627
		-1.8643111401039569 2.6966566275204826 1.2456929261674048
		-1.3483283137602413 2.6966566275204826 1.3483283137602413
		-0.83234542312322179 2.6966566275204826 1.2456929261674048
		-0.39491622007817873 2.6966566275204826 0.9534120936820627
		-0.10263538759283669 2.6966566275204826 0.51598289063701963
		0 2.6966566275204826 2.9167497268077478e-16
		0.10263538759283669 2.6966566275204826 -0.51598289063701963
		0.39491622007817873 2.6966566275204826 -0.9534120936820627
		0.83234542312322179 2.6966566275204826 -1.2456929261674048
		1.3483283137602413 2.6966566275204826 -1.3483283137602413
		1.8643111401039569 2.6966566275204826 -1.2456929261674048
		2.301740407442304 2.6966566275204826 -0.9534120936820627
		2.5940213685142544 2.6966566275204826 -0.51598289063701963
		2.6966566275204826 2.6966566275204826 -6.7133216153161241e-17
		2.6448411106700633 2.6966566275204826 -0.5260915982612594
		2.4913858523348096 2.6966566275204826 -1.0319658455673435
		2.2421880915441927 2.6966566275204826 -1.4981821183704629
		1.9068241873641254 2.6966566275204826 -1.9068241873641254
		1.4981821183704629 2.6966566275204826 -2.2421880915441927
		1.0319658455673435 2.6966566275204826 -2.4913858523348096
		0.5260915982612594 2.6966566275204826 -2.6448411106700633
		3.1481710930086722e-16 2.6966566275204826 -2.6966566275204826
		-0.5260915982612594 2.6966566275204826 -2.6448411106700633
		-1.0319658455673435 2.6966566275204826 -2.4913858523348096
		-1.4981821183704629 2.6966566275204826 -2.2421880915441927
		-1.9068241873641254 2.6966566275204826 -1.9068241873641254
		-2.2421880915441927 2.6966566275204826 -1.4981821183704629
		-2.4913858523348096 2.6966566275204826 -1.0319658455673435
		-2.6448411106700633 2.6966566275204826 -0.5260915982612594
		-2.6966566275204826 2.6966566275204826 2.9167497268077478e-16
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp0_toe00_3_ctl_ofs" -p "rtLegBp0_ctl_data";
	rename -uid "1C4614E2-4B3F-9B30-5433-5095CB2F2284";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "rtLegBp0_toe00_3_ctl" -p "rtLegBp0_toe00_3_ctl_ofs";
	rename -uid "7F2CFA06-4B7A-82AC-31BD-498470CAC09D";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe00_3_ctlShape1" -p "rtLegBp0_toe00_3_ctl";
	rename -uid "4F5AD5F9-463D-26D6-C1E1-8DA764CB75D9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.8001753197922204e-15 0.37554943459514278 0.37554943459514362
		-1.8033681444284575e-15 -3.5885505343222487e-16 0.33957345123124894
		-1.8001753197922204e-15 -0.37554943459514356 0.37554943459514339
		-1.7924671592531379e-15 -0.33957345123125032 1.3185545019699661e-16
		-1.784758998714055e-15 -0.37554943459514356 -0.37554943459514317
		-1.7815661740778178e-15 -4.1366323529326502e-16 -0.33957345123124927
		-1.784758998714055e-15 0.37554943459514278 -0.37554943459514339
		-1.7924671592531379e-15 0.33957345123124955 6.7944390872441149e-17
		-1.8001753197922204e-15 0.37554943459514278 0.37554943459514362
		-1.8033681444284575e-15 -3.5885505343222487e-16 0.33957345123124894
		-1.8001753197922204e-15 -0.37554943459514356 0.37554943459514339
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp0_toe01_3_ctl_ofs" -p "rtLegBp0_ctl_data";
	rename -uid "04AE649E-4FFB-7468-722C-E196F8F38B06";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_toe01_3_ctl" -p "rtLegBp0_toe01_3_ctl_ofs";
	rename -uid "8C18F51C-46A8-EA85-B794-08B885BE2400";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe01_3_ctlShape1" -p "rtLegBp0_toe01_3_ctl";
	rename -uid "E1D63AD6-449B-227D-ADF6-65BC0F438DAF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.7196237205277839e-15 0.375549434595145 0.37554943459514406
		-1.722816545164021e-15 1.8615909958180884e-15 0.33957345123124938
		-1.7196237205277839e-15 -0.37554943459514134 0.37554943459514384
		-1.7119155599887012e-15 -0.3395734512312481 5.9205497989994652e-16
		-1.7042073994496185e-15 -0.37554943459514134 -0.37554943459514273
		-1.7010145748133813e-15 1.8067828139570482e-15 -0.33957345123124882
		-1.7042073994496185e-15 0.375549434595145 -0.37554943459514295
		-1.7119155599887012e-15 0.33957345123125177 5.2814392057539112e-16
		-1.7196237205277839e-15 0.375549434595145 0.37554943459514406
		-1.722816545164021e-15 1.8615909958180884e-15 0.33957345123124938
		-1.7196237205277839e-15 -0.37554943459514134 0.37554943459514384
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp0_toe01_4_ctl_ofs" -p "rtLegBp0_ctl_data";
	rename -uid "BC9955D1-414D-3264-E973-469640E924C1";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rtLegBp0_toe01_4_ctl" -p "rtLegBp0_toe01_4_ctl_ofs";
	rename -uid "D6F65EAD-43FE-DE9F-E993-D893D735AD8B";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe01_4_ctlShape1" -p "rtLegBp0_toe01_4_ctl";
	rename -uid "0294DC29-4897-6E8E-331A-7E89BCE73AC3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.7042073994496185e-15 0.37554943459514134 0.37554943459514545
		1.7010145748133813e-15 -1.8200052418055112e-15 0.33957345123125077
		1.7042073994496185e-15 -0.375549434595145 0.37554943459514523
		1.7119155599887012e-15 -0.33957345123125177 1.9726535690087962e-15
		1.7196237205277839e-15 -0.375549434595145 -0.37554943459514134
		1.722816545164021e-15 -1.8748134236665513e-15 -0.33957345123124744
		1.7196237205277839e-15 0.37554943459514134 -0.37554943459514156
		1.7119155599887012e-15 0.3395734512312481 1.9087425096842409e-15
		1.7042073994496185e-15 0.37554943459514134 0.37554943459514545
		1.7010145748133813e-15 -1.8200052418055112e-15 0.33957345123125077
		1.7042073994496185e-15 -0.375549434595145 0.37554943459514523
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp0_toe02_3_ctl_ofs" -p "rtLegBp0_ctl_data";
	rename -uid "4DFFD68C-4FB7-F5DD-EAA8-C5BB09B33C35";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_toe02_3_ctl" -p "rtLegBp0_toe02_3_ctl_ofs";
	rename -uid "C5F2BD2C-470A-6AE9-5212-73B452E9682F";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe02_3_ctlShape1" -p "rtLegBp0_toe02_3_ctl";
	rename -uid "A3D68296-4723-937C-4460-5D9263896C5B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-7.2149439950632001e-17 0.3755494345951414 0.37554943459514295
		-7.5342264586869175e-17 -1.7555639623939621e-15 0.33957345123124827
		-7.2149439950632001e-17 -0.37554943459514495 0.37554943459514273
		-6.4441279411549278e-17 -0.33957345123125171 -5.5844384435742828e-16
		-5.673311887246658e-17 -0.37554943459514495 -0.37554943459514384
		-5.3540294236229388e-17 -1.810372144255002e-15 -0.33957345123124993
		-5.673311887246658e-17 0.3755494345951414 -0.37554943459514406
		-6.4441279411549278e-17 0.33957345123124816 -6.2235490368198367e-16
		-7.2149439950632001e-17 0.3755494345951414 0.37554943459514295
		-7.5342264586869175e-17 -1.7555639623939621e-15 0.33957345123124827
		-7.2149439950632001e-17 -0.37554943459514495 0.37554943459514273
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp0_toe02_4_ctl_ofs" -p "rtLegBp0_ctl_data";
	rename -uid "78B23B43-4646-AA11-F4C2-2881FB69146A";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "rtLegBp0_toe02_4_ctl" -p "rtLegBp0_toe02_4_ctl_ofs";
	rename -uid "3ED992DF-46D9-FC2D-4C27-12A1AF76C294";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe02_4_ctlShape1" -p "rtLegBp0_toe02_4_ctl";
	rename -uid "E6A0550C-42A2-A804-0BCE-47821AC465AB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-7.7081605390827072e-18 0.37554943459514317 0.37554943459514362
		-1.0900985175319885e-17 2.079287700628846e-17 0.33957345123124894
		-7.7081605390827041e-18 -0.37554943459514317 0.37554943459514339
		4.4490478479022703e-33 -0.33957345123124993 1.3185545019699661e-16
		7.7081605390827057e-18 -0.37554943459514317 -0.37554943459514317
		1.0900985175319896e-17 -3.4015304854751704e-17 -0.33957345123124927
		7.7081605390827041e-18 0.37554943459514317 -0.37554943459514339
		6.500720343822808e-33 0.33957345123124993 6.7944390872441149e-17
		-7.7081605390827072e-18 0.37554943459514317 0.37554943459514362
		-1.0900985175319885e-17 2.079287700628846e-17 0.33957345123124894
		-7.7081605390827041e-18 -0.37554943459514317 0.37554943459514339
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp0_toe03_3_ctl_ofs" -p "rtLegBp0_ctl_data";
	rename -uid "CEE51AFC-4EE0-8F60-06D2-B799688A0693";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_toe03_3_ctl" -p "rtLegBp0_toe03_3_ctl_ofs";
	rename -uid "62E3DD6E-4E97-31C2-0E64-A6AB4A5EBB1F";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe03_3_ctlShape1" -p "rtLegBp0_toe03_3_ctl";
	rename -uid "44DE1A62-4686-C0E1-48C8-9493455DFC4B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.8485062793508823e-15 0.37554943459514151 0.37554943459514201
		-1.8516991039871198e-15 -1.6911226829824128e-15 0.33957345123124733
		-1.8485062793508823e-15 -0.37554943459514489 0.37554943459514178
		-1.8407981188117998e-15 -0.3395734512312516 -1.4788429037633281e-15
		-1.8330899582727172e-15 -0.37554943459514489 -0.37554943459514478
		-1.8298971336364797e-15 -1.7459308648434529e-15 -0.33957345123125088
		-1.8330899582727172e-15 0.37554943459514151 -0.375549434595145
		-1.8407981188117998e-15 0.33957345123124821 -1.5427539630878836e-15
		-1.8485062793508823e-15 0.37554943459514151 0.37554943459514201
		-1.8516991039871198e-15 -1.6911226829824128e-15 0.33957345123124733
		-1.8485062793508823e-15 -0.37554943459514489 0.37554943459514178
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp0_toe03_4_ctl_ofs" -p "rtLegBp0_ctl_data";
	rename -uid "38D114F2-4F00-2B78-134E-40869387D9EC";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "rtLegBp0_toe03_4_ctl" -p "rtLegBp0_toe03_4_ctl_ofs";
	rename -uid "A6D9AB75-4B77-7217-849C-5EB568F02427";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe03_4_ctlShape1" -p "rtLegBp0_toe03_4_ctl";
	rename -uid "52E11298-4530-2787-E24F-84B0D575A55C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-7.2149439950632001e-17 0.3755494345951414 0.37554943459514456
		-7.5342264586869175e-17 -1.7555639623939621e-15 0.33957345123124988
		-7.2149439950632001e-17 -0.37554943459514495 0.37554943459514434
		-6.4441279411549278e-17 -0.33957345123125171 1.0522545096028966e-15
		-5.673311887246658e-17 -0.37554943459514495 -0.37554943459514223
		-5.3540294236229388e-17 -1.810372144255002e-15 -0.33957345123124832
		-5.673311887246658e-17 0.3755494345951414 -0.37554943459514245
		-6.4441279411549278e-17 0.33957345123124816 9.8834345027834106e-16
		-7.2149439950632001e-17 0.3755494345951414 0.37554943459514456
		-7.5342264586869175e-17 -1.7555639623939621e-15 0.33957345123124988
		-7.2149439950632001e-17 -0.37554943459514495 0.37554943459514434
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp0_toe04_3_ctl_ofs" -p "rtLegBp0_ctl_data";
	rename -uid "F9ADE4EB-4BC6-9788-F9D3-EC98913471FA";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_toe04_3_ctl" -p "rtLegBp0_toe04_3_ctl_ofs";
	rename -uid "2F6BE8B2-4527-E7EA-B512-C6B1A3EB6769";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe04_3_ctlShape1" -p "rtLegBp0_toe04_3_ctl";
	rename -uid "ADA97A09-45B9-B451-0E70-D3A24D8845C6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.7686486788611678e-15 0.37554943459514312 0.37554943459514317
		1.7654558542249306e-15 -4.3648402405260827e-17 0.33957345123124849
		1.7686486788611678e-15 -0.37554943459514323 0.37554943459514295
		1.7763568394002505e-15 -0.33957345123124999 -3.2834407950595336e-16
		1.7840649999393334e-15 -0.37554943459514323 -0.37554943459514362
		1.7872578245755705e-15 -9.8456584266301007e-17 -0.33957345123124971
		1.7840649999393334e-15 0.37554943459514312 -0.37554943459514384
		1.7763568394002505e-15 0.33957345123124988 -3.922551388305088e-16
		1.7686486788611678e-15 0.37554943459514312 0.37554943459514317
		1.7654558542249306e-15 -4.3648402405260827e-17 0.33957345123124849
		1.7686486788611678e-15 -0.37554943459514323 0.37554943459514295
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp0_toe04_4_ctl_ofs" -p "rtLegBp0_ctl_data";
	rename -uid "001C9C21-4DB3-4CEA-A1A0-5C95CCFE0C5A";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "rtLegBp0_toe04_4_ctl" -p "rtLegBp0_toe04_4_ctl_ofs";
	rename -uid "77F72723-4C57-0655-A84B-3893965DD9BA";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe04_4_ctlShape1" -p "rtLegBp0_toe04_4_ctl";
	rename -uid "BC92278A-4F27-4B85-34AC-AE958CECE93C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.7840649999393334e-15 0.37554943459514323 0.37554943459514456
		-1.7872578245755705e-15 8.5234156417837748e-17 0.33957345123124988
		-1.7840649999393334e-15 -0.37554943459514312 0.37554943459514434
		-1.7763568394002505e-15 -0.33957345123124988 1.0522545096028966e-15
		-1.7686486788611678e-15 -0.37554943459514312 -0.37554943459514223
		-1.7654558542249306e-15 3.0425974556797587e-17 -0.33957345123124832
		-1.7686486788611678e-15 0.37554943459514323 -0.37554943459514245
		-1.7763568394002505e-15 0.33957345123124999 9.8834345027834106e-16
		-1.7840649999393334e-15 0.37554943459514323 0.37554943459514456
		-1.7872578245755705e-15 8.5234156417837748e-17 0.33957345123124988
		-1.7840649999393334e-15 -0.37554943459514312 0.37554943459514434
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp0_anchorF1" -p "master_ctl";
	rename -uid "90127CE1-4EA5-D746-FB2A-A3AC13AD0D57";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "rtLegBp0_anchorF1Shape" -p "rtLegBp0_anchorF1";
	rename -uid "905BE5DE-47AF-FE76-0439-058552B1E8B8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 2.7207911432356067 2.7207911432356067 2.7207911432356067 ;
createNode transform -n "spineQd0_ctl_data" -p "master_ctl";
	rename -uid "F7641C72-4B7C-BFAC-0836-A88771576D6F";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_IK" -p "spineQd0_ctl_data";
	rename -uid "17E4F8FE-4E7A-79B1-99D1-E6A2365A719F";
	setAttr ".t" -type "double3" 2.0724377617666044e-14 50.966770490230111 -12.970689133586692 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_cog_ctl_ofs" -p "spineQd0_IK";
	rename -uid "781E6ADC-46CB-1C0E-C51B-3199F8BB5856";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_cog_ctl" -p "spineQd0_cog_ctl_ofs";
	rename -uid "9C92885A-45DC-9D98-9BB0-8F9FCC9DEA07";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spineQd0_cog_ctlShape1" -p "spineQd0_cog_ctl";
	rename -uid "5E5DD677-4D4F-6CDF-D116-3192DE7B9894";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		1.0244239113205125 23.604392900992448 6.5752034154718313
		1.0244239113205125 26.3519822789888 6.5752034154718313
		1.0244239113205125 27.702088546274492 -1.6201878750922707
		1.0244239113205125 23.604392900992448 -1.6201878750922707
		1.0244239113205125 23.604392900992448 6.5752034154718313
		-1.0244239113205125 23.604392900992448 6.5752034154718313
		-1.0244239113205125 23.604392900992448 -1.6201878750922707
		1.0244239113205125 23.604392900992448 -1.6201878750922707
		1.0244239113205125 27.702088546274492 -1.6201878750922707
		-1.0244239113205125 27.702088546274492 -1.6201878750922707
		-1.0244239113205125 23.604392900992448 -1.6201878750922707
		-1.0244239113205125 27.702088546274492 -1.6201878750922707
		-1.0244239113205125 26.3519822789888 6.5752034154718313
		-1.0244239113205125 23.604392900992448 6.5752034154718313
		1.0244239113205125 23.604392900992448 6.5752034154718313
		1.0244239113205125 26.3519822789888 6.5752034154718313
		-1.0244239113205125 26.3519822789888 6.5752034154718313
		;
createNode transform -n "spineQd0_base_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "8820D215-4784-B735-8764-B8A355BE7F27";
	setAttr ".t" -type "double3" -2.0724377617666044e-14 1.9714511172109468 2.7441693097631035 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_base_ctl" -p "spineQd0_base_ctl_ofs";
	rename -uid "352D424F-4A37-B7DD-85A7-FF988BCB9AA0";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode nurbsCurve -n "spineQd0_base_ctlShape1" -p "spineQd0_base_ctl";
	rename -uid "B77DB2B0-4ACD-7A5B-7AC0-BBA82537982B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		6.0611266858746955 14.339724931271107 -12.815438111045934
		5.2486693612437543e-16 16.850325807821889 -12.815438111045934
		-6.0611266858746955 14.339724931271103 -12.815438111045934
		-8.5717275624254849 4.4435987048979527e-16 2.7209194653243007e-32
		-6.0611266858746955 -6.0611266858746955 -3.7113696975415249e-16
		-8.5863581240107393e-16 -8.5717275624254867 -5.2486693612437582e-16
		6.0611266858746955 -6.0611266858746946 -3.7113696975415249e-16
		8.5717275624254849 -1.1689234612010191e-15 -7.1575918760403665e-32
		6.0611266858746955 14.339724931271107 -12.815438111045934
		5.2486693612437543e-16 16.850325807821889 -12.815438111045934
		-6.0611266858746955 14.339724931271103 -12.815438111045934
		;
createNode transform -n "spineQd0_tangent0_ctl_ofs" -p "spineQd0_base_ctl";
	rename -uid "E76CBC90-41E4-51B6-15E3-AFAA0CC01773";
	setAttr ".t" -type "double3" 2.0733503347351863e-14 -1.9714511172109397 -2.7441693097631035 ;
	setAttr ".r" -type "double3" -35.43667189883584 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_tangent0_ctl" -p "spineQd0_tangent0_ctl_ofs";
	rename -uid "53CC5288-42CA-8C74-C02C-59A3C7D652B4";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "spineQd0_tangent0_ctlShape1" -p "spineQd0_tangent0_ctl";
	rename -uid "2639C9C6-49FC-858B-640B-C3875982F646";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-1.8338013936243856e-07 1.2322040871323336 -0.26366307381276
		-2.2363547836907715e-07 1.3166647344253863 -0.48433048254515232
		-2.3580757472652603e-07 1.2119861371105904 -0.64560119637683044
		-2.1762175168944978e-07 1.089505522247203 -0.69230649437315317
		-1.9200014708764443e-07 0.91694528775061901 -0.69399703241380417
		7.9500698509137748e-08 -0.9115995853977118 -0.71191115713839448
		1.0512230311139547e-07 -1.0841598198942832 -0.71360169517903227
		1.2330812611956642e-07 -1.2066404347576762 -0.66929623326629306
		1.673591356531615e-07 -1.3166647344253863 -0.50525588246374575
		1.8332690250139745e-07 -1.2375497894852439 -0.28328865413774001
		2.3580757478189286e-07 -0.22657247174881093 1.0977069545821589
		2.2455726695124535e-07 -0.11357463461067488 1.2119491310212551
		2.11054486631566e-07 -0.00040070586762584894 1.2588229298146039
		1.8348413846664718e-07 0.11387298351099252 1.2146591754244349
		1.5366131781432324e-07 0.22832276449454209 1.1031270433885261
		-1.8338013936243856e-07 1.2322040871323336 -0.26366307381276
		;
	setAttr ".adot" yes;
createNode joint -n "spineQd0_0_ikj" -p "spineQd0_tangent0_ctl";
	rename -uid "CB1491EE-4D47-69FF-90B8-F1AD894F5C01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" -35.43667189883584 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 35.43667189883584 0 0 ;
	setAttr ".radi" 1.0313147471433626;
createNode transform -n "spineQd0_end_ctl_ofs" -p "spineQd0_base_ctl";
	rename -uid "D4757ABB-4A9E-D3D0-ECBD-49B5A87966DC";
	setAttr ".t" -type "double3" 2.7000623958883807e-15 -2.9879164993694545 -5.0214093457870153 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_end_ctl" -p "spineQd0_end_ctl_ofs";
	rename -uid "7D059803-492B-31C8-3321-EAAA6C7DDCDF";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spineQd0_end_ctlShape1" -p "spineQd0_end_ctl";
	rename -uid "1DB8FA83-454A-ED67-0965-6589F261C7B5";
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
		3.0887793389978406 4.5626081868201647 0
		2.4959833042406796 4.9864833507199906 -0.9569432794299555
		2.4959833042406796 4.9864833507199906 -0.59279603475716147
		2.121585808604578 5.2503329835546708 -0.59279603475716147
		1.6535889390594505 5.4576434093533486 -0.59279603475716147
		1.1231924869083056 5.6272610304613577 -0.59279603475716147
		0.59279603475716147 5.7214930421880332 -0.59279603475716147
		0 5.7403394445333644 -0.59279603475716147
		-0.59279603475716147 5.7214930421880332 -0.59279603475716147
		-1.1231924869083056 5.6272610304613577 -0.59279603475716147
		-1.6535889390594505 5.4576434093533486 -0.59279603475716147
		-2.121585808604578 5.2503329835546708 -0.59279603475716147
		-2.4959833042406796 4.9864833507199906 -0.59279603475716147
		-2.4959833042406796 4.9864833507199906 -0.9569432794299555
		-3.0887793389978406 4.5626081868201647 0
		-2.4959833042406796 4.9864833507199906 0.9569432794299555
		-2.4959833042406796 4.9864833507199906 0.59279603475716147
		-2.121585808604578 5.2503329835546708 0.59279603475716147
		-1.6535889390594505 5.4576434093533486 0.59279603475716147
		-1.1231924869083056 5.6272610304613577 0.59279603475716147
		-0.59279603475716147 5.7214930421880332 0.59279603475716147
		0 5.7403394445333644 0.59279603475716147
		0.59279603475716147 5.7214930421880332 0.59279603475716147
		1.1231924869083056 5.6272610304613577 0.59279603475716147
		1.6535889390594505 5.4576434093533486 0.59279603475716147
		2.121585808604578 5.2503329835546708 0.59279603475716147
		2.4959833042406796 4.9864833507199906 0.59279603475716147
		2.4959833042406796 4.9864833507199906 0.9569432794299555
		3.0887793389978406 4.5626081868201647 0
		;
	setAttr ".adot" yes;
createNode joint -n "spineQd0_two_ikj" -p "spineQd0_base_ctl";
	rename -uid "F5EA5173-49A9-6DBA-B43E-AD87AF131CBE";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 2.0724377617666044e-14 -1.9714511172109468 -2.7441693097631035 ;
	setAttr ".r" -type "double3" -35.436671898835947 -2.1863768924301345e-15 -3.3404700571832018e-15 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 5.1565737357168127;
createNode joint -n "spineQd0_two_ikj_end" -p "spineQd0_two_ikj";
	rename -uid "A760A15D-4CF6-FF76-7D91-CEA536613CC6";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -2.0724377617666047e-14 -1.0036002583264008 25.755848826088489 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 5.1565737357168127;
createNode transform -n "spineQd0_loc2" -p "spineQd0_two_ikj_end";
	rename -uid "B8842E66-4C09-5D0F-F688-E6BCB5916791";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.0313890415143156e-14 0.54003377163004274 -12.877347250728167 ;
	setAttr ".r" -type "double3" 4.4812366107786596 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_loc2Shape" -p "spineQd0_loc2";
	rename -uid "9F2B283D-4EA8-947F-3D19-82B0196EE832";
	setAttr -k off ".v";
createNode ikEffector -n "effector44" -p "spineQd0_two_ikj";
	rename -uid "2FA293EF-49B6-5642-F912-0FB6BEC2E5BB";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "spineQd0_loc1" -p "spineQd0_base_ctl";
	rename -uid "877C4EC6-45E9-0DDF-B045-F9A4A3F5C93F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.0313890415143153e-14 5.1178458246573157 8.0174553623839202 ;
	setAttr ".r" -type "double3" -30.955435288057288 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_loc1Shape" -p "spineQd0_loc1";
	rename -uid "BED16F0C-46D5-B0FD-BCA6-9A9C8772C565";
	setAttr -k off ".v";
createNode transform -n "spineQd0_mid_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "5054BEC9-4109-2C9D-7F5C-F7A7D21A2EE1";
	setAttr ".t" -type "double3" -1.0410487202522891e-14 7.0892969418682625 10.761624672147024 ;
	setAttr ".r" -type "double3" -30.955435288057288 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_mid_ctl_ofs1" -p "spineQd0_mid_ctl_ofs";
	rename -uid "BC1589B4-4CEA-B9FB-C2D4-F4A4A90C96C2";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_mid_ctl_ofs2" -p "spineQd0_mid_ctl_ofs1";
	rename -uid "4DBC0879-4DC7-5879-0548-A6ADAC26C1E3";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_mid_ctl" -p "spineQd0_mid_ctl_ofs2";
	rename -uid "5D8971CA-4B54-2A80-51DA-C3B828EDE13C";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spineQd0_mid_ctlShape1" -p "spineQd0_mid_ctl";
	rename -uid "DBCDC34B-49E0-AF3E-5A00-E9AA814B9E27";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		6.0611266858746955 6.0611266858746964 3.7113696975415259e-16
		5.2486693612437543e-16 8.5717275624254814 5.2486693612437543e-16
		-6.0611266858746955 6.0611266858746946 3.7113696975415249e-16
		-8.5717275624254849 4.4435987048979527e-16 2.7209194653243007e-32
		-6.0611266858746955 -6.0611266858746955 -3.7113696975415249e-16
		-8.5863581240107393e-16 -8.5717275624254867 -5.2486693612437582e-16
		6.0611266858746955 -6.0611266858746946 -3.7113696975415249e-16
		8.5717275624254849 -1.1689234612010191e-15 -7.1575918760403665e-32
		6.0611266858746955 6.0611266858746964 3.7113696975415259e-16
		5.2486693612437543e-16 8.5717275624254814 5.2486693612437543e-16
		-6.0611266858746955 6.0611266858746946 3.7113696975415249e-16
		;
createNode joint -n "spineQd0_1_ikj" -p "spineQd0_mid_ctl";
	rename -uid "766D0A6F-4168-3055-5049-EFA7A9025F18";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" -30.955435288057277 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 30.955435288057288 0 0 ;
	setAttr ".radi" 1.0313147471433626;
createNode transform -n "spineQd0_fore_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "BB542FC2-47AA-BFF3-3D5A-659D7688E081";
	setAttr ".t" -type "double3" -2.0724377617666038e-14 14.115622357953846 21.566644794183212 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_fore_ctl" -p "spineQd0_fore_ctl_ofs";
	rename -uid "A04DF2B4-4D61-5F7F-4E81-0AB5325FE665";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode nurbsCurve -n "spineQd0_fore_ctlShape1" -p "spineQd0_fore_ctl";
	rename -uid "C6660CAD-4067-F917-DA26-DDA554F257FC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		6.0611266858746955 14.869000742138823 -7.2750408136062052
		5.2486693612437543e-16 17.379601618689605 -7.2750408136062052
		-6.0611266858746955 14.86900074213882 -7.2750408136062052
		-8.5717275624254849 4.4435987048979527e-16 2.7209194653243007e-32
		-6.0611266858746955 -6.0611266858746955 -3.7113696975415249e-16
		-8.5863581240107393e-16 -8.5717275624254867 -5.2486693612437582e-16
		6.0611266858746955 -6.0611266858746946 -3.7113696975415249e-16
		8.5717275624254849 -1.1689234612010191e-15 -7.1575918760403665e-32
		6.0611266858746955 14.869000742138823 -7.2750408136062052
		5.2486693612437543e-16 17.379601618689605 -7.2750408136062052
		-6.0611266858746955 14.86900074213882 -7.2750408136062052
		;
createNode transform -n "spineQd0_tangent1_ctl_ofs" -p "spineQd0_fore_ctl";
	rename -uid "1AAC620C-4A19-1196-2657-B48A08BC0961";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_tangent1_ctl" -p "spineQd0_tangent1_ctl_ofs";
	rename -uid "360B578B-432D-62E5-0C0E-848565D004A9";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "spineQd0_tangent1_ctlShape1" -p "spineQd0_tangent1_ctl";
	rename -uid "88EFDBEC-4378-1583-FAF3-A0980F527A15";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-1.8338013936243856e-07 -1.2322040871323336 0.26366307381276016
		-2.2363547836907715e-07 -1.3166647344253863 0.48433048254515254
		-2.3580757472652603e-07 -1.2119861371105904 0.64560119637683056
		-2.1762175168944978e-07 -1.089505522247203 0.69230649437315328
		-1.9200014708764443e-07 -0.9169452877506189 0.69399703241380428
		7.9500698509137748e-08 0.91159958539771191 0.71191115713839437
		1.0512230311139547e-07 1.0841598198942832 0.71360169517903216
		1.2330812611956642e-07 1.2066404347576762 0.66929623326629295
		1.673591356531615e-07 1.3166647344253863 0.50525588246374553
		1.8332690250139745e-07 1.2375497894852439 0.28328865413773985
		2.3580757478189286e-07 0.22657247174881079 -1.0977069545821589
		2.2455726695124535e-07 0.11357463461067474 -1.2119491310212551
		2.11054486631566e-07 0.00040070586762569482 -1.2588229298146039
		1.8348413846664718e-07 -0.11387298351099268 -1.2146591754244349
		1.5366131781432324e-07 -0.22832276449454222 -1.1031270433885261
		-1.8338013936243856e-07 -1.2322040871323336 0.26366307381276016
		;
	setAttr ".adot" yes;
createNode joint -n "spineQd0_2_ikj" -p "spineQd0_tangent1_ctl";
	rename -uid "230F04C7-43FA-0983-8CE8-E3A9C22654A1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".radi" 1.0313147471433626;
createNode ikHandle -n "spineQd0_two_ikj_ikh" -p "spineQd0_tangent1_ctl";
	rename -uid "CC8C2684-4D70-02F1-C286-14B3FACF3F83";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -9.4663308626521417e-30 0 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" -35.436671898835975 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "spineQd0_anchorToRbj" -p "spineQd0_fore_ctl";
	rename -uid "DF2EA79D-4929-EB0F-A454-6BACCDAE6C48";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorToRbjShape" -p "spineQd0_anchorToRbj";
	rename -uid "BAF761C9-4AB5-EFFD-00BC-5EAC6CF69490";
	setAttr -k off ".v";
createNode transform -n "neckQd0_cog_ctl_SPACE_1_ofs" -p "spineQd0_fore_ctl";
	rename -uid "39340112-47C3-37A2-E841-C5A5BBB62F35";
	setAttr ".t" -type "double3" -4.1604042047768869e-05 1.1294366449805011 1.0802480500664835 ;
	setAttr ".r" -type "double3" -39.718114652890492 0 0 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_1" -p "neckQd0_cog_ctl_SPACE_1_ofs";
	rename -uid "078B0413-434E-5674-7743-8A96B54E1CEC";
	setAttr ".t" -type "double3" -6.7762635780344027e-21 0 0 ;
createNode transform -n "head0_head_fkc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "3A7A1187-4AF0-98C9-FE38-0A9476A09F43";
	setAttr ".t" -type "double3" -4.9146087048070055e-14 22.966738545796368 30.951754516975733 ;
createNode transform -n "head0_head_fkc_SPACE_2" -p "head0_head_fkc_SPACE_2_ofs";
	rename -uid "E9AA3B7E-4E2B-01A0-D45C-9F9E6F097B0C";
createNode transform -n "lfArmBp0_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "CAD61BC3-47A2-7776-F73B-ED97B4D83889";
	setAttr ".t" -type "double3" 9.7238019305171068 -35.979195653590992 34.693119103780006 ;
	setAttr ".r" -type "double3" 12.690821861900876 -13.480709470976148 -93.893558422799202 ;
createNode transform -n "lfArmBp0_ikc_SPACE_2" -p "lfArmBp0_ikc_SPACE_2_ofs";
	rename -uid "FF57FB57-48B7-F2F5-9F90-908DF9E7F623";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 0 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "lfArmBp0_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "7C65783D-427B-5ED4-98E6-709B3769E883";
	setAttr ".t" -type "double3" 15.727025777833829 -21.397610155122074 8.279032971196342 ;
	setAttr ".r" -type "double3" -11.310732945752269 -12.163396436862797 0 ;
createNode transform -n "lfArmBp0_pvc_SPACE_3" -p "lfArmBp0_pvc_SPACE_3_ofs";
	rename -uid "FC989594-4189-15B2-453B-B6968BC90878";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 -1.1102230246251565e-15 ;
createNode transform -n "lfLegBp0_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "1C7E612A-46CF-9523-5812-09BA5175E663";
	setAttr ".t" -type "double3" 9.8703472642102721 -46.811711908662154 -9.9334093188594395 ;
createNode transform -n "lfLegBp0_ikc_SPACE_2" -p "lfLegBp0_ikc_SPACE_2_ofs";
	rename -uid "593FBC00-44F8-8F2F-E369-B6B91EBA03A1";
createNode transform -n "lfLegBp0_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "EAA8FC1D-48A9-A37E-1EB5-B183A6561150";
	setAttr ".t" -type "double3" 22.210413057416865 -24.822654796468139 21.655359312698941 ;
	setAttr ".r" -type "double3" -1.6673767571120408 22.913190369300132 7.4728137005945011e-06 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "lfLegBp0_pvc_SPACE_3" -p "lfLegBp0_pvc_SPACE_3_ofs";
	rename -uid "9B5B1E0F-4F3D-B2FF-7A8C-978210F8EF0B";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 3.5527136788005009e-15 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "88830968-4886-3B4A-E4A6-D3B3695CA6A3";
	setAttr ".t" -type "double3" -4.1604042073947025e-05 20.429491325466593 28.88755609760485 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_2" -p "neckQd0_fore_ctl_SPACE_2_ofs";
	rename -uid "89F635D0-4F1A-CC78-03EE-0F847D02DBC2";
createNode transform -n "neckQd0_cog_ctl_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "8D30A29F-438B-3BAA-9545-D89A43543EBA";
	setAttr ".t" -type "double3" -4.1604042068493244e-05 15.245059002934347 22.646892844249695 ;
	setAttr ".r" -type "double3" -39.718114652890492 0 0 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_2" -p "neckQd0_cog_ctl_SPACE_2_ofs";
	rename -uid "47E95DB5-499B-F671-6B06-2592D2870D42";
	setAttr ".t" -type "double3" -6.7762635780344027e-21 0 0 ;
createNode transform -n "rtArmBp0_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "DFF561D6-4C34-EFAD-F0C8-F38410D0297D";
	setAttr ".t" -type "double3" -9.7238018710279395 -35.979194892575549 34.693118984859382 ;
	setAttr ".r" -type "double3" -167.30917788057499 13.480709559118871 93.893558589383062 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtArmBp0_ikc_SPACE_2" -p "rtArmBp0_ikc_SPACE_2_ofs";
	rename -uid "77E008FB-454B-EA76-5B07-728079F99912";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999933 ;
createNode transform -n "rtArmBp0_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "113ED5DF-40C4-23D7-55AD-E78A65913DC9";
	setAttr ".t" -type "double3" -15.559658358416955 -21.238731166127355 9.0555394581622028 ;
	setAttr ".r" -type "double3" -11.310734760043184 12.163396637700897 2.0334972671381305e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "rtArmBp0_pvc_SPACE_3" -p "rtArmBp0_pvc_SPACE_3_ofs";
	rename -uid "890380DB-488A-42DA-6FD3-60986BF79AF3";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 7.1054273576010019e-15 8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegBp0_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "3B037A53-409F-7F0D-6DC3-A1835D7D63CF";
	setAttr ".t" -type "double3" -9.8703472642103218 -46.811712004785818 -9.9334093188594075 ;
createNode transform -n "rtLegBp0_ikc_SPACE_2" -p "rtLegBp0_ikc_SPACE_2_ofs";
	rename -uid "4A9E7181-4BA8-C0F6-6EAF-51869F2A6E80";
createNode transform -n "rtLegBp0_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "AC5D7CAC-4F17-804D-0281-228BFB4012AB";
	setAttr ".t" -type "double3" -22.210413057983793 -24.82265449946204 21.655359314038744 ;
	setAttr ".r" -type "double3" -1.6673795853424609 -22.913190168935071 5.3953309619914356e-17 ;
createNode transform -n "rtLegBp0_pvc_SPACE_3" -p "rtLegBp0_pvc_SPACE_3_ofs";
	rename -uid "9680F285-4F2E-1487-23BF-559DB04E77AC";
	setAttr ".t" -type "double3" 0 0 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "spineQd0_setting" -p "spineQd0_IK";
	rename -uid "F9C1F9AB-4DDC-1796-F33F-CC840F5AB2F7";
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
	rename -uid "004CC6A7-4432-B4FF-FABC-C09CF033BE1A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-1.9337151508938049 2.5782868678584063 4.8139802405232472e-17
		-1.8965593450850478 2.5782868678584063 -0.377249103179714
		-1.7865198409824996 2.5782868678584063 -0.74000077370375228
		-1.607825423349988 2.5782868678584063 -1.0743145536311463
		-1.3673430957307782 2.5782868678584063 -1.3673430957307782
		-1.0743145536311463 2.5782868678584063 -1.607825423349988
		-0.74000077370375228 2.5782868678584063 -1.7865198409824996
		-0.377249103179714 2.5782868678584063 -1.8965593450850478
		1.1840590354841617e-16 2.5782868678584063 -1.9337151508938049
		0.377249103179714 2.5782868678584063 -1.8965593450850478
		0.74000077370375228 2.5782868678584063 -1.7865198409824996
		1.0743145536311463 2.5782868678584063 -1.607825423349988
		1.3673430957307782 2.5782868678584063 -1.3673430957307782
		1.607825423349988 2.5782868678584063 -1.0743145536311463
		1.7865198409824996 2.5782868678584063 -0.74000077370375228
		1.8965593450850478 2.5782868678584063 -0.377249103179714
		1.9337151508938049 2.5782868678584063 -2.0915392343739054e-16
		1.8601175881448762 2.5782868678584063 -0.37000036380019519
		1.6505291233122916 2.5782868678584063 -0.68367154786538908
		1.3368578931437358 2.5782868678584063 -0.8932599204912498
		0.96685757544690243 2.5782868678584063 -0.96685757544690243
		0.59685721164670724 2.5782868678584063 -0.8932599204912498
		0.28318602758151346 2.5782868678584063 -0.68367154786538908
		0.073597654955652625 2.5782868678584063 -0.37000036380019519
		0 2.5782868678584063 -2.0915392343739054e-16
		-0.073597654955652625 2.5782868678584063 0.37000036380019519
		-0.28318602758151346 2.5782868678584063 0.68367154786538908
		-0.59685721164670724 2.5782868678584063 0.8932599204912498
		-0.96685757544690243 2.5782868678584063 0.96685757544690243
		-1.3368578931437358 2.5782868678584063 0.8932599204912498
		-1.6505291233122916 2.5782868678584063 0.68367154786538908
		-1.8601175881448762 2.5782868678584063 0.37000036380019519
		-1.9337151508938049 2.5782868678584063 4.8139802405232472e-17
		-1.8965593450850478 2.5782868678584063 0.377249103179714
		-1.7865198409824996 2.5782868678584063 0.74000077370375228
		-1.607825423349988 2.5782868678584063 1.0743145536311463
		-1.3673430957307782 2.5782868678584063 1.3673430957307782
		-1.0743145536311463 2.5782868678584063 1.607825423349988
		-0.74000077370375228 2.5782868678584063 1.7865198409824996
		-0.377249103179714 2.5782868678584063 1.8965593450850478
		-2.2574865772785672e-16 2.5782868678584063 1.9337151508938049
		0.377249103179714 2.5782868678584063 1.8965593450850478
		0.74000077370375228 2.5782868678584063 1.7865198409824996
		1.0743145536311463 2.5782868678584063 1.607825423349988
		1.3673430957307782 2.5782868678584063 1.3673430957307782
		1.607825423349988 2.5782868678584063 1.0743145536311463
		1.7865198409824996 2.5782868678584063 0.74000077370375228
		1.8965593450850478 2.5782868678584063 0.377249103179714
		1.9337151508938049 2.5782868678584063 -2.0915392343739054e-16
		;
	setAttr ".adot" yes;
createNode transform -n "spineQd0_anchorM1" -p "master_ctl";
	rename -uid "6A1CD973-4F6B-8F6B-DEAE-82B18589ADF6";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorM1Shape" -p "spineQd0_anchorM1";
	rename -uid "BCBFD104-4030-6668-B2D7-F7900D19B5DB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 3.8674303017876097 3.8674303017876097 3.8674303017876097 ;
createNode transform -n "spineQd0_anchorM2" -p "master_ctl";
	rename -uid "3A726AED-472D-9376-F536-A0B6BB4F68D8";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorM2Shape" -p "spineQd0_anchorM2";
	rename -uid "92C30D9C-4E2F-8E70-5080-5C9D214E1285";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 3.8674303017876097 3.8674303017876097 3.8674303017876097 ;
createNode transform -n "head0_head_fkc_SPACE_3_ofs" -p "master_ctl";
	rename -uid "8364886E-44B6-8105-1B4B-A8801A8A4918";
	setAttr ".t" -type "double3" -2.8421709430404007e-14 73.933509036026479 17.981065383389041 ;
createNode transform -n "head0_head_fkc_SPACE_3" -p "head0_head_fkc_SPACE_3_ofs";
	rename -uid "63222C43-4070-BB2D-0E5F-B5AB87799E52";
createNode transform -n "lfArmBp0_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "5D1F34E3-44EE-F7BD-5DC8-D3A2CD753095";
	setAttr ".t" -type "double3" 9.7238019305171282 14.987574836639116 21.722429970193311 ;
	setAttr ".r" -type "double3" 12.690821861900876 -13.480709470976148 -93.893558422799202 ;
createNode transform -n "lfArmBp0_ikc_SPACE_1" -p "lfArmBp0_ikc_SPACE_1_ofs";
	rename -uid "A9E565BF-4E7D-A0BC-CAE3-D9819D31446D";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 0 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "lfArmBp0_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "59565393-444C-1493-E6F4-B6985F684C26";
	setAttr ".t" -type "double3" 15.72702577783385 29.569160335108037 -4.6916561623903501 ;
	setAttr ".r" -type "double3" -11.310732945752269 -12.163396436862797 0 ;
createNode transform -n "lfArmBp0_pvc_SPACE_2" -p "lfArmBp0_pvc_SPACE_2_ofs";
	rename -uid "5B62EEFE-4420-D640-64E1-1CAB14585989";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 -1.1102230246251565e-15 ;
createNode transform -n "lfLegBp0_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "ED3ADF62-4591-E9A8-98A6-A7A97BCDB538";
	setAttr ".t" -type "double3" 9.8703472642102934 4.1550585815679568 -22.904098452446132 ;
createNode transform -n "lfLegBp0_ikc_SPACE_1" -p "lfLegBp0_ikc_SPACE_1_ofs";
	rename -uid "60760785-4D44-EE70-0556-B1B4572B10BB";
createNode transform -n "lfLegBp0_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "A586090D-4872-FD24-633C-48BE04B4905B";
	setAttr ".t" -type "double3" 22.210413057416886 26.144115693761972 8.6846701791122491 ;
	setAttr ".r" -type "double3" -1.6673767571120401 22.913190369300132 7.4728137005945011e-06 ;
createNode transform -n "lfLegBp0_pvc_SPACE_2" -p "lfLegBp0_pvc_SPACE_2_ofs";
	rename -uid "AB384B5F-4434-574E-3C86-DFA52BD2A8DD";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 3.5527136788005009e-15 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_3_ofs" -p "master_ctl";
	rename -uid "BE2424F1-4D28-A33C-9B55-AB9166FF5096";
	setAttr ".t" -type "double3" -4.1604042053222649e-05 71.396261815696704 15.916866964018158 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_3" -p "neckQd0_fore_ctl_SPACE_3_ofs";
	rename -uid "D193B9EB-461C-EEE1-D116-B181AC63CD8D";
createNode transform -n "neckQd0_cog_ctl_SPACE_3_ofs" -p "master_ctl";
	rename -uid "5C55684C-4D35-DB98-47F9-D69EFD07EFEE";
	setAttr ".t" -type "double3" -4.1604042047768869e-05 66.211829493164458 9.6762037106630032 ;
	setAttr ".r" -type "double3" -39.718114652890492 0 0 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_3" -p "neckQd0_cog_ctl_SPACE_3_ofs";
	rename -uid "46B5B7A5-4EAC-A536-C3B1-5686942BF635";
	setAttr ".t" -type "double3" -6.7762635780344027e-21 0 0 ;
createNode transform -n "rtArmBp0_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "BDD43A0B-4605-6528-DEBC-6FB514AA12D8";
	setAttr ".t" -type "double3" -9.7238018710279182 14.987575597654558 21.722429851272686 ;
	setAttr ".r" -type "double3" -167.30917788057499 13.480709559118877 93.893558589383062 ;
createNode transform -n "rtArmBp0_ikc_SPACE_1" -p "rtArmBp0_ikc_SPACE_1_ofs";
	rename -uid "C962EB33-43B1-6E3A-5E7B-D39EF2F8910A";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999933 ;
createNode transform -n "rtArmBp0_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "EA5DC709-4BF4-3FD3-845F-4E8E93BCBF3B";
	setAttr ".t" -type "double3" -15.559658358416934 29.728039324102756 -3.9151496754244892 ;
	setAttr ".r" -type "double3" -11.310734760043184 12.163396637700897 2.0334972671381305e-16 ;
createNode transform -n "rtArmBp0_pvc_SPACE_2" -p "rtArmBp0_pvc_SPACE_2_ofs";
	rename -uid "EB8544DE-4F96-E8FF-D0F3-8495C31519DA";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 7.1054273576010019e-15 8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegBp0_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "89406EE7-437E-C725-9DB5-61B60ADD1508";
	setAttr ".t" -type "double3" -9.8703472642103005 4.1550584854442896 -22.9040984524461 ;
createNode transform -n "rtLegBp0_ikc_SPACE_1" -p "rtLegBp0_ikc_SPACE_1_ofs";
	rename -uid "8E20253E-4EB3-6B1B-65F3-3EA907EF3DA0";
createNode transform -n "rtLegBp0_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "B80EB0B4-4290-F72E-648A-78B4CD05454B";
	setAttr ".t" -type "double3" -22.210413057983772 26.144115990768071 8.6846701804520521 ;
	setAttr ".r" -type "double3" -1.6673795853424609 -22.913190168935071 5.3953309619914356e-17 ;
createNode transform -n "rtLegBp0_pvc_SPACE_2" -p "rtLegBp0_pvc_SPACE_2_ofs";
	rename -uid "319B86D7-4597-7941-4B02-D5AD4DE11EFD";
	setAttr ".t" -type "double3" 0 0 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode nurbsCurve -n "master1_ctlShape" -p "master1_ctl";
	rename -uid "A7A4EE34-41FF-FED6-3304-10B13C648871";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -61.468168240981967 0 61.468168240981946 
		-7.0250905304175651e-14 0 86.929117180627742 61.468168240981953 0 61.468168240981903 
		86.929117180627799 0 -2.7515637221014594e-14 61.468168240981953 0 -61.468168240981925 
		-5.6220282927248564e-14 0 -86.92911718062777 -61.468168240981967 0 -61.468168240981896 
		-86.929117180627799 0 -4.3876551023368459e-14 0 0 0 0 0 0 0 0 0;
createNode nurbsCurve -n "master1_ctlShapeOrig" -p "master1_ctl";
	rename -uid "6CEC5C7F-47FB-2E84-2036-2FB9F8DE1C22";
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
	rename -uid "08A8AF7F-42D9-53C3-D614-7DBB03C814DB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".tw" yes;
	setAttr -s 45 ".cp[0:44]" -type "double3" -1.0694293608256412e-13 0 
		93.814436743893538 13.351186392906467 0 92.859541047088328 24.051945977966781 0 81.913405487615449 
		35.464624902337377 0 77.65669632711689 46.155346335229353 0 71.819120772817683 55.906478017763718 
		0 64.519515028825623 64.519515028825623 0 55.906478017763718 71.819120772817683 0 
		46.155346335229368 77.656696327116862 0 35.46462490233742 81.913405487615421 0 24.051945977966795 
		92.8595410470883 0 13.351186392906481 93.81443674389341 0 -8.6342038200505458e-14 
		92.859541047088271 0 -13.351186392906623 81.913405487615421 0 -24.051945977966902 
		77.656696327116862 0 -35.464624902337533 71.819120772817683 0 -46.155346335229439 
		64.519515028825595 0 -55.906478017763746 55.906478017763675 0 -64.519515028825595 
		46.155346335229339 0 -71.819120772817683 35.464624902337349 0 -77.656696327116833 
		24.051945977966774 0 -81.913405487615393 13.351186392906465 0 -92.859541047088271 
		-1.0326560219399033e-13 0 -93.814436743893395 -13.351186392906623 0 -92.859541047088271 
		-24.051945977966916 0 -81.913405487615393 -35.464624902337498 0 -77.656696327116833 
		-46.155346335229439 0 -71.819120772817655 -55.906478017763718 0 -64.519515028825523 
		-64.519515028825538 0 -55.906478017763718 -71.819120772817683 0 -46.155346335229424 
		-77.656696327116833 0 -35.464624902337462 -81.913405487615307 0 -24.051945977966888 
		-92.859541047088186 0 -13.351186392906584 -93.814436743893339 0 -6.9188382546017088e-14 
		-92.859541047088186 0 13.351186392906481 -81.913405487615307 0 24.051945977966788 
		-77.656696327116833 0 35.464624902337377 -71.819120772817598 0 46.155346335229332 
		-64.519515028825452 0 55.906478017763632 -55.906478017763632 0 64.519515028825452 
		-46.155346335229368 0 71.819120772817598 -35.464624902337491 0 77.656696327116805 
		-24.051945977966902 0 81.913405487615307 -13.351186392906595 0 92.859541047088072 
		-8.8715820232384685e-14 0 93.814436743893225;
createNode nurbsCurve -n "master2_ctlShapeOrig" -p "master2_ctl";
	rename -uid "1E112482-48CF-7958-1FF2-809638636B53";
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
createNode unitConversion -n "unitConversion127";
	rename -uid "B01B2D13-4DD1-8D01-A43B-7A8579D3A42B";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion298";
	rename -uid "CD4471E1-47BC-900A-3A4D-2CB75F8D895D";
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
	setAttr -s 9 ".st";
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
	setAttr -s 12 ".s";
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
	setAttr -s 2 ".u";
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
	setAttr -s 2 ".dsm";
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
	setAttr -s 40 ".hyp";
connectAttr "master2_ctl.sy" "master_ctl.globalScale" -l on;
connectAttr "master_ctlShapeOrig.ws" "master_ctlShape.cr";
connectAttr "lfArmBp0_clavicle_fk.s" "lfArmBp0_upr_fk.is";
connectAttr "lfArmBp0_upr_fk.s" "lfArmBp0_lwr_fk.is";
connectAttr "lfArmBp0_lwr_fk.s" "lfArmBp0_palm_fk.is";
connectAttr "lfArmBp0_palm_fk.s" "lfArmBp0_ball_fk.is";
connectAttr "lfArmBp0_setting.fkIkBlend" "lfArmBp0_clavicle_fkc.fkIkBlend";
connectAttr "lfArmBp0_setting.fkIkBlend" "lfArmBp0_upr_fkc.fkIkBlend";
connectAttr "lfArmBp0_setting.fkIkBlend" "lfArmBp0_lwr_fkc.fkIkBlend";
connectAttr "lfArmBp0_palm_ikc.palmRoll" "lfArmBp0_palm_fkc.palmRoll";
connectAttr "lfArmBp0_palm_ikc.palmBank" "lfArmBp0_palm_fkc.palmBank";
connectAttr "lfArmBp0_setting.fkIkBlend" "lfArmBp0_palm_fkc.fkIkBlend";
connectAttr "lfArmBp0_clavicle_ik.s" "lfArmBp0_upr_ik.is";
connectAttr "lfArmBp0_upr_ik.s" "lfArmBp0_lwr_ik.is";
connectAttr "lfArmBp0_lwr_ik.s" "lfArmBp0_palm_ik.is";
connectAttr "lfArmBp0_palm_ik.s" "lfArmBp0_ball_ik.is";
connectAttr "lfArmBp0_palm_ik.tx" "effector1.tx";
connectAttr "lfArmBp0_palm_ik.ty" "effector1.ty";
connectAttr "lfArmBp0_palm_ik.tz" "effector1.tz";
connectAttr "lfArmBp0_palm_ik.opm" "effector1.opm";
connectAttr "lfArmBp0_clavicle_ik.s" "lfArmBp0_softJ.is";
connectAttr "lfArmBp0_softJ.s" "lfArmBp0_softJ_end.is";
connectAttr "lfArmBp0_softJ_end.tx" "effector2.tx";
connectAttr "lfArmBp0_softJ_end.ty" "effector2.ty";
connectAttr "lfArmBp0_softJ_end.tz" "effector2.tz";
connectAttr "lfArmBp0_softJ_end.opm" "effector2.opm";
connectAttr "lfArmBp0_clavicle_ik.s" "lfArmBp0_pvChainJ.is";
connectAttr "lfArmBp0_pvChainJ.s" "lfArmBp0_pvChainJ_end.is";
connectAttr "lfArmBp0_pvChainJ_end.tx" "effector4.tx";
connectAttr "lfArmBp0_pvChainJ_end.ty" "effector4.ty";
connectAttr "lfArmBp0_pvChainJ_end.tz" "effector4.tz";
connectAttr "lfArmBp0_pvChainJ_end.opm" "effector4.opm";
connectAttr "lfArmBp0_setting.fkIkBlend" "lfArmBp0_ikCstG.v";
connectAttr "lfArmBp0_upr_ik.msg" "lfArmBp0_1_ikh.hsj";
connectAttr "effector1.hp" "lfArmBp0_1_ikh.hee";
connectAttr "lfArmBp0_setting.fkIkBlend" "lfArmBp0_line_8.v";
connectAttr "lfArmBp0_setting.fkIkBlend" "lfArmBp0_ikc.fkIkBlend";
connectAttr "lfArmBp0_setting.fkIkBlend" "lfArmBp0_ikc.v" -l on;
connectAttr "lfArmBp0_setting.fkIkBlend" "lfArmBp0_pvc.fkIkBlend";
connectAttr "lfArmBp0_setting.fkIkBlend" "lfArmBp0_pvc.v" -l on;
connectAttr "lfArmBp0_palm_ikc.palmRoll" "lfArmBp0_pin_fkc.palmRoll";
connectAttr "lfArmBp0_palm_ikc.palmBank" "lfArmBp0_pin_fkc.palmBank";
connectAttr "lfArmBp0_setting.fkIkBlend" "lfArmBp0_pin_fkc.fkIkBlend";
connectAttr "lfArmBp0_pvc.fkPin" "lfArmBp0_pin_fkc.v";
connectAttr "lfArmBp0_setting.fkIkBlend" "lfArmBp0_palm_ikc.fkIkBlend";
connectAttr "lfArmBp0_ikc.v" "lfArmBp0_palm_ikc.v" -l on;
connectAttr "lfArmBp0_clavicle_bf.s" "lfArmBp0_upr_bf.is";
connectAttr "lfArmBp0_upr_bf.s" "lfArmBp0_lwr_bf.is";
connectAttr "lfArmBp0_lwr_bf.s" "lfArmBp0_palm_bf.is";
connectAttr "lfArmBp0_palm_bf.s" "lfArmBp0_ball_bf.is";
connectAttr "lfHand0_smart_ctl.showCtls" "lfHand0_fgr00_1_ctl.v" -l on;
connectAttr "lfHand0_smart_ctl.showCtls" "lfHand0_fgr01_1_ctl.v" -l on;
connectAttr "lfHand0_smart_ctl.showCtls" "lfHand0_fgr02_1_ctl.v" -l on;
connectAttr "lfHand0_smart_ctl.showCtls" "lfHand0_fgr03_1_ctl.v" -l on;
connectAttr "lfHand0_smart_ctl.showCtls" "lfHand0_fgr04_1_ctl.v" -l on;
connectAttr "lfHand0_grp.ry" "lfHand0_fgr00_2_ikc_ofs1.ry";
connectAttr "lfHand0_grp.ry" "lfHand0_fgr01_2_ikc_ofs1.ry";
connectAttr "lfHand0_grp.ry" "lfHand0_fgr02_2_ikc_ofs1.ry";
connectAttr "lfHand0_grp.ry" "lfHand0_fgr03_2_ikc_ofs1.ry";
connectAttr "lfHand0_grp.ry" "lfHand0_fgr04_2_ikc_ofs1.ry";
connectAttr "lfLegBp0_setting.moduleScale" "lfLegBp0_ctl_data.sy";
connectAttr "lfLegBp0_setting.moduleScale" "lfLegBp0_ctl_data.sx";
connectAttr "lfLegBp0_setting.moduleScale" "lfLegBp0_ctl_data.sz";
connectAttr "lfLegBp0_hip_fk.s" "lfLegBp0_upr_fk.is";
connectAttr "lfLegBp0_upr_fk.s" "lfLegBp0_lwr_fk.is";
connectAttr "lfLegBp0_lwr_fk.s" "lfLegBp0_palm_fk.is";
connectAttr "lfLegBp0_palm_fk.s" "lfLegBp0_ball_fk.is";
connectAttr "lfLegBp0_ball_fk.s" "lfLegBp0_tip_fk.is";
connectAttr "lfLegBp0_setting.fkIkBlend" "lfLegBp0_upr_fkc.fkIkBlend";
connectAttr "lfLegBp0_setting.fkIkBlend" "lfLegBp0_lwr_fkc.fkIkBlend";
connectAttr "lfLegBp0_setting.fkIkBlend" "lfLegBp0_palm_fkc.fkIkBlend";
connectAttr "lfLegBp0_setting.palmScale" "lfLegBp0_ball_fkc_ofs.sx";
connectAttr "lfLegBp0_setting.palmScale" "lfLegBp0_ball_fkc_ofs.sy";
connectAttr "lfLegBp0_setting.palmScale" "lfLegBp0_ball_fkc_ofs.sz";
connectAttr "lfLegBp0_setting.fkIkBlend" "lfLegBp0_ball_fkc.fkIkBlend";
connectAttr "lfLegBp0_ball_fkc.ry" "lfLegBp0_toe00_2_ikc_ofs1.ry";
connectAttr "lfLegBp0_ball_fkc.ry" "lfLegBp0_toe01_2_ikc_ofs1.ry";
connectAttr "lfLegBp0_ball_fkc.ry" "lfLegBp0_toe02_2_ikc_ofs1.ry";
connectAttr "lfLegBp0_ball_fkc.ry" "lfLegBp0_toe03_2_ikc_ofs1.ry";
connectAttr "lfLegBp0_ball_fkc.ry" "lfLegBp0_toe04_2_ikc_ofs1.ry";
connectAttr "lfLegBp0_setting.fkIkBlend" "lfLegBp0_hip_fkc.fkIkBlend";
connectAttr "lfLegBp0_autoAim.s" "lfLegBp0_autoAim_end.is";
connectAttr "lfLegBp0_autoAim_end.tx" "effector14.tx";
connectAttr "lfLegBp0_autoAim_end.ty" "effector14.ty";
connectAttr "lfLegBp0_autoAim_end.tz" "effector14.tz";
connectAttr "lfLegBp0_autoAim_end.opm" "effector14.opm";
connectAttr "lfLegBp0_hip_ik.s" "lfLegBp0_upr_ik.is";
connectAttr "lfLegBp0_upr_ik.s" "lfLegBp0_lwr_ik.is";
connectAttr "lfLegBp0_lwr_ik.s" "lfLegBp0_palm_ik.is";
connectAttr "lfLegBp0_palm_ik.s" "lfLegBp0_ball_ik.is";
connectAttr "lfLegBp0_ball_ik.s" "lfLegBp0_tip_ik.is";
connectAttr "lfLegBp0_tip_ik.tx" "effector12.tx";
connectAttr "lfLegBp0_tip_ik.ty" "effector12.ty";
connectAttr "lfLegBp0_tip_ik.tz" "effector12.tz";
connectAttr "lfLegBp0_tip_ik.opm" "effector12.opm";
connectAttr "lfLegBp0_ball_ik.tx" "effector11.tx";
connectAttr "lfLegBp0_ball_ik.ty" "effector11.ty";
connectAttr "lfLegBp0_ball_ik.tz" "effector11.tz";
connectAttr "lfLegBp0_ball_ik.opm" "effector11.opm";
connectAttr "lfLegBp0_palm_ik.tx" "effector10.tx";
connectAttr "lfLegBp0_palm_ik.ty" "effector10.ty";
connectAttr "lfLegBp0_palm_ik.tz" "effector10.tz";
connectAttr "lfLegBp0_palm_ik.opm" "effector10.opm";
connectAttr "lfLegBp0_hip_ik.s" "lfLegBp0_softJ.is";
connectAttr "lfLegBp0_softJ.s" "lfLegBp0_softJ_end.is";
connectAttr "lfLegBp0_softJ_end.tx" "effector13.tx";
connectAttr "lfLegBp0_softJ_end.ty" "effector13.ty";
connectAttr "lfLegBp0_softJ_end.tz" "effector13.tz";
connectAttr "lfLegBp0_softJ_end.opm" "effector13.opm";
connectAttr "lfLegBp0_hip_ik.s" "lfLegBp0_pvChainJ.is";
connectAttr "lfLegBp0_pvChainJ.s" "lfLegBp0_pvChainJ_end.is";
connectAttr "lfLegBp0_pvChainJ_end.tx" "effector20.tx";
connectAttr "lfLegBp0_pvChainJ_end.ty" "effector20.ty";
connectAttr "lfLegBp0_pvChainJ_end.tz" "effector20.tz";
connectAttr "lfLegBp0_pvChainJ_end.opm" "effector20.opm";
connectAttr "lfLegBp0_setting.fkIkBlend" "lfLegBp0_ikCstG.v";
connectAttr "lfLegBp0_ikc.extraCtl" "lfLegBp0_heelRollG_ctl.v" -l on;
connectAttr "lfLegBp0_ikc.extraCtl" "lfLegBp0_toeRollG_ctl.v" -l on;
connectAttr "lfLegBp0_ikc.extraCtl" "lfLegBp0_outRollG_ctl.v" -l on;
connectAttr "lfLegBp0_ikc.extraCtl" "lfLegBp0_inRollG_ctl.v" -l on;
connectAttr "lfLegBp0_setting.fkIkBlend" "lfLegBp0_ballG_ikc.fkIkBlend";
connectAttr "lfLegBp0_upr_ik.msg" "lfLegBp0_1_ikh.hsj";
connectAttr "effector10.hp" "lfLegBp0_1_ikh.hee";
connectAttr "lfLegBp0_palm_ik.msg" "lfLegBp0_2_ikh.hsj";
connectAttr "effector11.hp" "lfLegBp0_2_ikh.hee";
connectAttr "lfLegBp0_ball_ik.msg" "lfLegBp0_3_ikh.hsj";
connectAttr "effector12.hp" "lfLegBp0_3_ikh.hee";
connectAttr "lfLegBp0_setting.fkIkBlend" "lfLegBp0_line_28.v";
connectAttr "lfLegBp0_setting.fkIkBlend" "lfLegBp0_ikc.fkIkBlend";
connectAttr "lfLegBp0_setting.palmScale" "lfLegBp0_ikc.palmScale";
connectAttr "lfLegBp0_setting.palmScale" "lfLegBp0_ikc.sx" -l on;
connectAttr "lfLegBp0_setting.palmScale" "lfLegBp0_ikc.sy" -l on;
connectAttr "lfLegBp0_setting.palmScale" "lfLegBp0_ikc.sz" -l on;
connectAttr "lfLegBp0_setting.fkIkBlend" "lfLegBp0_ikc.v" -l on;
connectAttr "lfLegBp0_setting.fkIkBlend" "lfLegBp0_ikc_gmb.fkIkBlend";
connectAttr "lfLegBp0_ikc.gimbalCtl" "lfLegBp0_ikc_gmbShape.v";
connectAttr "lfLegBp0_ikc_gmbShapeOrig.ws" "lfLegBp0_ikc_gmbShape.cr";
connectAttr "unitConversion127.o" "lfLegBp0_smart_ctl.footRoll";
connectAttr "lfLegBp0_setting.fkIkBlend" "lfLegBp0_smart_ctl.fkIkBlend";
connectAttr "lfLegBp0_autoAim.msg" "lfLegBp0_autoAimJ_ikh.hsj";
connectAttr "effector14.hp" "lfLegBp0_autoAimJ_ikh.hee";
connectAttr "lfLegBp0_setting.fkIkBlend" "lfLegBp0_pvc.fkIkBlend";
connectAttr "lfLegBp0_setting.fkIkBlend" "lfLegBp0_pvc.v" -l on;
connectAttr "lfLegBp0_pvc.fkPin" "lfLegBp0_pin_fkc.v" -l on;
connectAttr "lfLegBp0_hip_bf.s" "lfLegBp0_upr_bf.is";
connectAttr "lfLegBp0_upr_bf.s" "lfLegBp0_lwr_bf.is";
connectAttr "lfLegBp0_lwr_bf.s" "lfLegBp0_palm_bf.is";
connectAttr "lfLegBp0_setting.palmScale" "lfLegBp0_palm_bf.sx";
connectAttr "lfLegBp0_setting.palmScale" "lfLegBp0_palm_bf.sy";
connectAttr "lfLegBp0_setting.palmScale" "lfLegBp0_palm_bf.sz";
connectAttr "lfLegBp0_palm_bf.s" "lfLegBp0_ball_bf.is";
connectAttr "lfLegBp0_ball_bf.s" "lfLegBp0_tip_bf.is";
connectAttr "neckQd0_setting.moduleScale" "neckQd0_IK.sx";
connectAttr "neckQd0_setting.moduleScale" "neckQd0_IK.sy";
connectAttr "neckQd0_setting.moduleScale" "neckQd0_IK.sz";
connectAttr "neckQd0_base_ctl.tangentCtl" "neckQd0_tangent0_ctlShape1.v";
connectAttr "neckQd0_two_ikj.s" "neckQd0_two_ikj_end.is";
connectAttr "neckQd0_fore_ctl.rx" "neckQd0_two_ikj_end.rx";
connectAttr "neckQd0_fore_ctl.ry" "neckQd0_two_ikj_end.ry";
connectAttr "neckQd0_fore_ctl.rz" "neckQd0_two_ikj_end.rz";
connectAttr "neckQd0_two_ikj_end.tx" "effector22.tx";
connectAttr "neckQd0_two_ikj_end.ty" "effector22.ty";
connectAttr "neckQd0_two_ikj_end.tz" "effector22.tz";
connectAttr "neckQd0_two_ikj_end.opm" "effector22.opm";
connectAttr "neckQd0_fore_ctl.tangentCtl" "neckQd0_tangent1_ctlShape1.v";
connectAttr "neckQd0_two_ikj.msg" "neckQd0_two_ikj_ikh.hsj";
connectAttr "effector22.hp" "neckQd0_two_ikj_ikh.hee";
connectAttr "rtArmBp0_clavicle_fk.s" "rtArmBp0_upr_fk.is";
connectAttr "rtArmBp0_upr_fk.s" "rtArmBp0_lwr_fk.is";
connectAttr "rtArmBp0_lwr_fk.s" "rtArmBp0_palm_fk.is";
connectAttr "rtArmBp0_palm_fk.s" "rtArmBp0_ball_fk.is";
connectAttr "rtArmBp0_setting.fkIkBlend" "rtArmBp0_clavicle_fkc.fkIkBlend";
connectAttr "rtArmBp0_setting.fkIkBlend" "rtArmBp0_upr_fkc.fkIkBlend";
connectAttr "rtArmBp0_setting.fkIkBlend" "rtArmBp0_lwr_fkc.fkIkBlend";
connectAttr "rtArmBp0_palm_ikc.palmRoll" "rtArmBp0_palm_fkc.palmRoll";
connectAttr "rtArmBp0_palm_ikc.palmBank" "rtArmBp0_palm_fkc.palmBank";
connectAttr "rtArmBp0_setting.fkIkBlend" "rtArmBp0_palm_fkc.fkIkBlend";
connectAttr "rtArmBp0_clavicle_ik.s" "rtArmBp0_upr_ik.is";
connectAttr "rtArmBp0_upr_ik.s" "rtArmBp0_lwr_ik.is";
connectAttr "rtArmBp0_lwr_ik.s" "rtArmBp0_palm_ik.is";
connectAttr "rtArmBp0_palm_ik.s" "rtArmBp0_ball_ik.is";
connectAttr "rtArmBp0_palm_ik.tx" "effector23.tx";
connectAttr "rtArmBp0_palm_ik.ty" "effector23.ty";
connectAttr "rtArmBp0_palm_ik.tz" "effector23.tz";
connectAttr "rtArmBp0_palm_ik.opm" "effector23.opm";
connectAttr "rtArmBp0_clavicle_ik.s" "rtArmBp0_softJ.is";
connectAttr "rtArmBp0_softJ.s" "rtArmBp0_softJ_end.is";
connectAttr "rtArmBp0_softJ_end.tx" "effector24.tx";
connectAttr "rtArmBp0_softJ_end.ty" "effector24.ty";
connectAttr "rtArmBp0_softJ_end.tz" "effector24.tz";
connectAttr "rtArmBp0_softJ_end.opm" "effector24.opm";
connectAttr "rtArmBp0_clavicle_ik.s" "rtArmBp0_pvChainJ.is";
connectAttr "rtArmBp0_pvChainJ.s" "rtArmBp0_pvChainJ_end.is";
connectAttr "rtArmBp0_pvChainJ_end.tx" "effector26.tx";
connectAttr "rtArmBp0_pvChainJ_end.ty" "effector26.ty";
connectAttr "rtArmBp0_pvChainJ_end.tz" "effector26.tz";
connectAttr "rtArmBp0_pvChainJ_end.opm" "effector26.opm";
connectAttr "rtArmBp0_setting.fkIkBlend" "rtArmBp0_ikCstG.v";
connectAttr "rtArmBp0_upr_ik.msg" "rtArmBp0_1_ikh.hsj";
connectAttr "effector23.hp" "rtArmBp0_1_ikh.hee";
connectAttr "rtArmBp0_setting.fkIkBlend" "rtArmBp0_line_9.v";
connectAttr "rtArmBp0_setting.fkIkBlend" "rtArmBp0_ikc.fkIkBlend";
connectAttr "rtArmBp0_setting.fkIkBlend" "rtArmBp0_ikc.v" -l on;
connectAttr "rtArmBp0_setting.fkIkBlend" "rtArmBp0_pvc.fkIkBlend";
connectAttr "rtArmBp0_setting.fkIkBlend" "rtArmBp0_pvc.v" -l on;
connectAttr "rtArmBp0_palm_ikc.palmRoll" "rtArmBp0_pin_fkc.palmRoll";
connectAttr "rtArmBp0_palm_ikc.palmBank" "rtArmBp0_pin_fkc.palmBank";
connectAttr "rtArmBp0_setting.fkIkBlend" "rtArmBp0_pin_fkc.fkIkBlend";
connectAttr "rtArmBp0_pvc.fkPin" "rtArmBp0_pin_fkc.v";
connectAttr "rtArmBp0_setting.fkIkBlend" "rtArmBp0_palm_ikc.fkIkBlend";
connectAttr "rtArmBp0_ikc.v" "rtArmBp0_palm_ikc.v" -l on;
connectAttr "rtArmBp0_clavicle_bf.s" "rtArmBp0_upr_bf.is";
connectAttr "rtArmBp0_upr_bf.s" "rtArmBp0_lwr_bf.is";
connectAttr "rtArmBp0_lwr_bf.s" "rtArmBp0_palm_bf.is";
connectAttr "rtArmBp0_palm_bf.s" "rtArmBp0_ball_bf.is";
connectAttr "rtHand0_smart_ctl.showCtls" "rtHand0_fgr00_1_ctl.v" -l on;
connectAttr "rtHand0_smart_ctl.showCtls" "rtHand0_fgr01_1_ctl.v" -l on;
connectAttr "rtHand0_smart_ctl.showCtls" "rtHand0_fgr02_1_ctl.v" -l on;
connectAttr "rtHand0_smart_ctl.showCtls" "rtHand0_fgr03_1_ctl.v" -l on;
connectAttr "rtHand0_smart_ctl.showCtls" "rtHand0_fgr04_1_ctl.v" -l on;
connectAttr "rtHand0_grp.ry" "rtHand0_fgr00_2_ikc_ofs1.ry";
connectAttr "rtHand0_grp.ry" "rtHand0_fgr01_2_ikc_ofs1.ry";
connectAttr "rtHand0_grp.ry" "rtHand0_fgr02_2_ikc_ofs1.ry";
connectAttr "rtHand0_grp.ry" "rtHand0_fgr03_2_ikc_ofs1.ry";
connectAttr "rtHand0_grp.ry" "rtHand0_fgr04_2_ikc_ofs1.ry";
connectAttr "rtLegBp0_setting.moduleScale" "rtLegBp0_ctl_data.sy";
connectAttr "rtLegBp0_setting.moduleScale" "rtLegBp0_ctl_data.sx";
connectAttr "rtLegBp0_setting.moduleScale" "rtLegBp0_ctl_data.sz";
connectAttr "rtLegBp0_hip_fk.s" "rtLegBp0_upr_fk.is";
connectAttr "rtLegBp0_upr_fk.s" "rtLegBp0_lwr_fk.is";
connectAttr "rtLegBp0_lwr_fk.s" "rtLegBp0_palm_fk.is";
connectAttr "rtLegBp0_palm_fk.s" "rtLegBp0_ball_fk.is";
connectAttr "rtLegBp0_ball_fk.s" "rtLegBp0_tip_fk.is";
connectAttr "rtLegBp0_setting.fkIkBlend" "rtLegBp0_upr_fkc.fkIkBlend";
connectAttr "rtLegBp0_setting.fkIkBlend" "rtLegBp0_lwr_fkc.fkIkBlend";
connectAttr "rtLegBp0_setting.fkIkBlend" "rtLegBp0_palm_fkc.fkIkBlend";
connectAttr "rtLegBp0_setting.palmScale" "rtLegBp0_ball_fkc_ofs.sx";
connectAttr "rtLegBp0_setting.palmScale" "rtLegBp0_ball_fkc_ofs.sy";
connectAttr "rtLegBp0_setting.palmScale" "rtLegBp0_ball_fkc_ofs.sz";
connectAttr "rtLegBp0_setting.fkIkBlend" "rtLegBp0_ball_fkc.fkIkBlend";
connectAttr "rtLegBp0_ball_fkc.ry" "rtLegBp0_toe00_2_ikc_ofs1.ry";
connectAttr "rtLegBp0_ball_fkc.ry" "rtLegBp0_toe01_2_ikc_ofs1.ry";
connectAttr "rtLegBp0_ball_fkc.ry" "rtLegBp0_toe02_2_ikc_ofs1.ry";
connectAttr "rtLegBp0_ball_fkc.ry" "rtLegBp0_toe03_2_ikc_ofs1.ry";
connectAttr "rtLegBp0_ball_fkc.ry" "rtLegBp0_toe04_2_ikc_ofs1.ry";
connectAttr "rtLegBp0_setting.fkIkBlend" "rtLegBp0_hip_fkc.fkIkBlend";
connectAttr "rtLegBp0_autoAim.s" "rtLegBp0_autoAim_end.is";
connectAttr "rtLegBp0_autoAim_end.tx" "effector36.tx";
connectAttr "rtLegBp0_autoAim_end.ty" "effector36.ty";
connectAttr "rtLegBp0_autoAim_end.tz" "effector36.tz";
connectAttr "rtLegBp0_autoAim_end.opm" "effector36.opm";
connectAttr "rtLegBp0_hip_ik.s" "rtLegBp0_upr_ik.is";
connectAttr "rtLegBp0_upr_ik.s" "rtLegBp0_lwr_ik.is";
connectAttr "rtLegBp0_lwr_ik.s" "rtLegBp0_palm_ik.is";
connectAttr "rtLegBp0_palm_ik.s" "rtLegBp0_ball_ik.is";
connectAttr "rtLegBp0_ball_ik.s" "rtLegBp0_tip_ik.is";
connectAttr "rtLegBp0_tip_ik.tx" "effector34.tx";
connectAttr "rtLegBp0_tip_ik.ty" "effector34.ty";
connectAttr "rtLegBp0_tip_ik.tz" "effector34.tz";
connectAttr "rtLegBp0_tip_ik.opm" "effector34.opm";
connectAttr "rtLegBp0_ball_ik.tx" "effector33.tx";
connectAttr "rtLegBp0_ball_ik.ty" "effector33.ty";
connectAttr "rtLegBp0_ball_ik.tz" "effector33.tz";
connectAttr "rtLegBp0_ball_ik.opm" "effector33.opm";
connectAttr "rtLegBp0_palm_ik.tx" "effector32.tx";
connectAttr "rtLegBp0_palm_ik.ty" "effector32.ty";
connectAttr "rtLegBp0_palm_ik.tz" "effector32.tz";
connectAttr "rtLegBp0_palm_ik.opm" "effector32.opm";
connectAttr "rtLegBp0_hip_ik.s" "rtLegBp0_softJ.is";
connectAttr "rtLegBp0_softJ.s" "rtLegBp0_softJ_end.is";
connectAttr "rtLegBp0_softJ_end.tx" "effector35.tx";
connectAttr "rtLegBp0_softJ_end.ty" "effector35.ty";
connectAttr "rtLegBp0_softJ_end.tz" "effector35.tz";
connectAttr "rtLegBp0_softJ_end.opm" "effector35.opm";
connectAttr "rtLegBp0_hip_ik.s" "rtLegBp0_pvChainJ.is";
connectAttr "rtLegBp0_pvChainJ.s" "rtLegBp0_pvChainJ_end.is";
connectAttr "rtLegBp0_pvChainJ_end.tx" "effector42.tx";
connectAttr "rtLegBp0_pvChainJ_end.ty" "effector42.ty";
connectAttr "rtLegBp0_pvChainJ_end.tz" "effector42.tz";
connectAttr "rtLegBp0_pvChainJ_end.opm" "effector42.opm";
connectAttr "rtLegBp0_setting.fkIkBlend" "rtLegBp0_ikCstG.v";
connectAttr "rtLegBp0_ikc.extraCtl" "rtLegBp0_heelRollG_ctl.v" -l on;
connectAttr "rtLegBp0_ikc.extraCtl" "rtLegBp0_toeRollG_ctl.v" -l on;
connectAttr "rtLegBp0_ikc.extraCtl" "rtLegBp0_outRollG_ctl.v" -l on;
connectAttr "rtLegBp0_ikc.extraCtl" "rtLegBp0_inRollG_ctl.v" -l on;
connectAttr "rtLegBp0_setting.fkIkBlend" "rtLegBp0_ballG_ikc.fkIkBlend";
connectAttr "rtLegBp0_upr_ik.msg" "rtLegBp0_1_ikh.hsj";
connectAttr "effector32.hp" "rtLegBp0_1_ikh.hee";
connectAttr "rtLegBp0_palm_ik.msg" "rtLegBp0_2_ikh.hsj";
connectAttr "effector33.hp" "rtLegBp0_2_ikh.hee";
connectAttr "rtLegBp0_ball_ik.msg" "rtLegBp0_3_ikh.hsj";
connectAttr "effector34.hp" "rtLegBp0_3_ikh.hee";
connectAttr "rtLegBp0_setting.fkIkBlend" "rtLegBp0_line_28.v";
connectAttr "rtLegBp0_setting.fkIkBlend" "rtLegBp0_ikc.fkIkBlend";
connectAttr "rtLegBp0_setting.palmScale" "rtLegBp0_ikc.palmScale";
connectAttr "rtLegBp0_setting.palmScale" "rtLegBp0_ikc.sx" -l on;
connectAttr "rtLegBp0_setting.palmScale" "rtLegBp0_ikc.sy" -l on;
connectAttr "rtLegBp0_setting.palmScale" "rtLegBp0_ikc.sz" -l on;
connectAttr "rtLegBp0_setting.fkIkBlend" "rtLegBp0_ikc.v" -l on;
connectAttr "rtLegBp0_setting.fkIkBlend" "rtLegBp0_ikc_gmb.fkIkBlend";
connectAttr "rtLegBp0_ikc.gimbalCtl" "rtLegBp0_ikc_gmbShape.v";
connectAttr "rtLegBp0_ikc_gmbShapeOrig.ws" "rtLegBp0_ikc_gmbShape.cr";
connectAttr "unitConversion298.o" "rtLegBp0_smart_ctl.footRoll";
connectAttr "rtLegBp0_setting.fkIkBlend" "rtLegBp0_smart_ctl.fkIkBlend";
connectAttr "rtLegBp0_autoAim.msg" "rtLegBp0_autoAimJ_ikh.hsj";
connectAttr "effector36.hp" "rtLegBp0_autoAimJ_ikh.hee";
connectAttr "rtLegBp0_setting.fkIkBlend" "rtLegBp0_pvc.fkIkBlend";
connectAttr "rtLegBp0_setting.fkIkBlend" "rtLegBp0_pvc.v" -l on;
connectAttr "rtLegBp0_pvc.fkPin" "rtLegBp0_pin_fkc.v" -l on;
connectAttr "rtLegBp0_hip_bf.s" "rtLegBp0_upr_bf.is";
connectAttr "rtLegBp0_upr_bf.s" "rtLegBp0_lwr_bf.is";
connectAttr "rtLegBp0_lwr_bf.s" "rtLegBp0_palm_bf.is";
connectAttr "rtLegBp0_setting.palmScale" "rtLegBp0_palm_bf.sx";
connectAttr "rtLegBp0_setting.palmScale" "rtLegBp0_palm_bf.sy";
connectAttr "rtLegBp0_setting.palmScale" "rtLegBp0_palm_bf.sz";
connectAttr "rtLegBp0_palm_bf.s" "rtLegBp0_ball_bf.is";
connectAttr "rtLegBp0_ball_bf.s" "rtLegBp0_tip_bf.is";
connectAttr "spineQd0_setting.moduleScale" "spineQd0_IK.sx";
connectAttr "spineQd0_setting.moduleScale" "spineQd0_IK.sy";
connectAttr "spineQd0_setting.moduleScale" "spineQd0_IK.sz";
connectAttr "spineQd0_base_ctl.tangentCtl" "spineQd0_tangent0_ctlShape1.v";
connectAttr "spineQd0_two_ikj.s" "spineQd0_two_ikj_end.is";
connectAttr "spineQd0_fore_ctl.rx" "spineQd0_two_ikj_end.rx";
connectAttr "spineQd0_fore_ctl.ry" "spineQd0_two_ikj_end.ry";
connectAttr "spineQd0_fore_ctl.rz" "spineQd0_two_ikj_end.rz";
connectAttr "spineQd0_two_ikj_end.tx" "effector44.tx";
connectAttr "spineQd0_two_ikj_end.ty" "effector44.ty";
connectAttr "spineQd0_two_ikj_end.tz" "effector44.tz";
connectAttr "spineQd0_two_ikj_end.opm" "effector44.opm";
connectAttr "spineQd0_fore_ctl.tangentCtl" "spineQd0_tangent1_ctlShape1.v";
connectAttr "spineQd0_two_ikj.msg" "spineQd0_two_ikj_ikh.hsj";
connectAttr "effector44.hp" "spineQd0_two_ikj_ikh.hee";
connectAttr "master1_ctlShapeOrig.ws" "master1_ctlShape.cr";
connectAttr "master2_ctlShapeOrig.ws" "master2_ctlShape.cr";
connectAttr "lfLegBp0_smart_ctl.rx" "unitConversion127.i";
connectAttr "rtLegBp0_smart_ctl.rx" "unitConversion298.i";
// End of ape_ctl.ma
