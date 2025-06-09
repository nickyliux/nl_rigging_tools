//Maya ASCII 2023 scene
//Name: ape_ctl.ma
//Last modified: Tue, Jun 10, 2025 12:49:30 AM
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
fileInfo "UUID" "EEEED365-4076-28C6-0798-6BABBEF4E86C";
createNode transform -n "CHR";
	rename -uid "6798688B-4DCA-457E-1B33-18A33ED0B793";
	setAttr -cb on ".ro";
createNode transform -n "CTL" -p "CHR";
	rename -uid "45570C86-4442-F7E0-9A74-CAA88532D740";
	setAttr -cb on ".ro";
createNode transform -n "master2_ctl" -p "CTL";
	rename -uid "1BBDC274-46B2-D403-C75F-7F91E6BD69F9";
	addAttr -ci true -sn "size" -ln "size" -dv 1 -min 0.01 -at "double";
	addAttr -ci true -sn "proxy" -ln "proxy" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "debug" -ln "debug" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".ovc" 17;
	setAttr -cb on ".ro";
	setAttr -cb on ".size" 0.39999999999999991;
	setAttr -cb on ".proxy";
	setAttr -cb on ".debug";
createNode transform -n "master1_ctl" -p "master2_ctl";
	rename -uid "5CE1C5E7-4AC4-4D0B-486D-6F8D44D3A97B";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 18;
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "master_ctl" -p "master1_ctl";
	rename -uid "07648881-4DA2-5ADE-ECC3-2793EE5EDCC7";
	addAttr -ci true -sn "globalScale" -ln "globalScale" -dv 1 -min 0 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 18;
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".globalScale";
createNode transform -n "head0_ctl_data" -p "master_ctl";
	rename -uid "696E8222-4C18-E34A-7319-D68DEA815D7B";
	setAttr -cb on ".ro";
createNode transform -n "head0_head_fkc_ofs" -p "head0_ctl_data";
	rename -uid "51C0A082-417A-292F-5403-DABBDBC35A1D";
	setAttr ".t" -type "double3" -2.8421709430404007e-14 73.933509036026479 17.981065383389044 ;
	setAttr -cb on ".ro";
createNode transform -n "head0_head_fkc_ofs1" -p "head0_head_fkc_ofs";
	rename -uid "67AF352E-4D67-1C9F-60D7-9C9A3C91B3C6";
createNode transform -n "head0_head_fkc" -p "head0_head_fkc_ofs1";
	rename -uid "A1DC6926-4F8C-0A1A-5ABE-B1AAEFFD1E9D";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "neck:COG:master" -at "enum";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -k on ".space";
createNode nurbsCurve -n "head0_head_fkcShape1" -p "head0_head_fkc";
	rename -uid "513A45D6-462A-D11C-B5F7-228D8FE5FCCA";
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
	rename -uid "CBCB3B97-4E8C-E1FB-683E-7681651CB8F9";
	setAttr ".t" -type "double3" -3.3683803054210412e-14 -1.3417434158478443 1.3417434158478478 ;
	setAttr -cb on ".ro";
createNode transform -n "head0_jaw_fkc" -p "head0_jaw_fkc_ofs";
	rename -uid "6EFACB23-4D37-A3C8-A00C-11A42D75D6BC";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "head0_jaw_fkcShape1" -p "head0_jaw_fkc";
	rename -uid "1070C2E1-4204-5EC4-73A8-8F8E7E0EDED6";
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
	rename -uid "4A545480-47D9-6315-A1AF-1589C89DFDF2";
	setAttr ".t" -type "double3" 9.7238019305171584 -58.945934199387366 3.74136458680427 ;
	setAttr ".r" -type "double3" 12.690821861900876 -13.480709470976148 -93.893558422799202 ;
createNode transform -n "lfArmBp0_ikc_SPACE_3" -p "lfArmBp0_ikc_SPACE_3_ofs";
	rename -uid "C19DB11D-48B0-2BCE-6B93-4CA3A9304971";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -1.7763568394002505e-15 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "rtArmBp0_ikc_SPACE_3_ofs" -p "head0_head_fkc";
	rename -uid "51878926-422D-BE52-1374-7D9C05ACC7F6";
	setAttr ".t" -type "double3" -9.7238018710278897 -58.945933438371924 3.741364467883642 ;
	setAttr ".r" -type "double3" -167.30917788057499 13.480709559118871 93.893558589383062 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtArmBp0_ikc_SPACE_3" -p "rtArmBp0_ikc_SPACE_3_ofs";
	rename -uid "C28BD542-4F02-DDCE-09A1-D488CF260F33";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 0 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999933 ;
createNode transform -n "lfArmBp0_ctl_data" -p "master_ctl";
	rename -uid "0A9FF62E-4957-823A-A9EE-2F8341D83B89";
	setAttr -cb on ".ro";
createNode transform -n "lfArmBp0_FK" -p "lfArmBp0_ctl_data";
	rename -uid "0659C54D-432E-506C-7ED0-52B7E7A32E77";
	setAttr -cb on ".ro";
createNode transform -n "lfArmBp0_clavicle_fkc_ofs" -p "lfArmBp0_FK";
	rename -uid "B1F9A1C8-4E92-421D-D4BE-5CB13EB55863";
	setAttr -cb on ".ro";
createNode transform -n "lfArmBp0_clavicle_fkc" -p "lfArmBp0_clavicle_fkc_ofs";
	rename -uid "1400A8DB-45D2-B59A-2434-12BC57B880BB";
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
	rename -uid "8F037D24-4322-7513-A3EB-F0BF6BE2D759";
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
	rename -uid "F04E9DD2-452D-232F-2456-CD93A9F6A93E";
	setAttr -cb on ".ro";
createNode transform -n "lfArmBp0_upr_fkc_ofs1" -p "lfArmBp0_upr_fkc_ofs";
	rename -uid "4B74C5C9-40B9-626A-EDFC-5C8E4E29435B";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 1 ;
createNode transform -n "lfArmBp0_upr_fkc" -p "lfArmBp0_upr_fkc_ofs1";
	rename -uid "32CF2C82-402D-238C-59D9-87A96A708968";
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
	rename -uid "48A8B86F-424D-A146-9903-658655AC84B2";
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
	rename -uid "E66C86D3-4430-00F7-2405-61B24B9B261C";
	setAttr -cb on ".ro";
createNode transform -n "lfArmBp0_lwr_fkc" -p "lfArmBp0_lwr_fkc_ofs";
	rename -uid "323DF703-4453-5FB9-DD51-67829DB434AE";
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
	rename -uid "AEB0AFF9-4381-B770-B4D9-A1B6A6672F6C";
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
	rename -uid "AB8BAC67-40AA-9E97-B9B6-409F059A8679";
	setAttr -cb on ".ro";
createNode transform -n "lfArmBp0_palm_fkc" -p "lfArmBp0_palm_fkc_ofs";
	rename -uid "40365C89-4EC9-B319-659B-EA91F4326508";
	addAttr -uap -ci true -k true -sn "palmRoll" -ln "palmRoll" -at "double";
	addAttr -uap -ci true -k true -sn "palmBank" -ln "palmBank" -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 5;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -av -k on ".palmRoll";
	setAttr -av -k on ".palmBank";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfArmBp0_palm_fkcShape1" -p "lfArmBp0_palm_fkc";
	rename -uid "AFFE4F84-4D91-5952-3770-F28EC40E31A1";
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
	rename -uid "34EE4F13-46B4-FEBE-AF72-DFA535163E0F";
	setAttr ".t" -type "double3" 9.0594198809412774e-14 1.0658141036401503e-14 -2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
createNode transform -n "lfArmBp0_IK" -p "lfArmBp0_ctl_data";
	rename -uid "08D666A6-4D3D-03C7-E3EE-4882B57869E5";
	setAttr -cb on ".ro";
createNode transform -n "lfArmBp0_ikc_ofs" -p "lfArmBp0_IK";
	rename -uid "2E1FCD6D-47AF-4CF1-C756-9E92C5DDB115";
	setAttr ".t" -type "double3" 9.7238019305171299 14.987574836639116 21.722429970193311 ;
	setAttr ".r" -type "double3" 12.690821861900876 -13.480709470976148 -93.893558422799202 ;
	setAttr -cb on ".ro";
createNode transform -n "lfArmBp0_ikc_ofs1" -p "lfArmBp0_ikc_ofs";
	rename -uid "5BB692E3-449E-842E-86F2-45BCD0787BC0";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "lfArmBp0_ikc" -p "lfArmBp0_ikc_ofs1";
	rename -uid "36EAEED8-4340-130D-57BA-0599AA2D385E";
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
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -1.7763568394002505e-15 3.5527136788005009e-15 ;
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
	setAttr -k on ".palmAlign" 1;
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on "._______________";
	setAttr -k on ".space";
createNode nurbsCurve -n "lfArmBp0_ikcShape1" -p "lfArmBp0_ikc";
	rename -uid "5D5D40AA-4B80-1DAC-26D7-3FB5FB886441";
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
	rename -uid "7FB88B70-4427-9D24-05AF-DC9645A5339C";
	setAttr ".t" -type "double3" 15.72702577783385 29.569160335108037 -4.6916561623903501 ;
	setAttr ".r" -type "double3" -11.310732945752255 -12.163396436862786 0 ;
	setAttr -cb on ".ro";
createNode transform -n "lfArmBp0_pvc_ofs1" -p "lfArmBp0_pvc_ofs";
	rename -uid "92BBC990-4199-7451-2F47-7E89AAB9CA40";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 1.0658141036401503e-14 5.9952043329758453e-15 ;
createNode transform -n "lfArmBp0_pvc" -p "lfArmBp0_pvc_ofs1";
	rename -uid "7C62B7E4-4F5A-AA26-24A8-6684CE8510EC";
	addAttr -ci true -sn "fkPin" -ln "fkPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "arm:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 5.3290705182007514e-15 -1.4210854715202004e-14 -6.8833827526759706e-15 ;
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
	rename -uid "A9701A81-4B49-13BB-54FD-CE825BEBE905";
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
	rename -uid "59070B39-4D01-6668-560F-FEABD67274CE";
	setAttr ".t" -type "double3" -0.30299904792153853 -19.610751675825668 23.700039846290547 ;
	setAttr ".r" -type "double3" 1.9900286365617045e-16 -2.6833116348076533 -90.885187150005805 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
createNode transform -n "lfArmBp0_pin_fkc" -p "lfArmBp0_pin_fkc_ofs";
	rename -uid "FB27A319-4D3A-4CFB-DF57-79838CA386B8";
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
	rename -uid "7330B2C1-4ABB-9AE8-1958-D1A6625D3020";
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
	rename -uid "C639BD3D-4530-E2A1-594B-5C8C4EC569A7";
	setAttr -cb on ".ro";
createNode transform -n "lfArmBp0_palm_ikc" -p "lfArmBp0_palm_ikc_ofs";
	rename -uid "E809197D-4777-8448-B51F-3689E7C7A816";
	addAttr -ci true -sn "palmRoll" -ln "palmRoll" -at "double";
	addAttr -ci true -sn "palmBank" -ln "palmBank" -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -1.7763568394002505e-15 3.5527136788005009e-15 ;
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
	rename -uid "C2B23503-458E-24F2-1C5B-44ACAB8D7394";
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
createNode transform -n "lfArmBp0_setting" -p "lfArmBp0_ctl_data";
	rename -uid "D849821D-4325-EBE3-6FC5-799AF6EFC539";
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
	rename -uid "B907B32A-498C-5FD6-38E3-3D9BE877C648";
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
createNode transform -n "lfHand0_ctl_data" -p "master_ctl";
	rename -uid "9A9CEA19-4283-DFF8-5E5F-0AB575066DCC";
	setAttr -cb on ".ro";
createNode transform -n "lfHand0_fgr00_1_ctl_ofs_ofs" -p "lfHand0_ctl_data";
	rename -uid "A44CBA26-409C-608E-3ACA-74A7B4C67333";
	setAttr -cb on ".ro";
createNode transform -n "lfHand0_fgr00_1_ctl_ofs" -p "lfHand0_fgr00_1_ctl_ofs_ofs";
	rename -uid "09BF03C9-499A-512F-0949-C4837783E5A1";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -5.3290705182007514e-15 1.7763568394002505e-15 ;
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "lfHand0_fgr00_1_ctl" -p "lfHand0_fgr00_1_ctl_ofs";
	rename -uid "F5F308E8-464E-E9C9-92A8-8B94A72780A4";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999967 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr00_1_ctlShape1" -p "lfHand0_fgr00_1_ctl";
	rename -uid "0805E91B-4A72-7731-7275-B491A7480113";
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
	rename -uid "D494C903-4356-5B20-A2AE-91AB43176DE3";
	setAttr ".t" -type "double3" 4.1564406166867371 -0.58823287137961522 0.28277819055973108 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "lfHand0_fgr00_2_ctl_ofs" -p "lfHand0_fgr00_2_ctl_ofs_ofs";
	rename -uid "ABA25152-407C-DFA9-15BC-60ACDBBB72B8";
	setAttr ".t" -type "double3" 0 0 -8.8817841970012523e-16 ;
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "lfHand0_fgr00_2_ctl" -p "lfHand0_fgr00_2_ctl_ofs";
	rename -uid "B44260DA-42F3-0874-4FBA-33B3E98C0437";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr00_2_ctlShape1" -p "lfHand0_fgr00_2_ctl";
	rename -uid "3637B93B-4F1F-BF02-F7DE-5D8562DDE220";
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
	rename -uid "8C6BE51E-4A62-8B82-04D2-9AA18FD79B7F";
	setAttr ".t" -type "double3" 2.9405409999120664 1.2434497875801753e-14 1.1546319456101628e-14 ;
	setAttr ".r" -type "double3" 0 -26.105210869895288 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 0.99999999999999978 ;
createNode transform -n "lfHand0_fgr00_3_ctl_ofs" -p "lfHand0_fgr00_3_ctl_ofs_ofs";
	rename -uid "3F770CD8-4E64-4E8B-B826-7AAB363FC54D";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
createNode transform -n "lfHand0_fgr00_3_ctl" -p "lfHand0_fgr00_3_ctl_ofs";
	rename -uid "BC5BE7F6-46B7-AD7C-C9DD-51979897ACB0";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr00_3_ctlShape1" -p "lfHand0_fgr00_3_ctl";
	rename -uid "406E111A-4103-A077-02ED-C0A4F9B9BE57";
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
	rename -uid "493CF85D-4DCD-EF5E-CE84-6EA4506B83C7";
	setAttr -cb on ".ro";
createNode transform -n "lfHand0_fgr01_1_ctl_ofs" -p "lfHand0_fgr01_1_ctl_ofs_ofs";
	rename -uid "E655F770-41CB-90C2-3870-1293A35D5B9F";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -2.6645352591003757e-15 0 ;
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "lfHand0_fgr01_1_ctl" -p "lfHand0_fgr01_1_ctl_ofs";
	rename -uid "F0924A14-43FC-5A90-EE2B-F791E2B4B482";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr01_1_ctlShape1" -p "lfHand0_fgr01_1_ctl";
	rename -uid "A47C8AE9-4900-59DE-90F0-CD84C3EEF22C";
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
	rename -uid "B49703C3-4D6D-85CF-C733-C6A3CCF56226";
	setAttr ".t" -type "double3" 6.122680435764158 -6.2172489379008766e-15 -4.6185277824406512e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999967 ;
createNode transform -n "lfHand0_fgr01_2_ctl_ofs" -p "lfHand0_fgr01_2_ctl_ofs_ofs";
	rename -uid "DEFF860D-4DE4-AF15-683D-C48F1C3A20C6";
	setAttr ".t" -type "double3" -4.4408920985006262e-16 0 0 ;
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode transform -n "lfHand0_fgr01_2_ctl" -p "lfHand0_fgr01_2_ctl_ofs";
	rename -uid "58F5F703-46A0-CB3C-488A-6E99AB85B50C";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr01_2_ctlShape1" -p "lfHand0_fgr01_2_ctl";
	rename -uid "132A75D6-4A10-2704-B7B1-55BD7E02D126";
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
	rename -uid "20815DE0-47E9-EF71-6A98-2E8191283BB3";
	setAttr ".t" -type "double3" 4.7373858002689024 -1.2434497875801753e-14 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 0 -66.298785885298074 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "lfHand0_fgr01_3_ctl_ofs" -p "lfHand0_fgr01_3_ctl_ofs_ofs";
	rename -uid "A9467D76-45AA-52FF-8C9F-77B76788FDAF";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "lfHand0_fgr01_3_ctl" -p "lfHand0_fgr01_3_ctl_ofs";
	rename -uid "9EFD8CD5-466D-AA9E-C2ED-FD9AB33C2ED2";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr01_3_ctlShape1" -p "lfHand0_fgr01_3_ctl";
	rename -uid "0A95B6E2-4DFE-BAA8-9DB5-6980A4ED77AC";
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
	rename -uid "C5EB9F7B-469E-F754-FDFD-ED8FDAA14A3A";
	setAttr ".t" -type "double3" 3.4593422476708149 -8.8817841970012523e-15 -1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" 0 -19.821093119868163 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999967 1.0000000000000002 ;
createNode transform -n "lfHand0_fgr01_4_ctl_ofs" -p "lfHand0_fgr01_4_ctl_ofs_ofs";
	rename -uid "6FFACEEE-473E-10AC-8C10-7194B884CE78";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 -8.8817841970012523e-16 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "lfHand0_fgr01_4_ctl" -p "lfHand0_fgr01_4_ctl_ofs";
	rename -uid "1D6D1D79-4845-8A5E-C8B2-A094DD870818";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr01_4_ctlShape1" -p "lfHand0_fgr01_4_ctl";
	rename -uid "9362A8D4-4987-BDB6-42B9-F9A49F004350";
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
	rename -uid "B5CA5EE1-4068-C4D0-4B6F-32BF86E87968";
	setAttr -cb on ".ro";
createNode transform -n "lfHand0_fgr02_1_ctl_ofs" -p "lfHand0_fgr02_1_ctl_ofs_ofs";
	rename -uid "A8CCE85B-4176-B522-C301-ABBED1595B90";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 3.5527136788005009e-15 ;
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "lfHand0_fgr02_1_ctl" -p "lfHand0_fgr02_1_ctl_ofs";
	rename -uid "BCEBEF9F-4281-C003-ECA0-7386FD69FD6C";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr02_1_ctlShape1" -p "lfHand0_fgr02_1_ctl";
	rename -uid "6615BE25-4DDB-E182-6C19-2E9091EBF6DB";
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
	rename -uid "CAF45792-424B-F9AB-4B18-ED96F2960289";
	setAttr ".t" -type "double3" 6.2585520346885435 1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "lfHand0_fgr02_2_ctl_ofs" -p "lfHand0_fgr02_2_ctl_ofs_ofs";
	rename -uid "1686AF84-4B2F-23FC-F0D3-FF8C869CDD20";
	setAttr -cb on ".ro" 3;
createNode transform -n "lfHand0_fgr02_2_ctl" -p "lfHand0_fgr02_2_ctl_ofs";
	rename -uid "90698921-4175-51ED-F3C5-E2B02923D28D";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr02_2_ctlShape1" -p "lfHand0_fgr02_2_ctl";
	rename -uid "034EE6AA-463D-B364-2863-2BB2E3ADB572";
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
	rename -uid "EC5E6A5F-47E8-4E80-7EAD-DFBC2BC1B20E";
	setAttr ".t" -type "double3" 4.7872756746817471 -1.4210854715202004e-14 -1.0658141036401503e-14 ;
	setAttr ".r" -type "double3" 0 -71.232806517331994 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999956 0.99999999999999956 ;
createNode transform -n "lfHand0_fgr02_3_ctl_ofs" -p "lfHand0_fgr02_3_ctl_ofs_ofs";
	rename -uid "AB19F0F7-4CCE-3B98-4468-48B02943D9A8";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 1.7763568394002505e-15 1.7763568394002505e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
createNode transform -n "lfHand0_fgr02_3_ctl" -p "lfHand0_fgr02_3_ctl_ofs";
	rename -uid "8E2F6C66-48C9-9306-1F5C-B09C61A10E4A";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 1.0000000000000004 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr02_3_ctlShape1" -p "lfHand0_fgr02_3_ctl";
	rename -uid "DC253ADA-4950-F3AC-253C-C995B42EA58C";
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
	rename -uid "3EE76128-4BC0-4116-49F0-AF99BAE1B51E";
	setAttr ".t" -type "double3" 3.6945286731120461 2.3092638912203256e-14 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 0 -20.417257060770368 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999933 0.99999999999999967 ;
createNode transform -n "lfHand0_fgr02_4_ctl_ofs" -p "lfHand0_fgr02_4_ctl_ofs_ofs";
	rename -uid "140339AC-47E2-9A6E-07A9-FD835585C8DC";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 2.2204460492503131e-16 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "lfHand0_fgr02_4_ctl" -p "lfHand0_fgr02_4_ctl_ofs";
	rename -uid "A900FED0-40F8-312D-3A03-909CFE72486F";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999967 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr02_4_ctlShape1" -p "lfHand0_fgr02_4_ctl";
	rename -uid "8903688E-46EC-5392-FB52-28A10CBA3D27";
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
	rename -uid "E3AAA6A8-4351-7BD8-90A9-E886561265B0";
	setAttr -cb on ".ro";
createNode transform -n "lfHand0_fgr03_1_ctl_ofs" -p "lfHand0_fgr03_1_ctl_ofs_ofs";
	rename -uid "4B4D6DD9-4165-67EC-FECA-C9A411543B4C";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 8.8817841970012523e-16 0 ;
	setAttr -cb on ".ro" 3;
createNode transform -n "lfHand0_fgr03_1_ctl" -p "lfHand0_fgr03_1_ctl_ofs";
	rename -uid "01ED456A-443C-AA04-D7B1-659C779869BA";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr03_1_ctlShape1" -p "lfHand0_fgr03_1_ctl";
	rename -uid "07118B48-4B27-ED4A-82A3-BF94AF8CB2DD";
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
	rename -uid "39BC375B-45A4-2325-C426-649A4D40FD45";
	setAttr ".t" -type "double3" 6.2239324419496933 1.7763568394002505e-15 -2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "lfHand0_fgr03_2_ctl_ofs" -p "lfHand0_fgr03_2_ctl_ofs_ofs";
	rename -uid "7FB5CA30-4DAF-B54F-FDD9-678B6D20CED9";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 8.8817841970012523e-16 0 ;
	setAttr -cb on ".ro" 3;
createNode transform -n "lfHand0_fgr03_2_ctl" -p "lfHand0_fgr03_2_ctl_ofs";
	rename -uid "3575ED01-457C-080A-F2DA-59900A880F0B";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr03_2_ctlShape1" -p "lfHand0_fgr03_2_ctl";
	rename -uid "809D1F35-46BF-D1F3-6CE6-FABC49E09484";
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
	rename -uid "01FAEA61-4879-E563-1969-B48CD3FF4A7B";
	setAttr ".t" -type "double3" 4.6225742785655131 -2.042810365310288e-14 0 ;
	setAttr ".r" -type "double3" 0 -68.665304122595515 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "lfHand0_fgr03_3_ctl_ofs" -p "lfHand0_fgr03_3_ctl_ofs_ofs";
	rename -uid "C1E4F5A8-4F8A-3A1E-9F01-F5BFA217C606";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 2.6645352591003757e-15 -1.7763568394002505e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "lfHand0_fgr03_3_ctl" -p "lfHand0_fgr03_3_ctl_ofs";
	rename -uid "3BE427C7-4FA3-0D90-2022-32945921BB42";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr03_3_ctlShape1" -p "lfHand0_fgr03_3_ctl";
	rename -uid "C3BF3092-4310-B01B-2F10-6BB3C938B983";
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
	rename -uid "116C336F-4B16-947E-5C38-478E554BB0F7";
	setAttr ".t" -type "double3" 3.556471498450918 1.5099033134902129e-14 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 0 -18.554958795381445 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1 ;
createNode transform -n "lfHand0_fgr03_4_ctl_ofs" -p "lfHand0_fgr03_4_ctl_ofs_ofs";
	rename -uid "00CA4192-4852-991C-257B-208F656C1580";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -2.6645352591003757e-15 4.4408920985006262e-16 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "lfHand0_fgr03_4_ctl" -p "lfHand0_fgr03_4_ctl_ofs";
	rename -uid "1A20C26C-49C5-52A7-BCD4-D48DD46C28EE";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr03_4_ctlShape1" -p "lfHand0_fgr03_4_ctl";
	rename -uid "FF6547C0-4FEB-39AE-CB61-929331272A6E";
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
	rename -uid "2A7579B9-49A9-0B34-25DB-5CB3C7D9B690";
	setAttr -cb on ".ro";
createNode transform -n "lfHand0_fgr04_1_ctl_ofs" -p "lfHand0_fgr04_1_ctl_ofs_ofs";
	rename -uid "75992ABF-49BF-9E70-1C70-BAA7166F1AE7";
	setAttr ".t" -type "double3" -2.2204460492503131e-15 0 0 ;
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "lfHand0_fgr04_1_ctl" -p "lfHand0_fgr04_1_ctl_ofs";
	rename -uid "130442D0-4C22-509A-35E9-3AA5D0892BF1";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr04_1_ctlShape1" -p "lfHand0_fgr04_1_ctl";
	rename -uid "BDB8AE9A-46CD-B385-54CD-20ADDFB856CA";
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
	rename -uid "92B5BF83-4723-A560-9B4A-18B33BE63845";
	setAttr ".t" -type "double3" 5.8093929308999339 0.32877069222828581 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "lfHand0_fgr04_2_ctl_ofs" -p "lfHand0_fgr04_2_ctl_ofs_ofs";
	rename -uid "24BB8F21-47E2-2F50-6638-2D972A56B2E1";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "lfHand0_fgr04_2_ctl" -p "lfHand0_fgr04_2_ctl_ofs";
	rename -uid "2E3EB9A7-4E21-A168-ACAA-B4AA3B69A8FE";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr04_2_ctlShape1" -p "lfHand0_fgr04_2_ctl";
	rename -uid "926C35CA-4480-B03E-BA13-5AAF537D5268";
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
	rename -uid "F0CD6086-4230-61C2-E5BA-93AF30A5B759";
	setAttr ".t" -type "double3" 4.702292268989174 -1.9539925233402755e-14 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 0 -65.544883513719512 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 0.99999999999999989 ;
createNode transform -n "lfHand0_fgr04_3_ctl_ofs" -p "lfHand0_fgr04_3_ctl_ofs_ofs";
	rename -uid "6C8D6D7D-4FE1-9797-07A9-6D9674BA5286";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 1.7763568394002505e-15 -1.7763568394002505e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "lfHand0_fgr04_3_ctl" -p "lfHand0_fgr04_3_ctl_ofs";
	rename -uid "5E19BB87-4DA4-D215-7E57-DB90C9E15A4C";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr04_3_ctlShape1" -p "lfHand0_fgr04_3_ctl";
	rename -uid "662C8EB6-4490-76D2-65AC-D2AAC3E048AC";
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
	rename -uid "430B42DB-4D86-C5B5-85E4-2A889CEE755F";
	setAttr ".t" -type "double3" 3.4452574625156309 2.1316282072803006e-14 1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" 0 -13.546793162252596 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "lfHand0_fgr04_4_ctl_ofs" -p "lfHand0_fgr04_4_ctl_ofs_ofs";
	rename -uid "230B0AC1-47B7-02E3-5382-C2AE84D3142C";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 8.8817841970012523e-16 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "lfHand0_fgr04_4_ctl" -p "lfHand0_fgr04_4_ctl_ofs";
	rename -uid "A9C3F65B-4C83-6118-F95D-B39944DE1D9D";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000004 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfHand0_fgr04_4_ctlShape1" -p "lfHand0_fgr04_4_ctl";
	rename -uid "81DC21FD-411E-B799-ADE8-8193A1A8465F";
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
	rename -uid "68AC874C-4367-2AAA-BFA1-96B72E19F1D2";
	setAttr ".t" -type "double3" 6.7711003625594177 9.348844560254582 21.848236700195457 ;
	setAttr ".r" -type "double3" -103.935391258324 29.463742724317413 -89.610988072279369 ;
	setAttr -cb on ".ro";
createNode transform -n "lfHand0_fgr00_2_ikc_ofs1" -p "lfHand0_fgr00_2_ikc_ofs";
	rename -uid "474B5A47-4041-C438-78C5-949A3CB3D83B";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfHand0_fgr00_2_ikc" -p "lfHand0_fgr00_2_ikc_ofs1";
	rename -uid "3ECB1FB7-4E51-DA44-BBA8-509C92C02064";
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
	rename -uid "66CF603A-4B0C-2471-A742-F1930C0A9514";
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
	rename -uid "798497F9-4670-928F-4C4B-EA84E84D55B0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.9566081224471432 0 0.62562076311349912 ;
	setAttr ".r" -type "double3" 0 3.9012395161850124 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999956 0.99999999999999922 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.5049989467905045 -0.84504157737209518 -0.17572932667304611 ;
	setAttr ".roc" yes;
createNode transform -n "lfHand0_fgr01_2_ikc_ofs" -p "lfHand0_ctl_data";
	rename -uid "953D25F8-40EC-717D-8D2F-78ABA77C4940";
	setAttr ".t" -type "double3" 7.8008489896441189 6.9735724318615899 23.708155690759913 ;
	setAttr ".r" -type "double3" 7.9061029156742615 -172.31111262154505 88.112071239853975 ;
	setAttr -cb on ".ro";
createNode transform -n "lfHand0_fgr01_2_ikc_ofs1" -p "lfHand0_fgr01_2_ikc_ofs";
	rename -uid "181257E4-4407-BD08-A608-28AF7AC08723";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode transform -n "lfHand0_fgr01_2_ikc" -p "lfHand0_fgr01_2_ikc_ofs1";
	rename -uid "B1F90327-4340-0BF0-7743-AA9DA2AF8636";
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
	rename -uid "B3FCFF37-4F3D-1720-6075-D7BE15507CBD";
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
	rename -uid "6F77C92C-4E35-A1CF-8C6C-DCAB0EED5819";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.5943012940789423 -5.3290705182007514e-15 4.6829892424507484 ;
	setAttr ".r" -type "double3" 0 3.9012395161850013 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000011 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.066699675863312199 -0.1363133609338521 -0.98841783718761789 ;
	setAttr ".roc" yes;
createNode transform -n "lfHand0_fgr02_2_ikc_ofs" -p "lfHand0_ctl_data";
	rename -uid "FCD4FFC3-460A-4ABB-2758-A5BDF375FD02";
	setAttr ".t" -type "double3" 9.4287697104368906 6.9176210443146591 24.282791763109884 ;
	setAttr ".r" -type "double3" 2.5897516677720853 -172.40368445791049 91.210113442512124 ;
	setAttr -cb on ".ro";
createNode transform -n "lfHand0_fgr02_2_ikc_ofs1" -p "lfHand0_fgr02_2_ikc_ofs";
	rename -uid "363F36B2-428D-8E7E-536A-83A2C9690D26";
	setAttr -cb on ".ro";
createNode transform -n "lfHand0_fgr02_2_ikc" -p "lfHand0_fgr02_2_ikc_ofs1";
	rename -uid "B9D7BDF0-472D-BDC8-4760-8285F2B990A4";
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
	rename -uid "04AC67BA-46AC-33F6-605F-4D8B7746AAC5";
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
	rename -uid "52D76FF6-4922-C784-905B-89AAF255B4DB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.2935519556906412 -8.8817841970012523e-15 5.4620699951082869 ;
	setAttr ".r" -type "double3" 0 3.9012395161850004 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.064515426012671032 -0.044787768886333817 -0.99691113724573654 ;
	setAttr ".roc" yes;
createNode transform -n "lfHand0_fgr03_2_ikc_ofs" -p "lfHand0_ctl_data";
	rename -uid "CC462DE2-4833-18DE-0854-98A7BADB4233";
	setAttr ".t" -type "double3" 11.028387763597937 6.7307447651061389 24.220576627728683 ;
	setAttr ".r" -type "double3" 170.77031574450046 -3.1995728360163289 -82.466110505950525 ;
	setAttr -cb on ".ro";
createNode transform -n "lfHand0_fgr03_2_ikc_ofs1" -p "lfHand0_fgr03_2_ikc_ofs";
	rename -uid "9C1B63AA-4ABF-E0D6-9D2A-ECA636B20D61";
	setAttr -cb on ".ro";
createNode transform -n "lfHand0_fgr03_2_ikc" -p "lfHand0_fgr03_2_ikc_ofs1";
	rename -uid "0D36872E-4027-7B4F-DAFF-5591164F3BED";
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
	rename -uid "3B81730A-4886-EF42-6049-84BAD27DF284";
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
	rename -uid "6145DF90-4F57-40D2-151E-AEBCA015F30A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.3800664197727031 8.8817841970012523e-16 5.053136242422827 ;
	setAttr ".r" -type "double3" 0 3.9012395161850124 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.011366607812438772 0.16014256653534553 -0.98702844873403262 ;
	setAttr ".roc" yes;
createNode transform -n "lfHand0_fgr04_2_ikc_ofs" -p "lfHand0_ctl_data";
	rename -uid "B1305239-48DA-C505-68BA-199C92EFF8B0";
	setAttr ".t" -type "double3" 12.744028384394859 7.2917123655971317 23.607200405681965 ;
	setAttr ".r" -type "double3" 167.41113336135589 -2.3913301248526051 -81.83041037877841 ;
	setAttr -cb on ".ro";
createNode transform -n "lfHand0_fgr04_2_ikc_ofs1" -p "lfHand0_fgr04_2_ikc_ofs";
	rename -uid "C7FB22FB-4518-A1D4-4975-528F00C442DF";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "lfHand0_fgr04_2_ikc" -p "lfHand0_fgr04_2_ikc_ofs1";
	rename -uid "80FEDDEE-48A6-F7D4-31AA-20A52ABDCD67";
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
	rename -uid "46960198-4854-00DE-A3BE-18A7F49A9E8C";
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
	rename -uid "A7CA5B12-45C6-EA19-1FAE-84A9E760DFC2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.7855002048546584 -5.3290705182007514e-15 4.4433354385565167 ;
	setAttr ".r" -type "double3" 0 3.9012395161850124 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000011 1.0000000000000011 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.024715599037858239 0.21776379940968651 -0.97568850912105098 ;
	setAttr ".roc" yes;
createNode transform -n "lfHand0_smartScale" -p "lfHand0_ctl_data";
	rename -uid "665C2D8C-4BAB-575A-CB77-43B39257D44B";
	setAttr -cb on ".ro";
createNode transform -n "lfHand0_smart_ctl_ofs" -p "lfHand0_smartScale";
	rename -uid "EBF1866D-4A2F-D410-15E6-7B8D4758EFA9";
	setAttr ".t" -type "double3" 18.932328818432275 -3.5527136788005009e-15 3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
createNode transform -n "lfHand0_smart_ctl" -p "lfHand0_smart_ctl_ofs";
	rename -uid "FE03BBF2-494D-33D2-E863-72926F7B3936";
	addAttr -ci true -sn "palmScale" -ln "palmScale" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "showCtls" -ln "showCtls" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -k on ".palmScale";
	setAttr -cb on ".showCtls";
createNode nurbsCurve -n "lfHand0_smart_ctlShape1" -p "lfHand0_smart_ctl";
	rename -uid "7248540F-4275-95B0-F7BE-EC866979C884";
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
createNode transform -n "lfLegBp0_ctl_data" -p "master_ctl";
	rename -uid "BDA68017-4DB3-543C-F81B-04954B1D1216";
	setAttr ".t" -type "double3" 5.8362665560894751 51.646830813409281 -15.548650060442803 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_FK" -p "lfLegBp0_ctl_data";
	rename -uid "8AFA5DA2-4AA3-0EEB-0633-2AAF11B9243D";
	setAttr ".t" -type "double3" -5.8362665560894751 -51.646830813409281 15.548650060442803 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_upr_fkc_ofs" -p "lfLegBp0_FK";
	rename -uid "C5915B6C-4D3A-BD00-494F-299D312184E1";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_upr_fkc" -p "lfLegBp0_upr_fkc_ofs";
	rename -uid "B04D450D-40E7-5D60-D86D-9FA9A7C856CD";
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
createNode nurbsCurve -n "lfLegBp0_upr_fkcShape1" -p "lfLegBp0_upr_fkc";
	rename -uid "21FBD43A-4762-769B-01CA-83885D491275";
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
	rename -uid "7776C56C-44D7-D6FC-6749-80BF6AEB4D54";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_lwr_fkc" -p "lfLegBp0_lwr_fkc_ofs";
	rename -uid "EE279267-413F-EC70-B0B8-F69F6B78F9CC";
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
createNode nurbsCurve -n "lfLegBp0_lwr_fkcShape1" -p "lfLegBp0_lwr_fkc";
	rename -uid "AAAA02BE-4F02-472B-9CBF-439CBA421DBC";
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
	rename -uid "DEA6620A-4386-C4C1-9ED4-809DF185A0CA";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_palm_fkc" -p "lfLegBp0_palm_fkc_ofs";
	rename -uid "61C5F942-440C-61FB-9739-36B07136EB09";
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
createNode nurbsCurve -n "lfLegBp0_palm_fkcShape1" -p "lfLegBp0_palm_fkc";
	rename -uid "176A9859-4A8B-9223-02B9-C3BFCEBF358D";
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
	rename -uid "74C49468-4755-1B41-9475-67AE2046EE48";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-14 -2.4868995751603507e-14 ;
	setAttr ".r" -type "double3" 0 180 89.999999999999858 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_ball_fkc_ofs" -p "lfLegBp0_FK";
	rename -uid "DED89750-4EF6-AAD6-EA88-6DBC0D4EA616";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_ball_fkc" -p "lfLegBp0_ball_fkc_ofs";
	rename -uid "735F2A86-4F09-7E52-9069-9BA6AC68FA62";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegBp0_ball_fkcShape1" -p "lfLegBp0_ball_fkc";
	rename -uid "66A9C86C-45E2-8BD1-BFFF-8FBB95E88248";
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
	rename -uid "234DF9F9-4123-E985-E99B-588D0636F4BD";
	setAttr ".t" -type "double3" 0.087901177376977557 3.5481000853015665 1.7060344537374892 ;
	setAttr ".r" -type "double3" 6.7501608736320398 7.6776584212020849 19.1345760483016 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "lfLegBp0_toe00_2_ikc_ofs1" -p "lfLegBp0_toe00_2_ikc_ofs";
	rename -uid "B016198A-46BE-0298-4758-AA992ACDB3E8";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "lfLegBp0_toe00_2_ikc" -p "lfLegBp0_toe00_2_ikc_ofs1";
	rename -uid "DD5E0AF1-4927-5FA0-B846-B5A9B106CBC8";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe00_2_ikcShape1" -p "lfLegBp0_toe00_2_ikc";
	rename -uid "3D29CFDF-4B9A-4470-946C-A7883A236150";
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
		0 -5.5511151231257827e-16 -2.0137899726647285e-17
		0 -5.5511151231257827e-16 -0.97557165134364887
		0.11265684667764417 -5.5511151231257827e-16 -0.97557165134364887
		0.11265684667764417 -5.5511151231257827e-16 -1.2008853446989378
		-0.11265684667764417 -5.5511151231257827e-16 -1.2008853446989378
		-0.11265684667764417 -5.5511151231257827e-16 -0.97557165134364887
		0 -5.5511151231257827e-16 -0.97557165134364887
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegBp0_toe00_2_1_ikj_ikh" -p "lfLegBp0_toe00_2_ikc";
	rename -uid "80744420-4FEF-A7AF-8EC2-6C8B43604778";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.1333352719419807 -0.23289527129174203 0.24522044789437425 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999944 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.92359235767708314 -0.33179939695880362 -0.19205810844184695 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegBp0_toe01_2_ikc_ofs" -p "lfLegBp0_ball_fkc_ofs";
	rename -uid "F912EF2C-4A3D-6080-390B-8892F0D1830E";
	setAttr ".t" -type "double3" 0.31294414968707684 1.1377543491556619 -0.025546625167625514 ;
	setAttr ".r" -type "double3" -2.2625570442676648 12.715776393066216 -6.3992236291024689 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "lfLegBp0_toe01_2_ikc_ofs1" -p "lfLegBp0_toe01_2_ikc_ofs";
	rename -uid "47A2E811-47F3-082D-DA62-6CA9338A30C7";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_toe01_2_ikc" -p "lfLegBp0_toe01_2_ikc_ofs1";
	rename -uid "F9CFEF95-4458-40AB-822E-D89728B168DD";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe01_2_ikcShape1" -p "lfLegBp0_toe01_2_ikc";
	rename -uid "C1062756-4BBE-C211-D341-D4A7FB9295C6";
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
		0 -1.7763568394002505e-15 -6.4441279125271311e-17
		0 -1.7763568394002505e-15 -0.97557165134364898
		0.11265684667764417 -1.7763568394002505e-15 -0.97557165134364898
		0.11265684667764417 -1.7763568394002505e-15 -1.2008853446989378
		-0.11265684667764417 -1.7763568394002505e-15 -1.2008853446989378
		-0.11265684667764417 -1.7763568394002505e-15 -0.97557165134364898
		0 -1.7763568394002505e-15 -0.97557165134364898
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegBp0_toe01_2_1_ikj_ikh" -p "lfLegBp0_toe01_2_ikc";
	rename -uid "B5BEFE3A-47FA-54D7-55C7-7AB2EDEC5075";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.9256999959548295 0.081278246112024277 0.81836973370825095 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.98497061678381137 0.10971437992947085 -0.13340029576132809 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegBp0_toe02_2_ikc_ofs" -p "lfLegBp0_ball_fkc_ofs";
	rename -uid "02695E86-442B-4EE8-9A19-039732933C63";
	setAttr ".t" -type "double3" 0.28848040182157142 -0.18417597180090617 0.13483691252953989 ;
	setAttr ".r" -type "double3" -2.6934827163453288 12.144864192196918 -7.6139345063367383 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "lfLegBp0_toe02_2_ikc_ofs1" -p "lfLegBp0_toe02_2_ikc_ofs";
	rename -uid "1638D2B6-45E1-305A-C589-4895F43E289B";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "lfLegBp0_toe02_2_ikc" -p "lfLegBp0_toe02_2_ikc_ofs1";
	rename -uid "BB84CF0C-4E6D-F08B-4FA6-EC80E58FD945";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe02_2_ikcShape1" -p "lfLegBp0_toe02_2_ikc";
	rename -uid "BEC0E581-480C-227D-47B7-00AC9232D149";
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
		3.4238311205499584e-15 4.0275799453294569e-18 1.1102230246251565e-16
		3.4238311205499584e-15 4.0275799453294569e-18 -0.97557165134364876
		0.1126568466776476 4.0275799453294569e-18 -0.97557165134364876
		0.1126568466776476 4.0275799453294569e-18 -1.2008853446989378
		-0.11265684667764074 4.0275799453294569e-18 -1.2008853446989378
		-0.11265684667764074 4.0275799453294569e-18 -0.97557165134364876
		3.4238311205499584e-15 4.0275799453294569e-18 -0.97557165134364876
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegBp0_toe02_2_1_ikj_ikh" -p "lfLegBp0_toe02_2_ikc";
	rename -uid "B3CBA50C-4EAD-5098-3EE1-968933B1FDCC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.3099075007462275 0.084175803612023259 1.1113044012427971 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999956 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.98118307302160623 0.13088037202071648 -0.14195106704634644 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegBp0_toe03_2_ikc_ofs" -p "lfLegBp0_ball_fkc_ofs";
	rename -uid "8F0F0CDC-4F12-2EE2-05DA-82BC735E2E1F";
	setAttr ".t" -type "double3" 0.19142562986053413 -1.4060084167454772 0.32078617389707098 ;
	setAttr ".r" -type "double3" -3.3518704835752602 11.520464254718746 -9.4752094356495125 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "lfLegBp0_toe03_2_ikc_ofs1" -p "lfLegBp0_toe03_2_ikc_ofs";
	rename -uid "091D1458-4D98-910E-F228-9FA50D9C2573";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "lfLegBp0_toe03_2_ikc" -p "lfLegBp0_toe03_2_ikc_ofs1";
	rename -uid "09755AB0-4168-6348-7845-42B7F6A20024";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe03_2_ikcShape1" -p "lfLegBp0_toe03_2_ikc";
	rename -uid "DC58D158-4565-2525-6F4E-F2A89FA5B70C";
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
		0 1.7783706293729152e-15 1.1995243035652915e-16
		0 1.7783706293729152e-15 -0.97557165134364887
		0.11265684667764417 1.7783706293729152e-15 -0.97557165134364887
		0.11265684667764417 1.7783706293729152e-15 -1.2008853446989378
		-0.11265684667764417 1.7783706293729152e-15 -1.2008853446989378
		-0.11265684667764417 1.7783706293729152e-15 -0.97557165134364887
		0 1.7783706293729152e-15 -0.97557165134364887
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegBp0_toe03_2_1_ikj_ikh" -p "lfLegBp0_toe03_2_ikc";
	rename -uid "6D7893AB-4119-8CDA-CAAA-E88518826F2D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.0060129569803609 0.14506549608208097 0.91352906656780974 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999956 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.97508435231403423 0.16320767866999614 -0.1502456638158699 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegBp0_toe04_2_ikc_ofs" -p "lfLegBp0_ball_fkc_ofs";
	rename -uid "E28CD4DA-42E5-4807-1CC5-2F8107224F10";
	setAttr ".t" -type "double3" -0.060596955183717327 -2.6134673265675605 0.47345404679994507 ;
	setAttr ".r" -type "double3" -4.0518855611697004 10.566491200143711 -11.448192295775545 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "lfLegBp0_toe04_2_ikc_ofs1" -p "lfLegBp0_toe04_2_ikc_ofs";
	rename -uid "F41B19B5-4979-F9CA-D536-BAAA85902174";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1 ;
createNode transform -n "lfLegBp0_toe04_2_ikc" -p "lfLegBp0_toe04_2_ikc_ofs1";
	rename -uid "39D07703-470E-7555-04B0-B99312E1D994";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe04_2_ikcShape1" -p "lfLegBp0_toe04_2_ikc";
	rename -uid "767D8DA8-4FBB-0763-A157-36945A6E8259";
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
		0 3.5486860988551715e-15 1.7860255788026968e-17
		0 3.5486860988551715e-15 -0.97557165134364887
		0.11265684667764417 3.5486860988551715e-15 -0.97557165134364887
		0.11265684667764417 3.5486860988551715e-15 -1.2008853446989376
		-0.11265684667764417 3.5486860988551715e-15 -1.2008853446989376
		-0.11265684667764417 3.5486860988551715e-15 -0.97557165134364887
		0 3.5486860988551715e-15 -0.97557165134364887
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegBp0_toe04_2_1_ikj_ikh" -p "lfLegBp0_toe04_2_ikc";
	rename -uid "D0A72189-4C05-E5E5-44E8-6991D66DC181";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.4532211288825163 0.16923373883700776 0.73429126082751561 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.96653798097082366 0.197879057544044 -0.16324279440859046 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegBp0_quadScap_ofs" -p "lfLegBp0_FK";
	rename -uid "947C2830-406C-9D2E-4699-8BB11021051B";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_quadScap" -p "lfLegBp0_quadScap_ofs";
	rename -uid "880F8CD7-4196-32D7-36EF-6B94371B81FD";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_hip_fkc_ofs" -p "lfLegBp0_quadScap";
	rename -uid "2E14FD29-4B75-3A0A-EF48-77B7FEFA3DC5";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 5.3290705182007514e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "lfLegBp0_hip_fkc" -p "lfLegBp0_hip_fkc_ofs";
	rename -uid "40114E0B-4519-401C-AE7E-6293A0F1F5F7";
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
createNode nurbsCurve -n "lfLegBp0_hip_fkcShape1" -p "lfLegBp0_hip_fkc";
	rename -uid "B59C9CFD-49C4-8413-52AB-37968D88D1A9";
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
createNode transform -n "lfLegBp0_IK" -p "lfLegBp0_ctl_data";
	rename -uid "9BB4D61F-49A7-D2F9-7086-8BB70A85B5FA";
	setAttr ".t" -type "double3" -5.8362665560894751 -51.646830813409281 15.548650060442803 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_ikCstG" -p "lfLegBp0_IK";
	rename -uid "6A463948-4A14-760F-5A27-B3BB8C322ED8";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_heelRollG" -p "lfLegBp0_ikCstG";
	rename -uid "7E1B1A4D-4101-05CC-F904-1286B2219021";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 3.6540582853666423 2.5053504932438386 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_heelRollG_ctl" -p "lfLegBp0_heelRollG";
	rename -uid "23268319-4E73-F111-A4BA-EDA5E55EB15A";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegBp0_toeRollG" -p "lfLegBp0_heelRollG_ctl";
	rename -uid "96674EAE-4615-63C8-D760-3CBD6370488E";
	setAttr ".t" -type "double3" 1.139058052825904 1.9984014443252818e-15 -16.746157349371501 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_toeRollG_ctl" -p "lfLegBp0_toeRollG";
	rename -uid "500AAB8D-4688-B73C-5778-AFAFEA14E9F2";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegBp0_footRollG" -p "lfLegBp0_toeRollG_ctl";
	rename -uid "9C0FD62F-46AB-8A6E-CF13-0FA92D3530F9";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_outRollG" -p "lfLegBp0_footRollG";
	rename -uid "EF5503C6-426A-1182-964B-11A23042E486";
	setAttr ".t" -type "double3" 1.1550078830907911 -1.5543122344752192e-15 13.260811151465175 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_outRollG_ctl" -p "lfLegBp0_outRollG";
	rename -uid "D4C77FC8-480D-0B1E-6A8A-AF9013DA02F5";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegBp0_inRollG" -p "lfLegBp0_outRollG_ctl";
	rename -uid "F3F8ADE2-45CC-DBBC-EB12-8F80A0FEB9B6";
	setAttr ".t" -type "double3" -4.9189533863814621 -2.2204460492503131e-16 0.32393823290298229 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_inRollG_ctl" -p "lfLegBp0_inRollG";
	rename -uid "AAD8293A-40DF-57F8-60FF-7A8645D879D2";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegBp0_ballRollG" -p "lfLegBp0_inRollG_ctl";
	rename -uid "17E8626A-4DEC-5DFF-B9E3-4BAE4DD9AA5D";
	setAttr ".t" -type "double3" 2.6248874504646587 -2.1858690237078569 -7.1929275842079505 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_ballG_ikc" -p "lfLegBp0_ballRollG";
	rename -uid "E2C83B47-44BB-6BF7-3F07-71BEF8F6AF63";
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
	rename -uid "DA2587FB-4E33-1D54-6374-6DA6F5557A73";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 9.2370555648813024e-14 -1.4681892616587859 7.8489850559674963 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "lfLegBp0_dist_loc1Shape" -p "lfLegBp0_dist_loc1";
	rename -uid "BA00F9D0-4135-0D3D-8C45-CAA825112016";
	setAttr -k off ".v";
createNode transform -n "lfLegBp0_softJ_posGrp" -p "lfLegBp0_ballG_ikc";
	rename -uid "AE06B3F2-4308-92EC-07A0-2C9677387D4F";
	setAttr ".t" -type "double3" -1.4839838351932144e-05 -1.4684132331671158 7.8489945806408841 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_1_ikh_ofs" -p "lfLegBp0_ballG_ikc";
	rename -uid "323EDD5E-4E33-4450-45E1-158249D15270";
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegBp0_1_ikh" -p "lfLegBp0_1_ikh_ofs";
	rename -uid "F5E85CAB-4109-C87B-C4B7-4BA00F900F00";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode nurbsCurve -n "stickCShape1" -p "lfLegBp0_ballG_ikc";
	rename -uid "5864498E-47C2-D34F-3EB0-88A3C7D523CA";
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
	rename -uid "A583D6F3-4A04-CE19-9DE8-4784CA8584E7";
	setAttr ".t" -type "double3" 2.6248874504646587 -2.1858690237078569 -7.1929275842079505 ;
	setAttr ".r" -type "double3" 179.99999999999994 69.448694296522788 90.000000000000071 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegBp0_2_ikh" -p "lfLegBp0_toe_wiggle_grp";
	rename -uid "580158CC-4C9A-42C6-D1CE-A499975FD35C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.858235202855667e-05 -1.8196253270374996e-05 9.8357878489441219e-05 ;
	setAttr ".r" -type "double3" 179.99907163252118 69.44948119353154 -0.00095094247051298586 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.93635821935315777 -3.2467815960641779e-16 0.35104598708685442 ;
	setAttr ".roc" yes;
createNode ikHandle -n "lfLegBp0_3_ikh" -p "lfLegBp0_toe_wiggle_grp";
	rename -uid "16CCE048-41D5-CAC3-A8E7-6AB56A5A8325";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.6012980450346177 -2.7604521763535672e-05 7.6947961913376162e-06 ;
	setAttr ".r" -type "double3" 179.99967411226078 0.00078689948098066445 -8.1657951051903227e-05 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.93635821935315777 -3.2467815960641779e-16 0.35104598708685442 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "diamondShape2" -p "lfLegBp0_inRollG_ctl";
	rename -uid "0CD64CC5-44D3-B118-9435-B389D1E305AE";
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
	rename -uid "33D61C5D-4EE1-7B2D-0496-959E79F64136";
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
	rename -uid "BC0CBA88-4D8B-4DD0-FC71-B48C9CF02AA5";
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
	rename -uid "6AC7E413-4C06-D5C2-31C1-F9AB881CD3AE";
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
createNode transform -n "lfLegBp0_ikc_ofs" -p "lfLegBp0_IK";
	rename -uid "01D4DFCE-419B-C408-2C44-CE9A22A5B2A7";
	setAttr ".t" -type "double3" 9.8703472642103023 4.1550585815679568 -22.904098452446107 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_ikc_ofs1" -p "lfLegBp0_ikc_ofs";
	rename -uid "0754B718-4260-AB52-86B8-E3889F4C058E";
createNode transform -n "lfLegBp0_ikc" -p "lfLegBp0_ikc_ofs1";
	rename -uid "86C5AC35-4624-2510-A874-EA927A18B327";
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
	rename -uid "2842DB4F-474E-644A-32C2-058D21659DAF";
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
	rename -uid "8C454CE4-4490-9678-B328-D9845713C622";
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
	rename -uid "DC9B12AA-412F-92DD-8925-30A91ED87CAA";
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
	rename -uid "56259611-48EE-17CD-4A0F-9297912D81DC";
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
	rename -uid "DDD1162A-42CF-98D0-007A-A781C573D61B";
	setAttr ".t" -type "double3" 1.1390580528259076 -3.6540582853666428 14.240806856127662 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_smart_ctl" -p "lfLegBp0_smart_ctl_ofs";
	rename -uid "DCE5B328-46D7-21FC-A19B-FE925409E04B";
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
	rename -uid "C7C29453-4918-1984-C99B-C995A15AEE8F";
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
	rename -uid "87802D89-4DF8-A8C9-4D9F-5CB041E5FA6D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 0 ;
	setAttr ".r" -type "double3" -60.884872188367126 8.7728294136324028 -85.144794981630952 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegBp0_pvc_ofs" -p "lfLegBp0_IK";
	rename -uid "AED0EAEC-43B0-E735-3BCD-F285353F7F2E";
	setAttr ".t" -type "double3" 22.210413057416886 26.144115693761972 8.6846701791122491 ;
	setAttr ".r" -type "double3" -1.667376757112039 22.913190369300132 7.4728137005945011e-06 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_pvc_ofs1" -p "lfLegBp0_pvc_ofs";
	rename -uid "B2DB5FD7-43AB-0CE8-1066-4F833152E6E4";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "lfLegBp0_pvc" -p "lfLegBp0_pvc_ofs1";
	rename -uid "2A8623C2-46A9-F71A-3B7F-2698ADDCB093";
	addAttr -ci true -sn "fkPin" -ln "fkPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 3.5527136788005009e-15 -1.0658141036401503e-14 ;
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
	rename -uid "22181F0B-4754-64E0-4B17-B39CE991A7C9";
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
	rename -uid "67874FDC-4B4C-9177-08C2-7F9EA1A99053";
	setAttr ".t" -type "double3" 0.93225976611668671 -20.993332372616948 -34.526179165141272 ;
	setAttr ".r" -type "double3" -157.08680983106535 1.6673796665475398 -90.000006886093047 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_pin_fkc" -p "lfLegBp0_pin_fkc_ofs";
	rename -uid "2A929E36-43F0-222F-42AF-8CA9D9EB203C";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfLegBp0_pin_fkcShape1" -p "lfLegBp0_pin_fkc";
	rename -uid "9F00A376-4832-23CB-4246-229E86017072";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.1459679043040965e-16 -5.5832723818282002 -5.5832723818282091
		1.6206433523111282e-16 -3.0912653630570096e-16 -5.0484194548326382
		1.1459679043040957e-16 5.5832723818282002 -5.5832723818282046
		-6.6143744834561349e-32 5.0484194548326506 -3.5969114881247349e-15
		-1.1459679043040962e-16 5.5832723818282002 5.5832723818281984
		-1.6206433523111297e-16 5.0570362956274835e-16 5.0484194548326391
		-1.1459679043040957e-16 -5.5832723818282002 5.5832723818282011
		-9.6645844765502937e-32 -5.0484194548326506 -2.6467493535315788e-15
		1.1459679043040965e-16 -5.5832723818282002 -5.5832723818282091
		1.6206433523111282e-16 -3.0912653630570096e-16 -5.0484194548326382
		1.1459679043040957e-16 5.5832723818282002 -5.5832723818282046
		;
createNode transform -n "lfLegBp0_setting" -p "lfLegBp0_ctl_data";
	rename -uid "B332B707-4825-5E87-D9F7-D6B317E972B7";
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
	rename -uid "0808999F-4A87-749D-8A63-09BE75550444";
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
	rename -uid "BC39247F-4588-66D7-7610-9B9613343178";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegBp0_toe00_3_ctl" -p "lfLegBp0_toe00_3_ctl_ofs";
	rename -uid "A1618190-4EBC-175F-28B2-FFA3763A71C0";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe00_3_ctlShape1" -p "lfLegBp0_toe00_3_ctl";
	rename -uid "DEAD6E2A-476E-0E7A-A7B7-CB82F20C1AF8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.7364280393327754e-15 -0.37554943292677972 -0.37554943292677928
		-1.7332352147107222e-15 -9.7341257573931344e-16 -0.33957344972270659
		-1.7364280393327754e-15 0.37554943292677795 -0.375549432926779
		-1.7441361998376148e-15 0.33957344972270664 -1.3185544961123368e-16
		-1.7518443603424543e-15 0.37554943292677795 0.37554943292677884
		-1.7550371849645075e-15 -9.1860439412175659e-16 0.33957344972270687
		-1.7518443603424543e-15 -0.37554943292677972 0.375549432926779
		-1.7441361998376148e-15 -0.33957344972270842 -6.794439057060073e-17
		-1.7364280393327754e-15 -0.37554943292677972 -0.37554943292677928
		-1.7332352147107222e-15 -9.7341257573931344e-16 -0.33957344972270659
		-1.7364280393327754e-15 0.37554943292677795 -0.375549432926779
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp0_toe01_3_ctl_ofs" -p "lfLegBp0_ctl_data";
	rename -uid "CA02D409-4E03-AA0D-1D00-3AA464DA70AE";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "lfLegBp0_toe01_3_ctl" -p "lfLegBp0_toe01_3_ctl_ofs";
	rename -uid "699D05CC-4A4F-4DE3-4B0D-C39E27AEC44E";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe01_3_ctlShape1" -p "lfLegBp0_toe01_3_ctl";
	rename -uid "E5CAF5F5-4342-F05C-34F7-C3B6DF3374EE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.768648678895411e-15 -0.37554943292677889 -0.37554943292677884
		-1.7654558542733578e-15 -8.5234156039188187e-17 -0.33957344972270614
		-1.768648678895411e-15 0.37554943292677878 -0.37554943292677856
		-1.7763568394002505e-15 0.33957344972270748 2.9612344045751111e-16
		-1.7840649999050901e-15 0.37554943292677878 0.37554943292677928
		-1.7872578245271431e-15 -3.042597442163133e-17 0.33957344972270731
		-1.7840649999050901e-15 -0.37554943292677889 0.37554943292677945
		-1.7763568394002505e-15 -0.33957344972270759 3.6003449949814408e-16
		-1.768648678895411e-15 -0.37554943292677889 -0.37554943292677884
		-1.7654558542733578e-15 -8.5234156039188187e-17 -0.33957344972270614
		-1.768648678895411e-15 0.37554943292677878 -0.37554943292677856
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp0_toe01_4_ctl_ofs" -p "lfLegBp0_ctl_data";
	rename -uid "34975FCF-45E2-60C2-4564-2485667B436D";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_toe01_4_ctl" -p "lfLegBp0_toe01_4_ctl_ofs";
	rename -uid "5F747EE6-433B-5221-E4EA-C2B75E982C7C";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe01_4_ctlShape1" -p "lfLegBp0_toe01_4_ctl";
	rename -uid "6DF73ABF-47F4-2AF7-A953-A6B049A6A6F4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.2149439630110802e-17 -0.37554943292678061 -0.37554943292677972
		7.5342264252163973e-17 -1.7971497163141674e-15 -0.33957344972270703
		7.2149439630110802e-17 0.37554943292677706 -0.37554943292677945
		6.4441279125271298e-17 0.33957344972270576 -5.5983433967997853e-16
		5.673311862043182e-17 0.37554943292677706 0.37554943292677839
		5.354029399837863e-17 -1.7423415346966106e-15 0.33957344972270642
		5.673311862043182e-17 -0.37554943292678061 0.37554943292677856
		6.4441279125271298e-17 -0.33957344972270931 -4.9592328063934552e-16
		7.2149439630110802e-17 -0.37554943292678061 -0.37554943292677972
		7.5342264252163973e-17 -1.7971497163141674e-15 -0.33957344972270703
		7.2149439630110802e-17 0.37554943292677706 -0.37554943292677945
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp0_toe02_3_ctl_ofs" -p "lfLegBp0_ctl_data";
	rename -uid "EAC2B80F-43D6-03DA-9E35-4D9D265BFF09";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "lfLegBp0_toe02_3_ctl" -p "lfLegBp0_toe02_3_ctl_ofs";
	rename -uid "4BE17F9C-4D24-0B75-49A1-77BB2A3F350F";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe02_3_ctlShape1" -p "lfLegBp0_toe02_3_ctl";
	rename -uid "926340A1-4FE4-6689-88F7-A690A23070A5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.8485062790303614e-15 -0.37554943292678056 -0.37554943292677972
		1.8516991036524144e-15 -1.7327084371888961e-15 -0.33957344972270703
		1.8485062790303614e-15 0.37554943292677712 -0.37554943292677945
		1.8407981185255217e-15 0.33957344972270581 -5.5983433967997853e-16
		1.8330899580206825e-15 0.37554943292677712 0.37554943292677839
		1.8298971333986291e-15 -1.6779002555713393e-15 0.33957344972270642
		1.8330899580206825e-15 -0.37554943292678056 0.37554943292677856
		1.8407981185255217e-15 -0.33957344972270925 -4.9592328063934552e-16
		1.8485062790303614e-15 -0.37554943292678056 -0.37554943292677972
		1.8516991036524144e-15 -1.7327084371888961e-15 -0.33957344972270703
		1.8485062790303614e-15 0.37554943292677712 -0.37554943292677945
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp0_toe02_4_ctl_ofs" -p "lfLegBp0_ctl_data";
	rename -uid "D6C24189-4E38-2E92-8329-1BA7907E0B5E";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "lfLegBp0_toe02_4_ctl" -p "lfLegBp0_toe02_4_ctl_ofs";
	rename -uid "9E818C66-4E4D-0175-9DCD-CF8028D3838A";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe02_4_ctlShape1" -p "lfLegBp0_toe02_4_ctl";
	rename -uid "AB54B60A-4A86-A611-E7AD-ED899DBCFA17";
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
	rename -uid "91D605D4-48C0-8C6E-BCB9-8CBF8F890976";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_toe03_3_ctl" -p "lfLegBp0_toe03_3_ctl_ofs";
	rename -uid "5A61BEEA-48CA-C0B7-AA90-FAB6B1E37850";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe03_3_ctlShape1" -p "lfLegBp0_toe03_3_ctl";
	rename -uid "768746D0-49B2-0AC7-6C1C-6493B0505451";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.2149439630110802e-17 -0.37554943292678061 -0.37554943292677972
		7.5342264252163973e-17 -1.7971497163141674e-15 -0.33957344972270703
		7.2149439630110802e-17 0.37554943292677706 -0.37554943292677945
		6.4441279125271298e-17 0.33957344972270576 -5.5983433967997853e-16
		5.673311862043182e-17 0.37554943292677706 0.37554943292677839
		5.354029399837863e-17 -1.7423415346966106e-15 0.33957344972270642
		5.673311862043182e-17 -0.37554943292678061 0.37554943292677856
		6.4441279125271298e-17 -0.33957344972270931 -4.9592328063934552e-16
		7.2149439630110802e-17 -0.37554943292678061 -0.37554943292677972
		7.5342264252163973e-17 -1.7971497163141674e-15 -0.33957344972270703
		7.2149439630110802e-17 0.37554943292677706 -0.37554943292677945
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp0_toe03_4_ctl_ofs" -p "lfLegBp0_ctl_data";
	rename -uid "A9F5A5A3-4D7B-EF12-730F-1C923C3E77A6";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "lfLegBp0_toe03_4_ctl" -p "lfLegBp0_toe03_4_ctl_ofs";
	rename -uid "85794B91-4305-C893-84A6-5287CEA8F82D";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe03_4_ctlShape1" -p "lfLegBp0_toe03_4_ctl";
	rename -uid "6345F15F-4EC4-3628-C6E8-C88DEBF42798";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.768648678895411e-15 -0.37554943292677889 -0.37554943292677845
		-1.7654558542733578e-15 -8.5234156039188187e-17 -0.33957344972270576
		-1.768648678895411e-15 0.37554943292677878 -0.37554943292677817
		-1.7763568394002505e-15 0.33957344972270748 7.2410233052625586e-16
		-1.7840649999050901e-15 0.37554943292677878 0.37554943292677967
		-1.7872578245271431e-15 -3.042597442163133e-17 0.3395734497227077
		-1.7840649999050901e-15 -0.37554943292677889 0.37554943292677984
		-1.7763568394002505e-15 -0.33957344972270759 7.8801338956688888e-16
		-1.768648678895411e-15 -0.37554943292677889 -0.37554943292677845
		-1.7654558542733578e-15 -8.5234156039188187e-17 -0.33957344972270576
		-1.768648678895411e-15 0.37554943292677878 -0.37554943292677817
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp0_toe04_3_ctl_ofs" -p "lfLegBp0_ctl_data";
	rename -uid "C915A785-46CC-B709-85F1-6889567335ED";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegBp0_toe04_3_ctl" -p "lfLegBp0_toe04_3_ctl_ofs";
	rename -uid "03DACAFA-466E-4FA5-995D-24A5670E781B";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe04_3_ctlShape1" -p "lfLegBp0_toe04_3_ctl";
	rename -uid "E3CBE6AA-4964-EAF4-279F-EEAE26D976F8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.7081605048394925e-18 -0.37554943292677884 -0.37554943292677928
		1.0900985126892667e-17 -2.0792876913916882e-17 -0.33957344972270659
		7.7081605048394879e-18 0.37554943292677884 -0.375549432926779
		-4.4490478281375412e-33 0.33957344972270753 -1.3185544961123368e-16
		-7.708160504839491e-18 0.37554943292677884 0.37554943292677884
		-1.0900985126892676e-17 3.401530470363998e-17 0.33957344972270687
		-7.7081605048394879e-18 -0.37554943292677884 0.375549432926779
		-6.5007203149435998e-33 -0.33957344972270753 -6.794439057060073e-17
		7.7081605048394925e-18 -0.37554943292677884 -0.37554943292677928
		1.0900985126892667e-17 -2.0792876913916882e-17 -0.33957344972270659
		7.7081605048394879e-18 0.37554943292677884 -0.375549432926779
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp0_toe04_4_ctl_ofs" -p "lfLegBp0_ctl_data";
	rename -uid "FF40E7BB-4AF6-332B-C6E1-92A017A0360D";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_toe04_4_ctl" -p "lfLegBp0_toe04_4_ctl_ofs";
	rename -uid "4C00E11B-4A19-86CB-CB0D-5189819874D3";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe04_4_ctlShape1" -p "lfLegBp0_toe04_4_ctl";
	rename -uid "8DFB5DA0-442D-1C64-602C-0DA4399FFAA3";
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
createNode transform -n "neckQd0_ctl_data" -p "master_ctl";
	rename -uid "62EAC584-4368-F313-82DE-12A7677B1655";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_IK" -p "neckQd0_ctl_data";
	rename -uid "4C2BD657-4DC9-5F70-733B-F69D234BDE32";
	setAttr ".t" -type "double3" -4.1604042047768875e-05 66.211829493164458 9.6762037106629979 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_cog_ctl_ofs" -p "neckQd0_IK";
	rename -uid "3FF13C4E-4CCB-9549-9E75-7DB99E72319A";
	setAttr ".r" -type "double3" -39.718114652890492 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_cog_ctl_ofs1" -p "neckQd0_cog_ctl_ofs";
	rename -uid "DD173596-49C6-0EE6-C1EF-7F8BBE1C0623";
	setAttr ".t" -type "double3" 6.7762635780344027e-21 0 7.1054273576010019e-15 ;
createNode transform -n "neckQd0_cog_ctl" -p "neckQd0_cog_ctl_ofs1";
	rename -uid "95FF8F73-4F51-3CEA-4551-E8BC1C70AA6E";
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
	rename -uid "81171294-4DE8-61E7-2193-C3B969EEE89C";
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
	rename -uid "0828602C-49AB-91F4-E1D9-4B9CE97996BD";
	setAttr ".t" -type "double3" 2.405573570202213e-18 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_base_ctl" -p "neckQd0_base_ctl_ofs";
	rename -uid "60BE8478-4D89-415E-313A-E782F3ED1ACE";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode nurbsCurve -n "neckQd0_base_ctlShape1" -p "neckQd0_base_ctl";
	rename -uid "CF666E2F-402A-9210-621C-07956BC3E66F";
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
	rename -uid "FC232395-4F85-E16F-CCF0-8EB5DB7CA7B7";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_tangent0_ctl" -p "neckQd0_tangent0_ctl_ofs";
	rename -uid "A95F7339-47F1-8F73-8E6A-53A34A5D05BD";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "neckQd0_tangent0_ctlShape1" -p "neckQd0_tangent0_ctl";
	rename -uid "9DF912C7-447C-781D-1FDE-2F8C131402CC";
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
	rename -uid "B14FD115-45D9-CB08-79A0-C48817F7B53C";
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
	rename -uid "7517D1EF-4B36-93F9-40E0-6BA31661E78B";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -2.405573570202213e-18 0 0 ;
	setAttr ".r" -type "double3" -39.718114652890414 -1.5193356202865466e-15 -1.828871780971538e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 39.718114652890492 0 0 ;
	setAttr ".radi" 1.6226424911075719;
createNode joint -n "neckQd0_two_ikj_end" -p "neckQd0_two_ikj";
	rename -uid "CE4DA331-499E-FE0F-5A93-D494DC2BB2BC";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -5.4537808730908965e-15 7.1054273576010019e-15 8.1132124555378482 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 1.6226424911075719;
createNode ikEffector -n "effector22" -p "neckQd0_two_ikj";
	rename -uid "26B9E4DB-4DD9-DF1D-55EF-DBB0C84D87D2";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "neckQd0_fore_ctl_SPACE_1_ofs" -p "neckQd0_base_ctl";
	rename -uid "EC1086E9-405E-1474-1908-45B6837C5B32";
	setAttr ".t" -type "double3" -5.4561864466610988e-15 0 8.1132124555378553 ;
	setAttr ".r" -type "double3" 39.718114652890492 0 0 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_1" -p "neckQd0_fore_ctl_SPACE_1_ofs";
	rename -uid "F077E62E-4E93-8769-A729-D39B9B79F425";
createNode transform -n "neckQd0_mid_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "B79498F4-4483-CA3D-A9A2-C992B2ADEEDE";
	setAttr ".t" -type "double3" -2.7396027070178408e-15 2.8421709430404007e-14 4.0566062277689454 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_mid_ctl_ofs1" -p "neckQd0_mid_ctl_ofs";
	rename -uid "E5A73A48-40DE-16FC-FD5E-F9878FDD02B7";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_mid_ctl_ofs2" -p "neckQd0_mid_ctl_ofs1";
	rename -uid "836E0C46-4E35-B59C-ACC6-DE825BBFC5FF";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_mid_ctl" -p "neckQd0_mid_ctl_ofs2";
	rename -uid "B2A3C325-40B5-097C-803C-AE984D74D70B";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "neckQd0_mid_ctlShape1" -p "neckQd0_mid_ctl";
	rename -uid "257D47C1-4D3B-B4EC-8CC8-658FA2DD7C25";
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
	rename -uid "E82EB3DE-4FE9-2AB6-C86C-BAB552BF3853";
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
	rename -uid "7A331991-401C-CC3E-96FA-F891D54790C1";
	setAttr ".t" -type "double3" -5.4537808730908965e-15 7.1054273576010019e-15 8.1132124555378482 ;
	setAttr ".r" -type "double3" 39.718114652890492 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_fore_ctl_ofs1" -p "neckQd0_fore_ctl_ofs";
	rename -uid "A1D5A288-4BBA-F8E6-3DF7-FCB5286EFE97";
createNode transform -n "neckQd0_fore_ctl" -p "neckQd0_fore_ctl_ofs1";
	rename -uid "818E6997-4531-E70B-4DE5-5F9C335F1C88";
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
	rename -uid "F4FE9DCB-40A8-46AF-385C-41B7E6F121C2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.1910443213837079 5.1910443213837079 3.1785979062072979e-16
		4.495216268289082e-16 7.341245282180668 4.495216268289082e-16
		-5.1910443213837079 5.1910443213837034 3.1785979062072974e-16
		-7.3412452821806733 3.8057145179501668e-16 2.3303280514381413e-32
		-5.1910443213837079 -5.1910443213837079 -3.1785979062072974e-16
		-7.3537756082358565e-16 -7.3412452821806733 -4.4952162682890889e-16
		5.1910443213837079 -5.1910443213837034 -3.1785979062072974e-16
		7.3412452821806733 -1.001123027100044e-15 -6.1301105534538918e-32
		5.1910443213837079 5.1910443213837079 3.1785979062072979e-16
		4.495216268289082e-16 7.341245282180668 4.495216268289082e-16
		-5.1910443213837079 5.1910443213837034 3.1785979062072974e-16
		;
createNode transform -n "neckQd0_tangent1_ctl_ofs" -p "neckQd0_fore_ctl";
	rename -uid "3785212B-45BB-7EC2-D0B6-9FB1DC15A7CD";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_tangent1_ctl" -p "neckQd0_tangent1_ctl_ofs";
	rename -uid "8702DF0E-4D6F-C057-B6FE-ABB8E104FEC2";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "neckQd0_tangent1_ctlShape1" -p "neckQd0_tangent1_ctl";
	rename -uid "56F510D3-4E6B-C8B5-3EFF-2792956E2695";
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
	rename -uid "A1240172-437B-64D8-6510-D993C9A7F11F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4.1604042053222656e-05 71.396261815696704 15.916866964018151 1;
	setAttr ".radi" 0.32452849822151436;
createNode ikHandle -n "neckQd0_two_ikj_ikh" -p "neckQd0_tangent1_ctl";
	rename -uid "C25F1003-49AD-9FC6-CFD9-4F870D0AA0E1";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -39.718114652890492 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "neckQd0_anchorToRbj" -p "neckQd0_fore_ctl";
	rename -uid "93E4CF6F-4331-726F-4321-AF972164E9FB";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "neckQd0_anchorToRbjShape" -p "neckQd0_anchorToRbj";
	rename -uid "DC8A3ACA-46CD-B191-A069-B095126F5DAD";
	setAttr -k off ".v";
createNode transform -n "head0_head_fkc_SPACE_1_ofs" -p "neckQd0_anchorToRbj";
	rename -uid "E827F769-428F-861E-05EF-CFB7F601BBF6";
	setAttr ".t" -type "double3" 4.1604042024800947e-05 2.5372472203297605 2.0641984193708716 ;
createNode transform -n "head0_head_fkc_SPACE_1" -p "head0_head_fkc_SPACE_1_ofs";
	rename -uid "24D8F387-4B6F-50DA-91A2-529687FE344C";
createNode transform -n "neckQd0_setting" -p "neckQd0_IK";
	rename -uid "FC057377-4F34-946F-6DC7-7C995B0740FC";
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
	rename -uid "1B60A840-4F45-0F57-FF3F-6A912D45A02A";
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
createNode transform -n "rtArmBp0_ctl_data" -p "master_ctl";
	rename -uid "1B9E2D9F-4A99-9266-204A-F8B3DC831B3E";
	setAttr -cb on ".ro";
createNode transform -n "rtArmBp0_FK" -p "rtArmBp0_ctl_data";
	rename -uid "5F3380BF-4353-024D-54ED-3680B58E34D1";
	setAttr -cb on ".ro";
createNode transform -n "rtArmBp0_clavicle_fkc_ofs" -p "rtArmBp0_FK";
	rename -uid "55B7838E-45D6-71C1-6855-C58C4661AB4C";
	setAttr -cb on ".ro";
createNode transform -n "rtArmBp0_clavicle_fkc" -p "rtArmBp0_clavicle_fkc_ofs";
	rename -uid "C2F00B01-4B38-DFD9-0206-7BAEEDFC0EBC";
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
	rename -uid "6F9724C8-4FEC-5231-5DD9-86BD15A1F50D";
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
	rename -uid "39688786-4A9A-0E78-34DF-A4ABC0EE9E6A";
	setAttr -cb on ".ro";
createNode transform -n "rtArmBp0_upr_fkc_ofs1" -p "rtArmBp0_upr_fkc_ofs";
	rename -uid "5116248D-444F-3BBD-F00F-21B589782CC3";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "rtArmBp0_upr_fkc" -p "rtArmBp0_upr_fkc_ofs1";
	rename -uid "5204F389-4365-06C8-724A-B194D5892657";
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
	rename -uid "005143A6-42CF-4E45-B308-BAA661CE0EF8";
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
	rename -uid "D87F979A-4D1B-B3D6-3ACF-5D93B9AC0665";
	setAttr -cb on ".ro";
createNode transform -n "rtArmBp0_lwr_fkc" -p "rtArmBp0_lwr_fkc_ofs";
	rename -uid "998AEE93-4F12-C295-86DD-739D10B193A1";
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
	rename -uid "1E8B3CDD-4002-DBAD-7468-6F937865D944";
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
	rename -uid "81C91B69-48D4-0C0E-93BC-98B284B6E119";
	setAttr -cb on ".ro";
createNode transform -n "rtArmBp0_palm_fkc" -p "rtArmBp0_palm_fkc_ofs";
	rename -uid "88466B5C-4CB4-0B4E-516E-3A99AF467477";
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
	rename -uid "FEAB6881-45FB-3336-3B3E-46813C903F27";
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
	rename -uid "659DC4B9-450C-5ACF-BA7B-C4927B96E58D";
	setAttr ".t" -type "double3" -3.1974423109204508e-14 -3.5527136788005009e-15 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999956 ;
createNode transform -n "rtArmBp0_IK" -p "rtArmBp0_ctl_data";
	rename -uid "63C43911-4AB9-D381-25A5-9EAFE9466D8D";
	setAttr -cb on ".ro";
createNode transform -n "rtArmBp0_ikc_ofs" -p "rtArmBp0_IK";
	rename -uid "546244D0-4CD1-6FB5-75D8-23ACA617C79E";
	setAttr ".t" -type "double3" -9.7238018710279182 14.987575597654558 21.722429851272686 ;
	setAttr ".r" -type "double3" 12.690822119425013 166.51929044088112 -86.106441410616924 ;
	setAttr -cb on ".ro";
createNode transform -n "rtArmBp0_ikc_ofs1" -p "rtArmBp0_ikc_ofs";
	rename -uid "23A26E39-40B6-8F74-9DE8-EEB913D0B05B";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999933 ;
createNode transform -n "rtArmBp0_ikc" -p "rtArmBp0_ikc_ofs1";
	rename -uid "7AC88C5B-415F-E38D-2531-E1A5B6921F55";
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
	setAttr -k on ".palmAlign" 1;
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on "._______________";
	setAttr -k on ".space";
createNode nurbsCurve -n "rtArmBp0_ikcShape1" -p "rtArmBp0_ikc";
	rename -uid "CADDC91D-4EF9-A969-CD10-61AE0EE225A5";
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
	rename -uid "6969B4DA-4BF9-D9E5-DF7B-40970B982CED";
	setAttr ".t" -type "double3" -15.559658358416934 29.728039324102756 -3.9151496754244892 ;
	setAttr ".r" -type "double3" -11.31073476004318 12.163396637700897 2.0334972671381305e-16 ;
	setAttr -cb on ".ro";
createNode transform -n "rtArmBp0_pvc_ofs1" -p "rtArmBp0_pvc_ofs";
	rename -uid "B3DABBAF-49C7-9B8D-6753-EB8945DDFA6F";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtArmBp0_pvc" -p "rtArmBp0_pvc_ofs1";
	rename -uid "4CBF95FA-437A-AF32-1E17-8BBA86702041";
	addAttr -ci true -sn "fkPin" -ln "fkPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "arm:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 3.5527136788005009e-15 1.6431300764452317e-14 ;
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
	rename -uid "E9FC76C0-40B2-7291-490C-1E9B0CDEA8E6";
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
	rename -uid "E114D7D4-4804-63C7-45E1-9DB7C58BD291";
	setAttr ".t" -type "double3" 0.30299907288497607 -19.61075132185249 22.889967233575284 ;
	setAttr ".r" -type "double3" 179.99999999999997 2.683309945353606 90.885187238897927 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "rtArmBp0_pin_fkc" -p "rtArmBp0_pin_fkc_ofs";
	rename -uid "3EEF684A-4BC0-7033-2BFA-71B67758D9B9";
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
	rename -uid "979CDB80-4F85-F2FD-3B9A-2EB4F14082DC";
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
	rename -uid "75634780-4E53-63AB-9574-6997B66191A9";
	setAttr -cb on ".ro";
createNode transform -n "rtArmBp0_palm_ikc" -p "rtArmBp0_palm_ikc_ofs";
	rename -uid "CB1FD262-4A5A-F4E0-4C6C-20834C1D394F";
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
	rename -uid "92E26541-44D2-69BA-81EA-8DB255BAD633";
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
createNode transform -n "rtArmBp0_setting" -p "rtArmBp0_ctl_data";
	rename -uid "0B098BF8-4D6E-609B-1400-B68A9679A99F";
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
	rename -uid "D85D65D5-45D7-DD70-EA8F-509C0B219466";
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
createNode transform -n "rtHand0_ctl_data" -p "master_ctl";
	rename -uid "5C6DE0A0-47F1-407F-6B40-FBB31D02623C";
	setAttr -cb on ".ro";
createNode transform -n "rtHand0_fgr00_1_ctl_ofs_ofs" -p "rtHand0_ctl_data";
	rename -uid "4542F282-4799-993C-50DF-78B0A79F3C3B";
	setAttr -cb on ".ro";
createNode transform -n "rtHand0_fgr00_1_ctl_ofs" -p "rtHand0_fgr00_1_ctl_ofs_ofs";
	rename -uid "5E746F3D-44C8-D364-6ADF-E996976B1ADA";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 -1.7763568394002505e-15 ;
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 0.99999999999999978 ;
createNode transform -n "rtHand0_fgr00_1_ctl" -p "rtHand0_fgr00_1_ctl_ofs";
	rename -uid "9E7B17BE-40DE-6859-A63E-F891E8902001";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr00_1_ctlShape1" -p "rtHand0_fgr00_1_ctl";
	rename -uid "72114360-4A49-A9CE-7F04-50A5A4A167AC";
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
	rename -uid "1723962B-4025-5CD5-FF10-CF980A54B839";
	setAttr ".t" -type "double3" -4.15644061668673 0.58823287137960456 -0.28277819055973108 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
createNode transform -n "rtHand0_fgr00_2_ctl_ofs" -p "rtHand0_fgr00_2_ctl_ofs_ofs";
	rename -uid "DD1A5438-4D67-265D-80EB-8D917B91ECFE";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -3.5527136788005009e-15 4.4408920985006262e-16 ;
	setAttr -cb on ".ro" 3;
createNode transform -n "rtHand0_fgr00_2_ctl" -p "rtHand0_fgr00_2_ctl_ofs";
	rename -uid "DFB08194-418F-90BC-0C70-A9B3AA260294";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999956 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr00_2_ctlShape1" -p "rtHand0_fgr00_2_ctl";
	rename -uid "716F4B02-4021-40F5-0869-BE88983CDECE";
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
	rename -uid "FDB82701-4354-DD31-EB7E-C4945535E236";
	setAttr ".t" -type "double3" -2.94054099991207 -5.3290705182007514e-15 0 ;
	setAttr ".r" -type "double3" 0 -26.105210869895313 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "rtHand0_fgr00_3_ctl_ofs" -p "rtHand0_fgr00_3_ctl_ofs_ofs";
	rename -uid "2348561D-4518-A337-3886-7D810438DBE2";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 0 -1.7763568394002505e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtHand0_fgr00_3_ctl" -p "rtHand0_fgr00_3_ctl_ofs";
	rename -uid "CFD42BBE-4481-B726-C14C-D4832DB8EA0D";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr00_3_ctlShape1" -p "rtHand0_fgr00_3_ctl";
	rename -uid "D862342B-48CB-2812-24D4-849AB4F91E08";
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
	rename -uid "803862BC-408C-CBF2-50AB-E99BA045068B";
	setAttr -cb on ".ro";
createNode transform -n "rtHand0_fgr01_1_ctl_ofs" -p "rtHand0_fgr01_1_ctl_ofs_ofs";
	rename -uid "B62330E7-432F-7721-B3B7-9BABBDB288BA";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
createNode transform -n "rtHand0_fgr01_1_ctl" -p "rtHand0_fgr01_1_ctl_ofs";
	rename -uid "0B29DD50-4AAC-5299-C469-8D9F2FFAB869";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr01_1_ctlShape1" -p "rtHand0_fgr01_1_ctl";
	rename -uid "780ED2F0-4157-09A8-A40E-FBBC1162DE1F";
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
	rename -uid "7649650B-4C02-6069-E955-F2B9E2B729DC";
	setAttr ".t" -type "double3" -6.1226804357641527 -4.4408920985006262e-15 3.907985046680551e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "rtHand0_fgr01_2_ctl_ofs" -p "rtHand0_fgr01_2_ctl_ofs_ofs";
	rename -uid "8CBDD5F0-4E6F-4300-1953-6CADD1655EDF";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 1.7763568394002505e-15 3.5527136788005009e-15 ;
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "rtHand0_fgr01_2_ctl" -p "rtHand0_fgr01_2_ctl_ofs";
	rename -uid "C8197E5C-4D95-9AE4-586E-DEAED798FDF1";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr01_2_ctlShape1" -p "rtHand0_fgr01_2_ctl";
	rename -uid "FD5187BF-4936-DEFC-CE11-F8BC69443211";
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
	rename -uid "5D0D1225-439F-7E3B-7C24-E7B62395D8FD";
	setAttr ".t" -type "double3" -4.737385800268906 1.0658141036401503e-14 2.4868995751603507e-14 ;
	setAttr ".r" -type "double3" 0 -66.298785885297974 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "rtHand0_fgr01_3_ctl_ofs" -p "rtHand0_fgr01_3_ctl_ofs_ofs";
	rename -uid "E368B764-4D1D-C2AC-9F91-B1815CA38E85";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtHand0_fgr01_3_ctl" -p "rtHand0_fgr01_3_ctl_ofs";
	rename -uid "584B33DB-47DA-744D-226C-028A0CDF16BA";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr01_3_ctlShape1" -p "rtHand0_fgr01_3_ctl";
	rename -uid "6268F468-4DCF-380B-F577-4B95DEE14577";
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
	rename -uid "A7019277-4B24-7B38-759D-17BD16E38294";
	setAttr ".t" -type "double3" -3.459342247670822 -7.1054273576010019e-15 -5.3290705182007514e-15 ;
	setAttr ".r" -type "double3" 0 -19.821093119868152 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "rtHand0_fgr01_4_ctl_ofs" -p "rtHand0_fgr01_4_ctl_ofs_ofs";
	rename -uid "CFA41DE1-45F6-7556-71FB-60A17FF238FD";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "rtHand0_fgr01_4_ctl" -p "rtHand0_fgr01_4_ctl_ofs";
	rename -uid "E091B7A8-4650-BC0C-3A0B-7587CC188A01";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr01_4_ctlShape1" -p "rtHand0_fgr01_4_ctl";
	rename -uid "5256BCE2-4F2B-810E-BE76-D8B50A164B3B";
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
	rename -uid "CC98DA1F-4C2C-1AE5-D37F-8A811DD3A98A";
	setAttr -cb on ".ro";
createNode transform -n "rtHand0_fgr02_1_ctl_ofs" -p "rtHand0_fgr02_1_ctl_ofs_ofs";
	rename -uid "75A2B133-4C0D-5F77-4522-12B4C7AC43A5";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 1.7763568394002505e-15 3.5527136788005009e-15 ;
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "rtHand0_fgr02_1_ctl" -p "rtHand0_fgr02_1_ctl_ofs";
	rename -uid "7B77CB5E-4E92-630E-EABB-FA8DBDBF21C8";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr02_1_ctlShape1" -p "rtHand0_fgr02_1_ctl";
	rename -uid "128F4CC0-4E36-DF36-0FAC-448D908EE3B3";
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
	rename -uid "56472488-4684-FE01-8BBB-13BF0543F87D";
	setAttr ".t" -type "double3" -6.2585520346885373 -1.7763568394002505e-15 3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "rtHand0_fgr02_2_ctl_ofs" -p "rtHand0_fgr02_2_ctl_ofs_ofs";
	rename -uid "14C17990-44FB-B4A6-429B-6094F7860781";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 -1.7763568394002505e-15 3.5527136788005009e-15 ;
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "rtHand0_fgr02_2_ctl" -p "rtHand0_fgr02_2_ctl_ofs";
	rename -uid "06911822-4694-32FE-3DC2-B0A49BF625B3";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr02_2_ctlShape1" -p "rtHand0_fgr02_2_ctl";
	rename -uid "01256060-41B0-532E-A384-E2AA74D64561";
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
	rename -uid "23CA84F0-4619-C264-9E0E-21BA94082A16";
	setAttr ".t" -type "double3" -4.7872756746817515 5.3290705182007514e-15 -1.7763568394002505e-14 ;
	setAttr ".r" -type "double3" 0 -71.232806517331937 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999944 1.0000000000000002 ;
createNode transform -n "rtHand0_fgr02_3_ctl_ofs" -p "rtHand0_fgr02_3_ctl_ofs_ofs";
	rename -uid "68722E35-4D08-7250-1DB5-6A9FE448598B";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -1.7763568394002505e-15 -1.7763568394002505e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "rtHand0_fgr02_3_ctl" -p "rtHand0_fgr02_3_ctl_ofs";
	rename -uid "BEC6F990-4A59-7F26-9B9D-ADA2D87F221A";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr02_3_ctlShape1" -p "rtHand0_fgr02_3_ctl";
	rename -uid "05F2E67F-41D6-28E9-A130-ABBD4503660E";
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
	rename -uid "C89195A2-42CD-668F-166E-53A65B01E478";
	setAttr ".t" -type "double3" -3.6945286731120497 -8.8817841970012523e-15 1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" 0 -20.417257060770318 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999933 0.99999999999999978 ;
createNode transform -n "rtHand0_fgr02_4_ctl_ofs" -p "rtHand0_fgr02_4_ctl_ofs_ofs";
	rename -uid "C5873B5A-412D-38EF-8AD7-409EA9BC9D5E";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 0 4.4408920985006262e-16 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtHand0_fgr02_4_ctl" -p "rtHand0_fgr02_4_ctl_ofs";
	rename -uid "2C070084-4158-49C4-A3A8-4C88E6047B81";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr02_4_ctlShape1" -p "rtHand0_fgr02_4_ctl";
	rename -uid "6747E412-412E-7855-273D-288CFA7B1BED";
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
	rename -uid "FE124DD6-4538-F9B5-2DBF-D59F344EDAA7";
	setAttr -cb on ".ro";
createNode transform -n "rtHand0_fgr03_1_ctl_ofs" -p "rtHand0_fgr03_1_ctl_ofs_ofs";
	rename -uid "63004B63-4854-DBB6-209F-83A6A2F872C4";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 0 0 ;
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtHand0_fgr03_1_ctl" -p "rtHand0_fgr03_1_ctl_ofs";
	rename -uid "0DC67DD2-4B83-4D2C-220A-5E9446CB2538";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr03_1_ctlShape1" -p "rtHand0_fgr03_1_ctl";
	rename -uid "CA494F2B-40F3-C008-26A7-468DA74BFE99";
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
	rename -uid "98446C52-4298-43FC-0CD4-DF8A275E3286";
	setAttr ".t" -type "double3" -6.2239324419496915 4.4408920985006262e-15 2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
createNode transform -n "rtHand0_fgr03_2_ctl_ofs" -p "rtHand0_fgr03_2_ctl_ofs_ofs";
	rename -uid "48278D6A-41F9-2FB3-8B64-DF80480B0605";
	setAttr ".t" -type "double3" -4.4408920985006262e-16 0 0 ;
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "rtHand0_fgr03_2_ctl" -p "rtHand0_fgr03_2_ctl_ofs";
	rename -uid "8D2A64A0-43E0-FD9B-6175-0999CD20FE45";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr03_2_ctlShape1" -p "rtHand0_fgr03_2_ctl";
	rename -uid "40F8D233-448A-E6F2-CD1C-0BBFC7F966DF";
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
	rename -uid "B64811C6-4126-6505-27BB-B18312D12416";
	setAttr ".t" -type "double3" -4.6225742785655175 1.2434497875801753e-14 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 0 -68.665304122595458 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999956 0.99999999999999989 ;
createNode transform -n "rtHand0_fgr03_3_ctl_ofs" -p "rtHand0_fgr03_3_ctl_ofs_ofs";
	rename -uid "E2F21E84-4D71-F8FB-1E49-4E8D13C6A3EE";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -8.8817841970012523e-16 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtHand0_fgr03_3_ctl" -p "rtHand0_fgr03_3_ctl_ofs";
	rename -uid "A2E227A5-45B3-E874-0B7E-3D98B8EF0E6F";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr03_3_ctlShape1" -p "rtHand0_fgr03_3_ctl";
	rename -uid "958D93C2-434E-2922-C9F8-15BE34A6D47D";
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
	rename -uid "C3EFA481-42F1-4AD9-83E4-648CFF0EA3B9";
	setAttr ".t" -type "double3" -3.5564714984509109 -2.4868995751603507e-14 -1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" 0 -18.55495879538142 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
createNode transform -n "rtHand0_fgr03_4_ctl_ofs" -p "rtHand0_fgr03_4_ctl_ofs_ofs";
	rename -uid "33A20F15-4A21-8A92-22FE-2E9EFA894DDB";
	setAttr ".t" -type "double3" 0 0 4.4408920985006262e-16 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
createNode transform -n "rtHand0_fgr03_4_ctl" -p "rtHand0_fgr03_4_ctl_ofs";
	rename -uid "3EFCF46F-41A0-3E29-C9B5-CEAAA89E63D5";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr03_4_ctlShape1" -p "rtHand0_fgr03_4_ctl";
	rename -uid "DBB04ACC-4E35-D2B1-DCE3-41AA861CD4D7";
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
	rename -uid "77BABE0F-499A-3CAC-E691-97BD15E5543D";
	setAttr -cb on ".ro";
createNode transform -n "rtHand0_fgr04_1_ctl_ofs" -p "rtHand0_fgr04_1_ctl_ofs_ofs";
	rename -uid "85626975-43B8-3C38-2913-EC99F36C08AC";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -1.7763568394002505e-15 3.5527136788005009e-15 ;
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "rtHand0_fgr04_1_ctl" -p "rtHand0_fgr04_1_ctl_ofs";
	rename -uid "4CEFE94A-4EA0-907C-8D9D-CDB91A988D4A";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr04_1_ctlShape1" -p "rtHand0_fgr04_1_ctl";
	rename -uid "CD5BE8A6-4D29-056A-E75A-9E917DF95027";
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
	rename -uid "B2AF66E9-4417-BB0E-E4BA-A5A3BC2B5101";
	setAttr ".t" -type "double3" -5.8093929308999357 -0.3287706922282716 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 1.0000000000000004 ;
createNode transform -n "rtHand0_fgr04_2_ctl_ofs" -p "rtHand0_fgr04_2_ctl_ofs_ofs";
	rename -uid "07B82A76-4C62-B2E5-275D-E7BE0C4DED14";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 3.5527136788005009e-15 ;
	setAttr -cb on ".ro" 3;
createNode transform -n "rtHand0_fgr04_2_ctl" -p "rtHand0_fgr04_2_ctl_ofs";
	rename -uid "55632032-408E-D330-D3AA-1682946B256D";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr04_2_ctlShape1" -p "rtHand0_fgr04_2_ctl";
	rename -uid "8FE731F5-41B7-5556-5B41-21A875E689D6";
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
	rename -uid "B4FC9378-473F-9B8E-DB8E-419C13B8F1F8";
	setAttr ".t" -type "double3" -4.7022922689891704 1.5987211554602254e-14 -3.5527136788005009e-14 ;
	setAttr ".r" -type "double3" 0 -65.544883513719455 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "rtHand0_fgr04_3_ctl_ofs" -p "rtHand0_fgr04_3_ctl_ofs_ofs";
	rename -uid "C801A040-4AEB-D508-A237-DD81515D3265";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 1.7763568394002505e-15 ;
	setAttr -cb on ".ro";
createNode transform -n "rtHand0_fgr04_3_ctl" -p "rtHand0_fgr04_3_ctl_ofs";
	rename -uid "E8F14670-432C-691B-A8AC-06AE7A975E17";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr04_3_ctlShape1" -p "rtHand0_fgr04_3_ctl";
	rename -uid "94A7F281-422E-3C31-3100-8A9F31D18562";
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
	rename -uid "307C4C1E-4D52-A09D-3B54-3EAAF5986A53";
	setAttr ".t" -type "double3" -3.4452574625156203 -3.1974423109204508e-14 -1.2434497875801753e-14 ;
	setAttr ".r" -type "double3" 0 -13.546793162252655 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "rtHand0_fgr04_4_ctl_ofs" -p "rtHand0_fgr04_4_ctl_ofs_ofs";
	rename -uid "D7A31579-4C24-2F70-4DF8-A2BA4B8743DC";
	setAttr ".t" -type "double3" 0 0 8.8817841970012523e-16 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "rtHand0_fgr04_4_ctl" -p "rtHand0_fgr04_4_ctl_ofs";
	rename -uid "9182088B-4A7F-BC4B-6384-5AB613B37E58";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtHand0_fgr04_4_ctlShape1" -p "rtHand0_fgr04_4_ctl";
	rename -uid "D8F0DB39-469E-40E4-F50F-76853C14E549";
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
	rename -uid "1994D90D-4C34-117A-AA4C-E39E05855BB6";
	setAttr ".t" -type "double3" -6.7711003625594177 9.3488445602545838 21.848236700195464 ;
	setAttr ".r" -type "double3" 76.064608741676054 -29.463742724317367 89.610988072279298 ;
	setAttr -cb on ".ro";
createNode transform -n "rtHand0_fgr00_2_ikc_ofs1" -p "rtHand0_fgr00_2_ikc_ofs";
	rename -uid "6D1FB455-4BDC-270A-9216-ADB72F595484";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "rtHand0_fgr00_2_ikc" -p "rtHand0_fgr00_2_ikc_ofs1";
	rename -uid "290720F8-4CED-F082-D105-89BBF3A9BC1B";
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
	rename -uid "98C0AD89-44F9-87B7-432D-C69E7DFA1859";
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
	rename -uid "091E0E91-43C3-5834-28CE-D89F06DD6B74";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.8257863849893621 -1.7763568394002505e-15 -1.2927301285260264 ;
	setAttr ".r" -type "double3" 0 -3.9012395161850217 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.47646691100619343 0.8450415773720964 0.24266028770422271 ;
	setAttr ".roc" yes;
createNode transform -n "rtHand0_fgr01_2_ikc_ofs" -p "rtHand0_ctl_data";
	rename -uid "F538019A-4D09-274F-B0C7-E4B95E33437B";
	setAttr ".t" -type "double3" -7.8008489896441144 6.9735724318616024 23.708155690759895 ;
	setAttr ".r" -type "double3" 7.9061029156742819 7.6888873784548979 91.887928760146025 ;
	setAttr -cb on ".ro";
createNode transform -n "rtHand0_fgr01_2_ikc_ofs1" -p "rtHand0_fgr01_2_ikc_ofs";
	rename -uid "86092C0D-449D-29E1-03C8-9A93183CEBD9";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
createNode transform -n "rtHand0_fgr01_2_ikc" -p "rtHand0_fgr01_2_ikc_ofs1";
	rename -uid "7CBAE370-4347-A801-FB2D-23B310569701";
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
	rename -uid "E00B4D39-42EF-20F0-4E99-C38415212135";
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
	rename -uid "C9397E65-47ED-029E-5330-198E00A71B9F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.8974957277219247 0 -5.5348660276019217 ;
	setAttr ".r" -type "double3" 0 -3.9012395161850248 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.20026823101834579 0.13631336093385252 0.97021198883321413 ;
	setAttr ".roc" yes;
createNode transform -n "rtHand0_fgr02_2_ikc_ofs" -p "rtHand0_ctl_data";
	rename -uid "1EF98F87-470D-832C-5B3B-E5A1DA29AEF0";
	setAttr ".t" -type "double3" -9.4287697104368799 6.9176210443146697 24.282791763109895 ;
	setAttr ".r" -type "double3" 2.5897516677721004 7.5963155420894966 88.789886557487932 ;
	setAttr -cb on ".ro";
createNode transform -n "rtHand0_fgr02_2_ikc_ofs1" -p "rtHand0_fgr02_2_ikc_ofs";
	rename -uid "1C3711C6-4875-1D46-9746-20B5ED44DA65";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "rtHand0_fgr02_2_ikc" -p "rtHand0_fgr02_2_ikc_ofs1";
	rename -uid "D0ABB7AC-43B8-143C-DB0F-488BC9275E42";
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
	rename -uid "8606F193-4E42-CDA6-BEF5-6C8ECF4C6C6E";
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
	rename -uid "1C7D970B-4AEA-FF5A-9BE1-BCB950C26C96";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.4937639494375254 1.4210854715202004e-14 -6.2659047645412507 ;
	setAttr ".r" -type "double3" 0 -3.9012395161850204 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999922 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.19925724018393923 0.044787768886334046 0.97892318799406519 ;
	setAttr ".roc" yes;
createNode transform -n "rtHand0_fgr03_2_ikc_ofs" -p "rtHand0_ctl_data";
	rename -uid "194A994C-41EB-80A9-F39C-D39B50941EC2";
	setAttr ".t" -type "double3" -11.028387763597934 6.7307447651061354 24.220576627728668 ;
	setAttr ".r" -type "double3" -9.2296842554996559 3.1995728360163018 82.46611050595051 ;
	setAttr -cb on ".ro";
createNode transform -n "rtHand0_fgr03_2_ikc_ofs1" -p "rtHand0_fgr03_2_ikc_ofs";
	rename -uid "B1796CAC-4C47-60F3-4A55-1BB635737728";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "rtHand0_fgr03_2_ikc" -p "rtHand0_fgr03_2_ikc_ofs1";
	rename -uid "FDF56541-4BF6-B22B-69C2-64809DBE37A0";
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
	rename -uid "94A5EB33-48DE-1DA8-97F4-E58DCA8A744D";
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
	rename -uid "56C8AAB8-4392-3F62-E472-19B1526504EF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.6349936678283026 1.2434497875801753e-14 -5.8725020024460903 ;
	setAttr ".r" -type "double3" 0 -3.9012395161850244 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.12273606632596097 -0.16014256653534745 0.9794336202144085 ;
	setAttr ".roc" yes;
createNode transform -n "rtHand0_fgr04_2_ikc_ofs" -p "rtHand0_ctl_data";
	rename -uid "264F26D4-49F2-7B25-8424-81AAE9B8C04D";
	setAttr ".t" -type "double3" -12.744028384394852 7.2917123655971361 23.607200405681972 ;
	setAttr ".r" -type "double3" -12.588866638644095 2.3913301248526206 81.830410378778438 ;
	setAttr -cb on ".ro";
createNode transform -n "rtHand0_fgr04_2_ikc_ofs1" -p "rtHand0_fgr04_2_ikc_ofs";
	rename -uid "6100D62D-4F9C-436E-835C-F7867DB40F61";
	setAttr -cb on ".ro";
createNode transform -n "rtHand0_fgr04_2_ikc" -p "rtHand0_fgr04_2_ikc_ofs1";
	rename -uid "E9255142-4592-4C02-3B79-589CAA28707B";
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
	rename -uid "748F432D-463F-F1E8-1A26-A68124D6C072";
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
	rename -uid "40EC9FBB-4228-FFFE-1670-C58B4D25494D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.1194595391493305 1.7763568394002505e-15 -5.323387812129539 ;
	setAttr ".r" -type "double3" 0 -3.9012395161850137 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999978 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.10797116799187979 -0.21776379940968588 0.97001090434547532 ;
	setAttr ".roc" yes;
createNode transform -n "rtHand0_smartScale" -p "rtHand0_ctl_data";
	rename -uid "C5277875-419B-B290-F121-60B30A956F51";
	setAttr -cb on ".ro";
createNode transform -n "rtHand0_smart_ctl_ofs" -p "rtHand0_smartScale";
	rename -uid "748C96EB-48C9-CB61-3AD7-4FA4442E31E1";
	setAttr ".t" -type "double3" -18.932328818432257 3.5527136788005009e-15 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rtHand0_smart_ctl" -p "rtHand0_smart_ctl_ofs";
	rename -uid "7B62939D-4A16-5153-5288-49B1EA5DCC77";
	addAttr -ci true -sn "palmScale" -ln "palmScale" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "showCtls" -ln "showCtls" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -k on ".palmScale";
	setAttr -cb on ".showCtls";
createNode nurbsCurve -n "rtHand0_smart_ctlShape1" -p "rtHand0_smart_ctl";
	rename -uid "9A9BCE70-4578-5778-4608-39BA2AE79871";
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
createNode transform -n "rtLegBp0_ctl_data" -p "master_ctl";
	rename -uid "395A1EF8-4044-2F0E-2A79-F7BF8087AA34";
	setAttr ".t" -type "double3" -5.8362665560894742 51.646830813409281 -15.548650060442801 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_FK" -p "rtLegBp0_ctl_data";
	rename -uid "F80611E0-449E-26F7-26D4-F8B5017CBA38";
	setAttr ".t" -type "double3" 5.8362665560894742 -51.646830813409281 15.548650060442801 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_upr_fkc_ofs" -p "rtLegBp0_FK";
	rename -uid "095DD148-4C7F-483F-75E4-E687694266FD";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_upr_fkc" -p "rtLegBp0_upr_fkc_ofs";
	rename -uid "748C6ADE-4E01-E252-6B2B-3299D3BF2D74";
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
	rename -uid "12A28705-4A07-1A98-33C4-85894029D12A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 20 0 no 3
		25 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 20 20
		23
		-1.2719402550531688e-16 -4.7916246253658619 2.8109127726646794
		-1.0662289856383226e-16 -5.0032688269906815 2.4296756888238553
		-6.5480644680862488e-17 -5.4265572302402862 1.6672015211421924
		5.8867299312814303e-20 -5.4448313638072205 -0.16118494276975612
		6.5245175515632515e-17 -5.3625941570776234 -1.0224617507855727
		1.2801816760581087e-16 -5.0474769168858584 -2.1027629660900229
		1.858463070929619e-16 -4.5368478397468737 -3.0299033552630772
		2.3653923952347075e-16 -3.8848326120782075 -3.8717005429316553
		2.7814028098875709e-16 -2.657055050625416 -4.9223816927473747
		3.0905303932625353e-16 -1.6206622450553194 -5.3607623679298264
		3.2808892210288419e-16 0.42206103802891715 -6.1373019006564746
		3.3451657674526653e-16 1.9841558291244585e-15 -7.4740342504499244
		3.2808892210288241e-16 -0.42206103802894057 -6.1373019006564542
		3.0905303932626507e-16 1.6206622450554209 -5.3607623679300254
		2.7814028098874186e-16 2.6570550506251709 -4.9223816927470576
		2.3653923952352307e-16 3.884832612079097 -3.8717005429327815
		1.8584630709276851e-16 4.5368478397436025 -3.029903355258925
		1.2801816760651833e-16 5.0474769168977573 -2.1027629661052893
		6.52451755129991e-17 5.3625941570333664 -1.0224617507286995
		5.8867303953125127e-20 5.4448313637765642 -0.16118494286741936
		-6.5480644685065367e-17 5.4265572303075613 1.6672015212394811
		-1.066228985652264e-16 5.0032688270128443 2.4296756888561348
		-1.2719402550530694e-16 4.7916246253654844 2.8109127726644614
		;
createNode transform -n "rtLegBp0_lwr_fkc_ofs" -p "rtLegBp0_FK";
	rename -uid "5C766381-44C5-02CC-1915-D3BEE906DA93";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_lwr_fkc" -p "rtLegBp0_lwr_fkc_ofs";
	rename -uid "5BF603C1-49AA-1409-E975-E58F7311755F";
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
	rename -uid "7DF58AE7-4D15-F371-779C-3AB9D44181D8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 20 0 no 3
		25 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 20 20
		23
		-1.2719402550531688e-16 -4.7916246253658619 2.8109127726646794
		-1.0662289856383226e-16 -5.0032688269906815 2.4296756888238553
		-6.5480644680862488e-17 -5.4265572302402862 1.6672015211421924
		5.8867299312814303e-20 -5.4448313638072205 -0.16118494276975612
		6.5245175515632515e-17 -5.3625941570776234 -1.0224617507855727
		1.2801816760581087e-16 -5.0474769168858584 -2.1027629660900229
		1.858463070929619e-16 -4.5368478397468737 -3.0299033552630772
		2.3653923952347075e-16 -3.8848326120782075 -3.8717005429316553
		2.7814028098875709e-16 -2.657055050625416 -4.9223816927473747
		3.0905303932625353e-16 -1.6206622450553194 -5.3607623679298264
		3.2808892210288419e-16 0.42206103802891715 -6.1373019006564746
		3.3451657674526653e-16 1.9841558291244585e-15 -7.4740342504499244
		3.2808892210288241e-16 -0.42206103802894057 -6.1373019006564542
		3.0905303932626507e-16 1.6206622450554209 -5.3607623679300254
		2.7814028098874186e-16 2.6570550506251709 -4.9223816927470576
		2.3653923952352307e-16 3.884832612079097 -3.8717005429327815
		1.8584630709276851e-16 4.5368478397436025 -3.029903355258925
		1.2801816760651833e-16 5.0474769168977573 -2.1027629661052893
		6.52451755129991e-17 5.3625941570333664 -1.0224617507286995
		5.8867303953125127e-20 5.4448313637765642 -0.16118494286741936
		-6.5480644685065367e-17 5.4265572303075613 1.6672015212394811
		-1.066228985652264e-16 5.0032688270128443 2.4296756888561348
		-1.2719402550530694e-16 4.7916246253654844 2.8109127726644614
		;
createNode transform -n "rtLegBp0_palm_fkc_ofs" -p "rtLegBp0_FK";
	rename -uid "A369E508-48B8-6D40-1B0B-E58E367C74AF";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_palm_fkc" -p "rtLegBp0_palm_fkc_ofs";
	rename -uid "BE9E6766-4C44-8D7E-8819-2B8F5DF71B7B";
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
	rename -uid "F902DEFB-4292-AE54-B741-A2A7E5C89323";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 20 0 no 3
		25 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 20 20
		23
		-1.2719402550531688e-16 -4.7916246253658619 2.8109127726646794
		-1.0662289856383226e-16 -5.0032688269906815 2.4296756888238553
		-6.5480644680862488e-17 -5.4265572302402862 1.6672015211421924
		5.8867299312814303e-20 -5.4448313638072205 -0.16118494276975612
		6.5245175515632515e-17 -5.3625941570776234 -1.0224617507855727
		1.2801816760581087e-16 -5.0474769168858584 -2.1027629660900229
		1.858463070929619e-16 -4.5368478397468737 -3.0299033552630772
		2.3653923952347075e-16 -3.8848326120782075 -3.8717005429316553
		2.7814028098875709e-16 -2.657055050625416 -4.9223816927473747
		3.0905303932625353e-16 -1.6206622450553194 -5.3607623679298264
		3.2808892210288419e-16 0.42206103802891715 -6.1373019006564746
		3.3451657674526653e-16 1.9841558291244585e-15 -7.4740342504499244
		3.2808892210288241e-16 -0.42206103802894057 -6.1373019006564542
		3.0905303932626507e-16 1.6206622450554209 -5.3607623679300254
		2.7814028098874186e-16 2.6570550506251709 -4.9223816927470576
		2.3653923952352307e-16 3.884832612079097 -3.8717005429327815
		1.8584630709276851e-16 4.5368478397436025 -3.029903355258925
		1.2801816760651833e-16 5.0474769168977573 -2.1027629661052893
		6.52451755129991e-17 5.3625941570333664 -1.0224617507286995
		5.8867303953125127e-20 5.4448313637765642 -0.16118494286741936
		-6.5480644685065367e-17 5.4265572303075613 1.6672015212394811
		-1.066228985652264e-16 5.0032688270128443 2.4296756888561348
		-1.2719402550530694e-16 4.7916246253654844 2.8109127726644614
		;
createNode transform -n "rtLegBp0_ikc_matcher" -p "rtLegBp0_palm_fkc";
	rename -uid "4F687F86-4A60-1654-2ADC-8082226E0757";
	setAttr ".t" -type "double3" 2.8421709430404007e-14 0 -2.1316282072803006e-14 ;
	setAttr ".r" -type "double3" 0 0 -89.999999999999986 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
createNode transform -n "rtLegBp0_ball_fkc_ofs" -p "rtLegBp0_FK";
	rename -uid "A755C69C-4564-4239-73EA-0FA16ACB2E39";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_ball_fkc" -p "rtLegBp0_ball_fkc_ofs";
	rename -uid "86BD45B4-44A9-DBDB-4A57-BBABB6C0BCA5";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999967 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegBp0_ball_fkcShape1" -p "rtLegBp0_ball_fkc";
	rename -uid "0A6E7B26-4817-0457-1206-9ABEB29D64F7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-5.7298395327185713e-17 2.7916361963699234 2.791636196369927
		-8.1032167773921311e-17 1.5456326845492061e-16 2.5242097323494979
		-5.7298395327185688e-17 -2.7916361963699234 2.7916361963699248
		3.3071872481914559e-32 -2.524209732349505 9.80143793467311e-16
		5.7298395327185701e-17 -2.7916361963699234 -2.7916361963699234
		8.1032167773921385e-17 -2.5285181527553415e-16 -2.5242097323495001
		5.7298395327185688e-17 2.7916361963699234 -2.7916361963699248
		4.8322922477191185e-32 2.524209732349505 5.0506272524226024e-16
		-5.7298395327185713e-17 2.7916361963699234 2.791636196369927
		-8.1032167773921311e-17 1.5456326845492061e-16 2.5242097323494979
		-5.7298395327185688e-17 -2.7916361963699234 2.7916361963699248
		;
createNode transform -n "rtLegBp0_toe00_2_ikc_ofs" -p "rtLegBp0_ball_fkc_ofs";
	rename -uid "69081709-413A-64D8-D6E6-C6A48503526E";
	setAttr ".t" -type "double3" -0.087519510067229689 -3.5481439806680397 -1.7061783411680991 ;
	setAttr ".r" -type "double3" 6.7506030565825617 7.6773919748916191 19.135862018091263 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "rtLegBp0_toe00_2_ikc_ofs1" -p "rtLegBp0_toe00_2_ikc_ofs";
	rename -uid "543BB1F9-4F3A-7BD5-36EF-3586BCAEDF8A";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegBp0_toe00_2_ikc" -p "rtLegBp0_toe00_2_ikc_ofs1";
	rename -uid "8166121D-4219-AFF9-B003-C28A8924D456";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe00_2_ikcShape1" -p "rtLegBp0_toe00_2_ikc";
	rename -uid "AD174699-4DAB-EF4F-F305-91A5581DB81A";
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
		3.6815962376235995e-15 5.8733215201835292e-16 -9.0831631951623441e-16
		3.6815962376235995e-15 5.8733215201835292e-16 0.97557165567758886
		-0.11265684717811433 5.8733215201835292e-16 0.97557165567758886
		-0.11265684717811433 5.8733215201835292e-16 1.2008853500338255
		0.11265684717812169 5.8733215201835292e-16 1.2008853500338255
		0.11265684717812169 5.8733215201835292e-16 0.97557165567758886
		3.6815962376235995e-15 5.8733215201835292e-16 0.97557165567758886
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegBp0_toe00_2_1_ikj_ikh" -p "rtLegBp0_toe00_2_ikc";
	rename -uid "3E1537F5-4FB7-4361-D02E-4A975FC36A92";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.1333123426772183 0.2329228551830248 -0.24521895415962591 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.92358445516581533 0.33182120689999373 0.19205843076391019 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegBp0_toe01_2_ikc_ofs" -p "rtLegBp0_ball_fkc_ofs";
	rename -uid "0DBC4A75-4738-549D-F724-359FD8A46530";
	setAttr ".t" -type "double3" -0.31256242265182621 -1.1377982450331157 0.025402746210440696 ;
	setAttr ".r" -type "double3" -2.2623556006813508 12.715712929441754 -6.3986497316176507 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "rtLegBp0_toe01_2_ikc_ofs1" -p "rtLegBp0_toe01_2_ikc_ofs";
	rename -uid "AD0A0BA8-4762-634F-9780-1C9DA93D6C08";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "rtLegBp0_toe01_2_ikc" -p "rtLegBp0_toe01_2_ikc_ofs1";
	rename -uid "532AE86E-40F6-5812-99A1-BAB81411C05C";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe01_2_ikcShape1" -p "rtLegBp0_toe01_2_ikc";
	rename -uid "6CE5E03C-4915-2063-13D2-CDA885B95F3B";
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
		1.8407981188117998e-15 1.7924671592531379e-15 -5.0853048926161191e-16
		1.8407981188117998e-15 1.7924671592531379e-15 0.97557165567758897
		-0.11265684717811617 1.7924671592531379e-15 0.97557165567758897
		-0.11265684717811617 1.7924671592531379e-15 1.2008853500338259
		0.11265684717811986 1.7924671592531379e-15 1.2008853500338259
		0.11265684717811986 1.7924671592531379e-15 0.97557165567758897
		1.8407981188117998e-15 1.7924671592531379e-15 0.97557165567758897
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegBp0_toe01_2_1_ikj_ikh" -p "rtLegBp0_toe01_2_ikc";
	rename -uid "DB12CE9C-4073-DE8D-0FAF-D4A89AF3FF9B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.9257053068509169 -0.08120307366008106 -0.81811089695927197 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000004 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.98497147857539979 -0.10970463422869936 0.13340194759350144 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegBp0_toe02_2_ikc_ofs" -p "rtLegBp0_ball_fkc_ofs";
	rename -uid "A0598B2C-4E1D-B196-E512-05B79634FE83";
	setAttr ".t" -type "double3" -0.28848044035471432 0.18417601594225097 -0.13483731035843372 ;
	setAttr ".r" -type "double3" -2.6934829544294883 12.14486637177869 -7.6139342342315626 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_toe02_2_ikc_ofs1" -p "rtLegBp0_toe02_2_ikc_ofs";
	rename -uid "DA8AC745-4DF8-A012-156A-45926E11ADAA";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "rtLegBp0_toe02_2_ikc" -p "rtLegBp0_toe02_2_ikc_ofs1";
	rename -uid "558BB8B3-4439-C004-6349-9D90E8FA8560";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe02_2_ikcShape1" -p "rtLegBp0_toe02_2_ikc";
	rename -uid "478DFFC3-4BE9-93D0-DF92-DCBF108F0436";
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
		0 2.4165479779330984e-17 -6.6613381477509392e-16
		0 2.4165479779330984e-17 0.97557165567758897
		-0.11265684717811801 2.4165479779330984e-17 0.97557165567758897
		-0.11265684717811801 2.4165479779330984e-17 1.2008853500338257
		0.11265684717811801 2.4165479779330984e-17 1.2008853500338257
		0.11265684717811801 2.4165479779330984e-17 0.97557165567758897
		0 2.4165479779330984e-17 0.97557165567758897
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegBp0_toe02_2_1_ikj_ikh" -p "rtLegBp0_toe02_2_ikc";
	rename -uid "C946C55C-4D51-2959-A8DD-04A8BE5090E0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.3099074998486149 -0.084175794189791375 -1.1113044010183004 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000007 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.98118307341243494 -0.13088036896682154 0.14195106716061387 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegBp0_toe03_2_ikc_ofs" -p "rtLegBp0_ball_fkc_ofs";
	rename -uid "9FAF7724-42FB-C352-5DF9-B1B891E9B8E7";
	setAttr ".t" -type "double3" -0.19104392305078477 1.4059645211795821 -0.32093005766251359 ;
	setAttr ".r" -type "double3" -3.3516781011300512 11.520391109132756 -9.4746573819333282 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "rtLegBp0_toe03_2_ikc_ofs1" -p "rtLegBp0_toe03_2_ikc_ofs";
	rename -uid "3A1B73B8-4520-5A22-EB5D-81A5749341BA";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "rtLegBp0_toe03_2_ikc" -p "rtLegBp0_toe03_2_ikc_ofs1";
	rename -uid "9D6B5279-4742-C60E-1AC7-2480BABEF1B8";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe03_2_ikcShape1" -p "rtLegBp0_toe03_2_ikc";
	rename -uid "59EA0DC4-414D-E3FB-3A63-95AF941D6E2D";
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
		-1.8407981188117998e-15 -1.7904533692715267e-15 4.5301933803035408e-16
		-1.8407981188117998e-15 -1.7904533692715267e-15 0.97557165567759019
		-0.11265684717811986 -1.7904533692715267e-15 0.97557165567759019
		-0.11265684717811986 -1.7904533692715267e-15 1.2008853500338268
		0.11265684717811617 -1.7904533692715267e-15 1.2008853500338268
		0.11265684717811617 -1.7904533692715267e-15 0.97557165567759019
		-1.8407981188117998e-15 -1.7904533692715267e-15 0.97557165567759019
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegBp0_toe03_2_1_ikj_ikh" -p "rtLegBp0_toe03_2_ikc";
	rename -uid "217C0924-4B8F-35B9-2B65-569F775231B8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.00601566713644 -0.1449940123081106 -0.91326783800408839 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.97508559764575886 -0.16319834852347734 0.1502477164652524 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegBp0_toe04_2_ikc_ofs" -p "rtLegBp0_ball_fkc_ofs";
	rename -uid "C25E6EB9-4C7C-D201-1811-DDABA9A716A5";
	setAttr ".t" -type "double3" 0.060978652842095471 2.613423431682051 -0.47359794029116786 ;
	setAttr ".r" -type "double3" -4.0516938124998374 10.566405628433577 -11.447638506391662 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "rtLegBp0_toe04_2_ikc_ofs1" -p "rtLegBp0_toe04_2_ikc_ofs";
	rename -uid "03B8A927-41F6-EB75-2CB8-A5A8EEA489D3";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegBp0_toe04_2_ikc" -p "rtLegBp0_toe04_2_ikc_ofs1";
	rename -uid "0305FD82-450E-B844-F567-8D90CE190B3A";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe04_2_ikcShape1" -p "rtLegBp0_toe04_2_ikc";
	rename -uid "16C5B622-40D0-FC3F-ED1C-CEBCC9C679ED";
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
		-1.8407981188117998e-15 0 0
		-1.8407981188117998e-15 0 0.97557165567758963
		-0.11265684717811986 0 0.97557165567758963
		-0.11265684717811986 0 1.2008853500338263
		0.11265684717811617 0 1.2008853500338263
		0.11265684717811617 0 0.97557165567758963
		-1.8407981188117998e-15 0 0.97557165567758963
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegBp0_toe04_2_1_ikj_ikh" -p "rtLegBp0_toe04_2_ikc";
	rename -uid "46F74421-40EF-6726-F70A-76A956B7928E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.4532209304758474 -0.16916848879181856 -0.73402911726540276 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.96653947583687039 -0.19786974438458382 0.16324523241481598 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegBp0_quadScap_ofs" -p "rtLegBp0_FK";
	rename -uid "4886C72A-4BAD-D6A6-5322-099462C44DA4";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_quadScap" -p "rtLegBp0_quadScap_ofs";
	rename -uid "2919DA5D-4D52-5380-8089-92826CCBC35D";
	setAttr ".t" -type "double3" 0 0 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_hip_fkc_ofs" -p "rtLegBp0_quadScap";
	rename -uid "E8AF73CC-4D82-7F97-32AA-94A55593069C";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 1.7763568394002505e-15 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_hip_fkc" -p "rtLegBp0_hip_fkc_ofs";
	rename -uid "DC51E240-4669-8415-CD4C-CFBA61BB504B";
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
	rename -uid "4BC8877C-4E76-F3EF-3A91-AFAA30474589";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-5.5832723927398469 8.0899698825614514 5.583272392739854
		-3.0912653690984121e-16 8.0899698825614514 5.0484194646989957
		5.5832723927398469 8.0899698825614514 5.5832723927398495
		5.0484194646990099 8.0899698825614514 1.960287586934622e-15
		5.5832723927398469 8.0899698825614514 -5.5832723927398469
		5.057036305510683e-16 8.0899698825614514 -5.0484194646990002
		-5.5832723927398469 8.0899698825614514 -5.5832723927398495
		-5.0484194646990099 8.0899698825614514 1.0101254504845205e-15
		-5.5832723927398469 8.0899698825614514 5.583272392739854
		-3.0912653690984121e-16 8.0899698825614514 5.0484194646989957
		5.5832723927398469 8.0899698825614514 5.5832723927398495
		;
createNode transform -n "rtLegBp0_IK" -p "rtLegBp0_ctl_data";
	rename -uid "FB3AC5F4-4803-D050-DD0B-7A861FFCECB8";
	setAttr ".t" -type "double3" 5.8362665560894742 -51.646830813409281 15.548650060442801 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_ikCstG" -p "rtLegBp0_IK";
	rename -uid "F2AA29DD-4E61-D848-8A81-D48CD60CAD1B";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_heelRollG" -p "rtLegBp0_ikCstG";
	rename -uid "1ADF6904-4CC9-F5C2-B0F7-309BF9C49BDB";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -3.6540581892429684 -2.5053504932438351 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_heelRollG_ctl" -p "rtLegBp0_heelRollG";
	rename -uid "6197A274-4ADD-CF6C-1121-8DA1487A6183";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegBp0_toeRollG" -p "rtLegBp0_heelRollG_ctl";
	rename -uid "8036D528-4D95-DA08-9C81-8DBBC85849FB";
	setAttr ".t" -type "double3" -1.139058052825904 0 16.746157349371501 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_toeRollG_ctl" -p "rtLegBp0_toeRollG";
	rename -uid "5F327848-4BE6-C1E8-7331-0D98E3033DCD";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegBp0_footRollG" -p "rtLegBp0_toeRollG_ctl";
	rename -uid "7155E415-48BB-E757-45CE-518FE5CAA78E";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_outRollG" -p "rtLegBp0_footRollG";
	rename -uid "C8564FCB-41E8-A9FC-C607-98AAF01669BA";
	setAttr ".t" -type "double3" -1.1550078830907911 0 -13.260811151465175 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_outRollG_ctl" -p "rtLegBp0_outRollG";
	rename -uid "8F23CCA9-40B8-C539-B442-58AD65BEFA61";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegBp0_inRollG" -p "rtLegBp0_outRollG_ctl";
	rename -uid "2B0579A6-4E7D-3743-2938-97B9F2EE5E53";
	setAttr ".t" -type "double3" 4.9189533863814621 0 -0.32393823290298229 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_inRollG_ctl" -p "rtLegBp0_inRollG";
	rename -uid "B1E64302-4CC3-C520-70C0-E4BE4FFD1D82";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegBp0_ballRollG" -p "rtLegBp0_inRollG_ctl";
	rename -uid "889E778D-42D6-E8DB-6AD1-8484227919CD";
	setAttr ".t" -type "double3" -2.6248874504647617 2.1858689723369187 7.192927810955787 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_ballG_ikc" -p "rtLegBp0_ballRollG";
	rename -uid "65861A08-40E6-7C78-55FA-E68A6D8C1A11";
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
	rename -uid "1FEDB05D-4AE4-2D0B-AB43-8EACF89526F5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1.4681892169060569 -7.8489852827152866 ;
	setAttr -cb on ".ro";
createNode locator -n "rtLegBp0_dist_loc1Shape" -p "rtLegBp0_dist_loc1";
	rename -uid "D06D884C-48BC-081A-30BE-46B9722C0DDC";
	setAttr -k off ".v";
createNode transform -n "rtLegBp0_softJ_posGrp" -p "rtLegBp0_ballG_ikc";
	rename -uid "7E0D61FC-4C5A-41EF-8852-CFBFBDBBDF8C";
	setAttr ".t" -type "double3" 1.483988324935126e-05 1.4684131884464784 -7.848994807491195 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_1_ikh_ofs" -p "rtLegBp0_ballG_ikc";
	rename -uid "AD4D5C3C-4740-40D4-A9CF-DAB0A907273D";
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegBp0_1_ikh" -p "rtLegBp0_1_ikh_ofs";
	rename -uid "B5679B6C-47B0-7A01-6F5C-DABF948A8D57";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode nurbsCurve -n "stickCShape2" -p "rtLegBp0_ballG_ikc";
	rename -uid "D4937460-4A73-17FC-6346-FCB4F260470B";
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
		-5.0105885628205151e-17 7.2716786542579861 4.4232089504882062e-16
		-4.8398567487409602e-17 7.2995613743999472 0.21178934470641034
		-4.3392969450758463e-17 7.3813090247552804 0.40914558200508072
		-3.5430208953863866e-17 7.5113507191063578 0.57861922774839825
		-2.5052942814102576e-17 7.6808242684097188 0.70866098639277975
		-1.2968356749048075e-17 7.8781805378550418 0.79040857245480856
		1.5343707816508723e-32 8.0899698825614514 0.81829116401016144
		1.2968356749048075e-17 8.301759227267862 0.79040857245480856
		2.5052942814102576e-17 8.4991154967131841 0.70866098639277975
		3.5430208953863866e-17 8.668589046016546 0.57861922774839825
		4.3392969450758463e-17 8.7986312547140564 0.40914558200508072
		4.8398567487409602e-17 8.8803783907229565 0.21178934470641034
		5.0105885628205151e-17 8.9082611108649168 2.4179840570948227e-16
		4.8398567487409602e-17 8.8803783907229565 -0.21178934470641034
		4.3392969450758463e-17 8.7986312547140564 -0.40914558200508072
		3.5430208953863866e-17 8.668589046016546 -0.57861922774839825
		2.5052942814102576e-17 8.4991154967131841 -0.70866098639277975
		1.2968356749048075e-17 8.301759227267862 -0.79040857245480856
		-3.7487599655917148e-32 8.0899698825614514 -0.81829116401016144
		-1.2968356749048075e-17 7.8781805378550418 -0.79040857245480856
		-2.5052942814102576e-17 7.6808242684097188 -0.70866098639277975
		-3.5430208953863866e-17 7.5113507191063578 -0.57861922774839825
		-4.3392969450758463e-17 7.3813090247552804 -0.40914558200508072
		-4.8398567487409602e-17 7.2995613743999472 -0.21178934470641034
		-5.0105885628205151e-17 7.2716786542579861 4.4232089504882062e-16
		0 0 0
		;
createNode transform -n "rtLegBp0_toe_wiggle_grp" -p "rtLegBp0_inRollG_ctl";
	rename -uid "BBBAA8B8-4131-43FD-E8A6-8EBF9DE5985C";
	setAttr ".t" -type "double3" -2.6248874504647617 2.1858689723369187 7.192927810955787 ;
	setAttr ".r" -type "double3" 0 69.448695121428784 90 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
createNode ikHandle -n "rtLegBp0_2_ikh" -p "rtLegBp0_toe_wiggle_grp";
	rename -uid "EAD7F05F-4616-2928-F103-C8BEBE2C50A7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.8582449454623884e-05 -1.8196298952943835e-05 9.8357832623019448e-05 ;
	setAttr ".r" -type "double3" -0.00092836784541225825 -69.44948201871604 0.00095094284339488212 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.936358224407281 0 0.35104597360580031 ;
	setAttr ".roc" yes;
createNode ikHandle -n "rtLegBp0_3_ikh" -p "rtLegBp0_toe_wiggle_grp";
	rename -uid "6720EBC5-48FD-A924-09A3-F39069F4B54B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.6012981521095924 -2.7604570400185935e-05 7.694716771311505e-06 ;
	setAttr ".r" -type "double3" -0.00032588785542981289 -0.00078689975942550455 8.1657975987453596e-05 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.936358224407281 0 0.35104597360580031 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "diamondShape6" -p "rtLegBp0_inRollG_ctl";
	rename -uid "BE8E2D27-4019-5677-475B-F396C1FCE900";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.3337112576556599
		-0.3337112576556599 0 0
		0 0 -0.3337112576556599
		0.3337112576556599 0 0
		0 0 0.3337112576556599
		0 0.3337112576556599 0
		0.3337112576556599 0 0
		0 0 -0.3337112576556599
		0 0.3337112576556599 0
		-0.3337112576556599 0 0
		0 -0.3337112576556599 0
		0.3337112576556599 0 0
		0 0 0.3337112576556599
		0 -0.3337112576556599 0
		0 0 -0.3337112576556599
		;
createNode nurbsCurve -n "diamondShape7" -p "rtLegBp0_outRollG_ctl";
	rename -uid "BFC2F565-48E1-3A01-3783-7B8667B5E28A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.3337112576556599
		-0.3337112576556599 0 0
		0 0 -0.3337112576556599
		0.3337112576556599 0 0
		0 0 0.3337112576556599
		0 0.3337112576556599 0
		0.3337112576556599 0 0
		0 0 -0.3337112576556599
		0 0.3337112576556599 0
		-0.3337112576556599 0 0
		0 -0.3337112576556599 0
		0.3337112576556599 0 0
		0 0 0.3337112576556599
		0 -0.3337112576556599 0
		0 0 -0.3337112576556599
		;
createNode nurbsCurve -n "diamondShape5" -p "rtLegBp0_toeRollG_ctl";
	rename -uid "479919B1-47B8-CF9B-65FA-98A5849EA3DA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.3337112576556599
		-0.3337112576556599 0 0
		0 0 -0.3337112576556599
		0.3337112576556599 0 0
		0 0 0.3337112576556599
		0 0.3337112576556599 0
		0.3337112576556599 0 0
		0 0 -0.3337112576556599
		0 0.3337112576556599 0
		-0.3337112576556599 0 0
		0 -0.3337112576556599 0
		0.3337112576556599 0 0
		0 0 0.3337112576556599
		0 -0.3337112576556599 0
		0 0 -0.3337112576556599
		;
createNode nurbsCurve -n "diamondShape8" -p "rtLegBp0_heelRollG_ctl";
	rename -uid "8D21D5C7-4E4D-F5F9-D7C8-42B627AEB866";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.3337112576556599
		-0.3337112576556599 0 0
		0 0 -0.3337112576556599
		0.3337112576556599 0 0
		0 0 0.3337112576556599
		0 0.3337112576556599 0
		0.3337112576556599 0 0
		0 0 -0.3337112576556599
		0 0.3337112576556599 0
		-0.3337112576556599 0 0
		0 -0.3337112576556599 0
		0.3337112576556599 0 0
		0 0 0.3337112576556599
		0 -0.3337112576556599 0
		0 0 -0.3337112576556599
		;
createNode transform -n "rtLegBp0_ikc_ofs" -p "rtLegBp0_IK";
	rename -uid "036B3A87-45F6-3F8D-938F-038D4C6E835E";
	setAttr ".t" -type "double3" -9.8703472642103023 4.1550584854442825 -22.90409845244611 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_ikc_ofs1" -p "rtLegBp0_ikc_ofs";
	rename -uid "0B194A4E-40BB-9B1B-0F3F-A2AB2F66C598";
createNode transform -n "rtLegBp0_ikc" -p "rtLegBp0_ikc_ofs1";
	rename -uid "0899A110-49A7-B6A1-6E47-419296A48A8F";
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
	rename -uid "6567C92B-4011-0746-F593-05BC74B899B5";
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
		5.3933132550409635 -4.1550584854442807 5.3933132550409688
		5.2896822531478103 -4.1550584854442807 6.4454964747007635
		4.9827717287541713 -4.1550584854442807 7.4572448833001799
		4.4843760811950881 -4.1550584854442807 8.3896775568917867
		3.8136483757027575 -4.1550584854442807 9.2069616307437236
		2.9963643018508175 -4.1550584854442807 9.8776893362360578
		2.0639316282592102 -4.1550584854442807 10.37608498379514
		1.052183219659794 -4.1550584854442807 10.682995508188782
		-6.2963421846737201e-16 -4.1550584854442807 10.786626510081932
		-1.0521832196597951 -4.1550584854442807 10.682995508188782
		-2.0639316282592119 -4.1550584854442807 10.37608498379514
		-2.9963643018508193 -4.1550584854442807 9.8776893362360578
		-3.8136483757027597 -4.1550584854442807 9.2069616307437254
		-4.4843760811950908 -4.1550584854442807 8.3896775568917867
		-4.982771728754174 -4.1550584854442807 7.4572448833001799
		-5.2896822531478138 -4.1550584854442807 6.4454964747007626
		-5.393313255040967 -4.1550584854442807 5.393313255040967
		-5.2896822213401293 -2.5399725227428913 5.3933132550409679
		-4.9827717046696209 -0.96732413219099822 5.3933132550409679
		-4.4843761830883873 0.39449321811489213 5.3933132550409679
		-3.8136483747282526 1.4781156697913804 5.3933132550409679
		-2.9963642367409271 2.2941189219819664 5.3933132550409679
		-2.0639315625480794 2.7925144435632001 5.3933132550409679
		-1.0521831965225192 3.0994249602337076 5.3933132550409679
		3.3024519086360806e-16 3.2030559939345462 5.3933132550409679
		1.0521831965225192 3.0994249602337076 5.3933132550409679
		2.0639315625480794 2.7925144435632001 5.3933132550409679
		2.9963642367409271 2.2941189219819664 5.3933132550409679
		3.8136483747282526 1.4781156697913804 5.3933132550409679
		4.4843761830883873 0.39449321811489213 5.3933132550409679
		4.9827717046696209 -0.96732413219099822 5.3933132550409679
		5.2896822213401293 -2.5399725227428913 5.3933132550409679
		5.3933132550409679 -4.1550584854442807 5.3933132550409679
		5.3933132550409679 -4.1550584854442825 -5.0697144597385089
		5.3933132550409679 -3.8314596901418225 -5.3933132550409679
		5.2896822213401293 -2.5399725227428913 -5.3933132550409679
		4.9827717046696209 -0.96732413219099822 -5.3933132550409679
		4.4843761830883873 0.39449321811489213 -5.3933132550409679
		3.8136483747282526 1.4781156697913804 -5.3933132550409679
		2.9963642367409271 2.2941189219819664 -5.3933132550409679
		2.0639315625480794 2.7925144435632001 -5.3933132550409679
		1.0521831965225192 3.0994249602337076 -5.3933132550409679
		3.3024519086360806e-16 3.2030559939345462 -5.3933132550409679
		-1.0521831965225192 3.0994249602337076 -5.3933132550409679
		-2.0639315625480794 2.7925144435632001 -5.3933132550409679
		-2.9963642367409271 2.2941189219819664 -5.3933132550409679
		-3.8136483747282526 1.4781156697913804 -5.3933132550409679
		-4.4843761830883873 0.39449321811489213 -5.3933132550409679
		-4.9827717046696209 -0.96732413219099822 -5.3933132550409679
		-5.2896822213401293 -2.5399725227428913 -5.3933132550409679
		-5.3933132550409679 -3.8314596901418225 -5.3933132550409679
		-5.3933132550409679 -4.1550584854442798 -5.0697144597385089
		-5.3933132550409679 -4.1550584854442807 5.3933132550409679
		;
createNode transform -n "rtLegBp0_ikc_gmb" -p "rtLegBp0_ikc";
	rename -uid "2BADC8E8-44FA-9C01-523C-578C2D7D7C03";
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
	rename -uid "D7EB5565-41F8-6BF6-4C33-ADBBCDDF448C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".tw" yes;
	setAttr -s 53 ".cp[0:52]" -type "double3" -1.0786626510081927 0.73581146839775524 
		-0.5393313102183992 -1.0579364506295619 0.73581146839775524 -0.74976795415035813 
		-0.9965543457508339 0.73581146839775524 -0.95211763587024034 -0.89687521623901745 
		0.73581146839775524 -1.1386041705885628 -0.76272967514055123 0.73581146839775524 
		-1.3020609853589491 -0.59927286037016358 0.73581146839775524 -1.4362065264574166 
		-0.41278632565184203 0.73581146839775524 -1.5358856559692331 -0.21043664393195871 
		0.73581146839775524 -1.5972677608479611 1.259268436934744e-16 0.73581146839775524 
		-1.6179939612265901 0.21043664393195893 0.73581146839775524 -1.5972677608479611 0.41278632565184226 
		0.73581146839775524 -1.5358856559692331 0.59927286037016358 0.73581146839775524 -1.4362065264574166 
		0.76272967514055168 0.73581146839775524 -1.3020609853589491 0.89687521623901789 0.73581146839775524 
		-1.1386041705885628 0.99655434575083479 0.73581146839775524 -0.95211763587024034 
		1.0579364506295628 0.73581146839775524 -0.74976795415035724 1.0786626510081936 0.73581146839775524 
		-0.5393313102183992 1.0579364442680257 0.41279427585747719 -0.53933131021839831 0.99655434093392392 
		0.098264597747098614 -0.53933131021839831 0.8968752366176771 -0.17409887231407944 
		-0.53933131021839831 0.76272967494565025 -0.39082336264937712 -0.53933131021839831 
		0.59927284734818542 -0.55402401308749427 -0.53933131021839831 0.41278631250961584 
		-0.65370311740374065 -0.53933131021839831 0.21043663930450385 -0.71508522073784242 
		-0.53933131021839831 -6.6049038172721582e-17 -0.73581142747800987 -0.53933131021839831 
		-0.21043663930450385 -0.71508522073784242 -0.53933131021839831 -0.41278631250961584 
		-0.65370311740374065 -0.53933131021839831 -0.59927284734818542 -0.55402401308749427 
		-0.53933131021839831 -0.76272967494565025 -0.39082336264937712 -0.53933131021839831 
		-0.8968752366176771 -0.17409887231407944 -0.53933131021839831 -0.99655434093392392 
		0.098264597747098614 -0.53933131021839831 -1.0579364442680257 0.41279427585747719 
		-0.53933131021839831 -1.0786626510081936 0.73581146839775524 -0.53933131021839831 
		-1.0786626510081936 0.73581146839775524 1.5532742327374964 -1.0786626510081936 0.67109170933726325 
		1.6179939917979884 -1.0579364442680257 0.41279427585747719 1.6179939917979884 -0.99655434093392392 
		0.098264597747098614 1.6179939917979884 -0.8968752366176771 -0.17409887231407944 
		1.6179939917979884 -0.76272967494565025 -0.39082336264937712 1.6179939917979884 -0.59927284734818542 
		-0.55402401308749427 1.6179939917979884 -0.41278631250961584 -0.65370311740374065 
		1.6179939917979884 -0.21043663930450385 -0.71508522073784242 1.6179939917979884 -6.6049038172721582e-17 
		-0.73581142747800987 1.6179939917979884 0.21043663930450385 -0.71508522073784242 
		1.6179939917979884 0.41278631250961584 -0.65370311740374065 1.6179939917979884 0.59927284734818542 
		-0.55402401308749427 1.6179939917979884 0.76272967494565025 -0.39082336264937712 
		1.6179939917979884 0.8968752366176771 -0.17409887231407944 1.6179939917979884 0.99655434093392392 
		0.098264597747098614 1.6179939917979884 1.0579364442680257 0.41279427585747719 1.6179939917979884 
		1.0786626510081936 0.67109170933726325 1.6179939917979884 1.0786626510081936 0.7358114683977548 
		1.5532742327374964 1.0786626510081936 0.73581146839775524 -0.53933131021839831;
createNode nurbsCurve -n "rtLegBp0_ikc_gmbShapeOrig" -p "rtLegBp0_ikc_gmb";
	rename -uid "8A6F0596-47F4-1DC7-3A6E-25B3F3559EA7";
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
		5.3933132550409635 -4.1550584854442807 5.3933132550409688
		5.2896822531478103 -4.1550584854442807 6.4454964747007635
		4.9827717287541713 -4.1550584854442807 7.4572448833001799
		4.4843760811950881 -4.1550584854442807 8.3896775568917867
		3.8136483757027575 -4.1550584854442807 9.2069616307437236
		2.9963643018508175 -4.1550584854442807 9.8776893362360578
		2.0639316282592102 -4.1550584854442807 10.37608498379514
		1.052183219659794 -4.1550584854442807 10.682995508188782
		-6.2963421846737201e-16 -4.1550584854442807 10.786626510081932
		-1.0521832196597951 -4.1550584854442807 10.682995508188782
		-2.0639316282592119 -4.1550584854442807 10.37608498379514
		-2.9963643018508193 -4.1550584854442807 9.8776893362360578
		-3.8136483757027597 -4.1550584854442807 9.2069616307437254
		-4.4843760811950908 -4.1550584854442807 8.3896775568917867
		-4.982771728754174 -4.1550584854442807 7.4572448833001799
		-5.2896822531478138 -4.1550584854442807 6.4454964747007626
		-5.393313255040967 -4.1550584854442807 5.393313255040967
		-5.2896822213401293 -2.5399725227428913 5.3933132550409679
		-4.9827717046696209 -0.96732413219099822 5.3933132550409679
		-4.4843761830883873 0.39449321811489213 5.3933132550409679
		-3.8136483747282526 1.4781156697913804 5.3933132550409679
		-2.9963642367409271 2.2941189219819664 5.3933132550409679
		-2.0639315625480794 2.7925144435632001 5.3933132550409679
		-1.0521831965225192 3.0994249602337076 5.3933132550409679
		3.3024519086360806e-16 3.2030559939345462 5.3933132550409679
		1.0521831965225192 3.0994249602337076 5.3933132550409679
		2.0639315625480794 2.7925144435632001 5.3933132550409679
		2.9963642367409271 2.2941189219819664 5.3933132550409679
		3.8136483747282526 1.4781156697913804 5.3933132550409679
		4.4843761830883873 0.39449321811489213 5.3933132550409679
		4.9827717046696209 -0.96732413219099822 5.3933132550409679
		5.2896822213401293 -2.5399725227428913 5.3933132550409679
		5.3933132550409679 -4.1550584854442807 5.3933132550409679
		5.3933132550409679 -4.1550584854442825 -5.0697144597385089
		5.3933132550409679 -3.8314596901418225 -5.3933132550409679
		5.2896822213401293 -2.5399725227428913 -5.3933132550409679
		4.9827717046696209 -0.96732413219099822 -5.3933132550409679
		4.4843761830883873 0.39449321811489213 -5.3933132550409679
		3.8136483747282526 1.4781156697913804 -5.3933132550409679
		2.9963642367409271 2.2941189219819664 -5.3933132550409679
		2.0639315625480794 2.7925144435632001 -5.3933132550409679
		1.0521831965225192 3.0994249602337076 -5.3933132550409679
		3.3024519086360806e-16 3.2030559939345462 -5.3933132550409679
		-1.0521831965225192 3.0994249602337076 -5.3933132550409679
		-2.0639315625480794 2.7925144435632001 -5.3933132550409679
		-2.9963642367409271 2.2941189219819664 -5.3933132550409679
		-3.8136483747282526 1.4781156697913804 -5.3933132550409679
		-4.4843761830883873 0.39449321811489213 -5.3933132550409679
		-4.9827717046696209 -0.96732413219099822 -5.3933132550409679
		-5.2896822213401293 -2.5399725227428913 -5.3933132550409679
		-5.3933132550409679 -3.8314596901418225 -5.3933132550409679
		-5.3933132550409679 -4.1550584854442798 -5.0697144597385089
		-5.3933132550409679 -4.1550584854442807 5.3933132550409679
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode transform -n "rtLegBp0_smart_ctl_ofs" -p "rtLegBp0_ikc_gmb";
	rename -uid "7825C55F-4791-E19E-C214-A59F299FFB0C";
	setAttr ".t" -type "double3" -1.1390580528259076 -3.6540581892429684 14.240806856127669 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_smart_ctl" -p "rtLegBp0_smart_ctl_ofs";
	rename -uid "F03094EC-4437-3FC1-B259-9D9700B0C2C6";
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
	rename -uid "2AA99869-4331-36BC-D7E0-7A86DC1CFA6B";
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
		1.3958180981849617 2.8649197663592856e-17 -1.3958180981849635
		7.7281634227460303e-17 4.0516083886960656e-17 -1.2621048661747489
		-1.3958180981849617 2.8649197663592844e-17 -1.3958180981849624
		-1.2621048661747525 -1.653593624095728e-32 -4.900718967336555e-16
		-1.3958180981849617 -2.864919766359285e-17 1.3958180981849617
		-1.2642590763776708e-16 -4.0516083886960693e-17 1.26210486617475
		1.3958180981849617 -2.8649197663592844e-17 1.3958180981849624
		1.2621048661747525 -2.4161461238595592e-32 -2.5253136262113012e-16
		1.3958180981849617 2.8649197663592856e-17 -1.3958180981849635
		7.7281634227460303e-17 4.0516083886960656e-17 -1.2621048661747489
		-1.3958180981849617 2.8649197663592844e-17 -1.3958180981849624
		;
createNode ikHandle -n "rtLegBp0_autoAimJ_ikh" -p "rtLegBp0_ikc";
	rename -uid "E2B9A469-4693-355A-66E8-41B0B23DFE07";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 119.11512781014129 -8.7728293962775581 85.144794991410976 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegBp0_pvc_ofs" -p "rtLegBp0_IK";
	rename -uid "04901D15-4162-8201-3E63-D8945D246F4E";
	setAttr ".t" -type "double3" -22.210413057983772 26.144115990768071 8.6846701804520521 ;
	setAttr ".r" -type "double3" -1.6673795853424609 -22.913190168935071 5.3953309619914356e-17 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_pvc_ofs1" -p "rtLegBp0_pvc_ofs";
	rename -uid "75E1B851-46BC-6551-6387-A9947CB654C9";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegBp0_pvc" -p "rtLegBp0_pvc_ofs1";
	rename -uid "BA7926A7-4549-C180-2919-17B909873191";
	addAttr -ci true -sn "fkPin" -ln "fkPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 2.1316282072803006e-14 3.5527136788005009e-15 ;
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
	rename -uid "CEB3BF26-4F1D-BC26-88F4-F2A8D2F3A530";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.3348450306226396
		-1.3348450306226396 0 0
		0 0 -1.3348450306226396
		1.3348450306226396 0 0
		0 0 1.3348450306226396
		0 1.3348450306226396 0
		1.3348450306226396 0 0
		0 0 -1.3348450306226396
		0 1.3348450306226396 0
		-1.3348450306226396 0 0
		0 -1.3348450306226396 0
		1.3348450306226396 0 0
		0 0 1.3348450306226396
		0 -1.3348450306226396 0
		0 0 -1.3348450306226396
		;
createNode transform -n "rtLegBp0_pin_fkc_ofs" -p "rtLegBp0_pvc";
	rename -uid "8F0756EF-44C4-2957-16D5-F8BC118A7AF4";
	setAttr ".t" -type "double3" -0.93226228919998988 -20.993332702427956 -34.526179148280661 ;
	setAttr ".r" -type "double3" 22.913190168935085 -1.6673795853424225 89.999999999999915 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "rtLegBp0_pin_fkc" -p "rtLegBp0_pin_fkc_ofs";
	rename -uid "2851468F-4B4A-9F2A-522B-56A4C835872F";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtLegBp0_pin_fkcShape1" -p "rtLegBp0_pin_fkc";
	rename -uid "10405816-45CB-01EE-EFDC-4E8226A0C794";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.1459679065437143e-16 -5.5832723927398469 -5.583272392739854
		1.6206433554784262e-16 -3.0912653690984121e-16 -5.0484194646989957
		1.1459679065437138e-16 5.5832723927398469 -5.5832723927398495
		-6.6143744963829118e-32 5.0484194646990099 -1.960287586934622e-15
		-1.145967906543714e-16 5.5832723927398469 5.5832723927398469
		-1.6206433554784277e-16 5.057036305510683e-16 5.0484194646990002
		-1.1459679065437138e-16 -5.5832723927398469 5.5832723927398495
		-9.664584495438237e-32 -5.0484194646990099 -1.0101254504845205e-15
		1.1459679065437143e-16 -5.5832723927398469 -5.583272392739854
		1.6206433554784262e-16 -3.0912653690984121e-16 -5.0484194646989957
		1.1459679065437138e-16 5.5832723927398469 -5.5832723927398495
		;
createNode transform -n "rtLegBp0_setting" -p "rtLegBp0_ctl_data";
	rename -uid "E9B1C338-4DA7-B1C3-6D34-7FA36A22C25A";
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
	rename -uid "D36BA0F4-473E-AE79-7663-7293E4034D3C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		2.696656627520484 2.696656627520484 -6.7133216153161278e-17
		2.6448411106700647 2.696656627520484 0.52609159826125962
		2.4913858523348105 2.696656627520484 1.0319658455673439
		2.2421880915441936 2.696656627520484 1.4981821183704636
		1.9068241873641261 2.696656627520484 1.9068241873641261
		1.4981821183704636 2.696656627520484 2.2421880915441936
		1.0319658455673439 2.696656627520484 2.4913858523348105
		0.52609159826125962 2.696656627520484 2.6448411106700647
		-1.6512259543180403e-16 2.696656627520484 2.696656627520484
		-0.52609159826125962 2.696656627520484 2.6448411106700647
		-1.0319658455673439 2.696656627520484 2.4913858523348105
		-1.4981821183704636 2.696656627520484 2.2421880915441936
		-1.9068241873641261 2.696656627520484 1.9068241873641261
		-2.2421880915441936 2.696656627520484 1.4981821183704636
		-2.4913858523348105 2.696656627520484 1.0319658455673439
		-2.6448411106700647 2.696656627520484 0.52609159826125962
		-2.696656627520484 2.696656627520484 2.9167497268077488e-16
		-2.5940213685142557 2.696656627520484 0.51598289063701985
		-2.3017404074423049 2.696656627520484 0.95341209368206303
		-1.8643111401039578 2.696656627520484 1.2456929261674052
		-1.348328313760242 2.696656627520484 1.348328313760242
		-0.83234542312322213 2.696656627520484 1.2456929261674052
		-0.39491622007817889 2.696656627520484 0.95341209368206303
		-0.10263538759283673 2.696656627520484 0.51598289063701985
		0 2.696656627520484 2.9167497268077488e-16
		0.10263538759283673 2.696656627520484 -0.51598289063701985
		0.39491622007817889 2.696656627520484 -0.95341209368206303
		0.83234542312322213 2.696656627520484 -1.2456929261674052
		1.348328313760242 2.696656627520484 -1.348328313760242
		1.8643111401039578 2.696656627520484 -1.2456929261674052
		2.3017404074423049 2.696656627520484 -0.95341209368206303
		2.5940213685142557 2.696656627520484 -0.51598289063701985
		2.696656627520484 2.696656627520484 -6.7133216153161278e-17
		2.6448411106700647 2.696656627520484 -0.52609159826125962
		2.4913858523348105 2.696656627520484 -1.0319658455673439
		2.2421880915441936 2.696656627520484 -1.4981821183704636
		1.9068241873641261 2.696656627520484 -1.9068241873641261
		1.4981821183704636 2.696656627520484 -2.2421880915441936
		1.0319658455673439 2.696656627520484 -2.4913858523348105
		0.52609159826125962 2.696656627520484 -2.6448411106700647
		3.1481710930086732e-16 2.696656627520484 -2.696656627520484
		-0.52609159826125962 2.696656627520484 -2.6448411106700647
		-1.0319658455673439 2.696656627520484 -2.4913858523348105
		-1.4981821183704636 2.696656627520484 -2.2421880915441936
		-1.9068241873641261 2.696656627520484 -1.9068241873641261
		-2.2421880915441936 2.696656627520484 -1.4981821183704636
		-2.4913858523348105 2.696656627520484 -1.0319658455673439
		-2.6448411106700647 2.696656627520484 -0.52609159826125962
		-2.696656627520484 2.696656627520484 2.9167497268077488e-16
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp0_toe00_3_ctl_ofs" -p "rtLegBp0_ctl_data";
	rename -uid "7239E64C-450F-F1E4-45E0-3495CA90B13B";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "rtLegBp0_toe00_3_ctl" -p "rtLegBp0_toe00_3_ctl_ofs";
	rename -uid "7E1DE266-4FD6-36C8-FC82-CBA4376B30BD";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe00_3_ctlShape1" -p "rtLegBp0_toe00_3_ctl";
	rename -uid "2802DDB9-4464-7655-A0BC-E4A3E117BC65";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-3.9928800244857349e-17 0.37554943459514228 0.37554943459514267
		-4.3121624881094529e-17 -8.6738554269383673e-16 0.33957345123124799
		-3.9928800244857349e-17 -0.37554943459514406 0.37554943459514245
		-3.2220639705774639e-17 -0.33957345123125082 -7.885436092089033e-16
		-2.4512479166691941e-17 -0.37554943459514406 -0.37554943459514412
		-2.1319654530454749e-17 -9.2219372455487697e-16 -0.33957345123125021
		-2.4512479166691941e-17 0.37554943459514228 -0.37554943459514434
		-3.2220639705774639e-17 0.33957345123124905 -8.5245466853345869e-16
		-3.9928800244857349e-17 0.37554943459514228 0.37554943459514267
		-4.3121624881094529e-17 -8.6738554269383673e-16 0.33957345123124799
		-3.9928800244857349e-17 -0.37554943459514406 0.37554943459514245
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp0_toe01_3_ctl_ofs" -p "rtLegBp0_ctl_data";
	rename -uid "4E772C1E-4EF7-57C8-0DC5-AAA2BB7FB5DF";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_toe01_3_ctl" -p "rtLegBp0_toe01_3_ctl_ofs";
	rename -uid "6A3FEBBE-4153-4286-7A9E-A184A2ABC05F";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe01_3_ctlShape1" -p "rtLegBp0_toe01_3_ctl";
	rename -uid "E404479A-4FBF-46CC-CAC9-199F690411C2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.7196237205277839e-15 0.375549434595145 0.37554943459514384
		-1.722816545164021e-15 1.8615909958180884e-15 0.33957345123124916
		-1.7196237205277839e-15 -0.37554943459514134 0.37554943459514362
		-1.7119155599887012e-15 -0.3395734512312481 3.619552150484716e-16
		-1.7042073994496185e-15 -0.37554943459514134 -0.37554943459514295
		-1.7010145748133813e-15 1.8067828139570482e-15 -0.33957345123124905
		-1.7042073994496185e-15 0.375549434595145 -0.37554943459514317
		-1.7119155599887012e-15 0.33957345123125177 2.9804415572391611e-16
		-1.7196237205277839e-15 0.375549434595145 0.37554943459514384
		-1.722816545164021e-15 1.8615909958180884e-15 0.33957345123124916
		-1.7196237205277839e-15 -0.37554943459514134 0.37554943459514362
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp0_toe01_4_ctl_ofs" -p "rtLegBp0_ctl_data";
	rename -uid "48AC89EB-4CD3-2491-D51D-FE881F72D3BA";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "rtLegBp0_toe01_4_ctl" -p "rtLegBp0_toe01_4_ctl_ofs";
	rename -uid "66C83D57-4E6F-95A6-A92C-B6BD70AB30DB";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe01_4_ctlShape1" -p "rtLegBp0_toe01_4_ctl";
	rename -uid "904DE38B-48D7-94D7-D922-63982BDBEAFB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.912947558762432e-15 0.37554943459513973 0.37554943459514456
		-1.9161403833986691e-15 -3.467479522382663e-15 0.33957345123124988
		-1.912947558762432e-15 -0.37554943459514667 0.37554943459514434
		-1.905239398223349e-15 -0.33957345123125338 1.0522545096028966e-15
		-1.8975312376842661e-15 -0.37554943459514667 -0.37554943459514223
		-1.894338413048029e-15 -3.5222877042437032e-15 -0.33957345123124832
		-1.8975312376842661e-15 0.37554943459513973 -0.37554943459514245
		-1.905239398223349e-15 0.33957345123124644 9.8834345027834106e-16
		-1.912947558762432e-15 0.37554943459513973 0.37554943459514456
		-1.9161403833986691e-15 -3.467479522382663e-15 0.33957345123124988
		-1.912947558762432e-15 -0.37554943459514667 0.37554943459514434
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp0_toe02_3_ctl_ofs" -p "rtLegBp0_ctl_data";
	rename -uid "50C56008-4981-316A-08E0-C389F4E8CB03";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_toe02_3_ctl" -p "rtLegBp0_toe02_3_ctl_ofs";
	rename -uid "9BB95040-4E51-0B1D-82EF-BB89B1A12F29";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe02_3_ctlShape1" -p "rtLegBp0_toe02_3_ctl";
	rename -uid "9A8C9EB9-4447-D76C-22FB-93B77F4CE6E9";
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
	rename -uid "19432585-4FE0-A759-B8F3-46B033DCF73E";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rtLegBp0_toe02_4_ctl" -p "rtLegBp0_toe02_4_ctl_ofs";
	rename -uid "6661561D-4718-1849-40A6-2494879A0311";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe02_4_ctlShape1" -p "rtLegBp0_toe02_4_ctl";
	rename -uid "EFA319F7-44D6-B376-4ACA-17B621B07E7C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-7.7081605390827072e-18 0.37554943459514317 0.37554943459514267
		-1.0900985175319885e-17 2.079287700628846e-17 0.33957345123124799
		-7.7081605390827041e-18 -0.37554943459514317 0.37554943459514245
		4.4490478479022703e-33 -0.33957345123124993 -7.885436092089033e-16
		7.7081605390827057e-18 -0.37554943459514317 -0.37554943459514412
		1.0900985175319896e-17 -3.4015304854751704e-17 -0.33957345123125021
		7.7081605390827041e-18 0.37554943459514317 -0.37554943459514434
		6.500720343822808e-33 0.33957345123124993 -8.5245466853345869e-16
		-7.7081605390827072e-18 0.37554943459514317 0.37554943459514267
		-1.0900985175319885e-17 2.079287700628846e-17 0.33957345123124799
		-7.7081605390827041e-18 -0.37554943459514317 0.37554943459514245
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp0_toe03_3_ctl_ofs" -p "rtLegBp0_ctl_data";
	rename -uid "A229AABA-4F03-5ABD-46AD-E580D2A7155C";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "rtLegBp0_toe03_3_ctl" -p "rtLegBp0_toe03_3_ctl_ofs";
	rename -uid "D89C35D1-4EC0-80BD-BA05-FDAAD8C36ABA";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe03_3_ctlShape1" -p "rtLegBp0_toe03_3_ctl";
	rename -uid "A4073BA4-4790-7AD9-B805-16BF8F24A0AA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.3659071936218129e-16 0.37554943459513968 0.37554943459514362
		-1.3978354399841849e-16 -3.5319208017942123e-15 0.33957345123124894
		-1.3659071936218129e-16 -0.37554943459514672 0.37554943459514339
		-1.2888255882309858e-16 -0.33957345123125343 1.3185545019699661e-16
		-1.2117439828401587e-16 -0.37554943459514672 -0.37554943459514317
		-1.1798157364777867e-16 -3.5867289836552525e-15 -0.33957345123124927
		-1.2117439828401587e-16 0.37554943459513968 -0.37554943459514339
		-1.2888255882309858e-16 0.33957345123124638 6.7944390872441149e-17
		-1.3659071936218129e-16 0.37554943459513968 0.37554943459514362
		-1.3978354399841849e-16 -3.5319208017942123e-15 0.33957345123124894
		-1.3659071936218129e-16 -0.37554943459514672 0.37554943459514339
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp0_toe03_4_ctl_ofs" -p "rtLegBp0_ctl_data";
	rename -uid "1B0FF11B-4E0F-2E7D-2528-3FA6799C1164";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "rtLegBp0_toe03_4_ctl" -p "rtLegBp0_toe03_4_ctl_ofs";
	rename -uid "E0492253-468E-5F48-2CAB-BF8ABDEB90B7";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe03_4_ctlShape1" -p "rtLegBp0_toe03_4_ctl";
	rename -uid "D7B073E5-46FB-976C-A09E-7BA293E43AF8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.8485062793508823e-15 0.37554943459514151 0.37554943459514267
		-1.8516991039871198e-15 -1.6911226829824128e-15 0.33957345123124799
		-1.8485062793508823e-15 -0.37554943459514489 0.37554943459514245
		-1.8407981188117998e-15 -0.3395734512312516 -7.885436092089033e-16
		-1.8330899582727172e-15 -0.37554943459514489 -0.37554943459514412
		-1.8298971336364797e-15 -1.7459308648434529e-15 -0.33957345123125021
		-1.8330899582727172e-15 0.37554943459514151 -0.37554943459514434
		-1.8407981188117998e-15 0.33957345123124821 -8.5245466853345869e-16
		-1.8485062793508823e-15 0.37554943459514151 0.37554943459514267
		-1.8516991039871198e-15 -1.6911226829824128e-15 0.33957345123124799
		-1.8485062793508823e-15 -0.37554943459514489 0.37554943459514245
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp0_toe04_3_ctl_ofs" -p "rtLegBp0_ctl_data";
	rename -uid "5F126BF2-4CBB-B097-5CC9-A99EBD5A59D8";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rtLegBp0_toe04_3_ctl" -p "rtLegBp0_toe04_3_ctl_ofs";
	rename -uid "6DA1B3F8-4619-6CF8-DA66-D5B3F5A826BE";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe04_3_ctlShape1" -p "rtLegBp0_toe04_3_ctl";
	rename -uid "028CF483-430A-B376-2CAC-5289EFBD6036";
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
createNode transform -n "rtLegBp0_toe04_4_ctl_ofs" -p "rtLegBp0_ctl_data";
	rename -uid "6DD7FE11-4CB8-AFA1-1DC8-12A76EBD8546";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "rtLegBp0_toe04_4_ctl" -p "rtLegBp0_toe04_4_ctl_ofs";
	rename -uid "A18F0B9A-4FEE-996F-0229-47AAD7BC60E9";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe04_4_ctlShape1" -p "rtLegBp0_toe04_4_ctl";
	rename -uid "9345410C-4666-8052-F61C-7DBFA6B4BC47";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.8485062793508823e-15 0.37554943459514151 0.37554943459514362
		-1.8516991039871198e-15 -1.6911226829824128e-15 0.33957345123124894
		-1.8485062793508823e-15 -0.37554943459514489 0.37554943459514339
		-1.8407981188117998e-15 -0.3395734512312516 1.3185545019699661e-16
		-1.8330899582727172e-15 -0.37554943459514489 -0.37554943459514317
		-1.8298971336364797e-15 -1.7459308648434529e-15 -0.33957345123124927
		-1.8330899582727172e-15 0.37554943459514151 -0.37554943459514339
		-1.8407981188117998e-15 0.33957345123124821 6.7944390872441149e-17
		-1.8485062793508823e-15 0.37554943459514151 0.37554943459514362
		-1.8516991039871198e-15 -1.6911226829824128e-15 0.33957345123124894
		-1.8485062793508823e-15 -0.37554943459514489 0.37554943459514339
		;
	setAttr ".adot" yes;
createNode transform -n "spineQd0_ctl_data" -p "master_ctl";
	rename -uid "B0BF2B70-4F07-2C8B-A0D4-4BBE05509B32";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_IK" -p "spineQd0_ctl_data";
	rename -uid "0A993C44-4E10-2D6D-5456-5AB7C05DC562";
	setAttr ".t" -type "double3" 2.0724377617666044e-14 50.966770490230111 -12.970689133586692 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_cog_ctl_ofs" -p "spineQd0_IK";
	rename -uid "ADFA2431-470D-9577-C003-57983884BAD7";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_cog_ctl" -p "spineQd0_cog_ctl_ofs";
	rename -uid "A2BCB17C-4D61-1A8C-F2D8-A1B541239097";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spineQd0_cog_ctlShape1" -p "spineQd0_cog_ctl";
	rename -uid "1115AF70-45BB-2960-8C4C-9D97E20425C7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		1.175691783654649 22.457057081252177 4.702767134618596
		1.175691783654649 25.610359362534471 4.702767134618596
		1.175691783654649 27.159824215870763 -4.702767134618596
		1.175691783654649 22.457057081252177 -4.702767134618596
		1.175691783654649 22.457057081252177 4.702767134618596
		-1.175691783654649 22.457057081252177 4.702767134618596
		-1.175691783654649 22.457057081252177 -4.702767134618596
		1.175691783654649 22.457057081252177 -4.702767134618596
		1.175691783654649 27.159824215870763 -4.702767134618596
		-1.175691783654649 27.159824215870763 -4.702767134618596
		-1.175691783654649 22.457057081252177 -4.702767134618596
		-1.175691783654649 27.159824215870763 -4.702767134618596
		-1.175691783654649 25.610359362534471 4.702767134618596
		-1.175691783654649 22.457057081252177 4.702767134618596
		1.175691783654649 22.457057081252177 4.702767134618596
		1.175691783654649 25.610359362534471 4.702767134618596
		-1.175691783654649 25.610359362534471 4.702767134618596
		;
createNode transform -n "spineQd0_base_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "8DA45B82-44E9-4BC6-C74A-15AAA3B121D4";
	setAttr ".t" -type "double3" -2.0724377617666044e-14 1.9714511172109468 2.7441693097631035 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_base_ctl" -p "spineQd0_base_ctl_ofs";
	rename -uid "17A32A0E-442A-8431-366E-5D91BF952A68";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode nurbsCurve -n "spineQd0_base_ctlShape1" -p "spineQd0_base_ctl";
	rename -uid "F8E945BD-4028-9EDF-80FB-16B68F62DC45";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		6.0611266858746955 10.170972939832623 -10.035659255435453
		5.2486693612437543e-16 12.681573816383407 -10.035659255435453
		-6.0611266858746955 10.17097293983262 -10.035659255435453
		-8.5717275624254849 4.4435987048979527e-16 2.7209194653243007e-32
		-6.0611266858746955 -6.0611266858746955 -3.7113696975415249e-16
		-8.5863581240107393e-16 -8.5717275624254867 -5.2486693612437582e-16
		6.0611266858746955 -6.0611266858746946 -3.7113696975415249e-16
		8.5717275624254849 -1.1689234612010191e-15 -7.1575918760403665e-32
		6.0611266858746955 10.170972939832623 -10.035659255435453
		5.2486693612437543e-16 12.681573816383407 -10.035659255435453
		-6.0611266858746955 10.17097293983262 -10.035659255435453
		;
createNode transform -n "spineQd0_tangent0_ctl_ofs" -p "spineQd0_base_ctl";
	rename -uid "9D92A830-4D63-6F45-FB2B-A6B90FEF7C3C";
	setAttr ".t" -type "double3" 2.0733503347351863e-14 -1.9714511172109397 -2.7441693097631035 ;
	setAttr ".r" -type "double3" -35.43667189883584 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_tangent0_ctl" -p "spineQd0_tangent0_ctl_ofs";
	rename -uid "A6FE431A-49DE-78A1-CCD0-669FB1033D81";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "spineQd0_tangent0_ctlShape1" -p "spineQd0_tangent0_ctl";
	rename -uid "3F4B064F-4C1F-B748-9A43-C8A591FEF6B8";
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
	rename -uid "E0113264-4452-D5D5-1866-8E94671155D5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" -35.43667189883584 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 35.43667189883584 0 0 ;
	setAttr ".radi" 1.0313147471433626;
createNode transform -n "spineQd0_end_ctl_ofs" -p "spineQd0_base_ctl";
	rename -uid "F3E52F7B-418C-9EC2-E6CA-D6ABD253F01F";
	setAttr ".t" -type "double3" 2.7000623958883807e-15 -2.9879164993694545 -5.0214093457870153 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_end_ctl" -p "spineQd0_end_ctl_ofs";
	rename -uid "893F5AE3-4306-5C71-AEDD-D986B8A97482";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spineQd0_end_ctlShape1" -p "spineQd0_end_ctl";
	rename -uid "2D259F49-472D-D8B7-58E0-689FFE40CDD6";
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
	rename -uid "87FB01D7-4FC3-B58C-C6AC-59889A489B56";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 2.0724377617666044e-14 -1.9714511172109468 -2.7441693097631035 ;
	setAttr ".r" -type "double3" -35.436671898835947 -2.1863768924301345e-15 -3.3404700571832018e-15 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 5.1565737357168127;
createNode joint -n "spineQd0_two_ikj_end" -p "spineQd0_two_ikj";
	rename -uid "722BA0E8-4348-501E-B511-2AB3D78A6BC8";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -2.0724377617666047e-14 -1.0036002583264008 25.755848826088489 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 5.1565737357168127;
createNode transform -n "spineQd0_loc2" -p "spineQd0_two_ikj_end";
	rename -uid "EAA18F14-46B3-ED2F-BC85-19B5F215EC9D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.0313890415143156e-14 0.54003377163004274 -12.877347250728167 ;
	setAttr ".r" -type "double3" 4.4812366107786596 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_loc2Shape" -p "spineQd0_loc2";
	rename -uid "55308798-48A2-F764-9DDF-47B159CF9E27";
	setAttr -k off ".v";
createNode ikEffector -n "effector44" -p "spineQd0_two_ikj";
	rename -uid "1CB4732B-4BB7-8CD8-12D4-2AA35758257F";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "spineQd0_loc1" -p "spineQd0_base_ctl";
	rename -uid "6C8F533B-46DA-053A-9430-A3A6723585E1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.0313890415143153e-14 5.1178458246573157 8.0174553623839202 ;
	setAttr ".r" -type "double3" -30.955435288057288 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_loc1Shape" -p "spineQd0_loc1";
	rename -uid "E3F31A1F-4D4D-F417-6638-BEA51E29A247";
	setAttr -k off ".v";
createNode transform -n "spineQd0_mid_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "EA1ED358-482E-57BD-3DA7-B99C4A39B900";
	setAttr ".t" -type "double3" -1.0410487202522891e-14 7.0892969418682625 10.761624672147024 ;
	setAttr ".r" -type "double3" -30.955435288057288 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_mid_ctl_ofs1" -p "spineQd0_mid_ctl_ofs";
	rename -uid "4C09474E-46DB-19F5-8AED-F3897047B457";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_mid_ctl_ofs2" -p "spineQd0_mid_ctl_ofs1";
	rename -uid "33B6CF08-478C-1F3A-E0BD-7697AFF0FA6B";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_mid_ctl" -p "spineQd0_mid_ctl_ofs2";
	rename -uid "857BE299-4495-1126-5542-3AA1620EB035";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spineQd0_mid_ctlShape1" -p "spineQd0_mid_ctl";
	rename -uid "3C72844E-4301-75BA-5489-FCB916336B63";
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
	rename -uid "A42B390A-46C5-FA78-B638-C6829C6176F1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" -30.955435288057277 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 30.955435288057288 0 0 ;
	setAttr ".radi" 1.0313147471433626;
createNode transform -n "spineQd0_fore_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "91168960-4C0F-26E0-E639-23A944F74DD9";
	setAttr ".t" -type "double3" -2.0724377617666038e-14 14.115622357953846 21.566644794183212 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_fore_ctl" -p "spineQd0_fore_ctl_ofs";
	rename -uid "90571D53-4E55-267B-271A-20840EB46447";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode nurbsCurve -n "spineQd0_fore_ctlShape1" -p "spineQd0_fore_ctl";
	rename -uid "B7CF4BC6-493D-A75C-9F0C-0E92D61BD8BC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		6.0611266858746955 10.328205338087187 -6.6123155044743829
		5.2486693612437543e-16 12.838806214637971 -6.6123155044743829
		-6.0611266858746955 10.328205338087184 -6.6123155044743829
		-8.5717275624254849 4.4435987048979527e-16 2.7209194653243007e-32
		-6.0611266858746955 -6.0611266858746955 -3.7113696975415249e-16
		-8.5863581240107393e-16 -8.5717275624254867 -5.2486693612437582e-16
		6.0611266858746955 -6.0611266858746946 -3.7113696975415249e-16
		8.5717275624254849 -1.1689234612010191e-15 -7.1575918760403665e-32
		6.0611266858746955 10.328205338087187 -6.6123155044743829
		5.2486693612437543e-16 12.838806214637971 -6.6123155044743829
		-6.0611266858746955 10.328205338087184 -6.6123155044743829
		;
createNode transform -n "spineQd0_tangent1_ctl_ofs" -p "spineQd0_fore_ctl";
	rename -uid "06F0B56F-499E-0FF4-C4E2-B18DC0CE6AEA";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_tangent1_ctl" -p "spineQd0_tangent1_ctl_ofs";
	rename -uid "E623417E-4CAD-9517-C818-658E88F509F7";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "spineQd0_tangent1_ctlShape1" -p "spineQd0_tangent1_ctl";
	rename -uid "3580B1BE-4836-5F3F-AE94-94861C43A0E7";
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
	rename -uid "A6C8C4EC-48E4-EA9F-F12B-1D934660CFA1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".radi" 1.0313147471433626;
createNode ikHandle -n "spineQd0_two_ikj_ikh" -p "spineQd0_tangent1_ctl";
	rename -uid "D75D6196-476C-21DC-412F-E697C2915BEF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -9.4663308626521417e-30 0 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" -35.436671898835975 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "spineQd0_anchorToRbj" -p "spineQd0_fore_ctl";
	rename -uid "82CF4BF5-4BCA-316D-AD54-B1B9F557B616";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorToRbjShape" -p "spineQd0_anchorToRbj";
	rename -uid "D6E08A83-456B-31C2-50CA-F39882573A4A";
	setAttr -k off ".v";
createNode transform -n "neckQd0_cog_ctl_SPACE_1_ofs" -p "spineQd0_fore_ctl";
	rename -uid "082AE15F-4468-C4CD-E2CF-72B9D65847F5";
	setAttr ".t" -type "double3" -4.1604042047768869e-05 1.1294366449805011 1.0802480500664835 ;
	setAttr ".r" -type "double3" -39.718114652890492 0 0 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_1" -p "neckQd0_cog_ctl_SPACE_1_ofs";
	rename -uid "9C832210-4EC1-FCA2-4742-8689C6FDCC93";
	setAttr ".t" -type "double3" -6.7762635780344027e-21 0 0 ;
createNode transform -n "head0_head_fkc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "3CE840B8-4AE7-7453-A925-2CBCB2CA31B7";
	setAttr ".t" -type "double3" -4.9146087048070055e-14 22.966738545796368 30.951754516975733 ;
createNode transform -n "head0_head_fkc_SPACE_2" -p "head0_head_fkc_SPACE_2_ofs";
	rename -uid "3B47A288-4D16-F5D0-42E9-ACA6A9037B46";
createNode transform -n "lfArmBp0_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "A8625A3D-4A03-BEEC-DAE6-FC981A2AD90F";
	setAttr ".t" -type "double3" 9.7238019305171086 -35.979195653590992 34.693119103780006 ;
	setAttr ".r" -type "double3" 12.690821861900876 -13.480709470976148 -93.893558422799202 ;
createNode transform -n "lfArmBp0_ikc_SPACE_2" -p "lfArmBp0_ikc_SPACE_2_ofs";
	rename -uid "4F774588-4259-EE5B-32A7-919BAC15FB8D";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 0 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "lfArmBp0_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "6EC6D90C-4F4A-0CB2-697F-A69184E6FF00";
	setAttr ".t" -type "double3" 15.727025777833829 -21.397610155122074 8.279032971196342 ;
	setAttr ".r" -type "double3" -11.310732945752269 -12.163396436862797 0 ;
createNode transform -n "lfArmBp0_pvc_SPACE_3" -p "lfArmBp0_pvc_SPACE_3_ofs";
	rename -uid "45D34F8A-46A7-F3AB-8F20-658208DA7C08";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 -1.1102230246251565e-15 ;
createNode transform -n "lfLegBp0_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "AC0DA857-4C42-9B47-E9E8-899C397C34ED";
	setAttr ".t" -type "double3" 9.870347264210281 -46.811711908662154 -9.9334093188594146 ;
createNode transform -n "lfLegBp0_ikc_SPACE_2" -p "lfLegBp0_ikc_SPACE_2_ofs";
	rename -uid "28F30C26-4E00-6F4B-31A4-CFB354B07E34";
createNode transform -n "lfLegBp0_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "5105D368-433F-026F-2A6C-8894600165D8";
	setAttr ".t" -type "double3" 22.210413057416865 -24.822654796468139 21.655359312698941 ;
	setAttr ".r" -type "double3" -1.6673767571120408 22.913190369300132 7.4728137005945011e-06 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "lfLegBp0_pvc_SPACE_3" -p "lfLegBp0_pvc_SPACE_3_ofs";
	rename -uid "648A172F-4DFA-120A-2B79-8AB2644CD82E";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 3.5527136788005009e-15 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "9A3F8251-4611-2253-D0B3-F6B42FC47CAE";
	setAttr ".t" -type "double3" -4.1604042073947025e-05 20.429491325466593 28.88755609760485 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_2" -p "neckQd0_fore_ctl_SPACE_2_ofs";
	rename -uid "A4C6B1F8-4ED0-6CC1-C900-5CB9BDE29B6C";
createNode transform -n "neckQd0_cog_ctl_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "2E0404B9-48D3-BEC2-BBBF-61A665F51BB1";
	setAttr ".t" -type "double3" -4.1604042068493244e-05 15.245059002934347 22.646892844249695 ;
	setAttr ".r" -type "double3" -39.718114652890492 0 0 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_2" -p "neckQd0_cog_ctl_SPACE_2_ofs";
	rename -uid "D58DA35A-4C01-258B-D6AF-B882F03987E0";
	setAttr ".t" -type "double3" -6.7762635780344027e-21 0 0 ;
createNode transform -n "rtArmBp0_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "6E9FA375-4881-4780-86C9-AABB0C5658BE";
	setAttr ".t" -type "double3" -9.7238018710279395 -35.979194892575549 34.693118984859382 ;
	setAttr ".r" -type "double3" -167.30917788057499 13.480709559118871 93.893558589383062 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtArmBp0_ikc_SPACE_2" -p "rtArmBp0_ikc_SPACE_2_ofs";
	rename -uid "128CC45E-42A0-28A1-1EED-1EB00A58981F";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999933 ;
createNode transform -n "rtArmBp0_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "B63F5ECA-4095-AAD0-4A4E-42B6DE2A06A8";
	setAttr ".t" -type "double3" -15.559658358416955 -21.238731166127355 9.0555394581622028 ;
	setAttr ".r" -type "double3" -11.310734760043184 12.163396637700897 2.0334972671381305e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "rtArmBp0_pvc_SPACE_3" -p "rtArmBp0_pvc_SPACE_3_ofs";
	rename -uid "81E064E6-4C13-D987-23B7-C2AEE7006062";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 7.1054273576010019e-15 8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegBp0_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "1539EC8D-4BE0-BFB7-9B0A-A0AF461947CC";
	setAttr ".t" -type "double3" -9.8703472642103236 -46.811712004785832 -9.9334093188594181 ;
createNode transform -n "rtLegBp0_ikc_SPACE_2" -p "rtLegBp0_ikc_SPACE_2_ofs";
	rename -uid "E2109F3A-43B0-AD3C-EB28-16AD12FCD9D5";
createNode transform -n "rtLegBp0_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "B948C5A4-47D5-A281-EC9F-A2940525A51B";
	setAttr ".t" -type "double3" -22.210413057983793 -24.82265449946204 21.655359314038744 ;
	setAttr ".r" -type "double3" -1.6673795853424609 -22.913190168935071 5.3953309619914356e-17 ;
createNode transform -n "rtLegBp0_pvc_SPACE_3" -p "rtLegBp0_pvc_SPACE_3_ofs";
	rename -uid "66D7EB74-469D-2D31-361F-AF826B6DEEBC";
	setAttr ".t" -type "double3" 0 0 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "spineQd0_setting" -p "spineQd0_IK";
	rename -uid "365D6128-4B9F-E80D-64BB-638E95FD12B0";
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
	rename -uid "64A5721F-4594-1251-5371-8A874E048283";
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
createNode unitConversion -n "unitConversion127";
	rename -uid "110E9498-4078-7D61-FD5F-F6B254F8EF85";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion298";
	rename -uid "BD16512B-47B0-9CD4-7DD8-529EAA18915E";
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
	setAttr -s 9 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 12 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
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
	setAttr -s 40 ".hyp";
connectAttr "master2_ctl.sy" "master_ctl.globalScale" -l on;
connectAttr "lfArmBp0_setting.fkIkBlend" "lfArmBp0_clavicle_fkc.fkIkBlend";
connectAttr "lfArmBp0_setting.fkIkBlend" "lfArmBp0_upr_fkc.fkIkBlend";
connectAttr "lfArmBp0_setting.fkIkBlend" "lfArmBp0_lwr_fkc.fkIkBlend";
connectAttr "lfArmBp0_palm_ikc.palmRoll" "lfArmBp0_palm_fkc.palmRoll";
connectAttr "lfArmBp0_palm_ikc.palmBank" "lfArmBp0_palm_fkc.palmBank";
connectAttr "lfArmBp0_setting.fkIkBlend" "lfArmBp0_palm_fkc.fkIkBlend";
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
connectAttr "lfHand0_smart_ctl.showCtls" "lfHand0_fgr00_1_ctl.v" -l on;
connectAttr "lfHand0_smart_ctl.showCtls" "lfHand0_fgr01_1_ctl.v" -l on;
connectAttr "lfHand0_smart_ctl.showCtls" "lfHand0_fgr02_1_ctl.v" -l on;
connectAttr "lfHand0_smart_ctl.showCtls" "lfHand0_fgr03_1_ctl.v" -l on;
connectAttr "lfHand0_smart_ctl.showCtls" "lfHand0_fgr04_1_ctl.v" -l on;
connectAttr "lfLegBp0_setting.moduleScale" "lfLegBp0_ctl_data.sy";
connectAttr "lfLegBp0_setting.moduleScale" "lfLegBp0_ctl_data.sx";
connectAttr "lfLegBp0_setting.moduleScale" "lfLegBp0_ctl_data.sz";
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
connectAttr "lfLegBp0_setting.fkIkBlend" "lfLegBp0_ikCstG.v";
connectAttr "lfLegBp0_ikc.extraCtl" "lfLegBp0_heelRollG_ctl.v" -l on;
connectAttr "lfLegBp0_ikc.extraCtl" "lfLegBp0_toeRollG_ctl.v" -l on;
connectAttr "lfLegBp0_ikc.extraCtl" "lfLegBp0_outRollG_ctl.v" -l on;
connectAttr "lfLegBp0_ikc.extraCtl" "lfLegBp0_inRollG_ctl.v" -l on;
connectAttr "lfLegBp0_setting.fkIkBlend" "lfLegBp0_ballG_ikc.fkIkBlend";
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
connectAttr "lfLegBp0_setting.fkIkBlend" "lfLegBp0_pvc.fkIkBlend";
connectAttr "lfLegBp0_setting.fkIkBlend" "lfLegBp0_pvc.v" -l on;
connectAttr "lfLegBp0_pvc.fkPin" "lfLegBp0_pin_fkc.v" -l on;
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
connectAttr "rtArmBp0_setting.fkIkBlend" "rtArmBp0_clavicle_fkc.fkIkBlend";
connectAttr "rtArmBp0_setting.fkIkBlend" "rtArmBp0_upr_fkc.fkIkBlend";
connectAttr "rtArmBp0_setting.fkIkBlend" "rtArmBp0_lwr_fkc.fkIkBlend";
connectAttr "rtArmBp0_palm_ikc.palmRoll" "rtArmBp0_palm_fkc.palmRoll";
connectAttr "rtArmBp0_palm_ikc.palmBank" "rtArmBp0_palm_fkc.palmBank";
connectAttr "rtArmBp0_setting.fkIkBlend" "rtArmBp0_palm_fkc.fkIkBlend";
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
connectAttr "rtHand0_smart_ctl.showCtls" "rtHand0_fgr00_1_ctl.v" -l on;
connectAttr "rtHand0_smart_ctl.showCtls" "rtHand0_fgr01_1_ctl.v" -l on;
connectAttr "rtHand0_smart_ctl.showCtls" "rtHand0_fgr02_1_ctl.v" -l on;
connectAttr "rtHand0_smart_ctl.showCtls" "rtHand0_fgr03_1_ctl.v" -l on;
connectAttr "rtHand0_smart_ctl.showCtls" "rtHand0_fgr04_1_ctl.v" -l on;
connectAttr "rtLegBp0_setting.moduleScale" "rtLegBp0_ctl_data.sy";
connectAttr "rtLegBp0_setting.moduleScale" "rtLegBp0_ctl_data.sx";
connectAttr "rtLegBp0_setting.moduleScale" "rtLegBp0_ctl_data.sz";
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
connectAttr "rtLegBp0_setting.fkIkBlend" "rtLegBp0_ikCstG.v";
connectAttr "rtLegBp0_ikc.extraCtl" "rtLegBp0_heelRollG_ctl.v" -l on;
connectAttr "rtLegBp0_ikc.extraCtl" "rtLegBp0_toeRollG_ctl.v" -l on;
connectAttr "rtLegBp0_ikc.extraCtl" "rtLegBp0_outRollG_ctl.v" -l on;
connectAttr "rtLegBp0_ikc.extraCtl" "rtLegBp0_inRollG_ctl.v" -l on;
connectAttr "rtLegBp0_setting.fkIkBlend" "rtLegBp0_ballG_ikc.fkIkBlend";
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
connectAttr "rtLegBp0_setting.fkIkBlend" "rtLegBp0_pvc.fkIkBlend";
connectAttr "rtLegBp0_setting.fkIkBlend" "rtLegBp0_pvc.v" -l on;
connectAttr "rtLegBp0_pvc.fkPin" "rtLegBp0_pin_fkc.v" -l on;
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
connectAttr "lfLegBp0_smart_ctl.rx" "unitConversion127.i";
connectAttr "rtLegBp0_smart_ctl.rx" "unitConversion298.i";
// End of ape_ctl.ma
