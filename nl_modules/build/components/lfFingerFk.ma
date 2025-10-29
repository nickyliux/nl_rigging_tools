//Maya ASCII 2023 scene
//Name: lfFingerFk.ma
//Last modified: Wed, Oct 29, 2025 04:13:31 PM
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
fileInfo "osv" "Windows 11 Pro v2009 (Build: 26200)";
fileInfo "UUID" "23BAA732-4A5D-058B-F7D2-FD9BC2C72564";
createNode transform -s -n "persp";
	rename -uid "83BBC351-4169-8A57-6147-3688C3C5E65F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 126.2870195806172 45.803765123396531 40.017382945234701 ;
	setAttr ".r" -type "double3" -29.138352729833866 63.000000000005777 3.5028868261437436e-15 ;
	setAttr -cb on ".ro";
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "E4BD1A20-4E99-1123-5E44-089307917010";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 74.820186988695554;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 50 50 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "B021713E-478C-4217-ADD4-C5A536DC9A78";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1973899600641 13.489732621071905 ;
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr -cb on ".ro";
createNode camera -s -n "topShape" -p "top";
	rename -uid "B48BED17-42EA-5F39-909F-C5AA1181E33F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 934.29738996006415;
	setAttr ".ow" 93.62286356026199;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 0 65.9 13.489732621071905 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "EE7BD8DA-47E1-96DB-89F3-E7BCD3322950";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
	setAttr -cb on ".ro";
createNode camera -s -n "frontShape" -p "front";
	rename -uid "0CE4EFB7-4187-8068-C3A8-B9ABC66A394F";
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
	rename -uid "73B9DBF3-4B33-2FCB-92B7-C5A2209E9101";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1001.2772318696489 16.963744374427009 -3.8261033002892439 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr -cb on ".ro";
createNode camera -s -n "sideShape" -p "side";
	rename -uid "FD8DC672-464D-1831-AFFA-6DA62C07EBC9";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1001.2772318696489;
	setAttr ".ow" 208.22547250869002;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 0 39.042520904541114 -28.840364456176761 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "module_grp";
	rename -uid "BBA29320-4AB7-0A24-468F-F1A8C499ED48";
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "master_guide" -p "module_grp";
	rename -uid "177DBE6B-4E8E-B711-3C19-589C4E949A6A";
	addAttr -ci true -sn "segNum" -ln "segNum" -dv 1 -min 1 -max 4 -at "long";
	addAttr -ci true -sn "parentNameMatch" -ln "parentNameMatch" -dt "string";
	addAttr -ci true -sn "mirrorable" -ln "mirrorable" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "refVis" -ln "refVis" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 50 0 0 ;
	setAttr -k on ".segNum" 4;
	setAttr -k on ".parentNameMatch" -type "string" "*";
	setAttr -cb on ".mirrorable" yes;
	setAttr -cb on ".refVis";
createNode transform -n "fgr01_guide_ofs" -p "master_guide";
	rename -uid "F0DCF307-4AFE-F9B7-4833-678378A04ECB";
createNode transform -n "fgr01_guide" -p "fgr01_guide_ofs";
	rename -uid "09FE2B51-4844-E3BF-0B9C-679ACF23FA5B";
createNode transform -n "fgr02_guide_ofs" -p "fgr01_guide";
	rename -uid "DC2A7D33-4C13-4876-743E-4998B6CFFF5B";
	setAttr ".t" -type "double3" 10 0 0 ;
createNode transform -n "fgr02_guide" -p "fgr02_guide_ofs";
	rename -uid "67D57CBD-4024-CF3C-78B0-FFBE25AF9BD1";
createNode transform -n "fgr03_guide_ofs" -p "fgr02_guide";
	rename -uid "4D3032FB-4663-78DC-57D6-38B48E6FDD7F";
	setAttr ".t" -type "double3" 10 0 0 ;
createNode transform -n "fgr03_guide" -p "fgr03_guide_ofs";
	rename -uid "9889D14F-4DAD-1350-7B36-DE95035FF2E9";
createNode transform -n "fgr04_guide_ofs" -p "fgr03_guide";
	rename -uid "F330BE4B-4FE8-0F4F-0B90-AA8A84776809";
	setAttr ".t" -type "double3" 10 0 0 ;
createNode transform -n "fgr04_guide" -p "fgr04_guide_ofs";
	rename -uid "DD9EE4A5-4B21-7FBB-0CBC-45B2401E5605";
createNode transform -n "fgr04_guide_ofs1" -p "fgr04_guide";
	rename -uid "50034F87-4717-704F-D47D-26BE70DEEF61";
	setAttr ".t" -type "double3" 10 0 0 ;
createNode transform -n "fgr05_guide" -p "fgr04_guide_ofs1";
	rename -uid "3E530B2C-4529-BE7E-40E9-BD9004B8C504";
createNode nurbsCurve -n "fgr05_guideShape" -p "fgr05_guide";
	rename -uid "C950C512-4891-268E-3505-E88198C1918F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.35419504040336203 0 0
		0.32886134143794898 0.13621882187999926 0
		0.25169958732675413 0.25169958732675413 0
		0.13621882187999926 0.32886134143794898 0
		0 0.35418673473938256 0
		-0.13621882187999926 0.32886134143794898 0
		-0.25169958732675413 0.25169958732675413 0
		-0.32886134143794898 0.13621882187999926 0
		-0.35419504040336203 -1.6781499148591258e-08 0
		-0.32886134143794898 -0.13621882187999926 0
		-0.25169958732675413 -0.25169958732675413 0
		-0.13621882187999926 -0.32886134143794898 0
		1.4144450835117992e-08 -0.35418673473938256 -0.0024084052493534482
		0.13621882187999926 -0.32886134143794898 0
		0.25169958732675413 -0.25169958732675413 0
		0.32886134143794898 -0.13621882187999926 0
		0.35419504040336203 0 0
		0.32723343129797811 0.00092168190484568106 -0.13554155430864695
		0.25045373772983759 0.001703059787656902 -0.25044827972207973
		0.1355446392695536 0.0022251585714984142 -0.32722631215742437
		1.4144450835117992e-08 0.0024085001712274975 -0.35418720934875297
		-0.1355446392695536 0.0022251585714984142 -0.32722631215742437
		-0.25045373772983759 0.001703059787656902 -0.25044827972207973
		-0.32723343129797811 0.00092168190484568106 -0.13554155430864695
		-0.35419504040336203 -1.6781499148591258e-08 0
		-0.32723343129797811 -0.00092171512750159872 0.1355410796992767
		-0.25045373772983759 -0.00170309301031282 0.25044804241739455
		-0.1355446392695536 -0.0022251917941543326 0.32722583754805412
		1.4144450835117992e-08 -0.0024085239016960113 0.35418673473938256
		0.1355446392695536 -0.0022251917941543326 0.32722583754805412
		0.25045373772983759 -0.00170309301031282 0.25044804241739455
		0.32723343129797811 -0.00092171512750159872 0.1355410796992767
		0.35419504040336203 0 0
		0.32723343129797811 0.00092168190484568106 -0.13554155430864695
		0.25045373772983759 0.001703059787656902 -0.25044827972207973
		0.1355446392695536 0.0022251585714984142 -0.32722631215742437
		1.4144450835117992e-08 0.0024085001712274975 -0.35418720934875297
		1.4144450835117992e-08 0.1377665230363973 -0.32630438345570612
		1.4144450835117992e-08 0.25215094083786554 -0.24874514399692355
		1.4144450835117992e-08 0.3281475289450872 -0.1333163482762115
		0 0.35418673473938256 0
		1.4144450835117992e-08 0.32630414615102105 0.1377665230363973
		1.4144450835117992e-08 0.24874490669223831 0.25215070353318048
		1.4144450835117992e-08 0.1333163482762115 0.3281475289450872
		1.4144450835117992e-08 -0.0024085239016960113 0.35418673473938256
		1.4144450835117992e-08 -0.1377665230363973 0.32630390884633587
		1.4144450835117992e-08 -0.25215094083786554 0.2487446693875533
		1.4144450835117992e-08 -0.3281475289450872 0.13331587366684122
		1.4144450835117992e-08 -0.35418673473938256 -0.0024084052493534482
		1.4144450835117992e-08 -0.32630414615102105 -0.1377669976457675
		1.4144450835117992e-08 -0.24874490669223831 -0.25215117814255072
		1.4144450835117992e-08 -0.1333163482762115 -0.3281480035544575
		1.4144450835117992e-08 0.0024085001712274975 -0.35418720934875297
		;
	setAttr ".adot" yes;
createNode nurbsCurve -n "fgr04_guideShape" -p "fgr04_guide";
	rename -uid "38A7A2C1-4BE8-3045-BD44-7E9EAC2E053C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.35419504040336203 0 0
		0.32886134143794898 0.13621882187999926 0
		0.25169958732675413 0.25169958732675413 0
		0.13621882187999926 0.32886134143794898 0
		0 0.35418673473938256 0
		-0.13621882187999926 0.32886134143794898 0
		-0.25169958732675413 0.25169958732675413 0
		-0.32886134143794898 0.13621882187999926 0
		-0.35419504040336203 -1.6781499148591258e-08 0
		-0.32886134143794898 -0.13621882187999926 0
		-0.25169958732675413 -0.25169958732675413 0
		-0.13621882187999926 -0.32886134143794898 0
		1.4144450835117992e-08 -0.35418673473938256 -0.0024084052493534482
		0.13621882187999926 -0.32886134143794898 0
		0.25169958732675413 -0.25169958732675413 0
		0.32886134143794898 -0.13621882187999926 0
		0.35419504040336203 0 0
		0.32723343129797811 0.00092168190484568106 -0.13554155430864695
		0.25045373772983759 0.001703059787656902 -0.25044827972207973
		0.1355446392695536 0.0022251585714984142 -0.32722631215742437
		1.4144450835117992e-08 0.0024085001712274975 -0.35418720934875297
		-0.1355446392695536 0.0022251585714984142 -0.32722631215742437
		-0.25045373772983759 0.001703059787656902 -0.25044827972207973
		-0.32723343129797811 0.00092168190484568106 -0.13554155430864695
		-0.35419504040336203 -1.6781499148591258e-08 0
		-0.32723343129797811 -0.00092171512750159872 0.1355410796992767
		-0.25045373772983759 -0.00170309301031282 0.25044804241739455
		-0.1355446392695536 -0.0022251917941543326 0.32722583754805412
		1.4144450835117992e-08 -0.0024085239016960113 0.35418673473938256
		0.1355446392695536 -0.0022251917941543326 0.32722583754805412
		0.25045373772983759 -0.00170309301031282 0.25044804241739455
		0.32723343129797811 -0.00092171512750159872 0.1355410796992767
		0.35419504040336203 0 0
		0.32723343129797811 0.00092168190484568106 -0.13554155430864695
		0.25045373772983759 0.001703059787656902 -0.25044827972207973
		0.1355446392695536 0.0022251585714984142 -0.32722631215742437
		1.4144450835117992e-08 0.0024085001712274975 -0.35418720934875297
		1.4144450835117992e-08 0.1377665230363973 -0.32630438345570612
		1.4144450835117992e-08 0.25215094083786554 -0.24874514399692355
		1.4144450835117992e-08 0.3281475289450872 -0.1333163482762115
		0 0.35418673473938256 0
		1.4144450835117992e-08 0.32630414615102105 0.1377665230363973
		1.4144450835117992e-08 0.24874490669223831 0.25215070353318048
		1.4144450835117992e-08 0.1333163482762115 0.3281475289450872
		1.4144450835117992e-08 -0.0024085239016960113 0.35418673473938256
		1.4144450835117992e-08 -0.1377665230363973 0.32630390884633587
		1.4144450835117992e-08 -0.25215094083786554 0.2487446693875533
		1.4144450835117992e-08 -0.3281475289450872 0.13331587366684122
		1.4144450835117992e-08 -0.35418673473938256 -0.0024084052493534482
		1.4144450835117992e-08 -0.32630414615102105 -0.1377669976457675
		1.4144450835117992e-08 -0.24874490669223831 -0.25215117814255072
		1.4144450835117992e-08 -0.1333163482762115 -0.3281480035544575
		1.4144450835117992e-08 0.0024085001712274975 -0.35418720934875297
		;
	setAttr ".adot" yes;
createNode nurbsCurve -n "fgr03_guideShape" -p "fgr03_guide";
	rename -uid "BE6690A9-4E1F-B7E4-B045-97B4F33B52F7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.35419504040336203 0 0
		0.32886134143794898 0.13621882187999926 0
		0.25169958732675413 0.25169958732675413 0
		0.13621882187999926 0.32886134143794898 0
		0 0.35418673473938256 0
		-0.13621882187999926 0.32886134143794898 0
		-0.25169958732675413 0.25169958732675413 0
		-0.32886134143794898 0.13621882187999926 0
		-0.35419504040336203 -1.6781499148591258e-08 0
		-0.32886134143794898 -0.13621882187999926 0
		-0.25169958732675413 -0.25169958732675413 0
		-0.13621882187999926 -0.32886134143794898 0
		1.4144450835117992e-08 -0.35418673473938256 -0.0024084052493534482
		0.13621882187999926 -0.32886134143794898 0
		0.25169958732675413 -0.25169958732675413 0
		0.32886134143794898 -0.13621882187999926 0
		0.35419504040336203 0 0
		0.32723343129797811 0.00092168190484568106 -0.13554155430864695
		0.25045373772983759 0.001703059787656902 -0.25044827972207973
		0.1355446392695536 0.0022251585714984142 -0.32722631215742437
		1.4144450835117992e-08 0.0024085001712274975 -0.35418720934875297
		-0.1355446392695536 0.0022251585714984142 -0.32722631215742437
		-0.25045373772983759 0.001703059787656902 -0.25044827972207973
		-0.32723343129797811 0.00092168190484568106 -0.13554155430864695
		-0.35419504040336203 -1.6781499148591258e-08 0
		-0.32723343129797811 -0.00092171512750159872 0.1355410796992767
		-0.25045373772983759 -0.00170309301031282 0.25044804241739455
		-0.1355446392695536 -0.0022251917941543326 0.32722583754805412
		1.4144450835117992e-08 -0.0024085239016960113 0.35418673473938256
		0.1355446392695536 -0.0022251917941543326 0.32722583754805412
		0.25045373772983759 -0.00170309301031282 0.25044804241739455
		0.32723343129797811 -0.00092171512750159872 0.1355410796992767
		0.35419504040336203 0 0
		0.32723343129797811 0.00092168190484568106 -0.13554155430864695
		0.25045373772983759 0.001703059787656902 -0.25044827972207973
		0.1355446392695536 0.0022251585714984142 -0.32722631215742437
		1.4144450835117992e-08 0.0024085001712274975 -0.35418720934875297
		1.4144450835117992e-08 0.1377665230363973 -0.32630438345570612
		1.4144450835117992e-08 0.25215094083786554 -0.24874514399692355
		1.4144450835117992e-08 0.3281475289450872 -0.1333163482762115
		0 0.35418673473938256 0
		1.4144450835117992e-08 0.32630414615102105 0.1377665230363973
		1.4144450835117992e-08 0.24874490669223831 0.25215070353318048
		1.4144450835117992e-08 0.1333163482762115 0.3281475289450872
		1.4144450835117992e-08 -0.0024085239016960113 0.35418673473938256
		1.4144450835117992e-08 -0.1377665230363973 0.32630390884633587
		1.4144450835117992e-08 -0.25215094083786554 0.2487446693875533
		1.4144450835117992e-08 -0.3281475289450872 0.13331587366684122
		1.4144450835117992e-08 -0.35418673473938256 -0.0024084052493534482
		1.4144450835117992e-08 -0.32630414615102105 -0.1377669976457675
		1.4144450835117992e-08 -0.24874490669223831 -0.25215117814255072
		1.4144450835117992e-08 -0.1333163482762115 -0.3281480035544575
		1.4144450835117992e-08 0.0024085001712274975 -0.35418720934875297
		;
	setAttr ".adot" yes;
createNode nurbsCurve -n "fgr02_guideShape" -p "fgr02_guide";
	rename -uid "E8E22875-4C51-3A02-8DA6-5F83FC842615";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.35419504040336203 0 0
		0.32886134143794898 0.13621882187999926 0
		0.25169958732675413 0.25169958732675413 0
		0.13621882187999926 0.32886134143794898 0
		0 0.35418673473938256 0
		-0.13621882187999926 0.32886134143794898 0
		-0.25169958732675413 0.25169958732675413 0
		-0.32886134143794898 0.13621882187999926 0
		-0.35419504040336203 -1.6781499148591258e-08 0
		-0.32886134143794898 -0.13621882187999926 0
		-0.25169958732675413 -0.25169958732675413 0
		-0.13621882187999926 -0.32886134143794898 0
		1.4144450835117992e-08 -0.35418673473938256 -0.0024084052493534482
		0.13621882187999926 -0.32886134143794898 0
		0.25169958732675413 -0.25169958732675413 0
		0.32886134143794898 -0.13621882187999926 0
		0.35419504040336203 0 0
		0.32723343129797811 0.00092168190484568106 -0.13554155430864695
		0.25045373772983759 0.001703059787656902 -0.25044827972207973
		0.1355446392695536 0.0022251585714984142 -0.32722631215742437
		1.4144450835117992e-08 0.0024085001712274975 -0.35418720934875297
		-0.1355446392695536 0.0022251585714984142 -0.32722631215742437
		-0.25045373772983759 0.001703059787656902 -0.25044827972207973
		-0.32723343129797811 0.00092168190484568106 -0.13554155430864695
		-0.35419504040336203 -1.6781499148591258e-08 0
		-0.32723343129797811 -0.00092171512750159872 0.1355410796992767
		-0.25045373772983759 -0.00170309301031282 0.25044804241739455
		-0.1355446392695536 -0.0022251917941543326 0.32722583754805412
		1.4144450835117992e-08 -0.0024085239016960113 0.35418673473938256
		0.1355446392695536 -0.0022251917941543326 0.32722583754805412
		0.25045373772983759 -0.00170309301031282 0.25044804241739455
		0.32723343129797811 -0.00092171512750159872 0.1355410796992767
		0.35419504040336203 0 0
		0.32723343129797811 0.00092168190484568106 -0.13554155430864695
		0.25045373772983759 0.001703059787656902 -0.25044827972207973
		0.1355446392695536 0.0022251585714984142 -0.32722631215742437
		1.4144450835117992e-08 0.0024085001712274975 -0.35418720934875297
		1.4144450835117992e-08 0.1377665230363973 -0.32630438345570612
		1.4144450835117992e-08 0.25215094083786554 -0.24874514399692355
		1.4144450835117992e-08 0.3281475289450872 -0.1333163482762115
		0 0.35418673473938256 0
		1.4144450835117992e-08 0.32630414615102105 0.1377665230363973
		1.4144450835117992e-08 0.24874490669223831 0.25215070353318048
		1.4144450835117992e-08 0.1333163482762115 0.3281475289450872
		1.4144450835117992e-08 -0.0024085239016960113 0.35418673473938256
		1.4144450835117992e-08 -0.1377665230363973 0.32630390884633587
		1.4144450835117992e-08 -0.25215094083786554 0.2487446693875533
		1.4144450835117992e-08 -0.3281475289450872 0.13331587366684122
		1.4144450835117992e-08 -0.35418673473938256 -0.0024084052493534482
		1.4144450835117992e-08 -0.32630414615102105 -0.1377669976457675
		1.4144450835117992e-08 -0.24874490669223831 -0.25215117814255072
		1.4144450835117992e-08 -0.1333163482762115 -0.3281480035544575
		1.4144450835117992e-08 0.0024085001712274975 -0.35418720934875297
		;
	setAttr ".adot" yes;
createNode nurbsCurve -n "fgr01_guideShape" -p "fgr01_guide";
	rename -uid "A268906D-4731-904F-E0CA-A1A37AECF0E2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.47226005387114933 0 0
		0.43848178858393194 0.181625095839999 0
		0.33559944976900546 0.33559944976900546 0
		0.181625095839999 0.43848178858393194 0
		0 0.47224897965251 0
		-0.181625095839999 0.43848178858393194 0
		-0.33559944976900546 0.33559944976900546 0
		-0.43848178858393194 0.181625095839999 0
		-0.47226005387114933 -2.2375332198121672e-08 0
		-0.43848178858393194 -0.181625095839999 0
		-0.33559944976900546 -0.33559944976900546 0
		-0.181625095839999 -0.43848178858393194 0
		1.885926778015732e-08 -0.47224897965251 -0.0032112069991379307
		0.181625095839999 -0.43848178858393194 0
		0.33559944976900546 -0.33559944976900546 0
		0.43848178858393194 -0.181625095839999 0
		0.47226005387114933 0 0
		0.43631124173063746 0.0012289092064609081 -0.18072207241152927
		0.33393831697311677 0.002270746383542536 -0.3339310396294396
		0.18072618569273813 0.0029668780953312182 -0.43630174954323242
		1.885926778015732e-08 0.0032113335616366632 -0.47224961246500397
		-0.18072618569273813 0.0029668780953312182 -0.43630174954323242
		-0.33393831697311677 0.002270746383542536 -0.3339310396294396
		-0.43631124173063746 0.0012289092064609081 -0.18072207241152927
		-0.47226005387114933 -2.2375332198121672e-08 0
		-0.43631124173063746 -0.001228953503335465 0.18072143959903558
		-0.33393831697311677 -0.0022707906804170933 0.33393072322319273
		-0.18072618569273813 -0.0029669223922057768 0.43630111673073879
		1.885926778015732e-08 -0.0032113652022613482 0.47224897965251
		0.18072618569273813 -0.0029669223922057768 0.43630111673073879
		0.33393831697311677 -0.0022707906804170933 0.33393072322319273
		0.43631124173063746 -0.001228953503335465 0.18072143959903558
		0.47226005387114933 0 0
		0.43631124173063746 0.0012289092064609081 -0.18072207241152927
		0.33393831697311677 0.002270746383542536 -0.3339310396294396
		0.18072618569273813 0.0029668780953312182 -0.43630174954323242
		1.885926778015732e-08 0.0032113335616366632 -0.47224961246500397
		1.885926778015732e-08 0.18368869738186305 -0.43507251127427482
		1.885926778015732e-08 0.33620125445048732 -0.33166019199589802
		1.885926778015732e-08 0.43753003859344958 -0.17775513103494867
		0 0.47224897965251 0
		1.885926778015732e-08 0.43507219486802801 0.18368869738186305
		1.885926778015732e-08 0.33165987558965104 0.33620093804424062
		1.885926778015732e-08 0.17775513103494867 0.43753003859344958
		1.885926778015732e-08 -0.0032113652022613482 0.47224897965251
		1.885926778015732e-08 -0.18368869738186305 0.43507187846178114
		1.885926778015732e-08 -0.33620125445048732 0.3316595591834044
		1.885926778015732e-08 -0.43753003859344958 0.17775449822245495
		1.885926778015732e-08 -0.47224897965251 -0.0032112069991379307
		1.885926778015732e-08 -0.43507219486802801 -0.18368933019435665
		1.885926778015732e-08 -0.33165987558965104 -0.3362015708567343
		1.885926778015732e-08 -0.17775513103494867 -0.43753067140594332
		1.885926778015732e-08 0.0032113335616366632 -0.47224961246500397
		;
	setAttr ".adot" yes;
createNode nurbsCurve -n "master_guideShape1" -p "master_guide";
	rename -uid "FB2BA1F0-4BE4-EAB4-879E-26AC7E4A7D5D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 16;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.1951965646133099e-16 5.8231194303070524 -2.9115597151535302
		-1.6902631913778761e-16 3.2240604020035703e-16 -2.6326451057139773
		-1.1951965646133091e-16 -5.8231194303070524 -2.911559715153528
		6.8985157699450679e-32 -8.2652902114279705 -1.3896429946144798e-15
		1.1951965646133099e-16 -5.8231194303070524 2.9115597151535262
		1.6902631913778776e-16 -5.2742772157560341e-16 2.6326451057139799
		1.1951965646133091e-16 5.8231194303070524 2.911559715153528
		1.0079757139273961e-31 5.2652902114279705 -5.2675928416216822e-16
		-1.1951965646133099e-16 5.8231194303070524 -2.9115597151535302
		-1.6902631913778761e-16 3.2240604020035703e-16 -2.6326451057139773
		-1.1951965646133091e-16 -5.8231194303070524 -2.911559715153528
		;
	setAttr ".adot" yes;
createNode transform -n "line_grp" -p "module_grp";
	rename -uid "120FBCEA-4270-A02D-E56D-EBB8AA8433C3";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode transform -n "line_1" -p "line_grp";
	rename -uid "2D40B705-4749-D43B-D74A-7C9A2455A7B6";
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
createNode nurbsCurve -n "curveShape1" -p "line_1";
	rename -uid "211F3F9C-440C-2EA2-4280-08A1EA8AE605";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		50 0 0
		60 0 0
		;
	setAttr ".adot" yes;
createNode transform -n "line_2" -p "line_grp";
	rename -uid "41657661-440B-D387-BB53-BBA42ED75042";
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
createNode nurbsCurve -n "curveShape2" -p "line_2";
	rename -uid "26BFDE14-4214-0A36-8E73-4A88BE523D5B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		60 0 0
		70 0 0
		;
	setAttr ".adot" yes;
createNode transform -n "line_3" -p "line_grp";
	rename -uid "238728F6-4D12-FAA0-73D4-3E9FCD3AC98D";
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
createNode nurbsCurve -n "curveShape3" -p "line_3";
	rename -uid "7CE2B142-44A8-B244-96C2-9181ED95460D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		70 0 0
		80 0 0
		;
	setAttr ".adot" yes;
createNode transform -n "line_4" -p "line_grp";
	rename -uid "424CAEBA-455E-8B7B-4439-C0892EF7DC54";
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
createNode nurbsCurve -n "curveShape4" -p "line_4";
	rename -uid "4D9B945C-4463-D9F6-9563-8BA28D29F6AB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		80 0 0
		90 0 0
		;
	setAttr ".adot" yes;
createNode transform -n "fgrRef_grp" -p "module_grp";
	rename -uid "639636FE-4030-E248-405A-2DBE393CF491";
	setAttr ".r" -type "double3" -90 0 0 ;
createNode transform -n "fgrRef1" -p "fgrRef_grp";
	rename -uid "0F7D8951-4359-EE3D-314D-16AD7B213A53";
	setAttr ".s" -type "double3" 5 5 5 ;
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode mesh -n "fgrRefShape" -p "fgrRef1";
	rename -uid "BEFFCB07-4381-041A-F5D9-2F98332EDE23";
	setAttr -k off ".v";
	setAttr -s 4 ".iog";
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
createNode pointConstraint -n "fgrRef1_poiCst" -p "fgrRef1";
	rename -uid "46985804-4A06-1EA0-B438-7098EDD62BDF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fgr01_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 51 50 0 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef1_aimCst" -p "fgrRef1";
	rename -uid "DBE53BDA-42AF-AFEA-B28F-02B8A010CB8E";
	addAttr -dcb 0 -ci true -sn "w0" -ln "fgr02_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" 90 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef2" -p "fgrRef_grp";
	rename -uid "025071B5-48B4-69F5-8B5F-AFA3EBA4AD07";
	setAttr ".s" -type "double3" 5 5 5 ;
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef2_poiCst" -p "fgrRef2";
	rename -uid "6CF2D0A1-4D7D-0BD2-B9F2-65AE591DC942";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fgr02_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 61 50 0 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef2_aimCst" -p "fgrRef2";
	rename -uid "59079C8F-4E38-48B8-45B6-F29CD48633AF";
	addAttr -dcb 0 -ci true -sn "w0" -ln "fgr03_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" 90 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef3" -p "fgrRef_grp";
	rename -uid "AABEA937-46C1-279B-43D1-F5A3153C91D8";
	setAttr ".s" -type "double3" 5 5 5 ;
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef3_poiCst" -p "fgrRef3";
	rename -uid "5EAE48C8-4A2F-2578-F772-F4AF3BCC281A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fgr03_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 71 50 0 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef3_aimCst" -p "fgrRef3";
	rename -uid "00B7844B-4929-840F-B0AB-7E90E0EE1ACF";
	addAttr -dcb 0 -ci true -sn "w0" -ln "fgr04_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" 90 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef4" -p "fgrRef_grp";
	rename -uid "071E38A0-4566-86AF-52A3-A8963FD9B3CC";
	setAttr ".s" -type "double3" 5 5 5 ;
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef4_poiCst" -p "fgrRef4";
	rename -uid "160A6058-4E5D-5C59-E7BC-7CAFD26DE7F4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fgr04_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 81 50 0 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef4_aimCst" -p "fgrRef4";
	rename -uid "661C9B9A-460F-0661-5693-809B2BDCD1A9";
	addAttr -dcb 0 -ci true -sn "w0" -ln "fgr05_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" 90 0 0 ;
	setAttr -k on ".w0";
parent -s -nc -r -add "|module_grp|fgrRef_grp|fgrRef1|fgrRefShape" "fgrRef2" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|fgrRef1|fgrRefShape" "fgrRef3" ;
parent -s -nc -r -add "|module_grp|fgrRef_grp|fgrRef1|fgrRefShape" "fgrRef4" ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "C43814E0-4EA8-38B4-4A05-6F85AB2FA05D";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "91B5B71E-49D9-EC06-1096-59AA9E49EAFF";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "3CF898FD-4F9A-7525-1267-25BCCF4E2267";
createNode displayLayerManager -n "layerManager";
	rename -uid "CA84C89F-4AAA-5118-7E86-CE9161776D5D";
createNode displayLayer -n "defaultLayer";
	rename -uid "EDE7F8A1-4185-37A4-5FA7-49A7396409D6";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "7561A4BC-4136-2ED6-764A-C6940DA9CA10";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "D70BF562-46C4-2F8D-ABFE-179003332609";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "4CA98D62-453C-1FB8-FC88-008CF921F276";
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
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 745\n            -height 686\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n"
		+ "            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 1\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n"
		+ "            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n"
		+ "            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n"
		+ "            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n"
		+ "                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 1\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -image \"C:/Documents and Settings/bwilliams/My Documents/maya/projects/Tests/images/Cubes_01_large.tif\" \n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit 2\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit 2\n"
		+ "                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n"
		+ "                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererOverrideName \"stereoOverrideVP2\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 745\n            -height 686\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n"
		+ "            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n"
		+ "            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n"
		+ "            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"{}\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap true\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 745\\n    -height 686\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 745\\n    -height 686\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"1 0.000000 0.000000 -1.000000 -0.000016 1.000000 0.000000\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "36612C2D-45FE-7AAC-D4BB-ECA588DB9A02";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 50 -ast 1 -aet 50 ";
	setAttr ".st" 6;
createNode script -n "RGN";
	rename -uid "AEFB69A2-4AA5-A528-BBC0-1F9753D63875";
	addAttr -ci true -sn "rigID" -ln "rigID" -dt "string";
	addAttr -ci true -sn "rigClass" -ln "rigClass" -dt "string";
	addAttr -s false -ci true -sn "moduleG" -ln "moduleG" -at "message";
	addAttr -s false -ci true -k true -sn "master_guide" -ln "master_guide" -at "message";
	setAttr ".rigID" -type "string" "";
	setAttr ".rigClass" -type "string" "FingerFk";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "37D0EF4F-491E-F1A4-1A86-87A86D74875D";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 53891.070888120565 -23286.310035392416 ;
	setAttr ".tgi[0].vh" -type "double2" 103033.9291294062 22999.405284888227 ;
createNode decomposeMatrix -n "DCM_1";
	rename -uid "B25078E7-40B3-7D02-506A-0683FA6B938A";
createNode decomposeMatrix -n "DCM_2";
	rename -uid "BC9DE856-4D58-6068-FA04-22B3DC6AD57A";
createNode decomposeMatrix -n "DCM_3";
	rename -uid "C729A5F8-4EBD-1123-45AC-598A9740A487";
createNode decomposeMatrix -n "DCM_4";
	rename -uid "84E5390F-4C95-5436-6EBA-709F089E3B45";
createNode decomposeMatrix -n "DCM_5";
	rename -uid "F4D72E9D-45F7-5C43-0A3C-F795B8DC90C0";
createNode animCurveUU -n "fgr03_guide_visibility";
	rename -uid "6B7FD198-4B1A-25B7-BB69-2F9B7484A009";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 2 1 3 1 4 1;
createNode animCurveUU -n "fgr04_guide_visibility";
	rename -uid "8BBF90E6-4843-4323-0422-2DB3A9166489";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 2 0 3 1 4 1;
createNode animCurveUU -n "fgr05_guide_visibility";
	rename -uid "07396F92-46A1-C795-1B84-7DADBFBDA3CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 2 0 3 0 4 1;
createNode animCurveUU -n "line_2_visibility";
	rename -uid "48049FE3-47A5-EDBF-6FF5-9F97A913610A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 2 1 3 1 5 1;
createNode animCurveUU -n "line_3_visibility";
	rename -uid "485C8EBC-4565-2B5E-40BF-B29D71165E0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 2 0 3 1 5 1;
createNode animCurveUU -n "line_4_visibility";
	rename -uid "B49F7DE8-4D7C-491B-1F91-E79E94D2DA22";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 2 0 3 0 5 1;
createNode lambert -n "lambert2";
	rename -uid "4D742950-48FC-CBA0-72A0-E2A03794F0E3";
	setAttr ".c" -type "float3" 1 0 0 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "F9ADFA1D-44F1-AC3E-2712-EC8547B67B27";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "D383DEAE-4911-6C93-49AF-48A9BB29958E";
createNode animCurveUU -n "fgrRef2_visibility";
	rename -uid "435AF951-4FE2-6324-C33B-33B2C9CDBFA3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 2 1 3 1 4 1;
createNode animCurveUU -n "fgrRef3_visibility";
	rename -uid "FB51FA21-46F8-5C6C-1E4D-BBA75DDAD5EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 2 0 3 1 4 1;
createNode animCurveUU -n "fgrRef4_visibility";
	rename -uid "84A99984-4B7A-FAC4-DC24-74A22776913E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 2 0 3 0 4 1;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "6297B508-4CD8-A5CE-5AB8-F6A1145F26FA";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -675.15216116057331 -874.61176836064737 ;
	setAttr ".tgi[0].vh" -type "double2" 139.33845698020539 -38.234646085567512 ;
	setAttr -s 3 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -248.57142639160156;
	setAttr ".tgi[0].ni[0].y" -338.57144165039062;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" -632.98272705078125;
	setAttr ".tgi[0].ni[1].y" -153.70999145507812;
	setAttr ".tgi[0].ni[1].nvs" 18306;
	setAttr ".tgi[0].ni[2].x" -323.03012084960938;
	setAttr ".tgi[0].ni[2].y" -142.470947265625;
	setAttr ".tgi[0].ni[2].nvs" 18305;
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
connectAttr "fgr03_guide_visibility.o" "fgr03_guide.v";
connectAttr "fgr04_guide_visibility.o" "fgr04_guide.v";
connectAttr "fgr05_guide_visibility.o" "fgr05_guide.v";
connectAttr "DCM_1.ot" "curveShape1.cp[0]";
connectAttr "DCM_2.ot" "curveShape1.cp[1]";
connectAttr "line_2_visibility.o" "line_2.v";
connectAttr "DCM_2.ot" "curveShape2.cp[0]";
connectAttr "DCM_3.ot" "curveShape2.cp[1]";
connectAttr "line_3_visibility.o" "line_3.v";
connectAttr "DCM_3.ot" "curveShape3.cp[0]";
connectAttr "DCM_4.ot" "curveShape3.cp[1]";
connectAttr "line_4_visibility.o" "line_4.v";
connectAttr "DCM_4.ot" "curveShape4.cp[0]";
connectAttr "DCM_5.ot" "curveShape4.cp[1]";
connectAttr "master_guide.s" "fgrRef_grp.s";
connectAttr "master_guide.refVis" "fgrRef_grp.v";
connectAttr "fgrRef1_poiCst.ctx" "fgrRef1.tx";
connectAttr "fgrRef1_poiCst.cty" "fgrRef1.ty";
connectAttr "fgrRef1_poiCst.ctz" "fgrRef1.tz";
connectAttr "fgrRef1_aimCst.crx" "fgrRef1.rx";
connectAttr "fgrRef1_aimCst.cry" "fgrRef1.ry";
connectAttr "fgrRef1_aimCst.crz" "fgrRef1.rz";
connectAttr "fgrRef1.pim" "fgrRef1_poiCst.cpim";
connectAttr "fgrRef1.rp" "fgrRef1_poiCst.crp";
connectAttr "fgrRef1.rpt" "fgrRef1_poiCst.crt";
connectAttr "fgr01_guide.t" "fgrRef1_poiCst.tg[0].tt";
connectAttr "fgr01_guide.rp" "fgrRef1_poiCst.tg[0].trp";
connectAttr "fgr01_guide.rpt" "fgrRef1_poiCst.tg[0].trt";
connectAttr "fgr01_guide.pm" "fgrRef1_poiCst.tg[0].tpm";
connectAttr "fgrRef1_poiCst.w0" "fgrRef1_poiCst.tg[0].tw";
connectAttr "fgrRef1.pim" "fgrRef1_aimCst.cpim";
connectAttr "fgrRef1.t" "fgrRef1_aimCst.ct";
connectAttr "fgrRef1.rp" "fgrRef1_aimCst.crp";
connectAttr "fgrRef1.rpt" "fgrRef1_aimCst.crt";
connectAttr "fgrRef1.ro" "fgrRef1_aimCst.cro";
connectAttr "fgr02_guide.t" "fgrRef1_aimCst.tg[0].tt";
connectAttr "fgr02_guide.rp" "fgrRef1_aimCst.tg[0].trp";
connectAttr "fgr02_guide.rpt" "fgrRef1_aimCst.tg[0].trt";
connectAttr "fgr02_guide.pm" "fgrRef1_aimCst.tg[0].tpm";
connectAttr "fgrRef1_aimCst.w0" "fgrRef1_aimCst.tg[0].tw";
connectAttr "fgr01_guide.wm" "fgrRef1_aimCst.wum";
connectAttr "fgrRef2_poiCst.ctx" "fgrRef2.tx";
connectAttr "fgrRef2_poiCst.cty" "fgrRef2.ty";
connectAttr "fgrRef2_poiCst.ctz" "fgrRef2.tz";
connectAttr "fgrRef2_aimCst.crx" "fgrRef2.rx";
connectAttr "fgrRef2_aimCst.cry" "fgrRef2.ry";
connectAttr "fgrRef2_aimCst.crz" "fgrRef2.rz";
connectAttr "fgrRef2_visibility.o" "fgrRef2.v";
connectAttr "fgrRef2.pim" "fgrRef2_poiCst.cpim";
connectAttr "fgrRef2.rp" "fgrRef2_poiCst.crp";
connectAttr "fgrRef2.rpt" "fgrRef2_poiCst.crt";
connectAttr "fgr02_guide.t" "fgrRef2_poiCst.tg[0].tt";
connectAttr "fgr02_guide.rp" "fgrRef2_poiCst.tg[0].trp";
connectAttr "fgr02_guide.rpt" "fgrRef2_poiCst.tg[0].trt";
connectAttr "fgr02_guide.pm" "fgrRef2_poiCst.tg[0].tpm";
connectAttr "fgrRef2_poiCst.w0" "fgrRef2_poiCst.tg[0].tw";
connectAttr "fgrRef2.pim" "fgrRef2_aimCst.cpim";
connectAttr "fgrRef2.t" "fgrRef2_aimCst.ct";
connectAttr "fgrRef2.rp" "fgrRef2_aimCst.crp";
connectAttr "fgrRef2.rpt" "fgrRef2_aimCst.crt";
connectAttr "fgrRef2.ro" "fgrRef2_aimCst.cro";
connectAttr "fgr03_guide.t" "fgrRef2_aimCst.tg[0].tt";
connectAttr "fgr03_guide.rp" "fgrRef2_aimCst.tg[0].trp";
connectAttr "fgr03_guide.rpt" "fgrRef2_aimCst.tg[0].trt";
connectAttr "fgr03_guide.pm" "fgrRef2_aimCst.tg[0].tpm";
connectAttr "fgrRef2_aimCst.w0" "fgrRef2_aimCst.tg[0].tw";
connectAttr "fgr02_guide.wm" "fgrRef2_aimCst.wum";
connectAttr "fgrRef3_poiCst.ctx" "fgrRef3.tx";
connectAttr "fgrRef3_poiCst.cty" "fgrRef3.ty";
connectAttr "fgrRef3_poiCst.ctz" "fgrRef3.tz";
connectAttr "fgrRef3_aimCst.crx" "fgrRef3.rx";
connectAttr "fgrRef3_aimCst.cry" "fgrRef3.ry";
connectAttr "fgrRef3_aimCst.crz" "fgrRef3.rz";
connectAttr "fgrRef3_visibility.o" "fgrRef3.v";
connectAttr "fgrRef3.pim" "fgrRef3_poiCst.cpim";
connectAttr "fgrRef3.rp" "fgrRef3_poiCst.crp";
connectAttr "fgrRef3.rpt" "fgrRef3_poiCst.crt";
connectAttr "fgr03_guide.t" "fgrRef3_poiCst.tg[0].tt";
connectAttr "fgr03_guide.rp" "fgrRef3_poiCst.tg[0].trp";
connectAttr "fgr03_guide.rpt" "fgrRef3_poiCst.tg[0].trt";
connectAttr "fgr03_guide.pm" "fgrRef3_poiCst.tg[0].tpm";
connectAttr "fgrRef3_poiCst.w0" "fgrRef3_poiCst.tg[0].tw";
connectAttr "fgrRef3.pim" "fgrRef3_aimCst.cpim";
connectAttr "fgrRef3.t" "fgrRef3_aimCst.ct";
connectAttr "fgrRef3.rp" "fgrRef3_aimCst.crp";
connectAttr "fgrRef3.rpt" "fgrRef3_aimCst.crt";
connectAttr "fgrRef3.ro" "fgrRef3_aimCst.cro";
connectAttr "fgr04_guide.t" "fgrRef3_aimCst.tg[0].tt";
connectAttr "fgr04_guide.rp" "fgrRef3_aimCst.tg[0].trp";
connectAttr "fgr04_guide.rpt" "fgrRef3_aimCst.tg[0].trt";
connectAttr "fgr04_guide.pm" "fgrRef3_aimCst.tg[0].tpm";
connectAttr "fgrRef3_aimCst.w0" "fgrRef3_aimCst.tg[0].tw";
connectAttr "fgr03_guide.wm" "fgrRef3_aimCst.wum";
connectAttr "fgrRef4_poiCst.ctx" "fgrRef4.tx";
connectAttr "fgrRef4_poiCst.cty" "fgrRef4.ty";
connectAttr "fgrRef4_poiCst.ctz" "fgrRef4.tz";
connectAttr "fgrRef4_aimCst.crx" "fgrRef4.rx";
connectAttr "fgrRef4_aimCst.cry" "fgrRef4.ry";
connectAttr "fgrRef4_aimCst.crz" "fgrRef4.rz";
connectAttr "fgrRef4_visibility.o" "fgrRef4.v";
connectAttr "fgrRef4.pim" "fgrRef4_poiCst.cpim";
connectAttr "fgrRef4.rp" "fgrRef4_poiCst.crp";
connectAttr "fgrRef4.rpt" "fgrRef4_poiCst.crt";
connectAttr "fgr04_guide.t" "fgrRef4_poiCst.tg[0].tt";
connectAttr "fgr04_guide.rp" "fgrRef4_poiCst.tg[0].trp";
connectAttr "fgr04_guide.rpt" "fgrRef4_poiCst.tg[0].trt";
connectAttr "fgr04_guide.pm" "fgrRef4_poiCst.tg[0].tpm";
connectAttr "fgrRef4_poiCst.w0" "fgrRef4_poiCst.tg[0].tw";
connectAttr "fgrRef4.pim" "fgrRef4_aimCst.cpim";
connectAttr "fgrRef4.t" "fgrRef4_aimCst.ct";
connectAttr "fgrRef4.rp" "fgrRef4_aimCst.crp";
connectAttr "fgrRef4.rpt" "fgrRef4_aimCst.crt";
connectAttr "fgrRef4.ro" "fgrRef4_aimCst.cro";
connectAttr "fgr05_guide.t" "fgrRef4_aimCst.tg[0].tt";
connectAttr "fgr05_guide.rp" "fgrRef4_aimCst.tg[0].trp";
connectAttr "fgr05_guide.rpt" "fgrRef4_aimCst.tg[0].trt";
connectAttr "fgr05_guide.pm" "fgrRef4_aimCst.tg[0].tpm";
connectAttr "fgrRef4_aimCst.w0" "fgrRef4_aimCst.tg[0].tw";
connectAttr "fgr04_guide.wm" "fgrRef4_aimCst.wum";
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
connectAttr "fgr01_guide.wm" "DCM_1.imat";
connectAttr "fgr02_guide.wm" "DCM_2.imat";
connectAttr "fgr03_guide.wm" "DCM_3.imat";
connectAttr "fgr04_guide.wm" "DCM_4.imat";
connectAttr "fgr05_guide.wm" "DCM_5.imat";
connectAttr "master_guide.segNum" "fgr03_guide_visibility.i";
connectAttr "master_guide.segNum" "fgr04_guide_visibility.i";
connectAttr "master_guide.segNum" "fgr05_guide_visibility.i";
connectAttr "master_guide.segNum" "line_2_visibility.i";
connectAttr "master_guide.segNum" "line_3_visibility.i";
connectAttr "master_guide.segNum" "line_4_visibility.i";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "|module_grp|fgrRef_grp|fgrRef1|fgrRefShape.iog" "lambert2SG.dsm" -na
		;
connectAttr "|module_grp|fgrRef_grp|fgrRef2|fgrRefShape.iog" "lambert2SG.dsm" -na
		;
connectAttr "|module_grp|fgrRef_grp|fgrRef3|fgrRefShape.iog" "lambert2SG.dsm" -na
		;
connectAttr "|module_grp|fgrRef_grp|fgrRef4|fgrRefShape.iog" "lambert2SG.dsm" -na
		;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "master_guide.segNum" "fgrRef2_visibility.i";
connectAttr "master_guide.segNum" "fgrRef3_visibility.i";
connectAttr "master_guide.segNum" "fgrRef4_visibility.i";
connectAttr "master_guideShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "master_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "fgrRef_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of lfFingerFk.ma
