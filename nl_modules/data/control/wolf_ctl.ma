//Maya ASCII 2023 scene
//Name: wolf_ctl.ma
//Last modified: Thu, Jun 12, 2025 09:08:42 AM
//Codeset: 1252
requires maya "2023";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 26100)";
fileInfo "UUID" "B9F973F8-4150-6576-74A1-79B91EFF8C96";
createNode transform -n "CHR";
	rename -uid "DEF1E514-4A74-DFE3-C195-31ABBEC6616F";
	setAttr -cb on ".ro";
createNode transform -n "CTL" -p "CHR";
	rename -uid "8AEFE09A-4192-81FB-D64F-1480F7EDF993";
	setAttr -cb on ".ro";
createNode transform -n "master2_ctl" -p "CTL";
	rename -uid "CD09D8FC-4219-139F-48B0-F6AF3B03B95C";
	addAttr -ci true -sn "proxy" -ln "proxy" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "debug" -ln "debug" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".ovc" 17;
	setAttr -cb on ".ro";
	setAttr -cb on ".proxy";
	setAttr -cb on ".debug" no;
createNode transform -n "master1_ctl" -p "master2_ctl";
	rename -uid "D46711B5-4703-D1F8-F7EA-2CABBFDB16ED";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 18;
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "master_ctl" -p "master1_ctl";
	rename -uid "D57AEEBC-43DC-16AC-0A5C-2496A45F3511";
	addAttr -ci true -sn "globalScale" -ln "globalScale" -dv 1 -min 0 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 18;
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".globalScale";
createNode nurbsCurve -n "master_ctlShape" -p "master_ctl";
	rename -uid "B546486B-4CA6-A286-24E1-5889D1AACF15";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -51.140388475493261 -3.6954434259399168e-16 
		39.283732369065078 -6.3633040690109692e-14 -5.2261462119466514e-16 55.555587096966846 
		51.140388475493218 -3.6954434259399168e-16 39.283732369065085 72.323430967071303 
		-1.4813990110695073e-31 -2.1259247770499649e-14 51.140388475493218 3.6954434259399168e-16 
		-39.283732369065071 -5.1959820234019931e-14 5.2261462119466514e-16 -55.555587096966846 
		-51.140388475493261 3.6954434259399168e-16 -39.283732369065071 -72.323430967071303 
		-4.9778695488710405e-32 -3.171535501295533e-14 0 0 0 0 0 0 0 0 0;
createNode nurbsCurve -n "master_ctlShapeOrig" -p "master_ctl";
	rename -uid "F5B36429-4812-1536-8C07-839EEC95A9D8";
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
	rename -uid "7C5C82ED-482A-1FB6-4558-20900CFB953A";
	setAttr -cb on ".ro";
createNode transform -n "head0_head_fkc_ofs" -p "head0_ctl_data";
	rename -uid "AD167D3F-4789-08E4-6DB5-7DA597A89276";
	setAttr ".t" -type "double3" 0 90.859974759067939 65.966879196904017 ;
	setAttr -cb on ".ro";
createNode transform -n "head0_head_fkc_ofs1" -p "head0_head_fkc_ofs";
	rename -uid "CA5C7CD6-4FEF-A1B6-6706-2FBCB658C3EF";
createNode transform -n "head0_head_fkc" -p "head0_head_fkc_ofs1";
	rename -uid "112740CC-4965-1712-DB66-E4ABFC12EBEA";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "neck:COG:master" -at "enum";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -k on ".space";
createNode nurbsCurve -n "head0_head_fkcShape1" -p "head0_head_fkc";
	rename -uid "BDD8A023-4930-BEF4-5460-4D82F55476B3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.1004422024418745 8.7766525051306559 -3.100442202441883
		1.7166079200725745e-16 8.7766525051306559 -2.8034334818296003
		-3.1004422024418745 8.7766525051306559 -3.100442202441883
		-2.8034334818296136 8.7766525051306559 0
		-3.1004422024418745 8.7766525051306559 3.1004422024418758
		-2.808218492308231e-16 8.7766525051306559 2.8034334818296074
		3.1004422024418745 8.7766525051306559 3.1004422024418758
		2.8034334818296136 8.7766525051306559 0
		3.1004422024418745 8.7766525051306559 -3.100442202441883
		1.7166079200725745e-16 8.7766525051306559 -2.8034334818296003
		-3.1004422024418745 8.7766525051306559 -3.100442202441883
		;
createNode transform -n "head0_jaw_fkc_ofs" -p "head0_head_fkc";
	rename -uid "7CCBE34B-4BEA-9DB3-1886-69ACDA712ADF";
	setAttr ".t" -type "double3" -5.0209008155148086e-14 -3.0301700189301641 2.259251126637281 ;
	setAttr -cb on ".ro";
createNode transform -n "head0_jaw_fkc" -p "head0_jaw_fkc_ofs";
	rename -uid "582A43A4-4317-0715-BE66-34A31A135486";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "head0_jaw_fkcShape1" -p "head0_jaw_fkc";
	rename -uid "14619B6B-425E-8000-B19A-04B20E5436F0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.346882460394462 -9.3693659910115343 16.497318344618932
		5.0412210758078918e-14 -9.3693659910115343 15.525207800228031
		-2.3468824603943617 -9.3693659910115343 16.497318344618932
		-3.3189930047852654 -9.3693659910115343 18.844200805013344
		-2.3468824603943617 -9.3693659910115343 21.191083265407755
		4.9876515250841184e-14 -9.3693659910115343 22.163193809798656
		2.346882460394462 -9.3693659910115343 21.191083265407755
		3.3189930047853657 -9.3693659910115343 18.844200805013344
		2.346882460394462 -9.3693659910115343 16.497318344618932
		5.0412210758078918e-14 -9.3693659910115343 15.525207800228031
		-2.3468824603943617 -9.3693659910115343 16.497318344618932
		;
createNode transform -n "head0_anchorF1" -p "master_ctl";
	rename -uid "19C3F519-4786-1831-7280-CA9434B47276";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "head0_anchorF1Shape" -p "head0_anchorF1";
	rename -uid "B711F14E-4B02-A2A9-3559-DB9029A9CDD8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 4.4924342349825208 4.4924342349825208 4.4924342349825208 ;
createNode transform -n "lfLegQd0_ctl_data" -p "master_ctl";
	rename -uid "526B408C-4CBB-4F06-C8D8-0A94D018D36F";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_FK" -p "lfLegQd0_ctl_data";
	rename -uid "8398D67A-474B-1448-5F1D-E18FE5466257";
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd0_hip_fk" -p "lfLegQd0_FK";
	rename -uid "9DB43BBE-4903-9D66-26E3-22AC53590657";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.5453675403340599 135.05484301924929 93.734806953643258 ;
	setAttr ".radi" 1.3364633198090055;
createNode joint -n "lfLegQd0_upr_fk" -p "lfLegQd0_hip_fk";
	rename -uid "81A4645E-4E1C-210C-4AD1-3CB722474ECD";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -8.2358734683807864 61.060703261451337 -5.0166573398885355 ;
	setAttr ".radi" 1.3364633198090055;
createNode joint -n "lfLegQd0_lwr_fk" -p "lfLegQd0_upr_fk";
	rename -uid "A895839A-4368-90F3-D007-8781DFB998F2";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -53.282984841761611 0 ;
	setAttr ".radi" 1.3364633198090055;
createNode joint -n "lfLegQd0_palm_fk" -p "lfLegQd0_lwr_fk";
	rename -uid "DF41A262-4FA5-1F62-5540-5F9C45F93129";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 6.186949186873246 36.705763308063702 4.8546913251063453 ;
	setAttr ".radi" 1.3364633198090055;
createNode joint -n "lfLegQd0_digit_fk" -p "lfLegQd0_palm_fk";
	rename -uid "005A4956-4C52-3036-E38D-04B33E444C94";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -5.9446143740996922 68.316305112213712 -5.5266626192912227 ;
	setAttr ".radi" 1.3364633198090055;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_1_ofs" -p "lfLegQd0_digit_fk";
	rename -uid "4BA874D5-4DD2-D542-1EEF-53839D45CB5C";
	setAttr ".t" -type "double3" 4.3570619980216989 5.3290705182007514e-15 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 0.42391041966498483 -30.071999033927113 0.71523895032075901 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_1" -p "lfLegQd0_ball_fkc_SPACE_1_ofs";
	rename -uid "AEF1DAA9-4034-245E-97DB-93914042FB9D";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "lfLegQd0_ball_fk_SPACE_2_ofs" -p "lfLegQd0_digit_fk";
	rename -uid "8DAD190A-4B6B-811F-EB62-33ACFB97BFD5";
	setAttr ".t" -type "double3" 4.3570619980216918 -1.7763568394002505e-15 8.8817841970012523e-15 ;
	setAttr ".r" -type "double3" 0.42391041966498483 -30.071999033927113 0.71523895032075901 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "lfLegQd0_ball_fk_SPACE_2" -p "lfLegQd0_ball_fk_SPACE_2_ofs";
	rename -uid "A6DDC71D-4216-28C4-35C7-3296A80E8DDD";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999989 1 ;
createNode transform -n "lfLegQd0_ball_fk_ofs" -p "lfLegQd0_digit_fk";
	rename -uid "305FF98F-4275-9849-FE4B-07B801E25315";
	setAttr ".t" -type "double3" 4.3570619980216918 -1.7763568394002505e-15 8.8817841970012523e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 0.99999999999999978 ;
createNode joint -n "lfLegQd0_ball_fk" -p "lfLegQd0_ball_fk_ofs";
	rename -uid "3CCDAA54-4026-850F-A056-4EABA33C6D4D";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 -3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" -3.0935863893922479e-14 2.5781439583484302e-14 2.4549906447546516e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 2.3655375443384901e-14 1.2722218725854061e-14 -1.0833764383735101e-14 ;
	setAttr ".radi" 1.3364633198090055;
createNode joint -n "lfLegQd0_tip_fk" -p "lfLegQd0_ball_fk";
	rename -uid "AFFBA4EA-41CE-1768-0F36-C2BD20C2AA2F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.3720434501095511 8.8817841970012523e-15 -1.0658141036401503e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.5104237050693383 51.63178221713634 1.9261881505075462 ;
	setAttr ".radi" 1.3364633198090055;
createNode transform -n "lfLegQd0_upr_fkc_ofs" -p "lfLegQd0_FK";
	rename -uid "0A1F6F03-40B3-E7A4-EBBA-C7928EA08270";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_upr_fkc" -p "lfLegQd0_upr_fkc_ofs";
	rename -uid "84D0BF48-4A08-00AE-8C95-D790E2A7DDE4";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999944 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd0_upr_fkcShape1" -p "lfLegQd0_upr_fkc";
	rename -uid "415D4431-41B1-5B32-FB4C-EC917085611F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4198545498377091e-16 -6.9176760226422127 -6.9176760226422207
		2.0079775609776361e-16 -3.830078638334621e-16 -6.2549930984203241
		1.4198545498377081e-16 6.9176760226422127 -6.9176760226422163
		-8.1952118112493886e-32 6.2549930984203419 -2.4287968567061556e-15
		-1.4198545498377086e-16 6.9176760226422127 6.9176760226422127
		-2.0079775609776381e-16 6.2656693665442739e-16 6.2549930984203304
		-1.4198545498377081e-16 -6.9176760226422127 6.9176760226422163
		-1.1974422834864534e-31 -6.2549930984203419 -1.2515457096028207e-15
		1.4198545498377091e-16 -6.9176760226422127 -6.9176760226422207
		2.0079775609776361e-16 -3.830078638334621e-16 -6.2549930984203241
		1.4198545498377081e-16 6.9176760226422127 -6.9176760226422163
		;
createNode transform -n "lfLegQd0_lwr_fkc_ofs" -p "lfLegQd0_FK";
	rename -uid "15FB7329-486C-4BE6-0CEA-AD9D96CCF7E1";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_lwr_fkc" -p "lfLegQd0_lwr_fkc_ofs";
	rename -uid "997BE12E-44D2-BD81-104B-DDB6005C85F2";
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
createNode nurbsCurve -n "lfLegQd0_lwr_fkcShape1" -p "lfLegQd0_lwr_fkc";
	rename -uid "670F7B2A-412F-853F-35C4-43A9A1A5B914";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4198545498377091e-16 -6.9176760226422127 -6.9176760226422207
		2.0079775609776361e-16 -3.830078638334621e-16 -6.2549930984203241
		1.4198545498377081e-16 6.9176760226422127 -6.9176760226422163
		-8.1952118112493886e-32 6.2549930984203419 -2.4287968567061556e-15
		-1.4198545498377086e-16 6.9176760226422127 6.9176760226422127
		-2.0079775609776381e-16 6.2656693665442739e-16 6.2549930984203304
		-1.4198545498377081e-16 -6.9176760226422127 6.9176760226422163
		-1.1974422834864534e-31 -6.2549930984203419 -1.2515457096028207e-15
		1.4198545498377091e-16 -6.9176760226422127 -6.9176760226422207
		2.0079775609776361e-16 -3.830078638334621e-16 -6.2549930984203241
		1.4198545498377081e-16 6.9176760226422127 -6.9176760226422163
		;
createNode transform -n "lfLegQd0_palm_fkc_ofs" -p "lfLegQd0_FK";
	rename -uid "13D50656-480B-8E7B-782E-008D83552D9B";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_palm_fkc" -p "lfLegQd0_palm_fkc_ofs";
	rename -uid "3B0BA0FF-4C12-3E5B-6F5B-64AF264FAAEB";
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
	rename -uid "0A08CC2F-4FDA-DF76-51BB-A3A618A31B5E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4198545498377091e-16 -6.9176760226422127 -6.9176760226422207
		2.0079775609776361e-16 -3.830078638334621e-16 -6.2549930984203241
		1.4198545498377081e-16 6.9176760226422127 -6.9176760226422163
		-8.1952118112493886e-32 6.2549930984203419 -2.4287968567061556e-15
		-1.4198545498377086e-16 6.9176760226422127 6.9176760226422127
		-2.0079775609776381e-16 6.2656693665442739e-16 6.2549930984203304
		-1.4198545498377081e-16 -6.9176760226422127 6.9176760226422163
		-1.1974422834864534e-31 -6.2549930984203419 -1.2515457096028207e-15
		1.4198545498377091e-16 -6.9176760226422127 -6.9176760226422207
		2.0079775609776361e-16 -3.830078638334621e-16 -6.2549930984203241
		1.4198545498377081e-16 6.9176760226422127 -6.9176760226422163
		;
createNode transform -n "lfLegQd0_digit_fkc_ofs" -p "lfLegQd0_FK";
	rename -uid "B5EF7C22-478C-04DB-6966-458361E29B26";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_digit_fkc" -p "lfLegQd0_digit_fkc_ofs";
	rename -uid "80D95BE6-4484-7B4A-7AD7-B18337AEE91E";
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
	rename -uid "4FA7FC84-4697-BE07-3CE5-628DD4669A8A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4198545498377091e-16 -6.9176760226422127 -6.9176760226422207
		2.0079775609776361e-16 -3.830078638334621e-16 -6.2549930984203241
		1.4198545498377081e-16 6.9176760226422127 -6.9176760226422163
		-8.1952118112493886e-32 6.2549930984203419 -2.4287968567061556e-15
		-1.4198545498377086e-16 6.9176760226422127 6.9176760226422127
		-2.0079775609776381e-16 6.2656693665442739e-16 6.2549930984203304
		-1.4198545498377081e-16 -6.9176760226422127 6.9176760226422163
		-1.1974422834864534e-31 -6.2549930984203419 -1.2515457096028207e-15
		1.4198545498377091e-16 -6.9176760226422127 -6.9176760226422207
		2.0079775609776361e-16 -3.830078638334621e-16 -6.2549930984203241
		1.4198545498377081e-16 6.9176760226422127 -6.9176760226422163
		;
createNode transform -n "lfLegQd0_ikc_matcher" -p "lfLegQd0_digit_fkc";
	rename -uid "F162722E-4139-AD3E-E8F9-0E8A2335ECAD";
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 -2.1316282072803006e-14 ;
	setAttr ".r" -type "double3" -111.56347898565237 0.80634777182875439 -87.960528304924068 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "lfLegQd0_quadScap_ofs" -p "lfLegQd0_FK";
	rename -uid "21EC63DE-4246-5C92-389B-91B630F29C87";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_quadScap" -p "lfLegQd0_quadScap_ofs";
	rename -uid "70804CE2-48D8-941E-0229-6BB87A48EACD";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -8.8817841970012523e-16 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "lfLegQd0_hip_fkc_ofs" -p "lfLegQd0_quadScap";
	rename -uid "5D0B6ADE-41A5-2A96-578F-BD83F81CE8B6";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 2.6645352591003757e-15 -2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_hip_fkc" -p "lfLegQd0_hip_fkc_ofs";
	rename -uid "FDF9455F-48CF-B2B7-3F60-048B4E72F3C1";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "autoAim" -ln "autoAim" -dv 0.3 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -k on ".autoAim";
createNode nurbsCurve -n "lfLegQd0_hip_fkcShape1" -p "lfLegQd0_hip_fkc";
	rename -uid "C1280FAA-4928-604A-3CCA-40ADFB88F2D5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.4588380113211064 -13.364633198090054 -3.4588380113211104
		1.9150393191673105e-16 -13.364633198090054 -3.1274965492101621
		-3.4588380113211064 -13.364633198090054 -3.4588380113211081
		-3.127496549210171 -13.364633198090054 -1.2143984283530778e-15
		-3.4588380113211064 -13.364633198090054 3.4588380113211064
		-3.132834683272137e-16 -13.364633198090054 3.1274965492101652
		3.4588380113211064 -13.364633198090054 3.4588380113211081
		3.127496549210171 -13.364633198090054 -6.2577285480141037e-16
		3.4588380113211064 -13.364633198090054 -3.4588380113211104
		1.9150393191673105e-16 -13.364633198090054 -3.1274965492101621
		-3.4588380113211064 -13.364633198090054 -3.4588380113211081
		;
	setAttr ".adot" yes;
createNode joint -n "lfLegQd0_autoAim" -p "lfLegQd0_quadScap_ofs";
	rename -uid "52855126-421E-D45F-396C-E3AB95F792AB";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -2.6645352591003757e-15 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 98.005086817550946 30.005447452974142 0.79331727420860054 ;
	setAttr ".radi" 2.0046949797135083;
createNode joint -n "lfLegQd0_autoAim_end" -p "lfLegQd0_autoAim";
	rename -uid "92D37D42-45D6-2B68-1038-A6899BFF0378";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 62.361499068241969 -1.4210854715202004e-14 -7.5495165674510645e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 6.361109362927032e-15 5.7647553601526228e-15 2.4848083448933734e-15 ;
	setAttr ".radi" 2.0046949797135083;
createNode ikEffector -n "effector6" -p "lfLegQd0_autoAim";
	rename -uid "F7EC3C1A-45D1-CC8F-AA12-589C5AFDD493";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegQd0_ballOfsG" -p "lfLegQd0_FK";
	rename -uid "44ACB31A-46B2-A7A1-410B-17A621924D0A";
	setAttr ".t" -type "double3" 7.6284935149038517 4.5814706726817409 -38.775021662394941 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ball_fkc_ofs" -p "lfLegQd0_ballOfsG";
	rename -uid "2EC8132D-4EFD-6F5F-7860-E8AB74FCC7F2";
	setAttr ".t" -type "double3" 0.15504344110542601 -1.6023710011577563 4.0487459131235184 ;
	setAttr ".r" -type "double3" 178.475707940023 -38.342591785290523 -89.054249515992183 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ball_fkc_ofs1" -p "lfLegQd0_ball_fkc_ofs";
	rename -uid "C52B528E-43A6-3505-9F5F-228EFED65334";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -3.5527136788005009e-15 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "lfLegQd0_ball_fkc" -p "lfLegQd0_ball_fkc_ofs1";
	rename -uid "7440ED4E-413B-8D0A-D773-AFA51E2B32A7";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999933 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd0_ball_fkcShape1" -p "lfLegQd0_ball_fkc";
	rename -uid "4E5B0540-4CF9-EF89-C38A-40BFAF6F16DA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.0992727491885454e-17 -3.4588380113211064 -3.4588380113211104
		1.0039887804888181e-16 -1.9150393191673105e-16 -3.1274965492101621
		7.0992727491885405e-17 3.4588380113211064 -3.4588380113211081
		-4.0976059056246943e-32 3.127496549210171 -1.2143984283530778e-15
		-7.0992727491885429e-17 3.4588380113211064 3.4588380113211064
		-1.0039887804888191e-16 3.132834683272137e-16 3.1274965492101652
		-7.0992727491885405e-17 -3.4588380113211064 3.4588380113211081
		-5.9872114174322671e-32 -3.127496549210171 -6.2577285480141037e-16
		7.0992727491885454e-17 -3.4588380113211064 -3.4588380113211104
		1.0039887804888181e-16 -1.9150393191673105e-16 -3.1274965492101621
		7.0992727491885405e-17 3.4588380113211064 -3.4588380113211081
		;
createNode ikHandle -n "lfLegQd0_3_ikh" -p "lfLegQd0_ball_fkc";
	rename -uid "9B632DB4-4A24-ED60-EC3D-8EAEDCD330DA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.3720434501095582 3.5527136788005009e-15 -2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999967 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.62036223726627249 0.020863399931965881 -0.78403789010306346 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_ball_fk_SPACE_1_ofs" -p "lfLegQd0_ball_fkc";
	rename -uid "941D7EB9-43CC-A44C-0A49-32B29A9B8ED2";
	setAttr ".t" -type "double3" -2.1316282072803006e-14 0 1.0658141036401503e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000009 ;
createNode transform -n "lfLegQd0_ball_fk_SPACE_1" -p "lfLegQd0_ball_fk_SPACE_1_ofs";
	rename -uid "7B30B0F6-487F-00DD-7133-BCAE817FEE8A";
	setAttr ".t" -type "double3" 0 0 -3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999944 ;
createNode ikHandle -n "lfLegQd0_toe01_2_ikh" -p "lfLegQd0_ball_fkc";
	rename -uid "ADE56139-4C83-658C-DD72-428BE0C91A97";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.52772750337990715 2.9174484710238406 1.9498544816671064 ;
	setAttr ".r" -type "double3" 8.5423024743497624 -2.0092710422446043 6.5196243397236193 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.62036223726627304 0.020863399931965804 -0.78403789010306391 ;
	setAttr ".roc" yes;
createNode ikHandle -n "lfLegQd0_toe02_2_ikh" -p "lfLegQd0_ball_fkc";
	rename -uid "6216CE7B-4C7B-3197-C8FE-288051CE7553";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.14930786138673824 0.99870174344725093 -0.13915835201267157 ;
	setAttr ".r" -type "double3" 0.28095989492251372 37.219499607890597 0.3469742615196818 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.62036223726627304 0.020863399931965804 -0.78403789010306391 ;
	setAttr ".roc" yes;
createNode ikHandle -n "lfLegQd0_toe03_2_ikh" -p "lfLegQd0_ball_fkc";
	rename -uid "72122510-46CB-A07F-A9D1-0F816D3A702F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.11040327031710717 -0.96494721312511977 0.24701658458227627 ;
	setAttr ".r" -type "double3" -2.5126023534122623 32.078684189253757 -3.0204140674537348 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.62036223726627304 0.020863399931965804 -0.78403789010306391 ;
	setAttr ".roc" yes;
createNode ikHandle -n "lfLegQd0_toe04_2_ikh" -p "lfLegQd0_ball_fkc";
	rename -uid "AF756033-487C-9B14-C6E8-EFB141078E50";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.97811506965991768 -2.9723216871426406 2.5877610326428204 ;
	setAttr ".r" -type "double3" -8.4301030513725834 1.9783803635698787 -7.0233054432519157 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000007 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.62036223726627304 0.020863399931965804 -0.78403789010306391 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_toe01_3_ikc_ofs" -p "lfLegQd0_ball_fkc_ofs1";
	rename -uid "6A047155-4FD9-DE94-9B5C-ACB9B7C94C69";
	setAttr ".t" -type "double3" -0.52772750337990715 2.9174484710238398 1.9498544816670886 ;
	setAttr ".r" -type "double3" 34.594302500050659 -31.742439076480043 5.9220811950378049 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "lfLegQd0_toe01_3_ikc_ofs1" -p "lfLegQd0_toe01_3_ikc_ofs";
	rename -uid "657E9AA7-462A-0F00-4637-8C9AC898C591";
	setAttr ".t" -type "double3" -4.1744385725905886e-14 2.4868995751603507e-14 3.1974423109204508e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999956 0.99999999999999956 ;
createNode transform -n "lfLegQd0_toe01_3_ikc" -p "lfLegQd0_toe01_3_ikc_ofs1";
	rename -uid "8672252A-47CF-40ED-CF50-DC91BCB4B2E0";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd0_toe01_3_ikcShape1" -p "lfLegQd0_toe01_3_ikc";
	rename -uid "EF195871-4F0A-15FA-1AC5-01B279BABB7A";
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
		0 0 0
		0 0 -0.69838496860234589
		0.080647944434879076 0 -0.69838496860234589
		0.080647944434879076 0 -0.85968085747210443
		-0.080647944434879076 0 -0.85968085747210443
		-0.080647944434879076 0 -0.69838496860234589
		0 0 -0.69838496860234589
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegQd0_toe01_3_1_ikj_ikh" -p "lfLegQd0_toe01_3_ikc";
	rename -uid "F5339E04-413F-102E-632D-02B5D9C54510";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.0041912677519713 -1.1909587737170568 -1.5753197470841407 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.1141008591491518 -0.59912574626763948 -0.79248301817809896 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_toe02_3_ikc_ofs" -p "lfLegQd0_ball_fkc_ofs1";
	rename -uid "955F2869-4238-8F3A-D433-ABBFD77E500A";
	setAttr ".t" -type "double3" -0.14930786138673113 0.99870174344725093 -0.13915835201268223 ;
	setAttr ".r" -type "double3" 40.62994086612084 -35.370977406060398 3.3099089421487977 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "lfLegQd0_toe02_3_ikc_ofs1" -p "lfLegQd0_toe02_3_ikc_ofs";
	rename -uid "2073575C-40B7-6D0A-815C-5D9F9F1F9FA1";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "lfLegQd0_toe02_3_ikc" -p "lfLegQd0_toe02_3_ikc_ofs1";
	rename -uid "F6CECA68-4458-B713-CA2A-AF9F42823E5B";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd0_toe02_3_ikcShape1" -p "lfLegQd0_toe02_3_ikc";
	rename -uid "2504BEB4-4CF6-7618-1A30-93B52BD6E8C7";
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
		-8.6511254819975276e-16 9.2263486001489988e-17 3.5527136788005009e-15
		-8.6511254819975276e-16 9.2263486001489988e-17 -0.69838496860234234
		0.080647944434878216 9.2263486001489988e-17 -0.69838496860234234
		0.080647944434878216 9.2263486001489988e-17 -0.85968085747210088
		-0.080647944434879937 9.2263486001489988e-17 -0.85968085747210088
		-0.080647944434879937 9.2263486001489988e-17 -0.69838496860234234
		-8.6511254819975276e-16 9.2263486001489988e-17 -0.69838496860234234
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegQd0_toe02_3_1_ikj_ikh" -p "lfLegQd0_toe02_3_ikc";
	rename -uid "0192D8BF-4F59-0E2E-B75A-3AAA59B2548E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.7412230411676779 -1.3151221183911517 -1.4870005134791242 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999933 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.05214026210389635 -0.66158756855237844 -0.74805299424886207 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_toe03_3_ikc_ofs" -p "lfLegQd0_ball_fkc_ofs1";
	rename -uid "B1A52A37-49C2-F73A-C091-E5A2FD53E0B5";
	setAttr ".t" -type "double3" -0.11040327031710362 -0.96494721312511622 0.24701658458226206 ;
	setAttr ".r" -type "double3" -12.215657104653703 -27.304181095677105 -3.0406302247825066 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999989 ;
createNode transform -n "lfLegQd0_toe03_3_ikc_ofs1" -p "lfLegQd0_toe03_3_ikc_ofs";
	rename -uid "07785338-4596-18BE-2943-AC9D8D7BA7AC";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "lfLegQd0_toe03_3_ikc" -p "lfLegQd0_toe03_3_ikc_ofs1";
	rename -uid "35FC073A-49C7-BE00-F2FC-68B8505EED73";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd0_toe03_3_ikcShape1" -p "lfLegQd0_toe03_3_ikc";
	rename -uid "4D3BAD31-4241-4647-EE20-528FBFD701CB";
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
		0 -3.3681867067975211e-15 7.0131638715995124e-15
		0 -3.3681867067975211e-15 -0.6983849686023389
		0.080647944434879076 -3.3681867067975211e-15 -0.6983849686023389
		0.080647944434879076 -3.3681867067975211e-15 -0.85968085747209755
		-0.080647944434879076 -3.3681867067975211e-15 -0.85968085747209755
		-0.080647944434879076 -3.3681867067975211e-15 -0.6983849686023389
		0 -3.3681867067975211e-15 -0.6983849686023389
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegQd0_toe03_3_1_ikj_ikh" -p "lfLegQd0_toe03_3_ikc";
	rename -uid "D7851D6F-4470-40C0-6BA8-4BACD77D2B14";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.7854158194444034 0.51674908809216547 -1.8820280746460192 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 0.99999999999999922 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.18983490483650639 0.25995666474884266 -0.94677623616056783 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_toe04_3_ikc_ofs" -p "lfLegQd0_ball_fkc_ofs1";
	rename -uid "E249C70C-4B21-7BD2-BAB5-7297D5ABABEE";
	setAttr ".t" -type "double3" -0.97811506965991768 -2.972321687142637 2.5877610326428027 ;
	setAttr ".r" -type "double3" 25.684293517133931 -31.552658513180315 4.2028606575766663 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "lfLegQd0_toe04_3_ikc_ofs1" -p "lfLegQd0_toe04_3_ikc_ofs";
	rename -uid "C6AC52F9-4CEC-2832-7660-A8B09629131C";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999978 ;
createNode transform -n "lfLegQd0_toe04_3_ikc" -p "lfLegQd0_toe04_3_ikc_ofs1";
	rename -uid "AA2B0EDE-4E91-B877-7106-2F9E91D168DB";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd0_toe04_3_ikcShape1" -p "lfLegQd0_toe04_3_ikc";
	rename -uid "38413EA6-42D2-CAB0-4256-2FB09575D1BB";
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
		0 0 0
		0 0 -0.69838496860234589
		0.080647944434879076 0 -0.69838496860234589
		0.080647944434879076 0 -0.85968085747210443
		-0.080647944434879076 0 -0.85968085747210443
		-0.080647944434879076 0 -0.69838496860234589
		0 0 -0.69838496860234589
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegQd0_toe04_3_1_ikj_ikh" -p "lfLegQd0_toe04_3_ikc";
	rename -uid "19FDDB32-471B-1D40-8F1A-C6A2E0DCDBE4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.8779911154878057 -0.89941186346549973 -1.7570595562560101 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999933 0.99999999999999911 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.11825609106135924 -0.45245966400955728 -0.88390935585683461 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_IK" -p "lfLegQd0_ctl_data";
	rename -uid "06FFDB67-4C3C-D70F-AC5C-629E9A739CDE";
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd0_hip_ik" -p "lfLegQd0_IK";
	rename -uid "35537F12-4EB6-5769-7F46-1AA5798FDD6A";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.5453675403340599 135.05484301924929 93.734806953643258 ;
	setAttr ".radi" 2.0046949797135083;
createNode joint -n "lfLegQd0_upr_ik" -p "lfLegQd0_hip_ik";
	rename -uid "80DE364D-4AAC-87F0-2E5E-E5943EA25DE1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.1751450121796729 0 0 ;
	setAttr ".r" -type "double3" -1.2200905022302669e-15 -1.0629396175241108e-05 1.9628041706460825e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -8.2358734683807864 61.060703261451337 -5.0166573398885355 ;
	setAttr ".radi" 2.0046949797135083;
createNode joint -n "lfLegQd0_lwr_ik" -p "lfLegQd0_upr_ik";
	rename -uid "52CEB669-4E06-A06B-6668-5CAAD90C59C8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 20.095373120779495 1.7763568394002505e-15 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 7.4079980985579834e-21 1.7308166275056096e-05 -1.2925950586078612e-20 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -53.282984841761611 0 ;
	setAttr ".radi" 2.0046949797135083;
createNode joint -n "lfLegQd0_palm_ik" -p "lfLegQd0_lwr_ik";
	rename -uid "5F0B4DB5-4604-764D-D78B-A9A83C494FDB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 29.052161450082362 -1.2434497875801753e-14 4.2632564145606011e-14 ;
	setAttr ".r" -type "double3" -5.8205907828177441e-07 -9.3430862637774374e-09 3.7745374967102142e-08 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 6.186949186873246 36.705763308063702 4.8546913251063453 ;
	setAttr ".radi" 2.0046949797135083;
createNode joint -n "lfLegQd0_digit_ik" -p "lfLegQd0_palm_ik";
	rename -uid "7858F3B8-44C9-AFC7-58DA-00B46C29D832";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 12.701923523812837 0.20388852964052084 -0.82369450713628112 ;
	setAttr ".r" -type "double3" -2.8428365153876088e-07 -2.3180262736506506e-22 -1.1590131296370015e-22 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -5.9446143740996922 68.316305112213712 -5.5266626192912227 ;
	setAttr ".radi" 2.0046949797135083;
createNode joint -n "lfLegQd0_ball_ik" -p "lfLegQd0_digit_ik";
	rename -uid "96DD9D69-4AA0-32B9-B776-A29E205C4C5A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.3570619980216989 3.5527136788005009e-15 1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" -5.0580887799169559e-07 -1.3322738398604401e-21 1.59872862218138e-21 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0.42391041966501525 -30.071999033927138 0.71523895032073814 ;
	setAttr ".radi" 2.0046949797135083;
createNode joint -n "lfLegQd0_tip_ik" -p "lfLegQd0_ball_ik";
	rename -uid "D0F1678E-4BAC-B3DE-9E0E-CDA7E18254F2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.3720434501095511 8.8817841970012523e-15 -1.0658141036401503e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.5104237050693383 51.63178221713634 1.9261881505075462 ;
	setAttr ".radi" 2.0046949797135083;
createNode ikEffector -n "effector4" -p "lfLegQd0_ball_ik";
	rename -uid "01ECAC46-4E38-2324-7E9F-72B7436A8CF6";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector3" -p "lfLegQd0_digit_ik";
	rename -uid "82E76EB9-4C04-0DDE-F394-468EA9BA3368";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector2" -p "lfLegQd0_palm_ik";
	rename -uid "D09A9FA1-4BCA-04D1-9FF9-85B7F55DB1EC";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector1" -p "lfLegQd0_lwr_ik";
	rename -uid "814DF723-4E2E-9658-529B-93B9F4AFAA8F";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "lfLegQd0_softJ" -p "lfLegQd0_hip_ik";
	rename -uid "E505C2EB-4704-75A8-FECB-7AA7BF3AC083";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 7.1751450121796729 0 0 ;
	setAttr ".r" -type "double3" -2.5444437451708131e-14 1.2295331561236953e-29 1.3768209821176769e-30 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 99.813514307054305 29.368496184559739 -0.038466953765888774 ;
createNode joint -n "lfLegQd0_softJ_end" -p "lfLegQd0_softJ";
	rename -uid "794E2F02-4743-92DE-3DDE-E6BC6660CCDB";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 44.112743377685547 -2.1316282072803006e-14 -2.3869795029440866e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 6.361109362927032e-15 5.7647553601526228e-15 2.4848083448933734e-15 ;
createNode ikEffector -n "effector5" -p "lfLegQd0_softJ";
	rename -uid "8AF38461-4C6F-2FB8-58E9-58A78EEE8780";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegQd0_pvc_SPACE_1_ofs" -p "lfLegQd0_softJ";
	rename -uid "B03B04C2-4DCB-B65B-211B-D08D9A9E7D02";
	setAttr ".t" -type "double3" 10.302352066356839 -33.569793976510383 8.6039523166408785 ;
	setAttr ".r" -type "double3" -0.32453976043253874 -76.172324843055932 74.140572930119149 ;
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999967 0.99999999999999967 ;
createNode transform -n "lfLegQd0_pvc_SPACE_1" -p "lfLegQd0_pvc_SPACE_1_ofs";
	rename -uid "E3D06779-4D1F-35B1-A762-AAA10577D46B";
	setAttr ".t" -type "double3" 0 7.1054273576010019e-15 -4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1 1 ;
createNode transform -n "lfLegQd0_ikCstG" -p "lfLegQd0_IK";
	rename -uid "953CB409-481E-874A-474A-1AAD20892AF9";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_heelRollG" -p "lfLegQd0_ikCstG";
	rename -uid "C471796D-4205-C6C5-DC7A-ED992DD61A08";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 17.283397181396314 1.4262525557280838 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_heelRollG_ctl" -p "lfLegQd0_heelRollG";
	rename -uid "B4F7F02E-45FE-D729-3A61-DDA456D9E598";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_toeRollG" -p "lfLegQd0_heelRollG_ctl";
	rename -uid "A9BBA401-48EC-1964-871C-2199C17317C7";
	setAttr ".t" -type "double3" 1.2600130985398241 1.2580201772401447e-15 -10.272514312829031 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_toeRollG_ctl" -p "lfLegQd0_toeRollG";
	rename -uid "0A0C7229-40A6-7DE1-E9D6-59B8D70CF945";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_footRollG" -p "lfLegQd0_toeRollG_ctl";
	rename -uid "7B7DCFD0-4A65-B8DE-4102-158BF37A7D45";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_outRollG" -p "lfLegQd0_footRollG";
	rename -uid "199DBC55-42B0-BDA7-E97A-45B4F0DC2E8C";
	setAttr ".t" -type "double3" 2.7688419297940357 -5.5735445024451874e-16 4.5511444657559252 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_outRollG_ctl" -p "lfLegQd0_outRollG";
	rename -uid "A8B6F786-4D5A-D5E2-BAEB-AE8D828FB34D";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_inRollG" -p "lfLegQd0_outRollG_ctl";
	rename -uid "1CA23D49-46E6-96BA-55F3-729D8AC0EF09";
	setAttr ".t" -type "double3" -7.9518312931449842 -1.5777218104420236e-30 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_inRollG_ctl" -p "lfLegQd0_inRollG";
	rename -uid "CEFDDD74-4AD7-CA23-58CD-6EB03D73064E";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd0_ballRollG" -p "lfLegQd0_inRollG_ctl";
	rename -uid "A16CD4F6-4CFD-93FC-E303-4FA43D4D05AF";
	setAttr ".t" -type "double3" 3.8741314139461851 -2.9790996715239904 -0.5773237281178254 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ballG_ikc" -p "lfLegQd0_ballRollG";
	rename -uid "925391E5-482B-EA2B-38F4-7788A264BDD1";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfLegQd0_ballG_ikcShape1" -p "lfLegQd0_ballG_ikc";
	rename -uid "D1167A50-4ECB-0120-ECBF-BE81A487FB07";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 25 0 no 3
		26 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		26
		4.1387470670928497e-17 -6.0064078951656645 -3.6535714001364646e-16
		3.9977225575123954e-17 -6.0294390270902447 -0.17493803736935784
		3.5842600683557546e-17 -6.0969626011989551 -0.33795432538654097
		2.926535906028323e-17 -6.204377064459603 -0.47793958769170564
		2.0693735335464249e-17 -6.3443622471053462 -0.58535410405863442
		1.0711865040845322e-17 -6.5073785616756696 -0.6528776250610635
		-1.2673905455960679e-32 -6.6823165990450271 -0.67590865077308193
		-1.0711865040845322e-17 -6.8572546364143854 -0.6528776250610635
		-2.0693735335464249e-17 -7.0202709509847088 -0.58535410405863442
		-2.926535906028323e-17 -7.160256133630452 -0.47793958769170564
		-3.5842600683557546e-17 -7.2676710217413474 -0.33795432538654097
		-3.9977225575123954e-17 -7.3351941709998094 -0.17493803736935784
		-4.1387470670928497e-17 -7.3582253029243905 -1.9972552723317557e-16
		-3.9977225575123954e-17 -7.3351941709998094 0.17493803736935784
		-3.5842600683557546e-17 -7.2676710217413474 0.33795432538654097
		-2.926535906028323e-17 -7.160256133630452 0.47793958769170564
		-2.0693735335464249e-17 -7.0202709509847088 0.58535410405863442
		-1.0711865040845322e-17 -6.8572546364143854 0.6528776250610635
		3.0964764155558888e-32 -6.6823165990450271 0.67590865077308193
		1.0711865040845322e-17 -6.5073785616756696 0.6528776250610635
		2.0693735335464249e-17 -6.3443622471053462 0.58535410405863442
		2.926535906028323e-17 -6.204377064459603 0.47793958769170564
		3.5842600683557546e-17 -6.0969626011989551 0.33795432538654097
		3.9977225575123954e-17 -6.0294390270902447 0.17493803736935784
		4.1387470670928497e-17 -6.0064078951656645 -3.6535714001364646e-16
		0 0 0
		;
createNode transform -n "lfLegQd0_extraRollG_ofs" -p "lfLegQd0_ballG_ikc";
	rename -uid "3D33D8E5-44E4-58B0-4A29-8C83E8D0D809";
	setAttr ".t" -type "double3" -0.15504367877558334 -1.6023739860594826 4.0487465123265522 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_extraRollG_ofs1" -p "lfLegQd0_extraRollG_ofs";
	rename -uid "5625C42D-4597-CCC3-C1E0-DDBD1CE11ED8";
	setAttr ".t" -type "double3" -4.4408920985006262e-16 8.8817841970012523e-16 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -11.30968891755421 7.9513867036587939e-16 92.04450661736999 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd0_extraRollG" -p "lfLegQd0_extraRollG_ofs1";
	rename -uid "94FC67DF-49ED-0036-2252-0A93D929BEAD";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_extra_ikc" -p "lfLegQd0_extraRollG";
	rename -uid "A132A225-46B1-84A0-B8EB-42848F73EA83";
	addAttr -ci true -sn "palmAim" -ln "palmAim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "palmAimRatio" -ln "palmAimRatio" -dv 0.5 -min -2 -max 2 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".palmAim";
	setAttr -k on ".palmAimRatio";
createNode nurbsCurve -n "lfLegQd0_extra_ikcShape1" -p "lfLegQd0_extra_ikc";
	rename -uid "1ECB9502-4C8D-8A93-AEF8-33A315E31A12";
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
		3.9895434392324178 -6.6823165990450271 0
		3.7041924857468667 -5.1479899000815657 0
		2.8350663412265757 -3.8472502578184513 0
		1.5343266989634616 -2.9781241132981604 0
		0 -2.6928667122440606 0
		-1.5343266989634616 -2.9781241132981604 0
		-2.8350663412265757 -3.8472502578184513 0
		-3.7041924857468667 -5.1479899000815657 0
		-3.9895434392324178 -6.6823167880666459 0
		-3.7041924857468667 -8.2166432980084885 0
		-2.8350663412265757 -9.5173829402716024 0
		-1.5343266989634616 -10.386509084791893 0
		1.593187215905885e-07 -10.671766485845993 -0.027127532194207871
		1.5343266989634616 -10.386509084791893 0
		2.8350663412265757 -9.5173829402716024 0
		3.7041924857468667 -8.2166432980084885 0
		3.9895434392324178 -6.6823165990450271 0
		3.6858562091824503 -6.6719350589976321 -1.526698166410277
		2.8210334765089105 -6.6631338600808405 -2.8209719991968139
		1.5267329144562447 -6.6572531007812916 -3.685776021384064
		1.593187215905885e-07 -6.6551879976801738 -3.9894552326541932
		-1.5267329144562447 -6.6572531007812916 -3.685776021384064
		-2.8210334765089105 -6.6631338600808405 -2.8209719991968139
		-3.6858562091824503 -6.6719350589976321 -1.526698166410277
		-3.9895434392324178 -6.6823167880666459 0
		-3.6858562091824503 -6.6926985133021484 1.5266928205570514
		-2.8210334765089105 -6.701499712218939 2.8209693262702005
		-1.5267329144562447 -6.7073804715184879 3.6857706755308381
		1.593187215905885e-07 -6.7094454677025412 3.9894498868009665
		1.5267329144562447 -6.7073804715184879 3.6857706755308381
		2.8210334765089105 -6.701499712218939 2.8209693262702005
		3.6858562091824503 -6.6926985133021484 1.5266928205570514
		3.9895434392324178 -6.6823165990450271 0
		3.6858562091824503 -6.6719350589976321 -1.526698166410277
		2.8210334765089105 -6.6631338600808405 -2.8209719991968139
		1.5267329144562447 -6.6572531007812916 -3.685776021384064
		1.593187215905885e-07 -6.6551879976801738 -3.9894552326541932
		1.593187215905885e-07 -5.1305570727123051 -3.6753917014929907
		1.593187215905885e-07 -3.8421663514007367 -2.801788404896111
		1.593187215905885e-07 -2.9861642765497294 -1.5016341335612193
		0 -2.6928667122440606 0
		1.593187215905885e-07 -3.0069275704786489 1.551759526332722
		1.593187215905885e-07 -3.8805308670755294 2.8401475747176779
		1.593187215905885e-07 -5.180682465483808 3.6961523224952977
		1.593187215905885e-07 -6.7094454677025412 3.9894498868009665
		1.593187215905885e-07 -8.234076125377749 3.6753863556397652
		1.593187215905885e-07 -9.5224668466893174 2.8017830590428856
		1.593187215905885e-07 -10.378468921540325 1.5016287877079935
		1.593187215905885e-07 -10.671766485845993 -0.027127532194207871
		1.593187215905885e-07 -10.357705627611406 -1.5517648721859478
		1.593187215905885e-07 -9.4841023310145243 -2.8401529205709033
		1.593187215905885e-07 -8.1839507326062471 -3.696157668348524
		1.593187215905885e-07 -6.6551879976801738 -3.9894552326541932
		;
createNode transform -n "lfLegQd0_extraRollG_ofs2" -p "lfLegQd0_extra_ikc";
	rename -uid "5DEC0475-4D91-8495-8FE9-F4A742482DA5";
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd0_X_ikh" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "F854F579-4010-0634-3749-F5BE9A80A481";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -8.8817841970012523e-16 0 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 1.2246467991473532e-16 -1.0000000000000002 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_dist_loc1" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "B7D0EC93-4B47-0A76-C8A9-FAA1D4E2F625";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.20388852964051907 -12.701923523812841 0.82369450713628112 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000002 ;
createNode locator -n "lfLegQd0_dist_loc1Shape" -p "lfLegQd0_dist_loc1";
	rename -uid "C3E513B3-4D4B-708C-230B-49B122BC5617";
	setAttr -k off ".v";
createNode transform -n "lfLegQd0_softJ_posGrp" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "D5671D74-4ECC-D0EB-26E3-08BC2E655788";
	setAttr ".t" -type "double3" 0.20388852964051907 -12.70192352381283 0.82369450713628822 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000002 ;
createNode transform -n "lfLegQd0_1_ikh_ofs" -p "lfLegQd0_extraRollG_ofs2";
	rename -uid "643A8887-414A-98B6-815A-829D2E1EA19F";
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000002 ;
createNode ikHandle -n "lfLegQd0_1_ikh" -p "lfLegQd0_1_ikh_ofs";
	rename -uid "F9D3DF8D-44FC-8669-95F0-8EB5A2BC367E";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_toe_wiggle_grp" -p "lfLegQd0_inRollG_ctl";
	rename -uid "35C5827E-44F4-B0D3-064B-29A231ADA478";
	setAttr ".t" -type "double3" 3.8741314139461851 -2.9790996715239904 -0.5773237281178254 ;
	setAttr ".r" -type "double3" 178.475707940023 38.342591785290523 89.054249515992183 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999967 ;
createNode ikHandle -n "lfLegQd0_2_ikh" -p "lfLegQd0_toe_wiggle_grp";
	rename -uid "D2EBCD61-496E-64B4-B804-73B453C871EE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".r" -type "double3" 179.09612696044059 -30.062392003101344 1.0718356720562665 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.62036223726627282 -0.020863399931965908 0.78403789010306357 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_2_ofs" -p "lfLegQd0_toe_wiggle_grp";
	rename -uid "6AC0737B-4D59-5FBE-3487-3590821B5B15";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -1.7763568394002505e-15 -2.4868995751603507e-14 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "lfLegQd0_ball_fkc_SPACE_2" -p "lfLegQd0_ball_fkc_SPACE_2_ofs";
	rename -uid "F448D1DD-408B-4760-6873-DC863A5CF402";
	setAttr ".t" -type "double3" 0 0 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode nurbsCurve -n "lfLegQd0_inRollG_ctlShape1" -p "lfLegQd0_inRollG_ctl";
	rename -uid "134272DA-415A-CE8C-CBDF-51BD0D285718";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.41346833956591106
		-0.41346833956591106 0 0
		0 0 -0.41346833956591106
		0.41346833956591106 0 0
		0 0 0.41346833956591106
		0 0.41346833956591106 0
		0.41346833956591106 0 0
		0 0 -0.41346833956591106
		0 0.41346833956591106 0
		-0.41346833956591106 0 0
		0 -0.41346833956591106 0
		0.41346833956591106 0 0
		0 0 0.41346833956591106
		0 -0.41346833956591106 0
		0 0 -0.41346833956591106
		;
createNode nurbsCurve -n "lfLegQd0_outRollG_ctlShape1" -p "lfLegQd0_outRollG_ctl";
	rename -uid "BBE585FA-41B1-6E58-7F00-878E2120C7BE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.41346833956591106
		-0.41346833956591106 0 0
		0 0 -0.41346833956591106
		0.41346833956591106 0 0
		0 0 0.41346833956591106
		0 0.41346833956591106 0
		0.41346833956591106 0 0
		0 0 -0.41346833956591106
		0 0.41346833956591106 0
		-0.41346833956591106 0 0
		0 -0.41346833956591106 0
		0.41346833956591106 0 0
		0 0 0.41346833956591106
		0 -0.41346833956591106 0
		0 0 -0.41346833956591106
		;
createNode nurbsCurve -n "lfLegQd0_toeRollG_ctlShape1" -p "lfLegQd0_toeRollG_ctl";
	rename -uid "A99C5FD4-46AC-B1AD-C65E-6583A21F8B8A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.41346833956591106
		-0.41346833956591106 0 0
		0 0 -0.41346833956591106
		0.41346833956591106 0 0
		0 0 0.41346833956591106
		0 0.41346833956591106 0
		0.41346833956591106 0 0
		0 0 -0.41346833956591106
		0 0.41346833956591106 0
		-0.41346833956591106 0 0
		0 -0.41346833956591106 0
		0.41346833956591106 0 0
		0 0 0.41346833956591106
		0 -0.41346833956591106 0
		0 0 -0.41346833956591106
		;
createNode nurbsCurve -n "lfLegQd0_heelRollG_ctlShape1" -p "lfLegQd0_heelRollG_ctl";
	rename -uid "925C0F9D-4523-AA14-018C-39AB45354864";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.41346833956591106
		-0.41346833956591106 0 0
		0 0 -0.41346833956591106
		0.41346833956591106 0 0
		0 0 0.41346833956591106
		0 0.41346833956591106 0
		0.41346833956591106 0 0
		0 0 -0.41346833956591106
		0 0.41346833956591106 0
		-0.41346833956591106 0 0
		0 -0.41346833956591106 0
		0.41346833956591106 0 0
		0 0 0.41346833956591106
		0 -0.41346833956591106 0
		0 0 -0.41346833956591106
		;
createNode transform -n "lfLegQd0_line_30" -p "lfLegQd0_IK";
	rename -uid "E7A6564A-488E-E087-CD14-4FA35D651FD2";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape1" -p "lfLegQd0_line_30";
	rename -uid "3BE9B37D-4855-54FA-5401-03863A1C9177";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		7.2527711583611394 40.491407241924179 -22.132170693184975
		8.6727015988764808 40.632885796443851 2.8064332826076006
		;
createNode transform -n "lfLegQd0_ikc_ofs" -p "lfLegQd0_IK";
	rename -uid "B6613375-4410-3317-C13E-EAB0A3ECF2EF";
	setAttr ".t" -type "double3" 7.6284932772336997 4.5814736575834729 -38.775022261597954 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_ikc_ofs1" -p "lfLegQd0_ikc_ofs";
	rename -uid "D97F1ED5-4ABC-B8A6-C516-13A6F603C2C7";
createNode transform -n "lfLegQd0_ikc" -p "lfLegQd0_ikc_ofs1";
	rename -uid "6CED9AF7-48AF-64C4-AF28-8CA419A02539";
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
	rename -uid "88FE7080-4CA7-8DC1-4379-76ACE4870E0D";
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
		5.0117374492837659 -4.581473657583472 5.0117374492837721
		4.9154383195031492 -4.581473657583472 5.9894789221248308
		4.6302416517135949 -4.581473657583472 6.9296463384883431
		4.16710739391812 -4.581473657583472 7.7961095918154211
		3.5438335359151227 -4.581473657583472 8.5555709851988926
		2.784372142531649 -4.581473657583472 9.1788448432018921
		1.9179088892045715 -4.581473657583472 9.6419791009973661
		0.97774147284105883 -4.581473657583472 9.9271757687869222
		-5.8508772675016407e-16 -4.581473657583472 10.023474898567537
		-0.97774147284105994 -4.581473657583472 9.9271757687869222
		-1.9179088892045728 -4.581473657583472 9.6419791009973661
		-2.7843721425316508 -4.581473657583472 9.1788448432018921
		-3.543833535915125 -4.581473657583472 8.5555709851988944
		-4.1671073939181227 -4.581473657583472 7.796109591815422
		-4.6302416517135976 -4.581473657583472 6.9296463384883431
		-4.9154383195031528 -4.581473657583472 5.9894789221248299
		-5.0117374492837694 -4.581473657583472 5.0117374492837694
		-4.9154382899458549 -3.0806546952290228 5.0117374492837712
		-4.6302416293330211 -1.6192708555052713 5.0117374492837712
		-4.1671074886024897 -0.35380180320551169 5.0117374492837712
		-3.543833535009564 0.65315458244030911 5.0117374492837712
		-2.7843720820282698 1.4114257720320662 5.0117374492837712
		-1.9179088281424896 1.8745599127625985 5.0117374492837712
		-0.97774145134074164 2.1597565733754323 5.0117374492837712
		3.0688041139647081e-16 2.2560557327133468 5.0117374492837712
		0.97774145134074164 2.1597565733754323 5.0117374492837712
		1.9179088281424896 1.8745599127625985 5.0117374492837712
		2.7843720820282698 1.4114257720320662 5.0117374492837712
		3.543833535009564 0.65315458244030911 5.0117374492837712
		4.1671074886024897 -0.35380180320551169 5.0117374492837712
		4.6302416293330211 -1.6192708555052713 5.0117374492837712
		4.9154382899458549 -3.0806546952290228 5.0117374492837712
		5.0117374492837712 -4.581473657583472 5.0117374492837712
		5.0117374492837712 -4.5814736575834729 -4.7110332023267434
		5.0117374492837712 -4.280769410626446 -5.0117374492837712
		4.9154382899458549 -3.0806546952290228 -5.0117374492837712
		4.6302416293330211 -1.6192708555052713 -5.0117374492837712
		4.1671074886024897 -0.35380180320551169 -5.0117374492837712
		3.543833535009564 0.65315458244030911 -5.0117374492837712
		2.7843720820282698 1.4114257720320662 -5.0117374492837712
		1.9179088281424896 1.8745599127625985 -5.0117374492837712
		0.97774145134074164 2.1597565733754323 -5.0117374492837712
		3.0688041139647081e-16 2.2560557327133468 -5.0117374492837712
		-0.97774145134074164 2.1597565733754323 -5.0117374492837712
		-1.9179088281424896 1.8745599127625985 -5.0117374492837712
		-2.7843720820282698 1.4114257720320662 -5.0117374492837712
		-3.543833535009564 0.65315458244030911 -5.0117374492837712
		-4.1671074886024897 -0.35380180320551169 -5.0117374492837712
		-4.6302416293330211 -1.6192708555052713 -5.0117374492837712
		-4.9154382899458549 -3.0806546952290228 -5.0117374492837712
		-5.0117374492837712 -4.280769410626446 -5.0117374492837712
		-5.0117374492837712 -4.5814736575834711 -4.7110332023267434
		-5.0117374492837712 -4.581473657583472 5.0117374492837712
		;
createNode transform -n "lfLegQd0_ikc_gmb" -p "lfLegQd0_ikc";
	rename -uid "46E1F600-490B-BC61-5E5A-FCA04B85B634";
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
	rename -uid "3C08C444-420F-4FBD-9816-30B45D72A8A7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".tw" yes;
	setAttr -s 53 ".cp[0:52]" -type "double3" -1.0023474898567528 0.68375293197140596 
		-0.5011737551918376 -0.98308766390062985 0.68375293197140596 -0.69672204976004881 
		-0.92604833034271872 0.68375293197140596 -0.88475553303275145 -0.83342147878362383 
		0.68375293197140596 -1.0580481836981672 -0.70876670718302437 0.68375293197140596 
		-1.2099404623748615 -0.55687442850632962 0.68375293197140596 -1.3345952339754614 
		-0.3835817778409143 0.68375293197140596 -1.4272220855345559 -0.19554829456821177 
		0.68375293197140596 -1.4842614190924674 1.1701754535003279e-16 0.68375293197140596 
		-1.5035212450485904 0.19554829456821199 0.68375293197140596 -1.4842614190924674 0.38358177784091452 
		0.68375293197140596 -1.4272220855345559 0.55687442850633007 0.68375293197140596 -1.3345952339754614 
		0.70876670718302481 0.68375293197140596 -1.2099404623748615 0.83342147878362427 0.68375293197140596 
		-1.0580481836981672 0.92604833034271916 0.68375293197140596 -0.88475553303275145 
		0.98308766390063029 0.68375293197140596 -0.69672204976004881 1.0023474898567537 0.68375293197140596 
		-0.50117375519183671 0.98308765798917097 0.38358913950051621 -0.50117375519183671 
		0.92604832586660413 0.091312371555765992 -0.50117375519183671 0.83342149772049767 
		-0.16178143890418584 -0.50117375519183671 0.7087667070019128 -0.36317271603334988 
		-0.50117375519183671 0.55687441640565405 -0.51482695395170119 -0.50117375519183671 
		0.38358176562849788 -0.60745378209780765 -0.50117375519183671 0.19554829026814824 
		-0.66449311422037449 -0.50117375519183671 -6.1376082279294161e-17 -0.68375294608795745 
		-0.50117375519183671 -0.19554829026814824 -0.66449311422037449 -0.50117375519183671 
		-0.38358176562849788 -0.60745378209780765 -0.50117375519183671 -0.55687441640565405 
		-0.51482695395170119 -0.50117375519183671 -0.7087667070019128 -0.36317271603334988 
		-0.50117375519183671 -0.83342149772049767 -0.16178143890418584 -0.50117375519183671 
		-0.92604832586660413 0.091312371555765992 -0.50117375519183671 -0.98308765798917097 
		0.38358913950051621 -0.50117375519183671 -1.0023474898567537 0.68375293197140596 
		-0.50117375519183671 -1.0023474898567537 0.68375293197140641 1.4433803751302654 -1.0023474898567537 
		0.62361208258000111 1.5035212245216707 -0.98308765798917097 0.38358913950051621 1.5035212245216707 
		-0.92604832586660413 0.091312371555765992 1.5035212245216707 -0.83342149772049767 
		-0.16178143890418584 1.5035212245216707 -0.7087667070019128 -0.36317271603334988 
		1.5035212245216707 -0.55687441640565405 -0.51482695395170119 1.5035212245216707 -0.38358176562849788 
		-0.60745378209780765 1.5035212245216707 -0.19554829026814824 -0.66449311422037449 
		1.5035212245216707 -6.1376082279294161e-17 -0.68375294608795745 1.5035212245216707 
		0.19554829026814824 -0.66449311422037449 1.5035212245216707 0.38358176562849788 -0.60745378209780765 
		1.5035212245216707 0.55687441640565405 -0.51482695395170119 1.5035212245216707 0.7087667070019128 
		-0.36317271603334988 1.5035212245216707 0.83342149772049767 -0.16178143890418584 
		1.5035212245216707 0.92604832586660413 0.091312371555765992 1.5035212245216707 0.98308765798917097 
		0.38358913950051621 1.5035212245216707 1.0023474898567537 0.62361208258000111 1.5035212245216707 
		1.0023474898567537 0.68375293197140596 1.4433803751302654 1.0023474898567537 0.68375293197140596 
		-0.50117375519183671;
createNode nurbsCurve -n "lfLegQd0_ikc_gmbShapeOrig" -p "lfLegQd0_ikc_gmb";
	rename -uid "D6FFC7C5-4E8E-81AF-EB0D-7698825B27FE";
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
		5.0117374492837659 -4.581473657583472 5.0117374492837721
		4.9154383195031492 -4.581473657583472 5.9894789221248308
		4.6302416517135949 -4.581473657583472 6.9296463384883431
		4.16710739391812 -4.581473657583472 7.7961095918154211
		3.5438335359151227 -4.581473657583472 8.5555709851988926
		2.784372142531649 -4.581473657583472 9.1788448432018921
		1.9179088892045715 -4.581473657583472 9.6419791009973661
		0.97774147284105883 -4.581473657583472 9.9271757687869222
		-5.8508772675016407e-16 -4.581473657583472 10.023474898567537
		-0.97774147284105994 -4.581473657583472 9.9271757687869222
		-1.9179088892045728 -4.581473657583472 9.6419791009973661
		-2.7843721425316508 -4.581473657583472 9.1788448432018921
		-3.543833535915125 -4.581473657583472 8.5555709851988944
		-4.1671073939181227 -4.581473657583472 7.796109591815422
		-4.6302416517135976 -4.581473657583472 6.9296463384883431
		-4.9154383195031528 -4.581473657583472 5.9894789221248299
		-5.0117374492837694 -4.581473657583472 5.0117374492837694
		-4.9154382899458549 -3.0806546952290228 5.0117374492837712
		-4.6302416293330211 -1.6192708555052713 5.0117374492837712
		-4.1671074886024897 -0.35380180320551169 5.0117374492837712
		-3.543833535009564 0.65315458244030911 5.0117374492837712
		-2.7843720820282698 1.4114257720320662 5.0117374492837712
		-1.9179088281424896 1.8745599127625985 5.0117374492837712
		-0.97774145134074164 2.1597565733754323 5.0117374492837712
		3.0688041139647081e-16 2.2560557327133468 5.0117374492837712
		0.97774145134074164 2.1597565733754323 5.0117374492837712
		1.9179088281424896 1.8745599127625985 5.0117374492837712
		2.7843720820282698 1.4114257720320662 5.0117374492837712
		3.543833535009564 0.65315458244030911 5.0117374492837712
		4.1671074886024897 -0.35380180320551169 5.0117374492837712
		4.6302416293330211 -1.6192708555052713 5.0117374492837712
		4.9154382899458549 -3.0806546952290228 5.0117374492837712
		5.0117374492837712 -4.581473657583472 5.0117374492837712
		5.0117374492837712 -4.5814736575834729 -4.7110332023267434
		5.0117374492837712 -4.280769410626446 -5.0117374492837712
		4.9154382899458549 -3.0806546952290228 -5.0117374492837712
		4.6302416293330211 -1.6192708555052713 -5.0117374492837712
		4.1671074886024897 -0.35380180320551169 -5.0117374492837712
		3.543833535009564 0.65315458244030911 -5.0117374492837712
		2.7843720820282698 1.4114257720320662 -5.0117374492837712
		1.9179088281424896 1.8745599127625985 -5.0117374492837712
		0.97774145134074164 2.1597565733754323 -5.0117374492837712
		3.0688041139647081e-16 2.2560557327133468 -5.0117374492837712
		-0.97774145134074164 2.1597565733754323 -5.0117374492837712
		-1.9179088281424896 1.8745599127625985 -5.0117374492837712
		-2.7843720820282698 1.4114257720320662 -5.0117374492837712
		-3.543833535009564 0.65315458244030911 -5.0117374492837712
		-4.1671074886024897 -0.35380180320551169 -5.0117374492837712
		-4.6302416293330211 -1.6192708555052713 -5.0117374492837712
		-4.9154382899458549 -3.0806546952290228 -5.0117374492837712
		-5.0117374492837712 -4.280769410626446 -5.0117374492837712
		-5.0117374492837712 -4.5814736575834711 -4.7110332023267434
		-5.0117374492837712 -4.581473657583472 5.0117374492837712
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode transform -n "lfLegQd0_smart_ctl_ofs" -p "lfLegQd0_ikc_gmb";
	rename -uid "0FF59552-472B-34C4-852A-2E9DB93EA5E8";
	setAttr ".t" -type "double3" 1.4639016281803467 -4.5814736575834729 8.0225672499646734 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_smart_ctl" -p "lfLegQd0_smart_ctl_ofs";
	rename -uid "95117D8B-4B05-6406-A9A9-F99E9B8FEE3E";
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
	rename -uid "69E88FBD-453A-C486-48A6-B0B85485EC48";
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
		2.3058920075474041 4.7328484994590299e-17 -2.3058920075474068
		1.2766928794448737e-16 6.6932585365921205e-17 -2.0849976994734414
		-2.3058920075474041 4.7328484994590274e-17 -2.3058920075474054
		-2.0849976994734472 -2.7317372704164629e-32 -8.0959895223538516e-16
		-2.3058920075474041 -4.7328484994590292e-17 2.3058920075474041
		-2.088556455514758e-16 -6.6932585365921266e-17 2.0849976994734432
		2.3058920075474041 -4.7328484994590274e-17 2.3058920075474054
		2.0849976994734472 -3.9914742782881784e-32 -4.171819032009402e-16
		2.3058920075474041 4.7328484994590299e-17 -2.3058920075474068
		1.2766928794448737e-16 6.6932585365921205e-17 -2.0849976994734414
		-2.3058920075474041 4.7328484994590274e-17 -2.3058920075474054
		;
createNode ikHandle -n "lfLegQd0_autoAimJ_ikh" -p "lfLegQd0_ikc";
	rename -uid "B1F777C0-4351-78C0-D3C6-F18917A3CF8C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.3290705182007514e-15 1.4210854715202004e-14 2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd0_pvc_ofs" -p "lfLegQd0_IK";
	rename -uid "08A44CE6-4B11-2202-2E4A-3FBAB500392F";
	setAttr ".t" -type "double3" 8.6727015988764826 40.632885796443844 2.8064332826076011 ;
	setAttr ".r" -type "double3" -0.32451139200814627 3.258734252829893 6.8971350639146925e-06 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_pvc_ofs1" -p "lfLegQd0_pvc_ofs";
	rename -uid "041C868D-41F8-00B8-B775-41A6D66EDFFD";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "lfLegQd0_pvc" -p "lfLegQd0_pvc_ofs1";
	rename -uid "AA599393-4BDB-69EA-D674-9B92FEB8396C";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 5.3290705182007514e-15 -7.1054273576010019e-15 1.7763568394002505e-15 ;
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
createNode nurbsCurve -n "lfLegQd0_pvcShape1" -p "lfLegQd0_pvc";
	rename -uid "F6886EB4-4FE4-4436-33A7-9F8BB9FB2ABA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.6538733582636442
		-1.6538733582636442 0 0
		0 0 -1.6538733582636442
		1.6538733582636442 0 0
		0 0 1.6538733582636442
		0 1.6538733582636442 0
		1.6538733582636442 0 0
		0 0 -1.6538733582636442
		0 1.6538733582636442 0
		-1.6538733582636442 0 0
		0 -1.6538733582636442 0
		1.6538733582636442 0 0
		0 0 1.6538733582636442
		0 -1.6538733582636442 0
		0 0 -1.6538733582636442
		;
createNode transform -n "lfLegQd0_extraRollG_ofs_loc" -p "lfLegQd0_IK";
	rename -uid "7859360A-450D-69AE-2B2F-5EA1E5B8387D";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -3.4092251115473 -163.77160511482384 94.850585570515676 ;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd0_extraRollG_ofs_locShape" -p "lfLegQd0_extraRollG_ofs_loc";
	rename -uid "218C61FB-4335-14E5-CC41-56BE237A597F";
	setAttr -k off ".v";
createNode transform -n "lfLegQd0_setting" -p "lfLegQd0_ctl_data";
	rename -uid "157BE5D9-4769-3D0B-ADC3-038910743515";
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
	rename -uid "51D0F094-4817-4879-9F52-0681B7CF0C34";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-3.3411582995225135 3.3411582995225135 8.3178073186876232e-17
		-3.2769588599639032 3.3411582995225135 -0.65182763422716095
		-3.0868277528886807 3.3411582995225135 -1.2786059650877479
		-2.7780716590683263 3.3411582995225135 -1.8562480546855131
		-2.3625556900063756 3.3411582995225135 -2.3625556900063756
		-1.8562480546855131 3.3411582995225135 -2.7780716590683263
		-1.2786059650877479 3.3411582995225135 -3.0868277528886807
		-0.65182763422716095 3.3411582995225135 -3.2769588599639032
		2.045869409309805e-16 3.3411582995225135 -3.3411582995225135
		0.65182763422716095 3.3411582995225135 -3.2769588599639032
		1.2786059650877479 3.3411582995225135 -3.0868277528886807
		1.8562480546855131 3.3411582995225135 -2.7780716590683263
		2.3625556900063756 3.3411582995225135 -2.3625556900063756
		2.7780716590683263 3.3411582995225135 -1.8562480546855131
		3.0868277528886807 3.3411582995225135 -1.2786059650877479
		3.2769588599639032 3.3411582995225135 -0.65182763422716095
		3.3411582995225135 3.3411582995225135 -3.6138537097748123e-16
		3.2139931855244401 3.3411582995225135 -0.63930294271416321
		2.8518569947644448 3.3411582995225135 -1.1812778450031878
		2.3098820128159985 3.3411582995225135 -1.5434138764443404
		1.6705791497612568 3.3411582995225135 -1.6705791497612568
		1.0312762070470936 3.3411582995225135 -1.5434138764443404
		0.48930130475806904 3.3411582995225135 -1.1812778450031878
		0.12716527331691643 3.3411582995225135 -0.63930294271416321
		0 3.3411582995225135 -3.6138537097748123e-16
		-0.12716527331691643 3.3411582995225135 0.63930294271416321
		-0.48930130475806904 3.3411582995225135 1.1812778450031878
		-1.0312762070470936 3.3411582995225135 1.5434138764443404
		-1.6705791497612568 3.3411582995225135 1.6705791497612568
		-2.3098820128159985 3.3411582995225135 1.5434138764443404
		-2.8518569947644448 3.3411582995225135 1.1812778450031878
		-3.2139931855244401 3.3411582995225135 0.63930294271416321
		-3.3411582995225135 3.3411582995225135 8.3178073186876232e-17
		-3.2769588599639032 3.3411582995225135 0.65182763422716095
		-3.0868277528886807 3.3411582995225135 1.2786059650877479
		-2.7780716590683263 3.3411582995225135 1.8562480546855131
		-2.3625556900063756 3.3411582995225135 2.3625556900063756
		-1.8562480546855131 3.3411582995225135 2.7780716590683263
		-1.2786059650877479 3.3411582995225135 3.0868277528886807
		-0.65182763422716095 3.3411582995225135 3.2769588599639032
		-3.9005848458334699e-16 3.3411582995225135 3.3411582995225135
		0.65182763422716095 3.3411582995225135 3.2769588599639032
		1.2786059650877479 3.3411582995225135 3.0868277528886807
		1.8562480546855131 3.3411582995225135 2.7780716590683263
		2.3625556900063756 3.3411582995225135 2.3625556900063756
		2.7780716590683263 3.3411582995225135 1.8562480546855131
		3.0868277528886807 3.3411582995225135 1.2786059650877479
		3.2769588599639032 3.3411582995225135 0.65182763422716095
		3.3411582995225135 3.3411582995225135 -3.6138537097748123e-16
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_toe01_4_ctl_ofs" -p "lfLegQd0_ctl_data";
	rename -uid "D16D60B1-42BB-2D68-C295-8A84B39556D5";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_toe01_4_ctl" -p "lfLegQd0_toe01_4_ctl_ofs";
	rename -uid "D5D7A3EE-4732-6675-3C12-00BAD59E4F88";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd0_toe01_4_ctlShape1" -p "lfLegQd0_toe01_4_ctl";
	rename -uid "EE6B9528-4578-AD24-3E20-EA9B70FBE124";
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
		5.5180605389054049e-18 -0.26884553129640781 -0.26884553129640815
		7.8037160521158224e-18 -1.488504987888691e-17 -0.24309131235635364
		5.5180605389054018e-18 0.26884553129640781 -0.26884553129640798
		-3.1849512267855628e-33 0.24309131235635434 -9.4391697329417402e-17
		-5.5180605389054042e-18 0.26884553129640781 0.26884553129640781
		-7.8037160521158301e-18 2.4350623016497195e-17 0.24309131235635389
		-5.5180605389054018e-18 -0.26884553129640781 0.26884553129640798
		-4.653687247668171e-33 -0.24309131235635434 -4.8639524334271166e-17
		5.5180605389054049e-18 -0.26884553129640781 -0.26884553129640815
		7.8037160521158224e-18 -1.488504987888691e-17 -0.24309131235635364
		5.5180605389054018e-18 0.26884553129640781 -0.26884553129640798
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_toe02_4_ctl_ofs" -p "lfLegQd0_ctl_data";
	rename -uid "74B8CE50-473F-19AF-B920-D089C7650D7A";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_toe02_4_ctl" -p "lfLegQd0_toe02_4_ctl_ofs";
	rename -uid "AEA2A75D-432A-7851-5874-FB9F69CDF381";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd0_toe02_4_ctlShape1" -p "lfLegQd0_toe02_4_ctl";
	rename -uid "6D5FD16F-444E-2C7D-60A3-489CEBB51328";
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
		-7.0999092970620966e-15 -0.26884553129640804 -0.26884553129640826
		-7.0976236415488863e-15 -1.9941202188186689e-16 -0.24309131235635376
		-7.0999092970620966e-15 0.26884553129640765 -0.26884553129640809
		-7.1054273576010019e-15 0.24309131235635417 -2.025307658543865e-16
		-7.1109454181399079e-15 0.26884553129640765 0.2688455312964077
		-7.1132310736531182e-15 -1.6017634898648276e-16 0.24309131235635378
		-7.1109454181399079e-15 -0.26884553129640804 0.26884553129640787
		-7.1054273576010019e-15 -0.24309131235635453 -1.5677859285924027e-16
		-7.0999092970620966e-15 -0.26884553129640804 -0.26884553129640826
		-7.0976236415488863e-15 -1.9941202188186689e-16 -0.24309131235635376
		-7.0999092970620966e-15 0.26884553129640765 -0.26884553129640809
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_toe03_4_ctl_ofs" -p "lfLegQd0_ctl_data";
	rename -uid "59E7E13F-4189-9206-6BAD-B8A8CBCB166F";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_toe03_4_ctl" -p "lfLegQd0_toe03_4_ctl_ofs";
	rename -uid "445F5851-4CB3-F5E0-496E-3ABFAF28344C";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd0_toe03_4_ctlShape1" -p "lfLegQd0_toe03_4_ctl";
	rename -uid "066FF71C-4FD0-8342-5140-808BA04D8A19";
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
		5.5180605389054049e-18 -0.26884553129640781 -0.26884553129640815
		7.8037160521158224e-18 -1.488504987888691e-17 -0.24309131235635364
		5.5180605389054018e-18 0.26884553129640781 -0.26884553129640798
		-3.1849512267855628e-33 0.24309131235635434 -9.4391697329417402e-17
		-5.5180605389054042e-18 0.26884553129640781 0.26884553129640781
		-7.8037160521158301e-18 2.4350623016497195e-17 0.24309131235635389
		-5.5180605389054018e-18 -0.26884553129640781 0.26884553129640798
		-4.653687247668171e-33 -0.24309131235635434 -4.8639524334271166e-17
		5.5180605389054049e-18 -0.26884553129640781 -0.26884553129640815
		7.8037160521158224e-18 -1.488504987888691e-17 -0.24309131235635364
		5.5180605389054018e-18 0.26884553129640781 -0.26884553129640798
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_toe04_4_ctl_ofs" -p "lfLegQd0_ctl_data";
	rename -uid "48467CD1-4715-FA43-4666-B0845316489A";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_toe04_4_ctl" -p "lfLegQd0_toe04_4_ctl_ofs";
	rename -uid "DD5C87CA-43D3-C2C5-9A9B-899AFC2AEDE2";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd0_toe04_4_ctlShape1" -p "lfLegQd0_toe04_4_ctl";
	rename -uid "9D7CF0CD-48FA-6FE5-0AAC-398E7F8582FC";
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
		-7.1460410400628417e-15 -0.26884553129640626 -0.26884553129640826
		-7.1437553845496314e-15 1.5769448175183837e-15 -0.24309131235635376
		-7.1460410400628417e-15 0.26884553129640942 -0.26884553129640809
		-7.1515591006017478e-15 0.24309131235635592 -2.025307658543865e-16
		-7.1570771611406523e-15 0.26884553129640942 0.2688455312964077
		-7.1593628166538626e-15 1.6161804904137677e-15 0.24309131235635378
		-7.1570771611406523e-15 -0.26884553129640626 0.26884553129640787
		-7.1515591006017478e-15 -0.24309131235635276 -1.5677859285924027e-16
		-7.1460410400628417e-15 -0.26884553129640626 -0.26884553129640826
		-7.1437553845496314e-15 1.5769448175183837e-15 -0.24309131235635376
		-7.1460410400628417e-15 0.26884553129640942 -0.26884553129640809
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd0_anchorF1" -p "master_ctl";
	rename -uid "9E3A4EC2-4FC6-3552-D730-F287CC96AF25";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd0_anchorF1Shape" -p "lfLegQd0_anchorF1";
	rename -uid "6D71ACC1-4563-2A56-B9F6-74A8CE1DDFB9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 3.1163835088215999 3.1163835088215999 3.1163835088215999 ;
createNode transform -n "lfLegQd1_ctl_data" -p "master_ctl";
	rename -uid "719946C6-415C-A069-615C-C7B8F15FCB86";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_FK" -p "lfLegQd1_ctl_data";
	rename -uid "DDD46DB9-4937-D018-F794-91AA306237A6";
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd1_hip_fk" -p "lfLegQd1_FK";
	rename -uid "B7A26CE2-4522-C4C9-ADC3-2495FB35F8C2";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 176.81212911743961 -29.189704617139078 -77.80020913052401 ;
	setAttr ".radi" 1.5102726324879425;
createNode joint -n "lfLegQd1_upr_fk" -p "lfLegQd1_hip_fk";
	rename -uid "B3FD42E2-4F67-721C-80E7-A39BB3521513";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -176.36206915280172 -61.402027391942383 10.608547169899639 ;
	setAttr ".radi" 1.5102726324879425;
createNode joint -n "lfLegQd1_lwr_fk" -p "lfLegQd1_upr_fk";
	rename -uid "E5A69A74-4752-25E1-8C94-669E4C808EBC";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -32.572365256841863 0 ;
	setAttr ".radi" 1.5102726324879425;
createNode joint -n "lfLegQd1_palm_fk" -p "lfLegQd1_lwr_fk";
	rename -uid "A9B8933C-4C15-1840-4268-A2B1A9AC308B";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 174.5138215760976 0.34690762756693827 0.55067656956348443 ;
	setAttr ".radi" 1.5102726324879425;
createNode joint -n "lfLegQd1_digit_fk" -p "lfLegQd1_palm_fk";
	rename -uid "B4E10FDA-42F3-0921-EA4E-F0B614D65DC3";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -13.491889250838117 75.491141985594908 -13.076634911343312 ;
	setAttr ".radi" 1.5102726324879425;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_1_ofs" -p "lfLegQd1_digit_fk";
	rename -uid "86377F79-4FFE-B627-9FF9-3D94CF593453";
	setAttr ".t" -type "double3" 4.0971831113446342 1.4210854715202004e-14 8.8817841970012523e-15 ;
	setAttr ".r" -type "double3" 0.11817735967014191 -36.311780755780156 0.30844930893500189 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999956 ;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_1" -p "lfLegQd1_ball_fkc_SPACE_1_ofs";
	rename -uid "00A13983-4103-918E-F48E-EDACF9A2D93A";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999978 ;
createNode transform -n "lfLegQd1_ball_fk_SPACE_2_ofs" -p "lfLegQd1_digit_fk";
	rename -uid "0E7B0250-47CB-BAE7-687C-628E6D0A5C6B";
	setAttr ".t" -type "double3" 4.09718311134462 1.0658141036401503e-14 1.2434497875801753e-14 ;
	setAttr ".r" -type "double3" 0.11817735967018693 -36.311780755780205 0.30844930893496819 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999967 ;
createNode transform -n "lfLegQd1_ball_fk_SPACE_2" -p "lfLegQd1_ball_fk_SPACE_2_ofs";
	rename -uid "0EF4DD42-4B93-5AA5-B5DB-65BDD052EDE1";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999978 ;
createNode transform -n "lfLegQd1_ball_fk_ofs" -p "lfLegQd1_digit_fk";
	rename -uid "8A5C20AC-4ECA-A790-EDA9-F7AF2E6E3E51";
	setAttr ".t" -type "double3" 4.0971831113446271 9.7699626167013776e-15 1.2434497875801753e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999967 ;
createNode joint -n "lfLegQd1_ball_fk" -p "lfLegQd1_ball_fk_ofs";
	rename -uid "47DCF28F-4FB2-EDDE-7097-109FC3ABBEAE";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -2.1257535390562798e-14 2.5489571665785293e-14 -5.3423379415207965e-16 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.1927080055488186e-14 3.180554681463516e-15 7.9513867036587899e-16 ;
	setAttr ".radi" 1.5102726324879425;
createNode joint -n "lfLegQd1_tip_fk" -p "lfLegQd1_ball_fk";
	rename -uid "7958B0AE-419D-B62C-A69C-5BBE3643A76E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.7362915691876388 4.4408920985006262e-15 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 3.5771691907902086 50.343747700228072 4.642217496155455 ;
	setAttr ".radi" 1.5102726324879425;
createNode transform -n "lfLegQd1_upr_fkc_ofs" -p "lfLegQd1_FK";
	rename -uid "C670BF6F-4EA9-9A6A-DFBC-0297D78CD731";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_upr_fkc" -p "lfLegQd1_upr_fkc_ofs";
	rename -uid "79F00628-4A2B-10D3-1F19-5FB8AC946406";
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
createNode nurbsCurve -n "lfLegQd1_upr_fkcShape1" -p "lfLegQd1_upr_fkc";
	rename -uid "1B415C25-4009-F4AA-7B20-7E986DD7E5FE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.6045090328703012e-16 -7.8173314767124635 -7.8173314767124724
		2.2691184352353207e-16 -4.3281868361191704e-16 -7.0684655186011494
		1.6045090328703002e-16 7.8173314767124635 -7.8173314767124671
		-9.2610129530084645e-32 7.0684655186011689 -2.7446659913421806e-15
		-1.6045090328703009e-16 7.8173314767124635 7.8173314767124635
		-2.2691184352353232e-16 7.0805302534320378e-16 7.0684655186011556
		-1.6045090328703002e-16 -7.8173314767124635 7.8173314767124671
		-1.3531716755173704e-31 -7.0684655186011689 -1.4143113436072214e-15
		1.6045090328703012e-16 -7.8173314767124635 -7.8173314767124724
		2.2691184352353207e-16 -4.3281868361191704e-16 -7.0684655186011494
		1.6045090328703002e-16 7.8173314767124635 -7.8173314767124671
		;
createNode transform -n "lfLegQd1_lwr_fkc_ofs" -p "lfLegQd1_FK";
	rename -uid "06F77657-42FB-2B79-B3A8-9A801F055D02";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_lwr_fkc" -p "lfLegQd1_lwr_fkc_ofs";
	rename -uid "AC095213-47A1-B1B3-3BDD-119B60BA9941";
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
	rename -uid "E85908D9-4D4A-C9A7-6632-EBA0DD1172DE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.6045090328703012e-16 -7.8173314767124635 -7.8173314767124724
		2.2691184352353207e-16 -4.3281868361191704e-16 -7.0684655186011494
		1.6045090328703002e-16 7.8173314767124635 -7.8173314767124671
		-9.2610129530084645e-32 7.0684655186011689 -2.7446659913421806e-15
		-1.6045090328703009e-16 7.8173314767124635 7.8173314767124635
		-2.2691184352353232e-16 7.0805302534320378e-16 7.0684655186011556
		-1.6045090328703002e-16 -7.8173314767124635 7.8173314767124671
		-1.3531716755173704e-31 -7.0684655186011689 -1.4143113436072214e-15
		1.6045090328703012e-16 -7.8173314767124635 -7.8173314767124724
		2.2691184352353207e-16 -4.3281868361191704e-16 -7.0684655186011494
		1.6045090328703002e-16 7.8173314767124635 -7.8173314767124671
		;
createNode transform -n "lfLegQd1_palm_fkc_ofs" -p "lfLegQd1_FK";
	rename -uid "3CD8641C-4BB6-AE61-BCF6-0D87E13B4609";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_palm_fkc" -p "lfLegQd1_palm_fkc_ofs";
	rename -uid "22E927B6-4262-A274-D850-14A8206D3D27";
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
	rename -uid "C1FEA53E-4804-0268-DD66-4AB0962EFEAA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.6045090328703012e-16 -7.8173314767124635 -7.8173314767124724
		2.2691184352353207e-16 -4.3281868361191704e-16 -7.0684655186011494
		1.6045090328703002e-16 7.8173314767124635 -7.8173314767124671
		-9.2610129530084645e-32 7.0684655186011689 -2.7446659913421806e-15
		-1.6045090328703009e-16 7.8173314767124635 7.8173314767124635
		-2.2691184352353232e-16 7.0805302534320378e-16 7.0684655186011556
		-1.6045090328703002e-16 -7.8173314767124635 7.8173314767124671
		-1.3531716755173704e-31 -7.0684655186011689 -1.4143113436072214e-15
		1.6045090328703012e-16 -7.8173314767124635 -7.8173314767124724
		2.2691184352353207e-16 -4.3281868361191704e-16 -7.0684655186011494
		1.6045090328703002e-16 7.8173314767124635 -7.8173314767124671
		;
createNode transform -n "lfLegQd1_digit_fkc_ofs" -p "lfLegQd1_FK";
	rename -uid "7BB42BE5-4AAB-7F5B-DDA4-AC93533C824C";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_digit_fkc" -p "lfLegQd1_digit_fkc_ofs";
	rename -uid "72405413-4599-AFB0-860D-D3B9EE9BD67F";
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
createNode nurbsCurve -n "lfLegQd1_digit_fkcShape1" -p "lfLegQd1_digit_fkc";
	rename -uid "5AA5FACB-483A-D0EB-DDD5-3C81445D7459";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.6045090328703012e-16 -7.8173314767124635 -7.8173314767124724
		2.2691184352353207e-16 -4.3281868361191704e-16 -7.0684655186011494
		1.6045090328703002e-16 7.8173314767124635 -7.8173314767124671
		-9.2610129530084645e-32 7.0684655186011689 -2.7446659913421806e-15
		-1.6045090328703009e-16 7.8173314767124635 7.8173314767124635
		-2.2691184352353232e-16 7.0805302534320378e-16 7.0684655186011556
		-1.6045090328703002e-16 -7.8173314767124635 7.8173314767124671
		-1.3531716755173704e-31 -7.0684655186011689 -1.4143113436072214e-15
		1.6045090328703012e-16 -7.8173314767124635 -7.8173314767124724
		2.2691184352353207e-16 -4.3281868361191704e-16 -7.0684655186011494
		1.6045090328703002e-16 7.8173314767124635 -7.8173314767124671
		;
createNode transform -n "lfLegQd1_ikc_matcher" -p "lfLegQd1_digit_fkc";
	rename -uid "6D6EEFF0-4C61-B870-9341-B091EC474F1A";
	setAttr ".t" -type "double3" 6.3948846218409017e-14 -2.6645352591003757e-15 -4.7961634663806763e-14 ;
	setAttr ".r" -type "double3" -104.10151083929034 0.81728633015090002 -86.750209618224062 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "lfLegQd1_quadScap_ofs" -p "lfLegQd1_FK";
	rename -uid "7233D9D5-46C4-140E-FA7F-19850AA27A8A";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_quadScap" -p "lfLegQd1_quadScap_ofs";
	rename -uid "A7A5811D-43DD-EA7B-118E-85BD1D3AF6C5";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_hip_fkc_ofs" -p "lfLegQd1_quadScap";
	rename -uid "D657379C-4C09-FD30-4023-508B613D0E10";
	setAttr ".t" -type "double3" 0 -5.3290705182007514e-15 0 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_hip_fkc" -p "lfLegQd1_hip_fkc_ofs";
	rename -uid "AED6E04F-4EF6-A68A-6AC7-4E954B4F15EA";
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
	rename -uid "48B97AD7-4D95-32F3-119E-5790E99D3040";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.9086657383562318 -15.102726324879425 -3.9086657383562362
		2.1640934180595852e-16 -15.102726324879425 -3.5342327593005747
		-3.9086657383562318 -15.102726324879425 -3.9086657383562335
		-3.5342327593005844 -15.102726324879425 -1.3723329956710903e-15
		-3.9086657383562318 -15.102726324879425 3.9086657383562318
		-3.5402651267160189e-16 -15.102726324879425 3.5342327593005778
		3.9086657383562318 -15.102726324879425 3.9086657383562335
		3.5342327593005844 -15.102726324879425 -7.0715567180361068e-16
		3.9086657383562318 -15.102726324879425 -3.9086657383562362
		2.1640934180595852e-16 -15.102726324879425 -3.5342327593005747
		-3.9086657383562318 -15.102726324879425 -3.9086657383562335
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd1_scap_fkc_ofs" -p "lfLegQd1_hip_fkc";
	rename -uid "A811B95D-45E1-4EB4-02EE-BC8370DAEC6E";
	setAttr ".t" -type "double3" 19.589722460236658 1.7763568394002505e-15 -2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "lfLegQd1_scap_fkc" -p "lfLegQd1_scap_fkc_ofs";
	rename -uid "AABEE2DD-4655-1A5C-FFCB-E99A52EA6B34";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfLegQd1_scap_fkcShape1" -p "lfLegQd1_scap_fkc";
	rename -uid "1B19C225-450E-05E1-D8AC-EF813F4AA816";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 6 7 8 9 10 11 14 15 18 19
		10
		-24.541930277929065 0 1.8878407906099286
		-24.541930277929065 0 -1.8878407906099277
		-26.429771068538994 0 -2.8317611859148921
		-28.317611859148922 0 -1.8878407906099286
		-28.317611859148922 0 1.8878407906099277
		-24.541930277929065 0 1.8878407906099286
		-28.317611859148922 0 1.8878407906099277
		-28.317611859148922 0 -1.8878407906099286
		-26.429771068538994 0 -2.8317611859148921
		-24.541930277929065 0 -1.8878407906099277
		;
createNode joint -n "lfLegQd1_autoAim" -p "lfLegQd1_quadScap_ofs";
	rename -uid "CAC0D332-4533-3DAE-B682-C48D40A2514C";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -2.1316282072803006e-14 5.3290705182007514e-15 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -173.05399219892936 -28.849521003393715 8.534686273273083 ;
	setAttr ".radi" 2.2654089487319138;
createNode joint -n "lfLegQd1_autoAim_end" -p "lfLegQd1_autoAim";
	rename -uid "A5FD2D53-4AC0-42C2-F090-21B3262C2626";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 70.867554338612905 -5.3290705182007514e-15 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 3.1805546814635187e-15 4.7708320221952752e-15 1.4710065401768764e-14 ;
	setAttr ".radi" 2.2654089487319138;
createNode ikEffector -n "effector20" -p "lfLegQd1_autoAim";
	rename -uid "9C2D0690-4129-2751-B164-0FB65802D3F5";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikHandle -n "lfLegQd1_legLock_ikh" -p "lfLegQd1_quadScap_ofs";
	rename -uid "DAD9D1B7-4559-FF9F-46CB-299EE8A29DD2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 8.8817841970012523e-15 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -6.9460078010707429 28.849521003393743 -171.46531372672695 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_ballOfsG" -p "lfLegQd1_FK";
	rename -uid "49DC47F2-4F16-12DC-AFB3-BABD5D39966F";
	setAttr ".t" -type "double3" 6.5563385234622231 3.8802126273641981 36.346189347495965 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ball_fkc_ofs" -p "lfLegQd1_ballOfsG";
	rename -uid "AD6DE312-4917-2356-8F89-598D3829E501";
	setAttr ".t" -type "double3" 0.23224220229505121 -0.99984552347963751 3.9665191557912536 ;
	setAttr ".r" -type "double3" 176.1619006149416 -39.500623875667529 -87.556460576237114 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ball_fkc_ofs1" -p "lfLegQd1_ball_fkc_ofs";
	rename -uid "36FEF041-45C3-184C-88E1-71B53FF52EEB";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "lfLegQd1_ball_fkc" -p "lfLegQd1_ball_fkc_ofs1";
	rename -uid "734DB403-4DA1-7A11-7F6D-3195AC6201E9";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 1.0000000000000004 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegQd1_ball_fkcShape1" -p "lfLegQd1_ball_fkc";
	rename -uid "9AB340B9-4627-67A2-A4B7-B794CDC6EC21";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		8.0225451643515058e-17 -3.9086657383562318 -3.9086657383562362
		1.1345592176176604e-16 -2.1640934180595852e-16 -3.5342327593005747
		8.0225451643515009e-17 3.9086657383562318 -3.9086657383562335
		-4.6305064765042323e-32 3.5342327593005844 -1.3723329956710903e-15
		-8.0225451643515046e-17 3.9086657383562318 3.9086657383562318
		-1.1345592176176616e-16 3.5402651267160189e-16 3.5342327593005778
		-8.0225451643515009e-17 -3.9086657383562318 3.9086657383562335
		-6.7658583775868519e-32 -3.5342327593005844 -7.0715567180361068e-16
		8.0225451643515058e-17 -3.9086657383562318 -3.9086657383562362
		1.1345592176176604e-16 -2.1640934180595852e-16 -3.5342327593005747
		8.0225451643515009e-17 3.9086657383562318 -3.9086657383562335
		;
createNode ikHandle -n "lfLegQd1_3_ikh" -p "lfLegQd1_ball_fkc";
	rename -uid "2F4D4FD8-4841-B525-2BA2-78955509F0F6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.7362915691876566 -8.8817841970012523e-16 -9.2370555648813024e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999956 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.63608662221671353 0.051650067022769738 -0.76988705640079103 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_ball_fk_SPACE_1_ofs" -p "lfLegQd1_ball_fkc";
	rename -uid "31D95B6E-49D4-DD1D-4F52-7C9CF80AED68";
	setAttr ".t" -type "double3" -1.0658141036401503e-14 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999944 1.0000000000000004 ;
createNode transform -n "lfLegQd1_ball_fk_SPACE_1" -p "lfLegQd1_ball_fk_SPACE_1_ofs";
	rename -uid "76FC6212-4D2B-1465-42A7-75BC163FD8B8";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 1.0000000000000011 0.99999999999999967 ;
createNode ikHandle -n "lfLegQd1_toe01_2_ikh" -p "lfLegQd1_ball_fkc";
	rename -uid "24630F39-401D-FF07-D959-3A8AA2F12FAC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.38777173390174369 2.8696510922457774 1.251281487109182 ;
	setAttr ".r" -type "double3" 4.8254231272322663 9.0288403454408872 4.7085321785149521 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999933 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.63608662221671342 0.051650067022770023 -0.76988705640079169 ;
	setAttr ".roc" yes;
createNode ikHandle -n "lfLegQd1_toe02_2_ikh" -p "lfLegQd1_ball_fkc";
	rename -uid "6D235EE4-4B3D-B455-C0C6-66A7BD5871A8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.027432135629805288 1.1489110077537763 -0.059268831590252091 ;
	setAttr ".r" -type "double3" 3.9654459561764583 35.993857292359536 4.9866877894450239 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999956 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.63608662221671342 0.051650067022770023 -0.76988705640079169 ;
	setAttr ".roc" yes;
createNode ikHandle -n "lfLegQd1_toe03_2_ikh" -p "lfLegQd1_ball_fkc";
	rename -uid "9A75F5DC-48AE-7FB9-7793-739BBB4D4DBE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.15672518085887788 -1.1376437205158947 0.077097667465181985 ;
	setAttr ".r" -type "double3" -5.0052022950079778 36.879647213140714 -6.322261338936249 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999956 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.63608662221671342 0.051650067022770023 -0.76988705640079169 ;
	setAttr ".roc" yes;
createNode ikHandle -n "lfLegQd1_toe04_2_ikh" -p "lfLegQd1_ball_fkc";
	rename -uid "6629F015-48CB-AF17-1771-AAA1E17D445D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.0442356871419776 -2.82801684758038 2.2397237688722811 ;
	setAttr ".r" -type "double3" -8.8667987091901086 8.2050254139366015 -8.6028389323372085 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999944 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.63608662221671342 0.051650067022770023 -0.76988705640079169 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_toe01_3_ikc_ofs" -p "lfLegQd1_ball_fkc_ofs1";
	rename -uid "A8A5337B-44BC-E228-787A-ABBD20A3505E";
	setAttr ".t" -type "double3" -0.38777173390174013 2.8696510922457765 1.2512814871091891 ;
	setAttr ".r" -type "double3" 18.003547274707646 -24.411234345918217 6.3742377092391553 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1.0000000000000002 ;
createNode transform -n "lfLegQd1_toe01_3_ikc_ofs1" -p "lfLegQd1_toe01_3_ikc_ofs";
	rename -uid "02B64F05-4343-5B0E-B944-709FDD43EFDD";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "lfLegQd1_toe01_3_ikc" -p "lfLegQd1_toe01_3_ikc_ofs1";
	rename -uid "070EF6B5-49D5-93CB-C177-758FD466B2B4";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe01_3_ikcShape1" -p "lfLegQd1_toe01_3_ikc";
	rename -uid "8CA04F61-48DA-5E63-FA2D-E390D8D5075A";
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
		-1.7198317293356423e-15 0 0
		-1.7198317293356423e-15 0 -0.8557293665898974
		0.098817725911467008 0 -0.8557293665898974
		0.098817725911467008 0 -1.0533648184128355
		-0.09881772591147045 0 -1.0533648184128355
		-0.09881772591147045 0 -0.8557293665898974
		-1.7198317293356423e-15 0 -0.8557293665898974
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegQd1_toe01_3_1_ikj_ikh" -p "lfLegQd1_toe01_3_ikc";
	rename -uid "EAEDCCC0-4766-A6D9-92DD-6787830DF45E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.5626297883771523 -0.63301354941293297 -1.8229884513733339 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000004 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.26268181899045734 -0.31650677628544155 -0.91149422518042456 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_toe02_3_ikc_ofs" -p "lfLegQd1_ball_fkc_ofs1";
	rename -uid "3E214082-4B3B-DA78-8DCD-D7BCA069ECC6";
	setAttr ".t" -type "double3" 0.027432135629815946 1.1489110077537741 -0.059268831590244986 ;
	setAttr ".r" -type "double3" 12.167306374351643 -26.791116494161894 3.5557562939965259 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 0.99999999999999978 ;
createNode transform -n "lfLegQd1_toe02_3_ikc_ofs1" -p "lfLegQd1_toe02_3_ikc_ofs";
	rename -uid "2B4C6C80-43B0-24E9-88C0-678E77F7F502";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd1_toe02_3_ikc" -p "lfLegQd1_toe02_3_ikc_ofs1";
	rename -uid "5D549792-4A48-8716-5420-1BB31829961C";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe02_3_ikcShape1" -p "lfLegQd1_toe02_3_ikc";
	rename -uid "E442274A-446C-EC9F-4C89-02AC8DB7C400";
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
		8.5991586466782116e-16 -4.0049145593173653e-15 -1.4323904935331218e-14
		8.5991586466782116e-16 -4.0049145593173653e-15 -0.85572936658991172
		0.098817725911469589 -4.0049145593173653e-15 -0.85572936658991172
		0.098817725911469589 -4.0049145593173653e-15 -1.0533648184128497
		-0.098817725911467869 -4.0049145593173653e-15 -1.0533648184128497
		-0.098817725911467869 -4.0049145593173653e-15 -0.85572936658991172
		8.5991586466782116e-16 -4.0049145593173653e-15 -0.85572936658991172
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegQd1_toe02_3_1_ikj_ikh" -p "lfLegQd1_toe02_3_ikc";
	rename -uid "A3F2442A-46D7-B728-90E9-6ABADB9B7F12";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.8662743381253115 -0.38727278490013539 -1.910993911497556 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000011 1.0000000000000004 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.22255452150246749 -0.19363639408311181 -0.95549695543486568 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_toe03_3_ikc_ofs" -p "lfLegQd1_ball_fkc_ofs1";
	rename -uid "0C965643-40E9-6AC0-227A-4187A8DF614E";
	setAttr ".t" -type "double3" -0.15672518085887077 -1.1376437205158965 0.077097667465196196 ;
	setAttr ".r" -type "double3" 13.378399613645145 -26.778509649885709 3.9292403576488524 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999967 ;
createNode transform -n "lfLegQd1_toe03_3_ikc_ofs1" -p "lfLegQd1_toe03_3_ikc_ofs";
	rename -uid "A3945BC2-44B9-E264-961F-139C01AC1A91";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000009 ;
createNode transform -n "lfLegQd1_toe03_3_ikc" -p "lfLegQd1_toe03_3_ikc_ofs1";
	rename -uid "84D9BA03-471B-F205-EFF6-F5B261440963";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe03_3_ikcShape1" -p "lfLegQd1_toe03_3_ikc";
	rename -uid "91F0681C-49D9-24AB-0D0E-D18574E2220B";
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
		1.7198317293356423e-15 -3.5527136788005009e-15 -1.1305022012921612e-16
		1.7198317293356423e-15 -3.5527136788005009e-15 -0.85572936658989751
		0.09881772591147045 -3.5527136788005009e-15 -0.85572936658989751
		0.09881772591147045 -3.5527136788005009e-15 -1.0533648184128355
		-0.098817725911467008 -3.5527136788005009e-15 -1.0533648184128355
		-0.098817725911467008 -3.5527136788005009e-15 -0.85572936658989751
		1.7198317293356423e-15 -3.5527136788005009e-15 -0.85572936658989751
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegQd1_toe03_3_1_ikj_ikh" -p "lfLegQd1_toe03_3_ikc";
	rename -uid "5B534F9E-46FA-1183-2FC4-A18C3D1C9C0A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.7955488836422688 -0.435661167123925 -1.9004187101311842 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000011 1.0000000000000004 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.22282732860673116 -0.21783058518654072 -0.95020935471256962 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_toe04_3_ikc_ofs" -p "lfLegQd1_ball_fkc_ofs1";
	rename -uid "2CE50A46-4D4E-41F9-4434-BAA569E83608";
	setAttr ".t" -type "double3" -1.0442356871419669 -2.8280168475803809 2.2397237688722953 ;
	setAttr ".r" -type "double3" 12.252398878461745 -33.824460196663253 1.6170225290780478 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999967 1.0000000000000002 ;
createNode transform -n "lfLegQd1_toe04_3_ikc_ofs1" -p "lfLegQd1_toe04_3_ikc_ofs";
	rename -uid "3F354905-4512-C02D-3E00-58955D886E3A";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999978 ;
createNode transform -n "lfLegQd1_toe04_3_ikc" -p "lfLegQd1_toe04_3_ikc_ofs1";
	rename -uid "1DE0EDF7-443F-A1E3-7425-E689AB619C08";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe04_3_ikcShape1" -p "lfLegQd1_toe04_3_ikc";
	rename -uid "234E1E9D-46A4-B2E1-13D4-42B415F09B15";
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
		2.1497896616695529e-16 0 0
		2.1497896616695529e-16 0 -0.8557293665898974
		0.098817725911468937 0 -0.8557293665898974
		0.098817725911468937 0 -1.0533648184128355
		-0.098817725911468521 0 -1.0533648184128355
		-0.098817725911468521 0 -0.8557293665898974
		2.1497896616695529e-16 0 -0.8557293665898974
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegQd1_toe04_3_1_ikj_ikh" -p "lfLegQd1_toe04_3_ikc";
	rename -uid "D1A1BBAC-489C-C21D-39CF-43941594F5B0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.0556628781092581 -0.35620465596259265 -1.9576566670572078 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000011 1.0000000000000011 1.0000000000000011 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.10086949114146412 -0.17810232961923092 -0.97882833323370166 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_IK" -p "lfLegQd1_ctl_data";
	rename -uid "90729576-48AA-F58B-4F2C-A9A7415A9D62";
	setAttr -cb on ".ro";
createNode joint -n "lfLegQd1_hip_ik" -p "lfLegQd1_IK";
	rename -uid "2F437B0D-4E11-183C-2C69-15BA69D64135";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 176.81212911743961 -29.189704617139078 -77.80020913052401 ;
	setAttr ".radi" 2.2654089487319138;
createNode joint -n "lfLegQd1_upr_ik" -p "lfLegQd1_hip_ik";
	rename -uid "C58B3717-4D0E-BDDB-A043-10A27EF19C2B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 19.589722460236672 -1.2434497875801753e-14 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -2.1845314419920088e-15 -1.3898428017007624e-05 6.3891697677762316e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -176.36206915280172 -61.402027391942383 10.608547169899639 ;
	setAttr ".radi" 2.2654089487319138;
createNode joint -n "lfLegQd1_lwr_ik" -p "lfLegQd1_upr_ik";
	rename -uid "AB35ECB5-4140-4970-9B8A-199576477EAE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 19.895986025125868 5.3290705182007514e-15 1.2434497875801753e-14 ;
	setAttr ".r" -type "double3" 2.3322925456044186e-20 2.3795604121912446e-05 -5.1292018260440903e-20 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -32.572365256841863 0 ;
	setAttr ".radi" 2.2654089487319138;
createNode joint -n "lfLegQd1_palm_ik" -p "lfLegQd1_lwr_ik";
	rename -uid "BC1141D2-49E0-657E-6EF1-1CBBD037DA27";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 27.185365881276539 -2.6645352591003757e-14 0 ;
	setAttr ".r" -type "double3" -1.5249257156396753e-07 1.5342048385289359e-05 1.4931351420300368e-06 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 174.5138215760976 0.34690762756693827 0.55067656956348443 ;
	setAttr ".radi" 2.2654089487319138;
createNode joint -n "lfLegQd1_digit_ik" -p "lfLegQd1_palm_ik";
	rename -uid "09031394-440E-B1AE-BC3E-94B92994B484";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.025702856030225 0.25029452353773873 -1.4625183496183354 ;
	setAttr ".r" -type "double3" 8.1697526469799731e-07 2.6565317432032614e-21 1.8939621229750161e-29 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -13.491889250838117 75.491141985594908 -13.076634911343312 ;
	setAttr ".radi" 2.2654089487319138;
createNode joint -n "lfLegQd1_ball_ik" -p "lfLegQd1_digit_ik";
	rename -uid "FFC8239B-4B52-F71B-DC6B-D18D3483DDE9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.0971831113446555 1.3322676295501878e-14 0 ;
	setAttr ".r" -type "double3" 4.5484840244129019e-07 5.4062501939939569e-22 -1.7300000379581116e-21 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0.11817735967020569 -36.311780755780205 0.30844930893497052 ;
	setAttr ".radi" 2.2654089487319138;
createNode joint -n "lfLegQd1_tip_ik" -p "lfLegQd1_ball_ik";
	rename -uid "7D1AC9FC-4ED5-F116-DF21-479CD60BFA8C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.7362915691876388 4.4408920985006262e-15 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 3.5771691907902086 50.343747700228072 4.642217496155455 ;
	setAttr ".radi" 2.2654089487319138;
createNode ikEffector -n "effector18" -p "lfLegQd1_ball_ik";
	rename -uid "AF434932-4E35-7A60-AFFF-B381BC16F542";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector17" -p "lfLegQd1_digit_ik";
	rename -uid "D3B44446-443D-F857-B9F4-7883A8B551F0";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector16" -p "lfLegQd1_palm_ik";
	rename -uid "55ADE1B6-4085-9E3D-8B40-319500797766";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector15" -p "lfLegQd1_lwr_ik";
	rename -uid "A7C2911F-4B5B-DEE3-F847-CC80F34162B0";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "lfLegQd1_softJ" -p "lfLegQd1_hip_ik";
	rename -uid "76BA1558-463E-613D-81A4-98B2671A848E";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 19.589722460236661 -1.4210854715202004e-14 -2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 89.979129619392154 -42.550184613231039 12.205315048981399 ;
createNode joint -n "lfLegQd1_softJ_end" -p "lfLegQd1_softJ";
	rename -uid "C164AFFE-4C42-8307-44D4-D68B6BAE9FBA";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 45.238327026367188 -2.4868995751603507e-14 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.2722218725854064e-14 7.1562480332929151e-15 1.2125864723079656e-14 ;
createNode ikEffector -n "effector19" -p "lfLegQd1_softJ";
	rename -uid "5CAEF421-4994-B39E-9D35-0EAD6535869A";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegQd1_pvc_SPACE_1_ofs" -p "lfLegQd1_softJ";
	rename -uid "B5C9936A-4FDE-30C5-2656-568396AD9EEE";
	setAttr ".t" -type "double3" 23.563659495108688 27.788614892316613 1.1567664130145765 ;
	setAttr ".r" -type "double3" -0.85230518538062805 87.672552990226521 76.63968880853497 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999944 0.99999999999999978 ;
createNode transform -n "lfLegQd1_pvc_SPACE_1" -p "lfLegQd1_pvc_SPACE_1_ofs";
	rename -uid "51F7FC74-4F8B-F66E-6957-8391B15FCB6B";
	setAttr ".t" -type "double3" 0 7.1054273576010019e-15 -1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "lfLegQd1_ikCstG" -p "lfLegQd1_IK";
	rename -uid "19D511EC-45FA-3D30-8A8C-2AA48C258B5C";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_heelRollG" -p "lfLegQd1_ikCstG";
	rename -uid "FE585536-4705-9458-A18D-DE83A68FAF6E";
	setAttr ".t" -type "double3" 0.90397694971566978 13.905917933200051 -0.58016245404608213 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_heelRollG_ctl" -p "lfLegQd1_heelRollG";
	rename -uid "CA445BDC-4EF4-BEF3-2662-0AB7F41E6459";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_toeRollG" -p "lfLegQd1_heelRollG_ctl";
	rename -uid "45D2B3AD-47F4-0FB3-5AFA-76A0FB118B00";
	setAttr ".t" -type "double3" -2.6645352591003757e-15 9.5684579096705958e-16 -7.8132388181902996 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_toeRollG_ctl" -p "lfLegQd1_toeRollG";
	rename -uid "B8C403A1-4A3D-AED8-C0F6-C69C9AA7E648";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_footRollG" -p "lfLegQd1_toeRollG_ctl";
	rename -uid "47282C0E-41ED-9757-06A3-5B8650D96910";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_outRollG" -p "lfLegQd1_footRollG";
	rename -uid "A98531D2-4675-2194-38F6-B0A83D32F6E2";
	setAttr ".t" -type "double3" 2.1735779586575772 -1.7102258517855679e-16 1.3965053866766297 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_outRollG_ctl" -p "lfLegQd1_outRollG";
	rename -uid "A4354ED5-45C7-B6F9-04C7-0E854604EC36";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_inRollG" -p "lfLegQd1_outRollG_ctl";
	rename -uid "EAAEB872-4FD2-B78D-65A9-7490AFF5BB3D";
	setAttr ".t" -type "double3" -6.7956132775613423 -2.3665827156630354e-30 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_inRollG_ctl" -p "lfLegQd1_inRollG";
	rename -uid "A9C17FF0-4D6E-9C1B-1176-77A13C26611F";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegQd1_ballRollG" -p "lfLegQd1_inRollG_ctl";
	rename -uid "C13F9BAC-40C9-3F51-3A66-8BA47B7286AD";
	setAttr ".t" -type "double3" 3.7000059825264566 -2.8803671038845948 1.5678580202873533 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ballG_ikc" -p "lfLegQd1_ballRollG";
	rename -uid "A7AA83B7-4EAA-F1E0-BE9C-889812133FE8";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfLegQd1_ballG_ikcShape1" -p "lfLegQd1_ballG_ikc";
	rename -uid "AC172D2F-480A-E5FE-2E66-548DD5CCF3D5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 25 0 no 3
		26 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		26
		4.6769981155287902e-17 -6.787551389681683 -4.1287245333866105e-16
		4.5176331302182831e-17 -6.8135777592238593 -0.19768902468483138
		4.0503991458072061e-17 -6.8898828882256264 -0.38190585637259378
		3.3071368449524879e-17 -7.0112667839086908 -0.54009643854386491
		2.3384990577643951e-17 -7.1694572760606983 -0.66148039423977156
		1.2104961186966964e-17 -7.353674137754882 -0.7377854632286962
		-1.4322168272910395e-32 -7.5513631624397135 -0.76381171274518755
		-1.2104961186966964e-17 -7.7490521871245441 -0.7377854632286962
		-2.3384990577643951e-17 -7.9332690488187279 -0.66148039423977156
		-3.3071368449524879e-17 -8.0914595409707353 -0.54009643854386491
		-4.0503991458072061e-17 -8.2128439167565404 -0.38190585637259378
		-4.5176331302182831e-17 -8.2891485656555677 -0.19768902468483138
		-4.6769981155287902e-17 -8.315174935197744 -2.2570016948358736e-16
		-4.5176331302182831e-17 -8.2891485656555677 0.19768902468483138
		-4.0503991458072061e-17 -8.2128439167565404 0.38190585637259378
		-3.3071368449524879e-17 -8.0914595409707353 0.54009643854386491
		-2.3384990577643951e-17 -7.9332690488187279 0.66148039423977156
		-1.2104961186966964e-17 -7.7490521871245441 0.7377854632286962
		3.4991784048564421e-32 -7.5513631624397135 0.76381171274518755
		1.2104961186966964e-17 -7.353674137754882 0.7377854632286962
		2.3384990577643951e-17 -7.1694572760606983 0.66148039423977156
		3.3071368449524879e-17 -7.0112667839086908 0.54009643854386491
		4.0503991458072061e-17 -6.8898828882256264 0.38190585637259378
		4.5176331302182831e-17 -6.8135777592238593 0.19768902468483138
		4.6769981155287902e-17 -6.787551389681683 -4.1287245333866105e-16
		0 0 0
		;
createNode transform -n "lfLegQd1_extraRollG_ofs" -p "lfLegQd1_ballG_ikc";
	rename -uid "1387A115-4290-3970-9D17-29BE0F6CBA9E";
	setAttr ".t" -type "double3" -0.23224213687608231 -0.99984797328523412 3.9665195156540562 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_extraRollG_ofs1" -p "lfLegQd1_extraRollG_ofs";
	rename -uid "3951159A-4950-B488-54C6-0DA9EF992B05";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 0 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -9.4297230797906799 -7.9513867036587939e-16 90.342871299520596 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "lfLegQd1_extraRollG" -p "lfLegQd1_extraRollG_ofs1";
	rename -uid "D641948C-4D17-B28A-B7B6-DA83465EAC6D";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_extra_ikc" -p "lfLegQd1_extraRollG";
	rename -uid "438C3D65-4A68-2620-62CE-CFAED328CC5A";
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
	rename -uid "D5272524-4F03-772A-C1F0-188661029170";
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
		4.5083903037874773 -7.5513631624397126 0
		4.1859289767043251 -5.8174946840506152 0
		3.2037715087116063 -4.3475916537281059 0
		1.7338684783890974 -3.3654341857353876 0
		0 -3.0430785777354519 0
		-1.7338684783890974 -3.3654341857353876 0
		-3.2037715087116063 -4.3475916537281059 0
		-4.1859289767043251 -5.8174946840506152 0
		-4.5083903037874773 -7.5513633760439118 0
		-4.1859289767043251 -9.28523164082881 0
		-3.2037715087116063 -10.755134671151319 0
		-1.7338684783890974 -11.737292139144039 0
		1.8003839050039774e-07 -12.059647747143973 -0.030655513587685118
		1.7338684783890974 -11.737292139144039 0
		3.2037715087116063 -10.755134671151319 0
		4.1859289767043251 -9.28523164082881 0
		4.5083903037874773 -7.5513631624397126 0
		4.1652080363938007 -7.5396314855696733 -1.7252478422890625
		3.1879136462290627 -7.5296856758642408 -3.1878441736886627
		1.7252871093771145 -7.5230401138823169 -4.1651174200367578
		1.8003839050039774e-07 -7.5207064406339335 -4.5082906257947313
		-1.7252871093771145 -7.5230401138823169 -4.1651174200367578
		-3.1879136462290627 -7.5296856758642408 -3.1878441736886627
		-4.1652080363938007 -7.5396314855696733 -1.7252478422890625
		-4.5083903037874773 -7.5513633760439118 0
		-4.1652080363938007 -7.5630952621860841 1.7252418011985931
		-3.1879136462290627 -7.5730410718915175 3.1878411531434274
		-1.7252871093771145 -7.5796866338734405 4.1651113789462881
		1.8003839050039774e-07 -7.5820201863000154 4.5082845847042607
		1.7252871093771145 -7.5796866338734405 4.1651113789462881
		3.1879136462290627 -7.5730410718915175 3.1878411531434274
		4.1652080363938007 -7.5630952621860841 1.7252418011985931
		4.5083903037874773 -7.5513631624397126 0
		4.1652080363938007 -7.5396314855696733 -1.7252478422890625
		3.1879136462290627 -7.5296856758642408 -3.1878441736886627
		1.7252871093771145 -7.5230401138823169 -4.1651174200367578
		1.8003839050039774e-07 -7.5207064406339335 -4.5082906257947313
		1.8003839050039774e-07 -5.7977946880294429 -4.1533826017996738
		1.8003839050039774e-07 -4.341846576691573 -3.1661657205387148
		1.8003839050039774e-07 -3.3745199858015766 -1.6969241896226201
		0 -3.0430785777354519 0
		1.8003839050039774e-07 -3.3979835811852732 1.7535684744102702
		1.8003839050039774e-07 -4.3852004624462335 3.2095135652029061
		1.8003839050039774e-07 -5.8544389728170927 4.176843176638136
		1.8003839050039774e-07 -7.5820201863000154 4.5082845847042607
		1.8003839050039774e-07 -9.3049316368499824 4.153376560709205
		1.8003839050039774e-07 -10.760879748187852 3.1661596794482456
		1.8003839050039774e-07 -11.728206339077849 1.6969181485321505
		1.8003839050039774e-07 -12.059647747143973 -0.030655513587685118
		1.8003839050039774e-07 -11.704742743694151 -1.7535745155007398
		1.8003839050039774e-07 -10.717525862433192 -3.2095196062933748
		1.8003839050039774e-07 -9.2482873520623325 -4.1768492177286065
		1.8003839050039774e-07 -7.5207064406339335 -4.5082906257947313
		;
createNode transform -n "lfLegQd1_extraRollG_ofs2" -p "lfLegQd1_extra_ikc";
	rename -uid "53F49336-4670-4DA9-ED5C-0ABE0FEF497E";
	setAttr ".t" -type "double3" 0 -4.4408920985006262e-16 0 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegQd1_X_ikh" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "DF47D0CA-475A-77B9-9DDA-ECABCE2576F7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.6645352591003757e-15 4.8849813083506888e-15 3.5527136788005009e-14 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999929 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 4.9303806576313238e-32 1.2246467991473535e-16 -0.99999999999999989 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_dist_loc1" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "7C279136-4F6D-122A-3B6B-ABB1895F7AA6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.2502945235377263 -10.025702856030225 1.4625183496183638 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
createNode locator -n "lfLegQd1_dist_loc1Shape" -p "lfLegQd1_dist_loc1";
	rename -uid "ACC354EC-4940-ED2E-5088-EAA6B99FCEF1";
	setAttr -k off ".v";
createNode transform -n "lfLegQd1_softJ_posGrp" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "A6E02A06-438B-A6B8-D3C2-509D0248F8B3";
	setAttr ".t" -type "double3" 0.25029452353772719 -10.025702856030211 1.4625183496183638 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
createNode transform -n "lfLegQd1_1_ikh_ofs" -p "lfLegQd1_extraRollG_ofs2";
	rename -uid "8E8B22DE-4672-B070-C617-738CA79AFD38";
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
createNode ikHandle -n "lfLegQd1_1_ikh" -p "lfLegQd1_1_ikh_ofs";
	rename -uid "212E53AF-48DF-17B6-4518-45945324C3F5";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_toe_wiggle_grp" -p "lfLegQd1_inRollG_ctl";
	rename -uid "3B6A3D99-40A4-6A36-A357-2E84ABCFF15C";
	setAttr ".t" -type "double3" 3.7000059825264566 -2.8803671038845948 1.5678580202873533 ;
	setAttr ".r" -type "double3" 176.1619006149416 39.500623875667507 87.556460576237157 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
createNode ikHandle -n "lfLegQd1_2_ikh" -p "lfLegQd1_toe_wiggle_grp";
	rename -uid "36DA2974-4EAD-6545-D2F0-FDA3623B3670";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.0658141036401503e-14 3.5527136788005009e-15 -2.1316282072803006e-14 ;
	setAttr ".r" -type "double3" 179.62667485884927 -36.310291538778387 0.46962295003762677 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 0.99999999999999967 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.6360866222167133 -0.051650067022769593 0.76988705640079147 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_2_ofs" -p "lfLegQd1_toe_wiggle_grp";
	rename -uid "2BD4734B-48E1-6C49-1647-14B492D7BF18";
	setAttr ".t" -type "double3" -3.1974423109204508e-14 0 -9.9475983006414026e-14 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1 1 ;
createNode transform -n "lfLegQd1_ball_fkc_SPACE_2" -p "lfLegQd1_ball_fkc_SPACE_2_ofs";
	rename -uid "8696162E-487D-B16E-07EA-21A916E6B65F";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode nurbsCurve -n "lfLegQd1_inRollG_ctlShape1" -p "lfLegQd1_inRollG_ctl";
	rename -uid "F8F54E30-4AE8-9DCC-54B1-DD8615EB2913";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.46724059567595722
		-0.46724059567595722 0 0
		0 0 -0.46724059567595722
		0.46724059567595722 0 0
		0 0 0.46724059567595722
		0 0.46724059567595722 0
		0.46724059567595722 0 0
		0 0 -0.46724059567595722
		0 0.46724059567595722 0
		-0.46724059567595722 0 0
		0 -0.46724059567595722 0
		0.46724059567595722 0 0
		0 0 0.46724059567595722
		0 -0.46724059567595722 0
		0 0 -0.46724059567595722
		;
createNode nurbsCurve -n "lfLegQd1_outRollG_ctlShape1" -p "lfLegQd1_outRollG_ctl";
	rename -uid "5651814A-42DC-91D7-17B4-289F6043622A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.46724059567595722
		-0.46724059567595722 0 0
		0 0 -0.46724059567595722
		0.46724059567595722 0 0
		0 0 0.46724059567595722
		0 0.46724059567595722 0
		0.46724059567595722 0 0
		0 0 -0.46724059567595722
		0 0.46724059567595722 0
		-0.46724059567595722 0 0
		0 -0.46724059567595722 0
		0.46724059567595722 0 0
		0 0 0.46724059567595722
		0 -0.46724059567595722 0
		0 0 -0.46724059567595722
		;
createNode nurbsCurve -n "lfLegQd1_toeRollG_ctlShape1" -p "lfLegQd1_toeRollG_ctl";
	rename -uid "E80554AD-498E-6402-A163-03856E9A62B0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.46724059567595722
		-0.46724059567595722 0 0
		0 0 -0.46724059567595722
		0.46724059567595722 0 0
		0 0 0.46724059567595722
		0 0.46724059567595722 0
		0.46724059567595722 0 0
		0 0 -0.46724059567595722
		0 0.46724059567595722 0
		-0.46724059567595722 0 0
		0 -0.46724059567595722 0
		0.46724059567595722 0 0
		0 0 0.46724059567595722
		0 -0.46724059567595722 0
		0 0 -0.46724059567595722
		;
createNode nurbsCurve -n "lfLegQd1_heelRollG_ctlShape1" -p "lfLegQd1_heelRollG_ctl";
	rename -uid "AC8BEF32-481A-F25F-4790-EC8B716A2430";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.46724059567595722
		-0.46724059567595722 0 0
		0 0 -0.46724059567595722
		0.46724059567595722 0 0
		0 0 0.46724059567595722
		0 0.46724059567595722 0
		0.46724059567595722 0 0
		0 0 -0.46724059567595722
		0 0.46724059567595722 0
		-0.46724059567595722 0 0
		0 -0.46724059567595722 0
		0.46724059567595722 0 0
		0 0 0.46724059567595722
		0 -0.46724059567595722 0
		0 0 -0.46724059567595722
		;
createNode transform -n "lfLegQd1_line_30" -p "lfLegQd1_IK";
	rename -uid "BDBA6070-4788-D7F9-F6B3-E982F8D3D0CA";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape2" -p "lfLegQd1_line_30";
	rename -uid "C11FD755-4F67-810E-13F2-F387779F4805";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		7.0824493695881934 41.089527373709842 34.744818173124195
		9.1798497785790971 41.415276495648484 12.953339738975863
		;
createNode transform -n "lfLegQd1_ikc_ofs" -p "lfLegQd1_IK";
	rename -uid "52CC23EA-4C3C-B142-3A5A-549169AD4B38";
	setAttr ".t" -type "double3" 6.5563385888811982 3.8802150771698276 36.346188987633255 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_ikc_ofs1" -p "lfLegQd1_ikc_ofs";
	rename -uid "EBDF1806-4994-2E70-146B-67BA38333A8E";
createNode transform -n "lfLegQd1_ikc" -p "lfLegQd1_ikc_ofs1";
	rename -uid "6D8F4828-4A0A-E5AE-3DB6-26B0AAB2DCDB";
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
	rename -uid "345FCCA7-47BB-6483-B505-AF9DEEE05A79";
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
		5.6635223718297798 -3.8802150771698263 5.6635223718297851
		5.5546993775250391 -3.8802150771698263 6.7684207750956036
		5.2324124012533106 -3.8802150771698263 7.8308585523580794
		4.7090467507720986 -3.8802150771698263 8.810006815658987
		4.004715074522557 -3.8802150771698267 9.6682374463523413
		3.146484443829201 -3.8802150771698267 10.372569122601885
		2.1673361805282938 -3.8802150771698267 10.895934773083097
		1.1048984032658178 -3.8802150771698267 11.218221749354827
		-6.6117937411229348e-16 -3.8802150771698267 11.327044743659565
		-1.1048984032658191 -3.8802150771698267 11.218221749354827
		-2.1673361805282956 -3.8802150771698267 10.895934773083097
		-3.1464844438292028 -3.8802150771698267 10.372569122601885
		-4.0047150745225597 -3.8802150771698267 9.6682374463523431
		-4.7090467507721012 -3.8802150771698263 8.810006815658987
		-5.2324124012533133 -3.8802150771698263 7.8308585523580794
		-5.5546993775250426 -3.8802150771698263 6.7684207750956027
		-5.6635223718297834 -3.8802150771698263 5.6635223718297834
		-5.554699344123768 -2.1842120731466377 5.6635223718297842
		-5.232412375962106 -0.53277279607740757 5.6635223718297842
		-4.7090468577703293 0.89727264446779964 5.6635223718297842
		-4.004715073499229 2.035185409306862 5.6635223718297842
		-3.1464843754572551 2.8920710481945551 5.6635223718297842
		-2.1673361115249854 3.4154365663863318 5.6635223718297842
		-1.1048983789693478 3.7377235345479938 5.6635223718297842
		3.4679072736913264e-16 3.8465465622540091 5.6635223718297842
		1.1048983789693478 3.7377235345479938 5.6635223718297842
		2.1673361115249854 3.4154365663863318 5.6635223718297842
		3.1464843754572551 2.8920710481945551 5.6635223718297842
		4.004715073499229 2.035185409306862 5.6635223718297842
		4.7090468577703293 0.89727264446779964 5.6635223718297842
		5.232412375962106 -0.53277279607740757 5.6635223718297842
		5.554699344123768 -2.1842120731466377 5.6635223718297842
		5.6635223718297842 -3.8802150771698263 5.6635223718297842
		5.6635223718297842 -3.8802150771698276 -5.3237110295199965
		5.6635223718297842 -3.540403734860039 -5.6635223718297842
		5.554699344123768 -2.1842120731466377 -5.6635223718297842
		5.232412375962106 -0.53277279607740757 -5.6635223718297842
		4.7090468577703293 0.89727264446779964 -5.6635223718297842
		4.004715073499229 2.035185409306862 -5.6635223718297842
		3.1464843754572551 2.8920710481945551 -5.6635223718297842
		2.1673361115249854 3.4154365663863318 -5.6635223718297842
		1.1048983789693478 3.7377235345479938 -5.6635223718297842
		3.4679072736913264e-16 3.8465465622540091 -5.6635223718297842
		-1.1048983789693478 3.7377235345479938 -5.6635223718297842
		-2.1673361115249854 3.4154365663863318 -5.6635223718297842
		-3.1464843754572551 2.8920710481945551 -5.6635223718297842
		-4.004715073499229 2.035185409306862 -5.6635223718297842
		-4.7090468577703293 0.89727264446779964 -5.6635223718297842
		-5.232412375962106 -0.53277279607740757 -5.6635223718297842
		-5.554699344123768 -2.1842120731466377 -5.6635223718297842
		-5.6635223718297842 -3.540403734860039 -5.6635223718297842
		-5.6635223718297842 -3.8802150771698258 -5.3237110295199965
		-5.6635223718297842 -3.8802150771698263 5.6635223718297842
		;
createNode transform -n "lfLegQd1_ikc_gmb" -p "lfLegQd1_ikc";
	rename -uid "B116FF7B-4B7B-5269-DA1A-BEB9C8CC64F3";
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
	rename -uid "1EF70648-45B1-B3CE-E912-8C9235535484";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".tw" yes;
	setAttr -s 53 ".cp[0:52]" -type "double3" -1.1327044743659558 0.77267616362732472 
		-0.56635225001598144 -1.1109398755050073 0.77267616362732472 -0.78733193066914442 
		-1.0464824802506616 0.77267616362732472 -0.99981948612164029 -0.94180935015441936 
		0.77267616362732472 -1.1956491387818211 -0.80094301490451114 0.77267616362732472 
		-1.367295264920493 -0.62929688876584011 0.77267616362732472 -1.5081616001704017 -0.43346723610565863 
		0.77267616362732472 -1.612834730266643 -0.22097968065316353 0.77267616362732472 -1.6772921255209905 
		1.3223587482245868e-16 0.77267616362732472 -1.6990567243819381 0.22097968065316376 
		0.77267616362732472 -1.6772921255209905 0.43346723610565907 0.77267616362732472 -1.612834730266643 
		0.62929688876584056 0.77267616362732472 -1.5081616001704017 0.80094301490451159 0.77267616362732472 
		-1.367295264920493 0.94180935015442024 0.77267616362732472 -1.1956491387818211 1.0464824802506625 
		0.77267616362732472 -0.99981948612164029 1.1109398755050082 0.77267616362732472 -0.78733193066914531 
		1.1327044743659567 0.77267616362732472 -0.56635225001598144 1.1109398688247536 0.43347556282268696 
		-0.56635225001598055 1.0464824751924207 0.10318770740884087 -0.56635225001598055 
		0.94180937155406586 -0.18282138070020049 -0.56635225001598055 0.80094301469984552 
		-0.41040393366801275 -0.56635225001598055 0.62929687509145094 -0.58178106144555164 
		-0.56635225001598055 0.4334672223049969 -0.68645416508390689 -0.56635225001598055 
		0.22097967579386957 -0.75091155871623894 -0.56635225001598055 -6.9358145473826488e-17 
		-0.77267616425744201 -0.56635225001598055 -0.22097967579386957 -0.75091155871623894 
		-0.56635225001598055 -0.4334672223049969 -0.68645416508390689 -0.56635225001598055 
		-0.62929687509145094 -0.58178106144555164 -0.56635225001598055 -0.80094301469984552 
		-0.41040393366801275 -0.56635225001598055 -0.94180937155406586 -0.18282138070020049 
		-0.56635225001598055 -1.0464824751924207 0.10318770740884087 -0.56635225001598055 
		-1.1109398688247536 0.43347556282268696 -0.56635225001598055 -1.1327044743659567 
		0.77267616362732472 -0.56635225001598055 -1.1327044743659567 0.77267616362732472 
		1.6310944302539752 -1.1327044743659567 0.70471389516536709 1.6990566987159323 -1.1109398688247536 
		0.43347556282268696 1.6990566987159323 -1.0464824751924207 0.10318770740884087 1.6990566987159323 
		-0.94180937155406586 -0.18282138070020049 1.6990566987159323 -0.80094301469984552 
		-0.41040393366801275 1.6990566987159323 -0.62929687509145094 -0.58178106144555164 
		1.6990566987159323 -0.4334672223049969 -0.68645416508390689 1.6990566987159323 -0.22097967579386957 
		-0.75091155871623894 1.6990566987159323 -6.9358145473826488e-17 -0.77267616425744201 
		1.6990566987159323 0.22097967579386957 -0.75091155871623894 1.6990566987159323 0.4334672223049969 
		-0.68645416508390689 1.6990566987159323 0.62929687509145094 -0.58178106144555164 
		1.6990566987159323 0.80094301469984552 -0.41040393366801275 1.6990566987159323 0.94180937155406586 
		-0.18282138070020049 1.6990566987159323 1.0464824751924207 0.10318770740884087 1.6990566987159323 
		1.1109398688247536 0.43347556282268696 1.6990566987159323 1.1327044743659567 0.70471389516536709 
		1.6990566987159323 1.1327044743659567 0.77267616362732428 1.6310944302539752 1.1327044743659567 
		0.77267616362732472 -0.56635225001598055;
createNode nurbsCurve -n "lfLegQd1_ikc_gmbShapeOrig" -p "lfLegQd1_ikc_gmb";
	rename -uid "12B83D25-4703-B4BE-938B-A2AAE1198B55";
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
		5.6635223718297798 -3.8802150771698263 5.6635223718297851
		5.5546993775250391 -3.8802150771698263 6.7684207750956036
		5.2324124012533106 -3.8802150771698263 7.8308585523580794
		4.7090467507720986 -3.8802150771698263 8.810006815658987
		4.004715074522557 -3.8802150771698267 9.6682374463523413
		3.146484443829201 -3.8802150771698267 10.372569122601885
		2.1673361805282938 -3.8802150771698267 10.895934773083097
		1.1048984032658178 -3.8802150771698267 11.218221749354827
		-6.6117937411229348e-16 -3.8802150771698267 11.327044743659565
		-1.1048984032658191 -3.8802150771698267 11.218221749354827
		-2.1673361805282956 -3.8802150771698267 10.895934773083097
		-3.1464844438292028 -3.8802150771698267 10.372569122601885
		-4.0047150745225597 -3.8802150771698267 9.6682374463523431
		-4.7090467507721012 -3.8802150771698263 8.810006815658987
		-5.2324124012533133 -3.8802150771698263 7.8308585523580794
		-5.5546993775250426 -3.8802150771698263 6.7684207750956027
		-5.6635223718297834 -3.8802150771698263 5.6635223718297834
		-5.554699344123768 -2.1842120731466377 5.6635223718297842
		-5.232412375962106 -0.53277279607740757 5.6635223718297842
		-4.7090468577703293 0.89727264446779964 5.6635223718297842
		-4.004715073499229 2.035185409306862 5.6635223718297842
		-3.1464843754572551 2.8920710481945551 5.6635223718297842
		-2.1673361115249854 3.4154365663863318 5.6635223718297842
		-1.1048983789693478 3.7377235345479938 5.6635223718297842
		3.4679072736913264e-16 3.8465465622540091 5.6635223718297842
		1.1048983789693478 3.7377235345479938 5.6635223718297842
		2.1673361115249854 3.4154365663863318 5.6635223718297842
		3.1464843754572551 2.8920710481945551 5.6635223718297842
		4.004715073499229 2.035185409306862 5.6635223718297842
		4.7090468577703293 0.89727264446779964 5.6635223718297842
		5.232412375962106 -0.53277279607740757 5.6635223718297842
		5.554699344123768 -2.1842120731466377 5.6635223718297842
		5.6635223718297842 -3.8802150771698263 5.6635223718297842
		5.6635223718297842 -3.8802150771698276 -5.3237110295199965
		5.6635223718297842 -3.540403734860039 -5.6635223718297842
		5.554699344123768 -2.1842120731466377 -5.6635223718297842
		5.232412375962106 -0.53277279607740757 -5.6635223718297842
		4.7090468577703293 0.89727264446779964 -5.6635223718297842
		4.004715073499229 2.035185409306862 -5.6635223718297842
		3.1464843754572551 2.8920710481945551 -5.6635223718297842
		2.1673361115249854 3.4154365663863318 -5.6635223718297842
		1.1048983789693478 3.7377235345479938 -5.6635223718297842
		3.4679072736913264e-16 3.8465465622540091 -5.6635223718297842
		-1.1048983789693478 3.7377235345479938 -5.6635223718297842
		-2.1673361115249854 3.4154365663863318 -5.6635223718297842
		-3.1464843754572551 2.8920710481945551 -5.6635223718297842
		-4.004715073499229 2.035185409306862 -5.6635223718297842
		-4.7090468577703293 0.89727264446779964 -5.6635223718297842
		-5.232412375962106 -0.53277279607740757 -5.6635223718297842
		-5.554699344123768 -2.1842120731466377 -5.6635223718297842
		-5.6635223718297842 -3.540403734860039 -5.6635223718297842
		-5.6635223718297842 -3.8802150771698258 -5.3237110295199965
		-5.6635223718297842 -3.8802150771698263 5.6635223718297842
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode transform -n "lfLegQd1_smart_ctl_ofs" -p "lfLegQd1_ikc_gmb";
	rename -uid "4F2A219E-4B37-26FF-88FE-65ABC37C2551";
	setAttr ".t" -type "double3" 1.1542714732533907 -3.8802150771698276 6.9308829226180464 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_smart_ctl" -p "lfLegQd1_smart_ctl_ofs";
	rename -uid "95EBBCD8-4128-374C-C331-DAAAE8C83C10";
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
	rename -uid "413FBC04-4A25-1494-2E17-68947948F427";
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
		2.6057771589041545 5.3483634429010047e-17 -2.6057771589041576
		1.4427289453730569e-16 7.5637281174510699e-17 -2.3561551728670498
		-2.6057771589041545 5.3483634429010016e-17 -2.6057771589041558
		-2.3561551728670564 -3.0870043176694884e-32 -9.1488866378072693e-16
		-2.6057771589041545 -5.3483634429010035e-17 2.6057771589041545
		-2.3601767511440126e-16 -7.5637281174510773e-17 2.356155172867052
		2.6057771589041545 -5.3483634429010016e-17 2.6057771589041558
		2.3561551728670564 -4.5105722517245685e-32 -4.7143711453574042e-16
		2.6057771589041545 5.3483634429010047e-17 -2.6057771589041576
		1.4427289453730569e-16 7.5637281174510699e-17 -2.3561551728670498
		-2.6057771589041545 5.3483634429010016e-17 -2.6057771589041558
		;
createNode ikHandle -n "lfLegQd1_autoAimJ_ikh" -p "lfLegQd1_ikc";
	rename -uid "C9498B0D-4A8D-C36F-5582-559D16B1560A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -5.3290705182007514e-15 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode joint -n "lfLegQd1_legLock" -p "lfLegQd1_ikc";
	rename -uid "E79894DA-4900-A4BC-71B9-50B21FD607BF";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" -2.5444437451708134e-14 -3.8267216285808953e-30 -2.5511477523872626e-30 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 171.65759651693469 0.46807901616305647 93.188693568688961 ;
	setAttr ".radi" 1.5102726324879425;
createNode joint -n "lfLegQd1_legLock_end" -p "lfLegQd1_legLock";
	rename -uid "B23BEF65-4C26-65CB-0932-D686FDC53E15";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 70.867554338612877 1.0658141036401503e-14 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 1.5102726324879425;
createNode ikEffector -n "effector21" -p "lfLegQd1_legLock";
	rename -uid "C877336E-40A8-2250-7919-2EB4D6E3FD4F";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegQd1_pvc_ofs" -p "lfLegQd1_IK";
	rename -uid "02C51DE8-4101-4175-3E84-60838BBD47CC";
	setAttr ".t" -type "double3" 9.1798497785790971 41.415276495648477 12.953339738975863 ;
	setAttr ".r" -type "double3" -0.85247525403109403 174.5022934839636 -6.9171491990029567e-06 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_pvc_ofs1" -p "lfLegQd1_pvc_ofs";
	rename -uid "24889503-48E9-7798-6746-5EA90A486C56";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd1_pvc" -p "lfLegQd1_pvc_ofs1";
	rename -uid "9B8ECF61-4DF5-8AED-74E4-55A825527ED9";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 2.1316282072803006e-14 1.5987211554602254e-14 ;
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
createNode nurbsCurve -n "lfLegQd1_pvcShape1" -p "lfLegQd1_pvc";
	rename -uid "1D6D4417-401B-B62F-DA90-74843A0ECC77";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.8689623827038289
		-1.8689623827038289 0 0
		0 0 -1.8689623827038289
		1.8689623827038289 0 0
		0 0 1.8689623827038289
		0 1.8689623827038289 0
		1.8689623827038289 0 0
		0 0 -1.8689623827038289
		0 1.8689623827038289 0
		-1.8689623827038289 0 0
		0 -1.8689623827038289 0
		1.8689623827038289 0 0
		0 0 1.8689623827038289
		0 -1.8689623827038289 0
		0 0 -1.8689623827038289
		;
createNode transform -n "lfLegQd1_extraRollG_ofs_loc" -p "lfLegQd1_IK";
	rename -uid "A73A80F5-4A3A-FE49-D660-15A44B1185A8";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 6.4847072250353408 32.11253499246429 -87.095446651554582 ;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd1_extraRollG_ofs_locShape" -p "lfLegQd1_extraRollG_ofs_loc";
	rename -uid "865FCCB1-417D-EEBB-A9E2-D1963ADA8D82";
	setAttr -k off ".v";
createNode transform -n "lfLegQd1_setting" -p "lfLegQd1_ctl_data";
	rename -uid "19AE1B75-4CEB-060A-A431-BEA8419A4AF4";
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
	rename -uid "875C0D6F-4974-9C94-A34C-B4B539D8D617";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-3.7756815812198563 3.7756815812198563 9.3995522133125917e-17
		-3.7031328960825123 3.7756815812198563 -0.73659891931289856
		-3.4882749173080705 3.7756815812198563 -1.4448908310359205
		-3.1393645718468863 3.7756815812198563 -2.0976562503048366
		-2.6698100489994858 3.7756815812198563 -2.6698100489994858
		-2.0976562503048366 3.7756815812198563 -3.1393645718468863
		-1.4448908310359205 3.7756815812198563 -3.4882749173080705
		-0.73659891931289856 3.7756815812198568 -3.7031328960825123
		2.3119381824608839e-16 3.7756815812198568 -3.7756815812198563
		0.73659891931289856 3.7756815812198568 -3.7031328960825123
		1.4448908310359205 3.7756815812198563 -3.4882749173080705
		2.0976562503048366 3.7756815812198563 -3.1393645718468863
		2.6698100489994858 3.7756815812198563 -2.6698100489994858
		3.1393645718468863 3.7756815812198563 -2.0976562503048366
		3.4882749173080705 3.7756815812198563 -1.4448908310359205
		3.7031328960825123 3.7756815812198563 -0.73659891931289856
		3.7756815812198563 3.7756815812198563 -4.0838414902908926e-16
		3.631978429302491 3.7756815812198563 -0.72244537050832847
		3.2227458151096711 3.7756815812198563 -1.3349050244997429
		2.6102860710989928 3.7756815812198563 -1.7441374586540352
		1.8878407906099282 3.7756815812198563 -1.8878407906099282
		1.1653954201015997 3.7756815812198563 -1.7441374586540352
		0.55293576611018525 3.7756815812198563 -1.3349050244997429
		0.14370333195589285 3.7756815812198563 -0.72244537050832847
		0 3.7756815812198563 -4.0838414902908926e-16
		-0.14370333195589285 3.7756815812198563 0.72244537050832847
		-0.55293576611018525 3.7756815812198563 1.3349050244997429
		-1.1653954201015997 3.7756815812198563 1.7441374586540352
		-1.8878407906099282 3.7756815812198563 1.8878407906099282
		-2.6102860710989928 3.7756815812198563 1.7441374586540352
		-3.2227458151096711 3.7756815812198563 1.3349050244997429
		-3.631978429302491 3.7756815812198563 0.72244537050832847
		-3.7756815812198563 3.7756815812198563 9.3995522133125917e-17
		-3.7031328960825123 3.7756815812198563 0.73659891931289856
		-3.4882749173080705 3.7756815812198563 1.4448908310359205
		-3.1393645718468863 3.7756815812198563 2.0976562503048366
		-2.6698100489994858 3.7756815812198563 2.6698100489994858
		-2.0976562503048366 3.7756815812198563 3.1393645718468863
		-1.4448908310359205 3.7756815812198563 3.4882749173080705
		-0.73659891931289856 3.7756815812198559 3.7031328960825123
		-4.4078624950225854e-16 3.7756815812198559 3.7756815812198563
		0.73659891931289856 3.7756815812198559 3.7031328960825123
		1.4448908310359205 3.7756815812198563 3.4882749173080705
		2.0976562503048366 3.7756815812198563 3.1393645718468863
		2.6698100489994858 3.7756815812198563 2.6698100489994858
		3.1393645718468863 3.7756815812198563 2.0976562503048366
		3.4882749173080705 3.7756815812198563 1.4448908310359205
		3.7031328960825123 3.7756815812198563 0.73659891931289856
		3.7756815812198563 3.7756815812198563 -4.0838414902908926e-16
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd1_toe01_4_ctl_ofs" -p "lfLegQd1_ctl_data";
	rename -uid "460DDD43-440F-ABE5-ABD3-F68C7CA9BF65";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_toe01_4_ctl" -p "lfLegQd1_toe01_4_ctl_ofs";
	rename -uid "81455E52-47FF-32F9-C0E9-05AC63F1F34C";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe01_4_ctlShape1" -p "lfLegQd1_toe01_4_ctl";
	rename -uid "2E2E7DF6-405B-37A3-1BC7-B6AF7C63C4BC";
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
		6.7612658663203213e-18 -0.32941576143485563 -0.32941576143485601
		9.5618738869604835e-18 -1.8238614628276149e-17 -0.29785918096506792
		6.7612658663203167e-18 0.32941576143485563 -0.32941576143485579
		-3.9025128237958635e-33 0.29785918096506875 -1.1565791218086698e-16
		-6.761265866320319e-18 0.32941576143485563 0.32941576143485563
		-9.5618738869604927e-18 2.9836757872492576e-17 0.29785918096506819
		-6.7612658663203167e-18 -0.32941576143485563 0.32941576143485579
		-5.7021514204754472e-33 -0.29785918096506875 -5.9597888300913746e-17
		6.7612658663203213e-18 -0.32941576143485563 -0.32941576143485601
		9.5618738869604835e-18 -1.8238614628276149e-17 -0.29785918096506792
		6.7612658663203167e-18 0.32941576143485563 -0.32941576143485579
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd1_toe02_4_ctl_ofs" -p "lfLegQd1_ctl_data";
	rename -uid "142481A5-4B25-3CA9-0B0F-2BAA2BEECBE8";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_toe02_4_ctl" -p "lfLegQd1_toe02_4_ctl_ofs";
	rename -uid "98A58653-4213-D03C-7569-928CC1718FB4";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe02_4_ctlShape1" -p "lfLegQd1_toe02_4_ctl";
	rename -uid "8D3A8750-4AAC-AB48-CDD5-FCB7038254F5";
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
		6.7612658663203213e-18 -0.32941576143485563 -0.32941576143485601
		9.5618738869604835e-18 -1.8238614628276149e-17 -0.29785918096506792
		6.7612658663203167e-18 0.32941576143485563 -0.32941576143485579
		-3.9025128237958635e-33 0.29785918096506875 -1.1565791218086698e-16
		-6.761265866320319e-18 0.32941576143485563 0.32941576143485563
		-9.5618738869604927e-18 2.9836757872492576e-17 0.29785918096506819
		-6.7612658663203167e-18 -0.32941576143485563 0.32941576143485579
		-5.7021514204754472e-33 -0.29785918096506875 -5.9597888300913746e-17
		6.7612658663203213e-18 -0.32941576143485563 -0.32941576143485601
		9.5618738869604835e-18 -1.8238614628276149e-17 -0.29785918096506792
		6.7612658663203167e-18 0.32941576143485563 -0.32941576143485579
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd1_toe03_4_ctl_ofs" -p "lfLegQd1_ctl_data";
	rename -uid "7B79E048-442A-0062-F654-2080D4A8907E";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_toe03_4_ctl" -p "lfLegQd1_toe03_4_ctl_ofs";
	rename -uid "67A65399-4984-501D-C981-1D824D63B9B8";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe03_4_ctlShape1" -p "lfLegQd1_toe03_4_ctl";
	rename -uid "F91D0F3D-4D75-5760-96E1-509FC548FC5E";
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
		-7.0986660917346812e-15 -0.32941576143485585 -0.3294157614348559
		-7.0958654837140407e-15 -2.443390548867084e-16 -0.2978591809650678
		-7.0986660917346812e-15 0.3294157614348554 -0.32941576143485568
		-7.1054273576010019e-15 0.29785918096506853 -8.1684290973893378e-18
		-7.1121886234673225e-15 0.3294157614348554 0.32941576143485574
		-7.1149892314879623e-15 -1.9626368238593967e-16 0.2978591809650683
		-7.1121886234673225e-15 -0.32941576143485585 0.3294157614348559
		-7.1054273576010019e-15 -0.29785918096506897 4.7891594782563899e-17
		-7.0986660917346812e-15 -0.32941576143485585 -0.3294157614348559
		-7.0958654837140407e-15 -2.443390548867084e-16 -0.2978591809650678
		-7.0986660917346812e-15 0.3294157614348554 -0.32941576143485568
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd1_toe04_4_ctl_ofs" -p "lfLegQd1_ctl_data";
	rename -uid "CFD740F5-4C49-1E04-8022-F0B22A989D69";
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd1_toe04_4_ctl" -p "lfLegQd1_toe04_4_ctl_ofs";
	rename -uid "5E741BC1-48E1-0BF0-B768-14BE190D6571";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegQd1_toe04_4_ctlShape1" -p "lfLegQd1_toe04_4_ctl";
	rename -uid "C2E3C60C-4817-65C7-8FBD-D7B81FC18138";
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
		6.7612658663203213e-18 -0.32941576143485563 -0.32941576143485596
		9.5618738869604835e-18 -1.8238614628276149e-17 -0.29785918096506786
		6.7612658663203167e-18 0.32941576143485563 -0.32941576143485574
		-3.9025128237958635e-33 0.29785918096506875 -6.1913170639128154e-17
		-6.761265866320319e-18 0.32941576143485563 0.32941576143485568
		-9.5618738869604927e-18 2.9836757872492576e-17 0.29785918096506825
		-6.7612658663203167e-18 -0.32941576143485563 0.32941576143485585
		-5.7021514204754472e-33 -0.29785918096506875 -5.8531467591749238e-18
		6.7612658663203213e-18 -0.32941576143485563 -0.32941576143485596
		9.5618738869604835e-18 -1.8238614628276149e-17 -0.29785918096506786
		6.7612658663203167e-18 0.32941576143485563 -0.32941576143485574
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegQd1_anchorF1" -p "master_ctl";
	rename -uid "093AA41B-4299-1808-233A-878C2FF98101";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "lfLegQd1_anchorF1Shape" -p "lfLegQd1_anchorF1";
	rename -uid "CEE8B6F8-4C74-3F76-FD52-37A0263F6909";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 3.8184969693606772 3.8184969693606772 3.8184969693606772 ;
createNode transform -n "neckQd0_ctl_data" -p "master_ctl";
	rename -uid "5C7C02D9-4668-0A57-8C4F-64946F7F8D96";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_IK" -p "neckQd0_ctl_data";
	rename -uid "9659636D-4ECC-11AF-671E-D5B7663268F1";
	setAttr ".t" -type "double3" 1.349423719466947e-14 68.985476835742531 45.846497140117599 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_cog_ctl_ofs" -p "neckQd0_IK";
	rename -uid "82695941-40DA-EBAE-D4FA-FFAE657BF775";
	setAttr ".r" -type "double3" -27.654316899160339 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_cog_ctl_ofs1" -p "neckQd0_cog_ctl_ofs";
	rename -uid "FECCD6F4-4710-C75B-8CAE-1F86A93E7E17";
	setAttr ".t" -type "double3" -3.1554436208840472e-30 0 0 ;
createNode transform -n "neckQd0_cog_ctl" -p "neckQd0_cog_ctl_ofs1";
	rename -uid "3186DCBB-4174-5678-2302-7D8652CF1833";
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
createNode nurbsCurve -n "neckQd0_cog_ctlShape1" -p "neckQd0_cog_ctl";
	rename -uid "90E4369E-4779-FC22-D6F2-7A86F6935214";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		12.635850976566589 12.635850976566605 2.5935112372170219e-16
		6.9960349030688408e-16 11.42539205253261 3.6677787658393419e-16
		-12.635850976566589 12.635850976566596 2.5935112372170204e-16
		-11.425392052532642 4.4364487485741347e-15 -1.4969402271717445e-31
		-12.635850976566589 -12.635850976566589 -2.5935112372170214e-16
		-1.1444893360856177e-15 -11.42539205253262 -3.6677787658393454e-16
		12.635850976566589 -12.635850976566596 -2.5935112372170204e-16
		11.425392052532642 2.2860777268465115e-15 -2.1872522213602081e-31
		12.635850976566589 12.635850976566605 2.5935112372170219e-16
		6.9960349030688408e-16 11.42539205253261 3.6677787658393419e-16
		-12.635850976566589 12.635850976566596 2.5935112372170204e-16
		;
createNode transform -n "neckQd0_base_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "4A340EC6-4BEB-A4E8-5A9E-77AE7B9314D2";
	setAttr ".t" -type "double3" 6.7242218737602734e-18 1.4210854715202004e-14 -2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_base_ctl" -p "neckQd0_base_ctl_ofs";
	rename -uid "DF7DCB78-4DDA-ABBA-CFEC-2A8B56C170BA";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode nurbsCurve -n "neckQd0_base_ctlShape1" -p "neckQd0_base_ctl";
	rename -uid "6F3AAC60-4E37-D3FD-1757-78AB708C9291";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.7388311265481846 5.7388311265481846 3.514020584987217e-16
		4.9695755697471561e-16 8.1159328113333071 4.9695755697471561e-16
		-5.7388311265481846 5.7388311265481837 3.514020584987216e-16
		-8.1159328113333107 4.207313901058554e-16 2.5762367509697609e-32
		-5.7388311265481846 -5.7388311265481846 -3.514020584987216e-16
		-8.1297854045186674e-16 -8.1159328113333107 -4.96957556974716e-16
		5.7388311265481846 -5.7388311265481837 -3.514020584987216e-16
		8.1159328113333107 -1.1067668919255996e-15 -6.7769926579947513e-32
		5.7388311265481846 5.7388311265481846 3.514020584987217e-16
		4.9695755697471561e-16 8.1159328113333071 4.9695755697471561e-16
		-5.7388311265481846 5.7388311265481837 3.514020584987216e-16
		;
createNode transform -n "neckQd0_tangent0_ctl_ofs" -p "neckQd0_base_ctl";
	rename -uid "03D01A08-4C8B-8F37-81D0-9995D5BEEED1";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_tangent0_ctl" -p "neckQd0_tangent0_ctl_ofs";
	rename -uid "E7367987-4F48-E4FA-8E0D-F3878E455676";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "neckQd0_tangent0_ctlShape1" -p "neckQd0_tangent0_ctl";
	rename -uid "42BF58AC-4D04-6A84-D2F8-D5BEACA18858";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-1.7362904725559848e-07 1.166682621231903 -0.24964300093649616
		-2.1174384083670441e-07 1.2466521412195601 -0.45857659686337798
		-2.2326869571463716e-07 1.14753974451722 -0.61127186959125979
		-2.0604988925901711e-07 1.031571938298147 -0.65549365075624544
		-1.8179069297070668e-07 0.86818745612896464 -0.65709429578993384
		7.5273312509672663e-08 -0.86312600721920663 -0.67405585127332812
		9.9532508798411414e-08 -1.0265104893883772 -0.67565649630700408
		1.1675131522666319e-07 -1.1424782956074553 -0.63370694186303023
		1.5845994759305366e-07 -1.2466521412195601 -0.47838930539299068
		1.7357864122202477e-07 -1.1717440701416639 -0.26822500673882388
		2.2326869576705993e-07 -0.21452466194466147 1.0393372660342941
		2.1261661404894755e-07 -0.10753539433667472 1.14750470619706
		1.9983183326320571e-07 -0.0003793986538972762 1.191886028264082
		1.7372751629069657e-07 0.10781787877305922 1.1500706461586088
		1.4549050025209813e-07 0.21618188427482363 1.0444691459573989
		-1.7362904725559848e-07 1.166682621231903 -0.24964300093649616
		;
	setAttr ".adot" yes;
createNode joint -n "neckQd0_0_ikj" -p "neckQd0_tangent0_ctl";
	rename -uid "9EE61806-494F-3A96-2184-C1A6F0FFBB3F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" -27.65431689916052 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 27.65431689916052 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.8857639723865619 -0.46413595553671338 0
		 0 0.46413595553671338 0.8857639723865619 0 1.350096141654323e-14 68.985476835742531 45.84649714011757 1;
	setAttr ".radi" 0.97647541107621327;
createNode joint -n "neckQd0_two_ikj" -p "neckQd0_base_ctl";
	rename -uid "5B7EA576-4CC1-48CF-B83B-98B349A6E69B";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -6.7242218737602734e-18 -1.4210854715202004e-14 2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -27.654316899160339 -1.4087614653247378e-14 -1.1302733653981734e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 27.654316899160339 0 0 ;
	setAttr ".radi" 4.8823770553810668;
createNode joint -n "neckQd0_two_ikj_end" -p "neckQd0_two_ikj";
	rename -uid "8B0538D2-4A92-F4EA-E72E-77AFE3AA9D30";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -1.527059403406972e-14 9.5486467331296723 21.850774093708552 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 4.8823770553810668;
createNode ikEffector -n "effector31" -p "neckQd0_two_ikj";
	rename -uid "4F2B72DD-448F-299D-6D99-2E98B71FAFCD";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "neckQd0_fore_ctl_SPACE_1_ofs" -p "neckQd0_base_ctl";
	rename -uid "37856D1E-4E7C-3E8B-A730-309873231849";
	setAttr ".t" -type "double3" -1.5277318255943474e-14 9.5486467331296723 21.850774093708566 ;
	setAttr ".r" -type "double3" 27.654316899160339 0 0 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_1" -p "neckQd0_fore_ctl_SPACE_1_ofs";
	rename -uid "9895AB11-4E2C-D3E6-69BC-C1AFA6EA5E41";
createNode transform -n "neckQd0_mid_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "6CDA0737-4033-2060-D42D-4D81639E086C";
	setAttr ".t" -type "double3" -7.6708853071221348e-15 3.501493598910983 11.136181774043365 ;
	setAttr ".r" -type "double3" -37.845485022755277 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "neckQd0_mid_ctl_ofs1" -p "neckQd0_mid_ctl_ofs";
	rename -uid "C6521C09-4FD3-D3A4-4FB9-1686BDE81FB9";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_mid_ctl_ofs2" -p "neckQd0_mid_ctl_ofs1";
	rename -uid "374D9EE5-40C9-9B66-EED4-1B82E6C76D7C";
	setAttr ".t" -type "double3" 0 -6.2172489379008766e-15 0 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_mid_ctl" -p "neckQd0_mid_ctl_ofs2";
	rename -uid "F008AFAD-4DFA-041C-D749-E88AE5A35239";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999956 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "neckQd0_mid_ctlShape1" -p "neckQd0_mid_ctl";
	rename -uid "A84A6BF8-490A-3F52-1649-59B5681947C9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.7388311265481846 5.7388311265481846 3.514020584987217e-16
		4.9695755697471561e-16 8.1159328113333071 4.9695755697471561e-16
		-5.7388311265481846 5.7388311265481837 3.514020584987216e-16
		-8.1159328113333107 4.207313901058554e-16 2.5762367509697609e-32
		-5.7388311265481846 -5.7388311265481846 -3.514020584987216e-16
		-8.1297854045186674e-16 -8.1159328113333107 -4.96957556974716e-16
		5.7388311265481846 -5.7388311265481837 -3.514020584987216e-16
		8.1159328113333107 -1.1067668919255996e-15 -6.7769926579947513e-32
		5.7388311265481846 5.7388311265481846 3.514020584987217e-16
		4.9695755697471561e-16 8.1159328113333071 4.9695755697471561e-16
		-5.7388311265481846 5.7388311265481837 3.514020584987216e-16
		;
createNode joint -n "neckQd0_1_ikj" -p "neckQd0_mid_ctl";
	rename -uid "04FBBFFE-43DF-3F16-EF58-03B493A9AD61";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -7.8886090522101181e-31 3.5527136788005009e-15 0 ;
	setAttr ".r" -type "double3" -65.499801921915619 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 65.499801921915605 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.41469638849429086 -0.90995983722897977 0
		 0 0.90995983722897977 0.41469638849429086 0 5.8233518875473335e-15 77.25567608392619 54.085356668176843 1;
	setAttr ".radi" 0.97647541107621327;
createNode transform -n "neckQd0_fore_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "F2C14C73-4851-9F80-F555-51B51C0EE954";
	setAttr ".t" -type "double3" -1.5270594034069714e-14 9.5486467331296794 21.850774093708537 ;
	setAttr ".r" -type "double3" 27.654316899160339 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_fore_ctl_ofs1" -p "neckQd0_fore_ctl_ofs";
	rename -uid "301AB62E-49B6-D309-E866-B98809B7419A";
createNode transform -n "neckQd0_fore_ctl" -p "neckQd0_fore_ctl_ofs1";
	rename -uid "D31BF336-4408-3147-2948-BCA278EF9B1F";
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
	rename -uid "A90957DB-4D17-114B-D181-34B583385391";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		8.8588075232402748 16.3190140778337 15.560331544186887
		7.671338025774482e-16 19.988452300412632 15.560331544186887
		-8.8588075232402748 16.3190140778337 15.560331544186887
		-12.528245745819211 6.4946647178568056e-16 3.9768351791292939e-32
		-8.8588075232402748 -8.8588075232402748 -5.4244551387993485e-16
		-1.2549629448183096e-15 -12.528245745819211 -7.6713380257744712e-16
		8.8588075232402748 -8.8588075232402748 -5.4244551387993485e-16
		12.528245745819211 -1.7084724489115779e-15 -1.0461376579955021e-31
		8.8588075232402748 16.3190140778337 15.560331544186887
		7.671338025774482e-16 19.988452300412632 15.560331544186887
		-8.8588075232402748 16.3190140778337 15.560331544186887
		;
createNode transform -n "neckQd0_tangent1_ctl_ofs" -p "neckQd0_fore_ctl";
	rename -uid "59C6985C-4049-9A95-17D5-538B11918D70";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_tangent1_ctl" -p "neckQd0_tangent1_ctl_ofs";
	rename -uid "5C043F38-459B-9C7C-2ABB-C2B06A958C86";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "neckQd0_tangent1_ctlShape1" -p "neckQd0_tangent1_ctl";
	rename -uid "130E06AC-4ED9-B7FF-E46C-A9B9150A7484";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-1.7362904725559848e-07 -1.166682621231903 0.24964300093649633
		-2.1174384083670441e-07 -1.2466521412195601 0.45857659686337815
		-2.2326869571463716e-07 -1.14753974451722 0.6112718695912599
		-2.0604988925901711e-07 -1.031571938298147 0.65549365075624555
		-1.8179069297070668e-07 -0.86818745612896453 0.65709429578993395
		7.5273312509672663e-08 0.86312600721920674 0.67405585127332801
		9.9532508798411414e-08 1.0265104893883772 0.67565649630700397
		1.1675131522666319e-07 1.1424782956074553 0.63370694186303012
		1.5845994759305366e-07 1.2466521412195601 0.47838930539299052
		1.7357864122202477e-07 1.1717440701416639 0.26822500673882371
		2.2326869576705993e-07 0.21452466194466133 -1.0393372660342941
		2.1261661404894755e-07 0.10753539433667458 -1.14750470619706
		1.9983183326320571e-07 0.00037939865389713027 -1.191886028264082
		1.7372751629069657e-07 -0.10781787877305934 -1.1500706461586088
		1.4549050025209813e-07 -0.21618188427482377 -1.0444691459573989
		-1.7362904725559848e-07 -1.166682621231903 0.24964300093649633
		;
	setAttr ".adot" yes;
createNode joint -n "neckQd0_2_ikj" -p "neckQd0_tangent1_ctl";
	rename -uid "4C25AECE-42F9-2756-5CA8-1AB4FF74DA12";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.7763568394002442e-15 87.585054010195719 60.769255325518586 1;
	setAttr ".radi" 0.97647541107621327;
createNode ikHandle -n "neckQd0_two_ikj_ikh" -p "neckQd0_tangent1_ctl";
	rename -uid "75CB9412-465B-95D3-8262-38B3891B52E7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.3108872417680944e-30 0 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -27.654316899160342 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "neckQd0_anchorToRbj" -p "neckQd0_fore_ctl";
	rename -uid "494D7219-4136-CA55-CA8F-4E914C934104";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "neckQd0_anchorToRbjShape" -p "neckQd0_anchorToRbj";
	rename -uid "17619C46-4954-3D51-0167-CCB45E680095";
	setAttr -k off ".v";
createNode transform -n "head0_head_fkc_SPACE_1_ofs" -p "neckQd0_anchorToRbj";
	rename -uid "A7E7465E-481F-3E82-FD2E-ED96EBFD567A";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 3.274920748872205 5.1976238713853888 ;
createNode transform -n "head0_head_fkc_SPACE_1" -p "head0_head_fkc_SPACE_1_ofs";
	rename -uid "B0895321-422D-F325-9AE8-7BA42B8EB08A";
createNode transform -n "neckQd0_setting" -p "neckQd0_IK";
	rename -uid "949755D3-4613-348E-525A-F2BF06FE6895";
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
	rename -uid "C263E3B9-4772-0C7C-9373-8AA50721C49E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-1.8308913957678998 2.4411885276905334 4.5580006950334618e-17
		-1.7957113201881887 2.4411885276905334 -0.35718918412240686
		-1.6915230786248967 2.4411885276905334 -0.70065182496477973
		-1.5223305935973597 2.4411885276905334 -1.0171887372772197
		-1.2946357212327646 2.4411885276905334 -1.2946357212327646
		-1.0171887372772197 2.4411885276905334 -1.5223305935973597
		-0.70065182496477973 2.4411885276905334 -1.6915230786248967
		-0.35718918412240686 2.4411885276905334 -1.7957113201881887
		1.1210976441629199e-16 2.4411885276905334 -1.8308913957678998
		0.35718918412240686 2.4411885276905334 -1.7957113201881887
		0.70065182496477973 2.4411885276905334 -1.6915230786248967
		1.0171887372772197 2.4411885276905334 -1.5223305935973597
		1.2946357212327646 2.4411885276905334 -1.2946357212327646
		1.5223305935973597 2.4411885276905334 -1.0171887372772197
		1.6915230786248967 2.4411885276905334 -0.70065182496477973
		1.7957113201881887 2.4411885276905334 -0.35718918412240686
		1.8308913957678998 2.4411885276905334 -1.980323309953972e-16
		1.7612073245001032 2.4411885276905334 -0.35032589065646363
		1.5627635585003323 2.4411885276905334 -0.6473178606163823
		1.2657715448885611 2.4411885276905334 -0.84576153931244835
		0.91544569788394992 2.4411885276905334 -0.91544569788394992
		0.56511980722748634 2.4411885276905334 -0.84576153931244835
		0.26812783726756767 2.4411885276905334 -0.6473178606163823
		0.069684158571501648 2.4411885276905334 -0.35032589065646363
		0 2.4411885276905334 -1.980323309953972e-16
		-0.069684158571501648 2.4411885276905334 0.35032589065646363
		-0.26812783726756767 2.4411885276905334 0.6473178606163823
		-0.56511980722748634 2.4411885276905334 0.84576153931244835
		-0.91544569788394992 2.4411885276905334 0.91544569788394992
		-1.2657715448885611 2.4411885276905334 0.84576153931244835
		-1.5627635585003323 2.4411885276905334 0.6473178606163823
		-1.7612073245001032 2.4411885276905334 0.35032589065646363
		-1.8308913957678998 2.4411885276905334 4.5580006950334618e-17
		-1.7957113201881887 2.4411885276905334 0.35718918412240686
		-1.6915230786248967 2.4411885276905334 0.70065182496477973
		-1.5223305935973597 2.4411885276905334 1.0171887372772197
		-1.2946357212327646 2.4411885276905334 1.2946357212327646
		-1.0171887372772197 2.4411885276905334 1.5223305935973597
		-0.70065182496477973 2.4411885276905334 1.6915230786248967
		-0.35718918412240686 2.4411885276905334 1.7957113201881887
		-2.1374465357477262e-16 2.4411885276905334 1.8308913957678998
		0.35718918412240686 2.4411885276905334 1.7957113201881887
		0.70065182496477973 2.4411885276905334 1.6915230786248967
		1.0171887372772197 2.4411885276905334 1.5223305935973597
		1.2946357212327646 2.4411885276905334 1.2946357212327646
		1.5223305935973597 2.4411885276905334 1.0171887372772197
		1.6915230786248967 2.4411885276905334 0.70065182496477973
		1.7957113201881887 2.4411885276905334 0.35718918412240686
		1.8308913957678998 2.4411885276905334 -1.980323309953972e-16
		;
	setAttr ".adot" yes;
createNode transform -n "neckQd0_anchorF1" -p "master_ctl";
	rename -uid "CB24A5D4-4616-8A13-2D0D-84B6512C6B86";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "neckQd0_anchorF1Shape" -p "neckQd0_anchorF1";
	rename -uid "121C7608-4226-D649-1A54-ED918B90FFB4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 3.6617827915357997 3.6617827915357997 3.6617827915357997 ;
createNode transform -n "neckQd0_anchorM1" -p "master_ctl";
	rename -uid "B33F84B4-45C1-96DF-E489-C5A46CE0AFDF";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "neckQd0_anchorM1Shape" -p "neckQd0_anchorM1";
	rename -uid "9E908F86-4575-631D-A12C-16BA0DB5191A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 3.6617827915357997 3.6617827915357997 3.6617827915357997 ;
createNode transform -n "rtLegQd0_ctl_data" -p "master_ctl";
	rename -uid "DBA47207-44C2-38CC-54FE-2FB10A3D18CB";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_FK" -p "rtLegQd0_ctl_data";
	rename -uid "3AF5C120-4A8E-C3F4-958E-17966DF9B6C6";
	setAttr -cb on ".ro";
createNode joint -n "rtLegQd0_hip_fk" -p "rtLegQd0_FK";
	rename -uid "1E07BBAD-4945-0B55-9D53-AE9DA29A80C5";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.5453675403341141 -44.945156980750689 86.265193046356686 ;
	setAttr ".radi" 1.3364633198090059;
createNode joint -n "rtLegQd0_upr_fk" -p "rtLegQd0_hip_fk";
	rename -uid "10C9CE34-4690-9106-BA9A-CCA705D2A459";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -8.2358734683807864 61.06070326145133 -5.0166573398884555 ;
	setAttr ".radi" 1.3364633198090059;
createNode joint -n "rtLegQd0_lwr_fk" -p "rtLegQd0_upr_fk";
	rename -uid "9EEAE032-4A75-BA08-7E2A-A6A8A0A5A81C";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -53.282984841761632 0 ;
	setAttr ".radi" 1.3364633198090059;
createNode joint -n "rtLegQd0_palm_fk" -p "rtLegQd0_lwr_fk";
	rename -uid "52E447E6-4A00-3086-EA0D-4A9B7002AB82";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 6.1869491868732958 36.705763308063723 4.8546913251063533 ;
	setAttr ".radi" 1.3364633198090059;
createNode joint -n "rtLegQd0_digit_fk" -p "rtLegQd0_palm_fk";
	rename -uid "B9CE4245-4D0E-79EE-2F30-CFAE958D1982";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -5.9446143740498405 68.316305112215758 -5.5266626192865216 ;
	setAttr ".radi" 1.3364633198090059;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_1_ofs" -p "rtLegQd0_digit_fk";
	rename -uid "96FC39D6-4F76-16F7-8F39-D2A63F4B9ADB";
	setAttr ".t" -type "double3" -4.3570619980216563 0 -1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" 0.42391041961273701 -30.071999033928435 0.71523895034589857 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_1" -p "rtLegQd0_ball_fkc_SPACE_1_ofs";
	rename -uid "AB47E08C-4846-B737-FBC7-1F85A1F7401A";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 0 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999978 ;
createNode transform -n "rtLegQd0_ball_fk_SPACE_2_ofs" -p "rtLegQd0_digit_fk";
	rename -uid "370BB494-4F7B-ADDA-B29B-FFB5324BC336";
	setAttr ".t" -type "double3" -4.3570619980216918 8.8817841970012523e-15 1.5987211554602254e-14 ;
	setAttr ".r" -type "double3" 0.42391041961275477 -30.071999033928417 0.71523895034588436 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "rtLegQd0_ball_fk_SPACE_2" -p "rtLegQd0_ball_fk_SPACE_2_ofs";
	rename -uid "7A3730E5-4442-206A-F567-459B6DC7ADCC";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 0 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999978 ;
createNode transform -n "rtLegQd0_ball_fk_ofs" -p "rtLegQd0_digit_fk";
	rename -uid "672BE8A6-473E-8535-69EA-96BFC13B1B61";
	setAttr ".t" -type "double3" -4.3570619980216918 7.1054273576010019e-15 1.9539925233402755e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode joint -n "rtLegQd0_ball_fk" -p "rtLegQd0_ball_fk_ofs";
	rename -uid "1A07BDC9-44C0-78AA-2F93-93AB1C729585";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -7.1054273576010019e-15 0 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -8.1253232878013297e-15 -1.8976170728907574e-14 9.4174236271458831e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.2921003393445537e-14 -3.180554681463516e-15 -9.6410563781862821e-15 ;
	setAttr ".radi" 1.3364633198090059;
createNode joint -n "rtLegQd0_tip_fk" -p "rtLegQd0_ball_fk";
	rename -uid "982C31A6-46F2-EDCC-D461-8DA6118B4A46";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.3720434501095511 1.7763568394002505e-15 3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.510423705084498 51.631782217136305 1.9261881505060465 ;
	setAttr ".radi" 1.3364633198090059;
createNode transform -n "rtLegQd0_upr_fkc_ofs" -p "rtLegQd0_FK";
	rename -uid "69E8E721-403C-AB5D-5865-079EDD26D908";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_upr_fkc" -p "rtLegQd0_upr_fkc_ofs";
	rename -uid "EDFE6A3A-4722-8411-BA3D-78BC89260D21";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd0_upr_fkcShape1" -p "rtLegQd0_upr_fkc";
	rename -uid "8BA2A682-47D9-7E89-8648-9589361425CE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4198545498377096e-16 -6.9176760226422145 -6.9176760226422225
		2.0079775609776366e-16 -3.830078638334622e-16 -6.2549930984203259
		1.4198545498377086e-16 6.9176760226422145 -6.917676022642218
		-8.1952118112493919e-32 6.2549930984203437 -2.4287968567061564e-15
		-1.4198545498377091e-16 6.9176760226422145 6.9176760226422145
		-2.0079775609776386e-16 6.2656693665442759e-16 6.2549930984203321
		-1.4198545498377086e-16 -6.9176760226422145 6.917676022642218
		-1.1974422834864539e-31 -6.2549930984203437 -1.2515457096028211e-15
		1.4198545498377096e-16 -6.9176760226422145 -6.9176760226422225
		2.0079775609776366e-16 -3.830078638334622e-16 -6.2549930984203259
		1.4198545498377086e-16 6.9176760226422145 -6.917676022642218
		;
createNode transform -n "rtLegQd0_lwr_fkc_ofs" -p "rtLegQd0_FK";
	rename -uid "97FAC583-4375-D5B3-A622-FA88285ABE07";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_lwr_fkc" -p "rtLegQd0_lwr_fkc_ofs";
	rename -uid "AB9B5DC2-4447-076B-19BD-29A3749C55D4";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd0_lwr_fkcShape1" -p "rtLegQd0_lwr_fkc";
	rename -uid "1EFA1720-448A-3D97-D68D-BDA95C8C9C2F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4198545498377096e-16 -6.9176760226422145 -6.9176760226422225
		2.0079775609776366e-16 -3.830078638334622e-16 -6.2549930984203259
		1.4198545498377086e-16 6.9176760226422145 -6.917676022642218
		-8.1952118112493919e-32 6.2549930984203437 -2.4287968567061564e-15
		-1.4198545498377091e-16 6.9176760226422145 6.9176760226422145
		-2.0079775609776386e-16 6.2656693665442759e-16 6.2549930984203321
		-1.4198545498377086e-16 -6.9176760226422145 6.917676022642218
		-1.1974422834864539e-31 -6.2549930984203437 -1.2515457096028211e-15
		1.4198545498377096e-16 -6.9176760226422145 -6.9176760226422225
		2.0079775609776366e-16 -3.830078638334622e-16 -6.2549930984203259
		1.4198545498377086e-16 6.9176760226422145 -6.917676022642218
		;
createNode transform -n "rtLegQd0_palm_fkc_ofs" -p "rtLegQd0_FK";
	rename -uid "8EAAC159-4EE3-B3C6-B7E1-E7B3BEEB929E";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_palm_fkc" -p "rtLegQd0_palm_fkc_ofs";
	rename -uid "57571E09-4F17-81D9-9ECA-A2920D9BDF34";
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
	rename -uid "76897EFF-4308-6D6E-B822-ADB01AD3F78A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4198545498377096e-16 -6.9176760226422145 -6.9176760226422225
		2.0079775609776366e-16 -3.830078638334622e-16 -6.2549930984203259
		1.4198545498377086e-16 6.9176760226422145 -6.917676022642218
		-8.1952118112493919e-32 6.2549930984203437 -2.4287968567061564e-15
		-1.4198545498377091e-16 6.9176760226422145 6.9176760226422145
		-2.0079775609776386e-16 6.2656693665442759e-16 6.2549930984203321
		-1.4198545498377086e-16 -6.9176760226422145 6.917676022642218
		-1.1974422834864539e-31 -6.2549930984203437 -1.2515457096028211e-15
		1.4198545498377096e-16 -6.9176760226422145 -6.9176760226422225
		2.0079775609776366e-16 -3.830078638334622e-16 -6.2549930984203259
		1.4198545498377086e-16 6.9176760226422145 -6.917676022642218
		;
createNode transform -n "rtLegQd0_digit_fkc_ofs" -p "rtLegQd0_FK";
	rename -uid "6A1C0460-4C09-81C7-D97D-5D841867F4EA";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_digit_fkc" -p "rtLegQd0_digit_fkc_ofs";
	rename -uid "DD709160-467F-1CBA-D55A-7282FA970A8C";
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
	rename -uid "F235CF45-45A5-6C5D-CCB4-9DB2B0E3B1F0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4198545498377096e-16 -6.9176760226422145 -6.9176760226422225
		2.0079775609776366e-16 -3.830078638334622e-16 -6.2549930984203259
		1.4198545498377086e-16 6.9176760226422145 -6.917676022642218
		-8.1952118112493919e-32 6.2549930984203437 -2.4287968567061564e-15
		-1.4198545498377091e-16 6.9176760226422145 6.9176760226422145
		-2.0079775609776386e-16 6.2656693665442759e-16 6.2549930984203321
		-1.4198545498377086e-16 -6.9176760226422145 6.917676022642218
		-1.1974422834864539e-31 -6.2549930984203437 -1.2515457096028211e-15
		1.4198545498377096e-16 -6.9176760226422145 -6.9176760226422225
		2.0079775609776366e-16 -3.830078638334622e-16 -6.2549930984203259
		1.4198545498377086e-16 6.9176760226422145 -6.917676022642218
		;
createNode transform -n "rtLegQd0_ikc_matcher" -p "rtLegQd0_digit_fkc";
	rename -uid "3B372399-4A84-A03C-D5DA-52873EBFD1DC";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -3.5527136788005009e-15 -7.638334409421077e-14 ;
	setAttr ".r" -type "double3" 68.436521014347917 0.80634777178325845 -87.960528304926086 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "rtLegQd0_quadScap_ofs" -p "rtLegQd0_FK";
	rename -uid "8E1546CF-4449-86D2-E185-D7A8142EF017";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_quadScap" -p "rtLegQd0_quadScap_ofs";
	rename -uid "449D70E8-4EC1-8C8A-BFED-DDA21D022DCC";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 8.8817841970012523e-16 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rtLegQd0_hip_fkc_ofs" -p "rtLegQd0_quadScap";
	rename -uid "0884485C-407E-71DC-D408-D7BBC81E9F42";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -2.6645352591003757e-15 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "rtLegQd0_hip_fkc" -p "rtLegQd0_hip_fkc_ofs";
	rename -uid "3ECFF317-4BA8-366E-64FC-1D95B5F79E37";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "autoAim" -ln "autoAim" -dv 0.3 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -k on ".autoAim";
createNode nurbsCurve -n "rtLegQd0_hip_fkcShape1" -p "rtLegQd0_hip_fkc";
	rename -uid "954796B6-4A5A-BA80-5F84-9B9A2C45D102";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-3.4588380113211072 13.364633198090059 3.4588380113211112
		-1.915039319167311e-16 13.364633198090059 3.127496549210163
		3.4588380113211072 13.364633198090059 3.458838011321109
		3.1274965492101718 13.364633198090059 1.2143984283530782e-15
		3.4588380113211072 13.364633198090059 -3.4588380113211072
		3.132834683272138e-16 13.364633198090059 -3.1274965492101661
		-3.4588380113211072 13.364633198090059 -3.458838011321109
		-3.1274965492101718 13.364633198090059 6.2577285480141057e-16
		-3.4588380113211072 13.364633198090059 3.4588380113211112
		-1.915039319167311e-16 13.364633198090059 3.127496549210163
		3.4588380113211072 13.364633198090059 3.458838011321109
		;
	setAttr ".adot" yes;
createNode joint -n "rtLegQd0_autoAim" -p "rtLegQd0_quadScap_ofs";
	rename -uid "38CAF763-4DBD-8588-FFCC-A5A45B8985C7";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 2.8421709430404007e-14 8.8817841970012523e-16 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 98.005086817551785 30.005447452974124 0.79331727420830656 ;
	setAttr ".radi" 2.0046949797135087;
createNode joint -n "rtLegQd0_autoAim_end" -p "rtLegQd0_autoAim";
	rename -uid "A252C39D-4A04-FE02-94D1-88AFF97EB366";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -62.361499068242168 -7.1054273576010019e-15 1.5987211554602254e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 2.1517793202994527e-31 3.876301018033661e-15 -9.9392333795734919e-16 ;
	setAttr ".radi" 2.0046949797135087;
createNode ikEffector -n "effector37" -p "rtLegQd0_autoAim";
	rename -uid "3B553A3D-4849-E05B-C838-909F9A38A893";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegQd0_ballOfsG" -p "rtLegQd0_FK";
	rename -uid "19AD560E-43D5-56BB-5951-1F8D59490D15";
	setAttr ".t" -type "double3" -7.6284935125761679 4.5814706791757089 -38.775021695289418 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fkc_ofs" -p "rtLegQd0_ballOfsG";
	rename -uid "EE59ADD9-455D-0998-B2CD-E6A703A3EBEF";
	setAttr ".t" -type "double3" -0.15504344343327148 -1.6023710076516497 4.0487459460180588 ;
	setAttr ".r" -type "double3" -1.5242920599757621 38.342591785290523 89.054249515993035 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ball_fkc_ofs1" -p "rtLegQd0_ball_fkc_ofs";
	rename -uid "43D6B0C1-4C02-6F26-2490-A8AAF13DBA01";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "rtLegQd0_ball_fkc" -p "rtLegQd0_ball_fkc_ofs1";
	rename -uid "A4187DE2-4F8E-001E-5C17-4094063383C1";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd0_ball_fkcShape1" -p "rtLegQd0_ball_fkc";
	rename -uid "47FB393A-41E1-D532-BE2B-28B51D2204BB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.0992727491885479e-17 -3.4588380113211072 -3.4588380113211112
		1.0039887804888183e-16 -1.915039319167311e-16 -3.127496549210163
		7.0992727491885429e-17 3.4588380113211072 -3.458838011321109
		-4.097605905624696e-32 3.1274965492101718 -1.2143984283530782e-15
		-7.0992727491885454e-17 3.4588380113211072 3.4588380113211072
		-1.0039887804888193e-16 3.132834683272138e-16 3.1274965492101661
		-7.0992727491885429e-17 -3.4588380113211072 3.458838011321109
		-5.9872114174322693e-32 -3.1274965492101718 -6.2577285480141057e-16
		7.0992727491885479e-17 -3.4588380113211072 -3.4588380113211112
		1.0039887804888183e-16 -1.915039319167311e-16 -3.127496549210163
		7.0992727491885429e-17 3.4588380113211072 -3.458838011321109
		;
createNode ikHandle -n "rtLegQd0_3_ikh" -p "rtLegQd0_ball_fkc";
	rename -uid "3545C7B3-4DBB-976E-7A78-79B50CBB9FA8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.3720434501096221 -3.5527136788005009e-15 -2.4868995751603507e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.62036223726627304 -0.020863399931948877 0.78403789010306357 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_ball_fk_SPACE_1_ofs" -p "rtLegQd0_ball_fkc";
	rename -uid "5785F798-4901-D542-E02D-50959CA0D6AF";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 5.3290705182007514e-15 3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rtLegQd0_ball_fk_SPACE_1" -p "rtLegQd0_ball_fk_SPACE_1_ofs";
	rename -uid "7598CC5D-4E53-1D86-6B6C-8990584F6084";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 0 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000002 1 ;
createNode ikHandle -n "rtLegQd0_toe01_2_ikh" -p "rtLegQd0_ball_fkc";
	rename -uid "E00ACA47-448E-2B11-C0BD-D2B2712A5467";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.52772750330267826 -2.9174484709018529 -1.9498544815696661 ;
	setAttr ".r" -type "double3" 8.5423024725383012 -2.0092710420374886 6.5196243383453476 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.62036223726627282 -0.020863399931948853 0.78403789010306391 ;
	setAttr ".roc" yes;
createNode ikHandle -n "rtLegQd0_toe02_2_ikh" -p "rtLegQd0_ball_fkc";
	rename -uid "022C0484-4A66-9950-D05C-A5BA94D6FAAF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.14930786135780139 -0.99870174324931149 0.13915835204907623 ;
	setAttr ".r" -type "double3" 0.28095989263425547 37.219499607901632 0.3469742586937154 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.62036223726627282 -0.020863399931948853 0.78403789010306391 ;
	setAttr ".roc" yes;
createNode ikHandle -n "rtLegQd0_toe03_2_ikh" -p "rtLegQd0_ball_fkc";
	rename -uid "7C669796-4C16-E891-A9E3-5D9374E8743C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.11040327033757436 0.96494721331176514 -0.247016584608307 ;
	setAttr ".r" -type "double3" -2.5126023555597317 32.078684189157705 -3.0204140700360651 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.62036223726627282 -0.020863399931948853 0.78403789010306391 ;
	setAttr ".roc" yes;
createNode ikHandle -n "rtLegQd0_toe04_2_ikh" -p "rtLegQd0_ball_fkc";
	rename -uid "0FC66CF0-48BB-3533-5346-C984F44F5010";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.97811506973091156 2.9723216872330003 -2.587761032732697 ;
	setAttr ".r" -type "double3" -8.4301030531821031 1.9783803633469519 -7.0233054447561871 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.62036223726627282 -0.020863399931948853 0.78403789010306391 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_toe01_3_ikc_ofs" -p "rtLegQd0_ball_fkc_ofs1";
	rename -uid "F24EACAB-4534-5359-67DE-9D9EC7C1AFBE";
	setAttr ".t" -type "double3" 0.52772750330267826 -2.917448470901852 -1.949854481569659 ;
	setAttr ".r" -type "double3" 34.594302497853 -31.742439076292534 5.9220811947013257 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd0_toe01_3_ikc_ofs1" -p "rtLegQd0_toe01_3_ikc_ofs";
	rename -uid "7498FE7D-4BF8-747C-05B9-81A92F724ED8";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "rtLegQd0_toe01_3_ikc" -p "rtLegQd0_toe01_3_ikc_ofs1";
	rename -uid "5C36A0B5-4EA1-8F34-0394-43AA0029B4B9";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_toe01_3_ikcShape1" -p "rtLegQd0_toe01_3_ikc";
	rename -uid "193B6BAB-473F-1A35-1A08-D78A135513E3";
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
		-9.1124429060839735e-16 -7.1976908412340903e-15 3.7372406460666778e-15
		-9.1124429060839735e-16 -7.1976908412340903e-15 0.6983849506748252
		-0.080647942364649297 -7.1976908412340903e-15 0.6983849506748252
		-0.080647942364649297 -7.1976908412340903e-15 0.85968083540412243
		0.080647942364647465 -7.1976908412340903e-15 0.85968083540412243
		0.080647942364647465 -7.1976908412340903e-15 0.6983849506748252
		-9.1124429060839735e-16 -7.1976908412340903e-15 0.6983849506748252
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegQd0_toe01_3_1_ikj_ikh" -p "rtLegQd0_toe01_3_ikc";
	rename -uid "5002C75D-4225-ED7C-2A9E-EA879E1DDCBF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.0041912677519518 1.1909587737149323 1.5753197470857252 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.11410085915261432 0.59912574623412662 0.79248301820293654 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_toe02_3_ikc_ofs" -p "rtLegQd0_ball_fkc_ofs1";
	rename -uid "2469E813-451F-4276-79A8-7D888496FDE2";
	setAttr ".t" -type "double3" 0.14930786135779783 -0.99870174324930971 0.13915835204908333 ;
	setAttr ".r" -type "double3" 40.629940863799021 -35.370977405955315 3.3099089419872283 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "rtLegQd0_toe02_3_ikc_ofs1" -p "rtLegQd0_toe02_3_ikc_ofs";
	rename -uid "D16125F9-4911-3DB4-918C-8689D44CAE88";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "rtLegQd0_toe02_3_ikc" -p "rtLegQd0_toe02_3_ikc_ofs1";
	rename -uid "E3075A3E-415A-A00B-4F7D-8B8627DFE5E0";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_toe02_3_ikcShape1" -p "rtLegQd0_toe02_3_ikc";
	rename -uid "0744150A-4645-4BE9-7040-6FB140D358CA";
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
		9.1124429060839735e-16 3.5527136788005009e-15 -9.226348363308864e-17
		9.1124429060839735e-16 3.5527136788005009e-15 0.69838495067482131
		-0.080647942364647465 3.5527136788005009e-15 0.69838495067482131
		-0.080647942364647465 3.5527136788005009e-15 0.85968083540411866
		0.080647942364649297 3.5527136788005009e-15 0.85968083540411866
		0.080647942364649297 3.5527136788005009e-15 0.69838495067482131
		9.1124429060839735e-16 3.5527136788005009e-15 0.69838495067482131
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegQd0_toe02_3_1_ikj_ikh" -p "rtLegQd0_toe02_3_ikc";
	rename -uid "EB6E61A0-4F4A-4DE4-86B6-608DBFFAE210";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.7412230411676619 1.315122118388615 1.4870005134813802 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999933 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.052140262105760886 0.66158756852070344 0.74805299427674588 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_toe03_3_ikc_ofs" -p "rtLegQd0_ball_fkc_ofs1";
	rename -uid "D2C9326C-4CE4-5729-FA5B-C8B4AAFF1544";
	setAttr ".t" -type "double3" 0.11040327033756725 0.96494721331176692 -0.24701658460829634 ;
	setAttr ".r" -type "double3" -12.215657106743899 -27.304181095772897 -3.0406302252962618 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "rtLegQd0_toe03_3_ikc_ofs1" -p "rtLegQd0_toe03_3_ikc_ofs";
	rename -uid "76E2B15C-4F2E-903B-B019-1F81DD91A099";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "rtLegQd0_toe03_3_ikc" -p "rtLegQd0_toe03_3_ikc_ofs1";
	rename -uid "58486372-4806-BC50-B8AD-688CC5B78429";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_toe03_3_ikcShape1" -p "rtLegQd0_toe03_3_ikc";
	rename -uid "2D9CBBDF-4E0F-8797-C0AF-5C92A90D6DBF";
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
		0 0 0
		0 0 0.69838495067482143
		-0.080647942364648381 0 0.69838495067482143
		-0.080647942364648381 0 0.85968083540411866
		0.080647942364648381 0 0.85968083540411866
		0.080647942364648381 0 0.69838495067482143
		0 0 0.69838495067482143
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegQd0_toe03_3_1_ikj_ikh" -p "rtLegQd0_toe03_3_ikc";
	rename -uid "483E80E2-4671-3276-4366-35A862C49871";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.7854158194444389 -0.51674908809377129 1.8820280746455502 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999911 0.99999999999999956 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.18983490483443982 -0.25995666478880508 0.94677623615000983 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_toe04_3_ikc_ofs" -p "rtLegQd0_ball_fkc_ofs1";
	rename -uid "BFF25C5B-4361-D5B9-E5DC-319A3BF4E200";
	setAttr ".t" -type "double3" 0.97811506973091156 2.9723216872330056 -2.5877610327326899 ;
	setAttr ".r" -type "double3" 25.684293514914756 -31.552658513046914 4.2028606572340443 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "rtLegQd0_toe04_3_ikc_ofs1" -p "rtLegQd0_toe04_3_ikc_ofs";
	rename -uid "513FEB36-41FA-FF84-E088-5397838FBFB1";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 0.99999999999999978 ;
createNode transform -n "rtLegQd0_toe04_3_ikc" -p "rtLegQd0_toe04_3_ikc_ofs1";
	rename -uid "2D2DA059-434A-0C4A-DCA5-B191B7FDBBF0";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_toe04_3_ikcShape1" -p "rtLegQd0_toe04_3_ikc";
	rename -uid "8E10D109-4214-F013-DFBB-D38011E9D4E5";
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
		0 1.7763568394002505e-15 -4.613174181654432e-17
		0 1.7763568394002505e-15 0.69838495067482131
		-0.080647942364648381 1.7763568394002505e-15 0.69838495067482131
		-0.080647942364648381 1.7763568394002505e-15 0.85968083540411866
		0.080647942364648381 1.7763568394002505e-15 0.85968083540411866
		0.080647942364648381 1.7763568394002505e-15 0.69838495067482131
		0 1.7763568394002505e-15 0.69838495067482131
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegQd0_toe04_3_1_ikj_ikh" -p "rtLegQd0_toe04_3_ikc";
	rename -uid "F6E2ABF2-40B7-DD5D-C641-AEA3624B14EA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.8779911154877942 0.899411863462519 1.7570595562575235 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999933 0.99999999999999956 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.11825609106379481 0.45245966397190868 0.88390935587578101 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_IK" -p "rtLegQd0_ctl_data";
	rename -uid "9907714C-43FE-CF15-AEBA-CAB1EB67A633";
	setAttr -cb on ".ro";
createNode joint -n "rtLegQd0_hip_ik" -p "rtLegQd0_IK";
	rename -uid "EFF5479B-4F1A-C427-0CE6-3CA644DF3A3A";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.5453675403341141 -44.945156980750689 86.265193046356686 ;
	setAttr ".radi" 2.0046949797135087;
createNode joint -n "rtLegQd0_upr_ik" -p "rtLegQd0_hip_ik";
	rename -uid "6488DD90-4659-BECD-4EB9-678D784F587C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -7.1751450121796623 -4.4408920985006262e-15 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -7.2510299868505063e-07 -1.0595052320382015e-05 -4.5072714524446216e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -8.2358734683807864 61.06070326145133 -5.0166573398884555 ;
	setAttr ".radi" 2.0046949797135087;
createNode joint -n "rtLegQd0_lwr_ik" -p "rtLegQd0_upr_ik";
	rename -uid "1D8791CC-48FB-6C6F-7463-329F435FE30C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -20.095373120779453 1.5987211554602254e-14 1.5987211554602254e-14 ;
	setAttr ".r" -type "double3" 2.6457135160191292e-20 1.7308165682297042e-05 -1.3136798648925742e-19 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -53.282984841761632 0 ;
	setAttr ".radi" 2.0046949797135087;
createNode joint -n "rtLegQd0_palm_ik" -p "rtLegQd0_lwr_ik";
	rename -uid "DC0CB01B-4AD5-18F5-1E5E-FC8C255C7945";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -29.052161450082391 4.4408920985006262e-14 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -5.850521532919948e-07 -9.3911304546041127e-09 3.7939469936019834e-08 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 6.1869491868732958 36.705763308063723 4.8546913251063533 ;
	setAttr ".radi" 2.0046949797135087;
createNode joint -n "rtLegQd0_digit_ik" -p "rtLegQd0_palm_ik";
	rename -uid "191BCBA7-4D94-1D1F-8524-DDB07F85D3C5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -12.701923523812976 -0.20388852964021975 0.82369450713628112 ;
	setAttr ".r" -type "double3" -2.8574545991479894e-07 -1.1649728757798875e-22 -2.3299457370348958e-22 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -5.9446143740498405 68.316305112215758 -5.5266626192865216 ;
	setAttr ".radi" 2.0046949797135087;
createNode joint -n "rtLegQd0_ball_ik" -p "rtLegQd0_digit_ik";
	rename -uid "3F917256-4C38-FF24-9F10-E2AAE3124EB5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.3570619980216563 -1.7763568394002505e-15 -3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" -5.0840975749913428e-07 2.678248875873207e-22 5.3564976923333193e-22 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0.42391041961277137 -30.071999033928417 0.71523895034587337 ;
	setAttr ".radi" 2.0046949797135087;
createNode joint -n "rtLegQd0_tip_ik" -p "rtLegQd0_ball_ik";
	rename -uid "029915FE-410E-F186-34AC-F584B38B6973";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.3720434501095511 1.7763568394002505e-15 3.5527136788005009e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.510423705084498 51.631782217136305 1.9261881505060465 ;
	setAttr ".radi" 2.0046949797135087;
createNode ikEffector -n "effector35" -p "rtLegQd0_ball_ik";
	rename -uid "84D84005-4C71-E53E-4FFA-56AB83EFF586";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector34" -p "rtLegQd0_digit_ik";
	rename -uid "770DCDF4-40C7-0A13-E584-64B46C1A8EF7";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector33" -p "rtLegQd0_palm_ik";
	rename -uid "605CAA59-4026-54B3-F4A1-B88037836946";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector32" -p "rtLegQd0_lwr_ik";
	rename -uid "DF7E77B2-4A03-186D-492F-A1A494BE90F0";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "rtLegQd0_softJ" -p "rtLegQd0_hip_ik";
	rename -uid "EF48230F-49BE-B0A1-8BD2-75A7CDBEC7DF";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -7.1751450121796658 -4.4408920985006262e-15 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 99.813514307054376 29.368496184559724 -0.038466953765881481 ;
createNode joint -n "rtLegQd0_softJ_end" -p "rtLegQd0_softJ";
	rename -uid "07D31B6C-497D-54AE-5040-A5B4D528BC5E";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -44.112743377685547 2.1316282072803006e-14 -1.0547118733938987e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 2.1517793202994527e-31 3.876301018033661e-15 -9.9392333795734919e-16 ;
createNode ikEffector -n "effector36" -p "rtLegQd0_softJ";
	rename -uid "4C77A23C-45CB-CAAC-67A0-C78F50B52FA0";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegQd0_pvc_SPACE_1_ofs" -p "rtLegQd0_softJ";
	rename -uid "C0F36B67-4DCB-42FD-402A-2AB890E0030D";
	setAttr ".t" -type "double3" -10.302352066356903 33.569793976510184 -8.60395231664174 ;
	setAttr ".r" -type "double3" 179.67548821592447 -76.172324882058362 74.140544118779474 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
createNode transform -n "rtLegQd0_pvc_SPACE_1" -p "rtLegQd0_pvc_SPACE_1_ofs";
	rename -uid "41A9F587-47B8-8A41-97D7-208353FA34CC";
	setAttr ".t" -type "double3" 0 7.1054273576010019e-15 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rtLegQd0_ikCstG" -p "rtLegQd0_IK";
	rename -uid "535A581B-46DF-6FE2-7BE6-948BF816F643";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_heelRollG" -p "rtLegQd0_ikCstG";
	rename -uid "08849F9E-49B5-FBD1-B4DE-E89575503424";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -17.283397181396296 -1.4262525557280767 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_heelRollG_ctl" -p "rtLegQd0_heelRollG";
	rename -uid "A5F9BE08-491D-A20D-79D5-448DCD2CC175";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_toeRollG" -p "rtLegQd0_heelRollG_ctl";
	rename -uid "8EEBE077-4523-E62B-9B6F-FBB70899300F";
	setAttr ".t" -type "double3" -1.2600130985398241 0 10.272514312829031 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_toeRollG_ctl" -p "rtLegQd0_toeRollG";
	rename -uid "5DC98D00-4A60-D03E-12CE-1D9FD94B380B";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_footRollG" -p "rtLegQd0_toeRollG_ctl";
	rename -uid "0237F31F-46E2-846D-D668-E49862010A43";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_outRollG" -p "rtLegQd0_footRollG";
	rename -uid "91DE3731-4581-4BE0-620B-9A93C4CE78A3";
	setAttr ".t" -type "double3" -2.7688419297940357 0 -4.5511444657559252 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_outRollG_ctl" -p "rtLegQd0_outRollG";
	rename -uid "384D32C4-4CB8-32C5-4D3C-6E847E26840F";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_inRollG" -p "rtLegQd0_outRollG_ctl";
	rename -uid "90B06BD9-4C94-4DAB-48D3-F3AB700AF96C";
	setAttr ".t" -type "double3" 7.9518312931449842 0 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_inRollG_ctl" -p "rtLegQd0_inRollG";
	rename -uid "0472143A-4731-AA2C-37C2-E29E51B46A65";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd0_ballRollG" -p "rtLegQd0_inRollG_ctl";
	rename -uid "73000515-47D2-A739-C67D-449369C5123B";
	setAttr ".t" -type "double3" -3.8741314139463308 2.9790996715239793 0.57732372811783961 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ballG_ikc" -p "rtLegQd0_ballRollG";
	rename -uid "366EF368-46EA-F305-B322-B9A2D0D6AE1E";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtLegQd0_ballG_ikcShape1" -p "rtLegQd0_ballG_ikc";
	rename -uid "CEB434B2-4398-8CFC-93AE-FAA9B3DAB27F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 25 0 no 3
		26 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		26
		-4.138747067092851e-17 6.0064078951656663 3.6535714001364661e-16
		-3.9977225575123966e-17 6.0294390270902474 0.17493803736935792
		-3.5842600683557558e-17 6.0969626011989568 0.33795432538654108
		-2.9265359060283242e-17 6.2043770644596048 0.4779395876917058
		-2.0693735335464255e-17 6.344362247105348 0.58535410405863464
		-1.0711865040845327e-17 6.5073785616756723 0.65287762506106373
		1.2673905455960684e-32 6.6823165990450297 0.67590865077308215
		1.0711865040845327e-17 6.857254636414388 0.65287762506106373
		2.0693735335464255e-17 7.0202709509847114 0.58535410405863464
		2.9265359060283242e-17 7.1602561336304547 0.4779395876917058
		3.5842600683557558e-17 7.26767102174135 0.33795432538654108
		3.9977225575123966e-17 7.335194170999813 0.17493803736935792
		4.138747067092851e-17 7.3582253029243931 1.9972552723317565e-16
		3.9977225575123966e-17 7.335194170999813 -0.17493803736935792
		3.5842600683557558e-17 7.26767102174135 -0.33795432538654108
		2.9265359060283242e-17 7.1602561336304547 -0.4779395876917058
		2.0693735335464255e-17 7.0202709509847114 -0.58535410405863464
		1.0711865040845327e-17 6.857254636414388 -0.65287762506106373
		-3.0964764155558899e-32 6.6823165990450297 -0.67590865077308215
		-1.0711865040845327e-17 6.5073785616756723 -0.65287762506106373
		-2.0693735335464255e-17 6.344362247105348 -0.58535410405863464
		-2.9265359060283242e-17 6.2043770644596048 -0.4779395876917058
		-3.5842600683557558e-17 6.0969626011989568 -0.33795432538654108
		-3.9977225575123966e-17 6.0294390270902474 -0.17493803736935792
		-4.138747067092851e-17 6.0064078951656663 3.6535714001364661e-16
		0 0 0
		;
createNode transform -n "rtLegQd0_extraRollG_ofs" -p "rtLegQd0_ballG_ikc";
	rename -uid "F5664AAE-4AA4-6C01-8596-849A6D8983B1";
	setAttr ".t" -type "double3" 0.15504367877543501 1.6023739860593373 -4.0487465123265736 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_extraRollG_ofs1" -p "rtLegQd0_extraRollG_ofs";
	rename -uid "F7470784-430F-93E2-EAB3-319CC8DD42D8";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 0 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 168.69031108244582 0 87.955493382629754 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "rtLegQd0_extraRollG" -p "rtLegQd0_extraRollG_ofs1";
	rename -uid "28820981-4D94-6B16-C4D8-DE8CD43DA8B9";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_extra_ikc" -p "rtLegQd0_extraRollG";
	rename -uid "94B570C9-4D2B-3763-BC21-1BBAD57C30D0";
	addAttr -ci true -sn "palmAim" -ln "palmAim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "palmAimRatio" -ln "palmAimRatio" -dv 0.5 -min -2 -max 2 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".palmAim";
	setAttr -k on ".palmAimRatio";
createNode nurbsCurve -n "rtLegQd0_extra_ikcShape1" -p "rtLegQd0_extra_ikc";
	rename -uid "F8133A16-4096-E4FA-B701-38A09B4DD1D4";
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
		3.9895434392324187 6.6823165990450297 0
		3.7041924857468675 8.216643298008492 0
		2.8350663412265762 9.5173829402716059 0
		1.5343266989634619 10.386509084791896 0
		0 10.671766485845996 0
		-1.5343266989634619 10.386509084791896 0
		-2.8350663412265762 9.5173829402716059 0
		-3.7041924857468675 8.216643298008492 0
		-3.9895434392324187 6.6823164100234109 0
		-3.7041924857468675 5.1479899000815674 0
		-2.8350663412265762 3.8472502578184535 0
		-1.5343266989634619 2.9781241132981622 0
		1.5931872159058853e-07 2.6928667122440624 -0.027127532194207878
		1.5343266989634619 2.9781241132981622 0
		2.8350663412265762 3.8472502578184535 0
		3.7041924857468675 5.1479899000815674 0
		3.9895434392324187 6.6823165990450297 0
		3.6858562091824512 6.6926981390924247 -1.5266981664102774
		2.8210334765089109 6.7014993380092163 -2.8209719991968143
		1.5267329144562449 6.7073800973087652 -3.6857760213840649
		1.5931872159058853e-07 6.709445200409883 -3.9894552326541941
		-1.5267329144562449 6.7073800973087652 -3.6857760213840649
		-2.8210334765089109 6.7014993380092163 -2.8209719991968143
		-3.6858562091824512 6.6926981390924247 -1.5266981664102774
		-3.9895434392324187 6.6823164100234109 0
		-3.6858562091824512 6.6719346847879084 1.5266928205570518
		-2.8210334765089109 6.6631334858711178 2.8209693262702009
		-1.5267329144562449 6.6572527265715689 3.685770675530839
		1.5931872159058853e-07 6.6551877303875155 3.9894498868009673
		1.5267329144562449 6.6572527265715689 3.685770675530839
		2.8210334765089109 6.6631334858711178 2.8209693262702009
		3.6858562091824512 6.6719346847879084 1.5266928205570518
		3.9895434392324187 6.6823165990450297 0
		3.6858562091824512 6.6926981390924247 -1.5266981664102774
		2.8210334765089109 6.7014993380092163 -2.8209719991968143
		1.5267329144562449 6.7073800973087652 -3.6857760213840649
		1.5931872159058853e-07 6.709445200409883 -3.9894552326541941
		1.5931872159058853e-07 8.2340761253777526 -3.6753917014929915
		1.5931872159058853e-07 9.522466846689321 -2.8017884048961115
		1.5931872159058853e-07 10.378468921540328 -1.5016341335612196
		0 10.671766485845996 0
		1.5931872159058853e-07 10.357705627611409 1.5517595263327224
		1.5931872159058853e-07 9.4841023310145278 2.8401475747176788
		1.5931872159058853e-07 8.1839507326062488 3.6961523224952986
		1.5931872159058853e-07 6.6551877303875155 3.9894498868009673
		1.5931872159058853e-07 5.1305570727123069 3.6753863556397661
		1.5931872159058853e-07 3.8421663514007389 2.801783059042886
		1.5931872159058853e-07 2.9861642765497312 1.5016287877079937
		1.5931872159058853e-07 2.6928667122440624 -0.027127532194207878
		1.5931872159058853e-07 3.0069275704786507 -1.5517648721859483
		1.5931872159058853e-07 3.8805308670755312 -2.8401529205709037
		1.5931872159058853e-07 5.1806824654838106 -3.6961576683485249
		1.5931872159058853e-07 6.709445200409883 -3.9894552326541941
		;
createNode transform -n "rtLegQd0_extraRollG_ofs2" -p "rtLegQd0_extra_ikc";
	rename -uid "CC2EDDCF-4275-9667-2496-8EA7C3FF0EBA";
	setAttr ".t" -type "double3" 0 0 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd0_X_ikh" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "1C2A73E5-4E33-5E5C-63B4-E596BE99394A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.6645352591003757e-15 1.0658141036401503e-14 3.5527136788005009e-14 ;
	setAttr ".r" -type "double3" 0 0 90.000000000000028 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 1.0000000000000002 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_dist_loc1" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "07AB2547-4B79-EDFD-18C2-CCA76BD98E4D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.20388852964023219 12.70192352381299 -0.8236945071362527 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode locator -n "rtLegQd0_dist_loc1Shape" -p "rtLegQd0_dist_loc1";
	rename -uid "BD06C5AF-4EE7-0172-8B5D-9BB2BFCA9117";
	setAttr -k off ".v";
createNode transform -n "rtLegQd0_softJ_posGrp" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "7ADE642C-47DF-3DC7-A966-8C85148572ED";
	setAttr ".t" -type "double3" -0.20388852964023307 12.70192352381298 -0.8236945071362527 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd0_1_ikh_ofs" -p "rtLegQd0_extraRollG_ofs2";
	rename -uid "0036021C-4B63-6C21-85BC-6B81A379678E";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode ikHandle -n "rtLegQd0_1_ikh" -p "rtLegQd0_1_ikh_ofs";
	rename -uid "55F71066-45F1-EE03-3204-0A90409A3E02";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_toe_wiggle_grp" -p "rtLegQd0_inRollG_ctl";
	rename -uid "77ACB749-4C21-7F83-4D12-CFA780281D76";
	setAttr ".t" -type "double3" -3.8741314139463308 2.9790996715239793 0.57732372811783961 ;
	setAttr ".r" -type "double3" -1.5242920599757621 38.342591785290516 89.054249515993007 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd0_2_ikh" -p "rtLegQd0_toe_wiggle_grp";
	rename -uid "840E2932-4270-C56E-E9DC-BEB4293E9BFA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.4210854715202004e-14 1.7763568394002505e-15 3.907985046680551e-14 ;
	setAttr ".r" -type "double3" -0.90387303951368569 30.062392003103248 -1.0718356720550655 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.62036223726627304 -0.02086339993194896 0.78403789010306391 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_2_ofs" -p "rtLegQd0_toe_wiggle_grp";
	rename -uid "9A7505E1-451B-2279-DD14-DDA5FBDCC87F";
	setAttr ".t" -type "double3" 4.6185277824406512e-14 1.0658141036401503e-14 8.8817841970012523e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "rtLegQd0_ball_fkc_SPACE_2" -p "rtLegQd0_ball_fkc_SPACE_2_ofs";
	rename -uid "162BFF50-48E6-D98C-762F-0598CA69C90A";
	setAttr ".t" -type "double3" 0 0 1.0658141036401503e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
createNode nurbsCurve -n "rtLegQd0_inRollG_ctlShape1" -p "rtLegQd0_inRollG_ctl";
	rename -uid "4D6F03DE-4C2C-F85B-A82E-76A7AC5C814E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.41346833956591122
		-0.41346833956591122 0 0
		0 0 -0.41346833956591122
		0.41346833956591122 0 0
		0 0 0.41346833956591122
		0 0.41346833956591122 0
		0.41346833956591122 0 0
		0 0 -0.41346833956591122
		0 0.41346833956591122 0
		-0.41346833956591122 0 0
		0 -0.41346833956591122 0
		0.41346833956591122 0 0
		0 0 0.41346833956591122
		0 -0.41346833956591122 0
		0 0 -0.41346833956591122
		;
createNode nurbsCurve -n "rtLegQd0_outRollG_ctlShape1" -p "rtLegQd0_outRollG_ctl";
	rename -uid "BFD11383-4EE9-C7E2-6850-938D212F605A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.41346833956591122
		-0.41346833956591122 0 0
		0 0 -0.41346833956591122
		0.41346833956591122 0 0
		0 0 0.41346833956591122
		0 0.41346833956591122 0
		0.41346833956591122 0 0
		0 0 -0.41346833956591122
		0 0.41346833956591122 0
		-0.41346833956591122 0 0
		0 -0.41346833956591122 0
		0.41346833956591122 0 0
		0 0 0.41346833956591122
		0 -0.41346833956591122 0
		0 0 -0.41346833956591122
		;
createNode nurbsCurve -n "rtLegQd0_toeRollG_ctlShape1" -p "rtLegQd0_toeRollG_ctl";
	rename -uid "0EC8DA37-4011-BA99-BD15-16B0FFA0A19E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.41346833956591122
		-0.41346833956591122 0 0
		0 0 -0.41346833956591122
		0.41346833956591122 0 0
		0 0 0.41346833956591122
		0 0.41346833956591122 0
		0.41346833956591122 0 0
		0 0 -0.41346833956591122
		0 0.41346833956591122 0
		-0.41346833956591122 0 0
		0 -0.41346833956591122 0
		0.41346833956591122 0 0
		0 0 0.41346833956591122
		0 -0.41346833956591122 0
		0 0 -0.41346833956591122
		;
createNode nurbsCurve -n "rtLegQd0_heelRollG_ctlShape1" -p "rtLegQd0_heelRollG_ctl";
	rename -uid "20FD6C76-47E6-C112-7FB3-F7B57F716E96";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.41346833956591122
		-0.41346833956591122 0 0
		0 0 -0.41346833956591122
		0.41346833956591122 0 0
		0 0 0.41346833956591122
		0 0.41346833956591122 0
		0.41346833956591122 0 0
		0 0 -0.41346833956591122
		0 0.41346833956591122 0
		-0.41346833956591122 0 0
		0 -0.41346833956591122 0
		0.41346833956591122 0 0
		0 0 0.41346833956591122
		0 -0.41346833956591122 0
		0 0 -0.41346833956591122
		;
createNode transform -n "rtLegQd0_line_53" -p "rtLegQd0_IK";
	rename -uid "DA0185E3-49F8-EDBF-253B-369C5DD695C5";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape3" -p "rtLegQd0_line_53";
	rename -uid "399CAD8C-4CF6-1214-A2A0-70AEE7A0BF8F";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-7.2527711587907389 40.491407245333093 -22.132170681639963
		-8.6727015988773068 40.632885796443858 2.8064332826075651
		;
createNode transform -n "rtLegQd0_ikc_ofs" -p "rtLegQd0_IK";
	rename -uid "934E1B3D-49D8-D767-A371-498D8450E1D3";
	setAttr ".t" -type "double3" -7.6284932772339937 4.5814736575833166 -38.775022261597961 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_ikc_ofs1" -p "rtLegQd0_ikc_ofs";
	rename -uid "02E72673-4917-6EF1-B310-2EAF9DCA799C";
createNode transform -n "rtLegQd0_ikc" -p "rtLegQd0_ikc_ofs1";
	rename -uid "168C8AED-421C-157E-6BFB-D29309E0D0C9";
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
	rename -uid "7633D32B-4D7A-263C-A274-7A848552888C";
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
		5.0117374492837676 -4.5814736575833157 5.011737449283773
		4.9154383195031501 -4.5814736575833157 5.9894789221248326
		4.6302416517135958 -4.5814736575833157 6.9296463384883449
		4.1671073939181209 -4.5814736575833157 7.7961095918154228
		3.5438335359151232 -4.5814736575833157 8.5555709851988944
		2.7843721425316494 -4.5814736575833157 9.1788448432018956
		1.9179088892045719 -4.5814736575833157 9.6419791009973679
		0.97774147284105906 -4.5814736575833157 9.9271757687869258
		-5.8508772675016416e-16 -4.5814736575833157 10.023474898567541
		-0.97774147284106017 -4.5814736575833157 9.9271757687869258
		-1.9179088892045733 -4.5814736575833157 9.6419791009973679
		-2.7843721425316512 -4.5814736575833157 9.1788448432018956
		-3.5438335359151254 -4.5814736575833157 8.5555709851988961
		-4.1671073939181236 -4.5814736575833157 7.7961095918154237
		-4.6302416517135985 -4.5814736575833157 6.9296463384883449
		-4.9154383195031546 -4.5814736575833157 5.9894789221248317
		-5.0117374492837712 -4.5814736575833157 5.0117374492837712
		-4.9154382899458557 -3.0806546952288656 5.0117374492837721
		-4.6302416293330229 -1.6192708555051145 5.0117374492837721
		-4.1671074886024906 -0.35380180320535448 5.0117374492837721
		-3.5438335350095649 0.65315458244046631 5.0117374492837721
		-2.7843720820282707 1.4114257720322243 5.0117374492837721
		-1.9179088281424901 1.8745599127627566 5.0117374492837721
		-0.97774145134074186 2.1597565733755895 5.0117374492837721
		3.0688041139647086e-16 2.2560557327135049 5.0117374492837721
		0.97774145134074186 2.1597565733755895 5.0117374492837721
		1.9179088281424901 1.8745599127627566 5.0117374492837721
		2.7843720820282707 1.4114257720322243 5.0117374492837721
		3.5438335350095649 0.65315458244046631 5.0117374492837721
		4.1671074886024906 -0.35380180320535448 5.0117374492837721
		4.6302416293330229 -1.6192708555051145 5.0117374492837721
		4.9154382899458557 -3.0806546952288656 5.0117374492837721
		5.0117374492837721 -4.5814736575833157 5.0117374492837721
		5.0117374492837721 -4.5814736575833166 -4.7110332023267452
		5.0117374492837721 -4.2807694106262897 -5.0117374492837721
		4.9154382899458557 -3.0806546952288656 -5.0117374492837721
		4.6302416293330229 -1.6192708555051145 -5.0117374492837721
		4.1671074886024906 -0.35380180320535448 -5.0117374492837721
		3.5438335350095649 0.65315458244046631 -5.0117374492837721
		2.7843720820282707 1.4114257720322243 -5.0117374492837721
		1.9179088281424901 1.8745599127627566 -5.0117374492837721
		0.97774145134074186 2.1597565733755895 -5.0117374492837721
		3.0688041139647086e-16 2.2560557327135049 -5.0117374492837721
		-0.97774145134074186 2.1597565733755895 -5.0117374492837721
		-1.9179088281424901 1.8745599127627566 -5.0117374492837721
		-2.7843720820282707 1.4114257720322243 -5.0117374492837721
		-3.5438335350095649 0.65315458244046631 -5.0117374492837721
		-4.1671074886024906 -0.35380180320535448 -5.0117374492837721
		-4.6302416293330229 -1.6192708555051145 -5.0117374492837721
		-4.9154382899458557 -3.0806546952288656 -5.0117374492837721
		-5.0117374492837721 -4.2807694106262897 -5.0117374492837721
		-5.0117374492837721 -4.5814736575833148 -4.7110332023267452
		-5.0117374492837721 -4.5814736575833157 5.0117374492837721
		;
createNode transform -n "rtLegQd0_ikc_gmb" -p "rtLegQd0_ikc";
	rename -uid "8253B563-44CE-75EF-5060-109427670B65";
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
	rename -uid "BFDAE57F-41AA-97C8-4296-AF805C639C08";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".tw" yes;
	setAttr -s 53 ".cp[0:52]" -type "double3" -1.0023474898567537 0.68375293197137488 
		-0.5011737551918376 -0.98308766390062985 0.68375293197137488 -0.6967220497600497 
		-0.92604833034271916 0.68375293197137488 -0.88475553303275145 -0.83342147878362383 
		0.68375293197137488 -1.0580481836981672 -0.70876670718302437 0.68375293197137488 
		-1.2099404623748615 -0.55687442850632962 0.68375293197137488 -1.3345952339754614 
		-0.38358177784091407 0.68375293197137488 -1.4272220855345559 -0.19554829456821154 
		0.68375293197137488 -1.4842614190924674 2.946532292900578e-16 0.68375293197137488 
		-1.5035212450485904 0.19554829456821221 0.68375293197137488 -1.4842614190924674 0.38358177784091474 
		0.68375293197137488 -1.4272220855345559 0.55687442850633007 0.68375293197137488 -1.3345952339754614 
		0.70876670718302481 0.68375293197137488 -1.2099404623748615 0.83342147878362471 0.68375293197137488 
		-1.0580481836981672 0.92604833034271961 0.68375293197137488 -0.88475553303275145 
		0.98308766390063074 0.68375293197137488 -0.69672204976004881 1.0023474898567537 0.68375293197137488 
		-0.50117375519183671 0.98308765798917097 0.38358913950048468 -0.5011737551918376 
		0.92604832586660457 0.091312371555734684 -0.5011737551918376 0.83342149772049812 
		-0.16178143890421715 -0.5011737551918376 0.7087667070019128 -0.3631727160333813 -0.5011737551918376 
		0.55687441640565405 -0.51482695395173295 -0.5011737551918376 0.38358176562849811 
		-0.6074537820978394 -0.5011737551918376 0.19554829026814857 -0.6644931142204058 -0.5011737551918376 
		1.1625960166073085e-16 -0.68375294608798898 -0.5011737551918376 -0.19554829026814813 
		-0.6644931142204058 -0.5011737551918376 -0.38358176562849766 -0.6074537820978394 
		-0.5011737551918376 -0.55687441640565405 -0.51482695395173295 -0.5011737551918376 
		-0.7087667070019128 -0.3631727160333813 -0.5011737551918376 -0.83342149772049812 
		-0.16178143890421715 -0.5011737551918376 -0.92604832586660457 0.091312371555734684 
		-0.5011737551918376 -0.98308765798917097 0.38358913950048468 -0.5011737551918376 
		-1.0023474898567546 0.68375293197137488 -0.5011737551918376 -1.0023474898567546 0.68375293197137488 
		1.4433803751302658 -1.0023474898567546 0.62361208257996958 1.5035212245216716 -0.98308765798917097 
		0.38358913950048468 1.5035212245216716 -0.92604832586660457 0.091312371555734684 
		1.5035212245216716 -0.83342149772049812 -0.16178143890421715 1.5035212245216716 -0.7087667070019128 
		-0.3631727160333813 1.5035212245216716 -0.55687441640565405 -0.51482695395173295 
		1.5035212245216716 -0.38358176562849766 -0.6074537820978394 1.5035212245216716 -0.19554829026814813 
		-0.6644931142204058 1.5035212245216716 1.1625960166073085e-16 -0.68375294608798898 
		1.5035212245216716 0.19554829026814857 -0.6644931142204058 1.5035212245216716 0.38358176562849811 
		-0.6074537820978394 1.5035212245216716 0.55687441640565405 -0.51482695395173295 1.5035212245216716 
		0.7087667070019128 -0.3631727160333813 1.5035212245216716 0.83342149772049812 -0.16178143890421715 
		1.5035212245216716 0.92604832586660457 0.091312371555734684 1.5035212245216716 0.98308765798917097 
		0.38358913950048468 1.5035212245216716 1.0023474898567546 0.62361208257996958 1.5035212245216716 
		1.0023474898567546 0.68375293197137488 1.4433803751302658 1.0023474898567546 0.68375293197137488 
		-0.5011737551918376;
createNode nurbsCurve -n "rtLegQd0_ikc_gmbShapeOrig" -p "rtLegQd0_ikc_gmb";
	rename -uid "3F00CD01-4221-D6EF-C7B7-D1A5DA0FD5F5";
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
		5.0117374492837676 -4.5814736575833157 5.011737449283773
		4.9154383195031501 -4.5814736575833157 5.9894789221248326
		4.6302416517135958 -4.5814736575833157 6.9296463384883449
		4.1671073939181209 -4.5814736575833157 7.7961095918154228
		3.5438335359151232 -4.5814736575833157 8.5555709851988944
		2.7843721425316494 -4.5814736575833157 9.1788448432018956
		1.9179088892045719 -4.5814736575833157 9.6419791009973679
		0.97774147284105906 -4.5814736575833157 9.9271757687869258
		-5.8508772675016416e-16 -4.5814736575833157 10.023474898567541
		-0.97774147284106017 -4.5814736575833157 9.9271757687869258
		-1.9179088892045733 -4.5814736575833157 9.6419791009973679
		-2.7843721425316512 -4.5814736575833157 9.1788448432018956
		-3.5438335359151254 -4.5814736575833157 8.5555709851988961
		-4.1671073939181236 -4.5814736575833157 7.7961095918154237
		-4.6302416517135985 -4.5814736575833157 6.9296463384883449
		-4.9154383195031546 -4.5814736575833157 5.9894789221248317
		-5.0117374492837712 -4.5814736575833157 5.0117374492837712
		-4.9154382899458557 -3.0806546952288656 5.0117374492837721
		-4.6302416293330229 -1.6192708555051145 5.0117374492837721
		-4.1671074886024906 -0.35380180320535448 5.0117374492837721
		-3.5438335350095649 0.65315458244046631 5.0117374492837721
		-2.7843720820282707 1.4114257720322243 5.0117374492837721
		-1.9179088281424901 1.8745599127627566 5.0117374492837721
		-0.97774145134074186 2.1597565733755895 5.0117374492837721
		3.0688041139647086e-16 2.2560557327135049 5.0117374492837721
		0.97774145134074186 2.1597565733755895 5.0117374492837721
		1.9179088281424901 1.8745599127627566 5.0117374492837721
		2.7843720820282707 1.4114257720322243 5.0117374492837721
		3.5438335350095649 0.65315458244046631 5.0117374492837721
		4.1671074886024906 -0.35380180320535448 5.0117374492837721
		4.6302416293330229 -1.6192708555051145 5.0117374492837721
		4.9154382899458557 -3.0806546952288656 5.0117374492837721
		5.0117374492837721 -4.5814736575833157 5.0117374492837721
		5.0117374492837721 -4.5814736575833166 -4.7110332023267452
		5.0117374492837721 -4.2807694106262897 -5.0117374492837721
		4.9154382899458557 -3.0806546952288656 -5.0117374492837721
		4.6302416293330229 -1.6192708555051145 -5.0117374492837721
		4.1671074886024906 -0.35380180320535448 -5.0117374492837721
		3.5438335350095649 0.65315458244046631 -5.0117374492837721
		2.7843720820282707 1.4114257720322243 -5.0117374492837721
		1.9179088281424901 1.8745599127627566 -5.0117374492837721
		0.97774145134074186 2.1597565733755895 -5.0117374492837721
		3.0688041139647086e-16 2.2560557327135049 -5.0117374492837721
		-0.97774145134074186 2.1597565733755895 -5.0117374492837721
		-1.9179088281424901 1.8745599127627566 -5.0117374492837721
		-2.7843720820282707 1.4114257720322243 -5.0117374492837721
		-3.5438335350095649 0.65315458244046631 -5.0117374492837721
		-4.1671074886024906 -0.35380180320535448 -5.0117374492837721
		-4.6302416293330229 -1.6192708555051145 -5.0117374492837721
		-4.9154382899458557 -3.0806546952288656 -5.0117374492837721
		-5.0117374492837721 -4.2807694106262897 -5.0117374492837721
		-5.0117374492837721 -4.5814736575833148 -4.7110332023267452
		-5.0117374492837721 -4.5814736575833157 5.0117374492837721
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode transform -n "rtLegQd0_smart_ctl_ofs" -p "rtLegQd0_ikc_gmb";
	rename -uid "68117101-44E3-D484-2D5D-2FBE43F89D30";
	setAttr ".t" -type "double3" -1.4639016281800528 -4.5814736575833166 8.0225672499646734 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_smart_ctl" -p "rtLegQd0_smart_ctl_ofs";
	rename -uid "BFE9AA68-463E-8326-3EE9-E8B2CB465DE6";
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
	rename -uid "7D127AD8-4539-319D-2286-8D834890C329";
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
		2.305892007547405 4.7328484994590317e-17 -2.3058920075474076
		1.2766928794448742e-16 6.6932585365921229e-17 -2.0849976994734423
		-2.305892007547405 4.7328484994590292e-17 -2.3058920075474063
		-2.084997699473448 -2.731737270416464e-32 -8.0959895223538546e-16
		-2.305892007547405 -4.7328484994590305e-17 2.305892007547405
		-2.0885564555147587e-16 -6.6932585365921291e-17 2.084997699473444
		2.305892007547405 -4.7328484994590292e-17 2.3058920075474063
		2.084997699473448 -3.9914742782881795e-32 -4.1718190320094039e-16
		2.305892007547405 4.7328484994590317e-17 -2.3058920075474076
		1.2766928794448742e-16 6.6932585365921229e-17 -2.0849976994734423
		-2.305892007547405 4.7328484994590292e-17 -2.3058920075474063
		;
createNode ikHandle -n "rtLegQd0_autoAimJ_ikh" -p "rtLegQd0_ikc";
	rename -uid "B244EF4B-4927-5393-A06E-66892D11D3DA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 8.8817841970012523e-16 7.1054273576010019e-15 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd0_pvc_ofs" -p "rtLegQd0_IK";
	rename -uid "4AED1031-4AB8-672C-89B0-93BC8B093CFD";
	setAttr ".t" -type "double3" -8.6727015988773051 40.632885796443851 2.8064332826075646 ;
	setAttr ".r" -type "double3" -0.32451178407552678 -3.2587342138291033 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_pvc_ofs1" -p "rtLegQd0_pvc_ofs";
	rename -uid "0174F3ED-4FC1-0B8E-9350-84911B30FB5D";
createNode transform -n "rtLegQd0_pvc" -p "rtLegQd0_pvc_ofs1";
	rename -uid "4B0EBFE0-4D27-1EDD-6F27-8EB6A224E83A";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -7.1054273576010019e-15 4.4408920985006262e-15 ;
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".pvPin";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
	setAttr -k on ".space";
createNode nurbsCurve -n "rtLegQd0_pvcShape1" -p "rtLegQd0_pvc";
	rename -uid "690C52B9-4A42-6ABE-0D74-D9865EEDD2E9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.6538733582636449
		-1.6538733582636449 0 0
		0 0 -1.6538733582636449
		1.6538733582636449 0 0
		0 0 1.6538733582636449
		0 1.6538733582636449 0
		1.6538733582636449 0 0
		0 0 -1.6538733582636449
		0 1.6538733582636449 0
		-1.6538733582636449 0 0
		0 -1.6538733582636449 0
		1.6538733582636449 0 0
		0 0 1.6538733582636449
		0 -1.6538733582636449 0
		0 0 -1.6538733582636449
		;
createNode transform -n "rtLegQd0_extraRollG_ofs_loc" -p "rtLegQd0_IK";
	rename -uid "4B173ACF-4839-836E-1744-E185344EC6D3";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -3.4092251121417596 16.228394919459241 85.149414427357257 ;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd0_extraRollG_ofs_locShape" -p "rtLegQd0_extraRollG_ofs_loc";
	rename -uid "02B32BA0-4E7C-656A-3A86-E6AB93C51F54";
	setAttr -k off ".v";
createNode transform -n "rtLegQd0_setting" -p "rtLegQd0_ctl_data";
	rename -uid "B03773F7-4005-10EF-2D9E-FB884571784F";
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
	rename -uid "9FC0B2C2-407D-DDE4-FA9B-DB92440D60CF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-3.3411582995225149 3.3411582995225149 8.3178073186876257e-17
		-3.2769588599639041 3.3411582995225149 -0.65182763422716117
		-3.0868277528886816 3.3411582995225149 -1.2786059650877482
		-2.7780716590683272 3.3411582995225149 -1.8562480546855138
		-2.3625556900063764 3.3411582995225149 -2.3625556900063764
		-1.8562480546855138 3.3411582995225149 -2.7780716590683272
		-1.2786059650877482 3.3411582995225149 -3.0868277528886816
		-0.65182763422716117 3.3411582995225149 -3.2769588599639041
		2.0458694093098058e-16 3.3411582995225149 -3.3411582995225149
		0.65182763422716117 3.3411582995225149 -3.2769588599639041
		1.2786059650877482 3.3411582995225149 -3.0868277528886816
		1.8562480546855138 3.3411582995225149 -2.7780716590683272
		2.3625556900063764 3.3411582995225149 -2.3625556900063764
		2.7780716590683272 3.3411582995225149 -1.8562480546855138
		3.0868277528886816 3.3411582995225149 -1.2786059650877482
		3.2769588599639041 3.3411582995225149 -0.65182763422716117
		3.3411582995225149 3.3411582995225149 -3.6138537097748133e-16
		3.213993185524441 3.3411582995225149 -0.63930294271416344
		2.8518569947644457 3.3411582995225149 -1.1812778450031882
		2.3098820128159994 3.3411582995225149 -1.5434138764443408
		1.6705791497612574 3.3411582995225149 -1.6705791497612574
		1.031276207047094 3.3411582995225149 -1.5434138764443408
		0.48930130475806921 3.3411582995225149 -1.1812778450031882
		0.12716527331691649 3.3411582995225149 -0.63930294271416344
		0 3.3411582995225149 -3.6138537097748133e-16
		-0.12716527331691649 3.3411582995225149 0.63930294271416344
		-0.48930130475806921 3.3411582995225149 1.1812778450031882
		-1.031276207047094 3.3411582995225149 1.5434138764443408
		-1.6705791497612574 3.3411582995225149 1.6705791497612574
		-2.3098820128159994 3.3411582995225149 1.5434138764443408
		-2.8518569947644457 3.3411582995225149 1.1812778450031882
		-3.213993185524441 3.3411582995225149 0.63930294271416344
		-3.3411582995225149 3.3411582995225149 8.3178073186876257e-17
		-3.2769588599639041 3.3411582995225149 0.65182763422716117
		-3.0868277528886816 3.3411582995225149 1.2786059650877482
		-2.7780716590683272 3.3411582995225149 1.8562480546855138
		-2.3625556900063764 3.3411582995225149 2.3625556900063764
		-1.8562480546855138 3.3411582995225149 2.7780716590683272
		-1.2786059650877482 3.3411582995225149 3.0868277528886816
		-0.65182763422716117 3.3411582995225149 3.2769588599639041
		-3.9005848458334714e-16 3.3411582995225149 3.3411582995225149
		0.65182763422716117 3.3411582995225149 3.2769588599639041
		1.2786059650877482 3.3411582995225149 3.0868277528886816
		1.8562480546855138 3.3411582995225149 2.7780716590683272
		2.3625556900063764 3.3411582995225149 2.3625556900063764
		2.7780716590683272 3.3411582995225149 1.8562480546855138
		3.0868277528886816 3.3411582995225149 1.2786059650877482
		3.2769588599639041 3.3411582995225149 0.65182763422716117
		3.3411582995225149 3.3411582995225149 -3.6138537097748133e-16
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_toe01_4_ctl_ofs" -p "rtLegQd0_ctl_data";
	rename -uid "89B4CCEA-463D-F578-502E-57A6CFA8A14A";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_toe01_4_ctl" -p "rtLegQd0_toe01_4_ctl_ofs";
	rename -uid "722C2174-4F77-CBC8-EE37-2C9A155F41FD";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_toe01_4_ctlShape1" -p "rtLegQd0_toe01_4_ctl";
	rename -uid "0736D87C-4C30-6915-5D02-7DBB0C8B510A";
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
		7.0999092972037444e-15 0.26884552439514969 0.2688455243951503
		7.0976236417492072e-15 -1.6964191776938923e-16 0.24309130611620594
		7.0999092972037444e-15 -0.26884552439515003 0.26884552439515008
		7.1054273576010019e-15 -0.24309130611620669 2.0829723123243459e-16
		7.1109454179982585e-15 -0.26884552439515003 -0.26884552439514975
		7.1132310734527965e-15 -2.088775896575946e-16 -0.24309130611620594
		7.1109454179982585e-15 0.26884552439514969 -0.26884552439514986
		7.1054273576010019e-15 0.24309130611620633 1.6254505941174549e-16
		7.0999092972037444e-15 0.26884552439514969 0.2688455243951503
		7.0976236417492072e-15 -1.6964191776938923e-16 0.24309130611620594
		7.0999092972037444e-15 -0.26884552439515003 0.26884552439515008
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_toe02_4_ctl_ofs" -p "rtLegQd0_ctl_data";
	rename -uid "9A5C8486-4BE6-6F3D-6002-A78771245698";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_toe02_4_ctl" -p "rtLegQd0_toe02_4_ctl_ofs";
	rename -uid "C6AB7F06-4ED1-479E-7F00-BEA934F90E92";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_toe02_4_ctlShape1" -p "rtLegQd0_toe02_4_ctl";
	rename -uid "13EE2B1F-4607-A23F-D127-1C87DF49E2C2";
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
		-5.5180603972569307e-18 0.26884552439514986 0.26884552439515019
		-7.8037158517946289e-18 1.4885049496788058e-17 0.24309130611620583
		-5.5180603972569276e-18 -0.26884552439514986 0.26884552439514997
		3.1849511450279452e-33 -0.24309130611620652 9.4391694906384922e-17
		5.5180603972569299e-18 -0.26884552439514986 -0.26884552439514986
		7.8037158517946366e-18 -2.435062239141732e-17 -0.24309130611620605
		5.5180603972569276e-18 0.26884552439514986 -0.26884552439514997
		4.6536871282081372e-33 0.24309130611620652 4.8639523085695812e-17
		-5.5180603972569307e-18 0.26884552439514986 0.26884552439515019
		-7.8037158517946289e-18 1.4885049496788058e-17 0.24309130611620583
		-5.5180603972569276e-18 -0.26884552439514986 0.26884552439514997
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_toe03_4_ctl_ofs" -p "rtLegQd0_ctl_data";
	rename -uid "D43C1033-4320-1121-DE97-08A140E57250";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_toe03_4_ctl" -p "rtLegQd0_toe03_4_ctl_ofs";
	rename -uid "B401C0ED-48F9-0146-6F55-0286F2095733";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_toe03_4_ctlShape1" -p "rtLegQd0_toe03_4_ctl";
	rename -uid "2D0E35C3-4F66-78EC-F088-C7A77C96A1D7";
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
		-5.5180603972569307e-18 0.26884552439514986 0.26884552439515019
		-7.8037158517946289e-18 1.4885049496788058e-17 0.24309130611620583
		-5.5180603972569276e-18 -0.26884552439514986 0.26884552439514997
		3.1849511450279452e-33 -0.24309130611620652 9.4391694906384922e-17
		5.5180603972569299e-18 -0.26884552439514986 -0.26884552439514986
		7.8037158517946366e-18 -2.435062239141732e-17 -0.24309130611620605
		5.5180603972569276e-18 0.26884552439514986 -0.26884552439514997
		4.6536871282081372e-33 0.24309130611620652 4.8639523085695812e-17
		-5.5180603972569307e-18 0.26884552439514986 0.26884552439515019
		-7.8037158517946289e-18 1.4885049496788058e-17 0.24309130611620583
		-5.5180603972569276e-18 -0.26884552439514986 0.26884552439514997
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_toe04_4_ctl_ofs" -p "rtLegQd0_ctl_data";
	rename -uid "345ADF8C-4313-F2A2-7DFA-81BCC9AECAD6";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd0_toe04_4_ctl" -p "rtLegQd0_toe04_4_ctl_ofs";
	rename -uid "CC6921E9-4A2C-1EE5-70B3-0E8041C7B345";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd0_toe04_4_ctlShape1" -p "rtLegQd0_toe04_4_ctl";
	rename -uid "8CA6A7B8-4FFA-22BC-D18E-48A340FE95CA";
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
		-5.5180603972569307e-18 0.26884552439514986 0.26884552439515019
		-7.8037158517946289e-18 1.4885049496788058e-17 0.24309130611620583
		-5.5180603972569276e-18 -0.26884552439514986 0.26884552439514997
		3.1849511450279452e-33 -0.24309130611620652 9.4391694906384922e-17
		5.5180603972569299e-18 -0.26884552439514986 -0.26884552439514986
		7.8037158517946366e-18 -2.435062239141732e-17 -0.24309130611620605
		5.5180603972569276e-18 0.26884552439514986 -0.26884552439514997
		4.6536871282081372e-33 0.24309130611620652 4.8639523085695812e-17
		-5.5180603972569307e-18 0.26884552439514986 0.26884552439515019
		-7.8037158517946289e-18 1.4885049496788058e-17 0.24309130611620583
		-5.5180603972569276e-18 -0.26884552439514986 0.26884552439514997
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd0_anchorF1" -p "master_ctl";
	rename -uid "220F1549-4480-4F21-BD3B-E79E064E061A";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd0_anchorF1Shape" -p "rtLegQd0_anchorF1";
	rename -uid "0E43D765-46F3-97E0-BFFA-9D890DBFC93D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 3.1163834288241139 3.1163834288241139 3.1163834288241139 ;
createNode transform -n "rtLegQd1_ctl_data" -p "master_ctl";
	rename -uid "779FFE41-49AF-F310-D1A3-49B985A8B3C0";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_FK" -p "rtLegQd1_ctl_data";
	rename -uid "22E190E1-4053-EBEA-33AF-38BC4571962A";
	setAttr -cb on ".ro";
createNode joint -n "rtLegQd1_hip_fk" -p "rtLegQd1_FK";
	rename -uid "5891B68F-41FD-65B6-A70D-4D81EFF1E198";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.1878708825604098 29.189704617139078 77.800209130523982 ;
	setAttr ".radi" 1.510272632487947;
createNode joint -n "rtLegQd1_upr_fk" -p "rtLegQd1_hip_fk";
	rename -uid "19BE412C-4E32-1DDE-010A-ECB0824056E5";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -176.36206915280155 -61.402027391942383 10.608547169899598 ;
	setAttr ".radi" 1.510272632487947;
createNode joint -n "rtLegQd1_lwr_fk" -p "rtLegQd1_upr_fk";
	rename -uid "662EAA81-4F54-FF89-E784-C09F24E29AB0";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -32.572365256841863 0 ;
	setAttr ".radi" 1.510272632487947;
createNode joint -n "rtLegQd1_palm_fk" -p "rtLegQd1_lwr_fk";
	rename -uid "39CA38E0-4A47-4A31-0C17-44A2A86ED904";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 174.51382157609763 0.34690762756695337 0.55067656956348232 ;
	setAttr ".radi" 1.510272632487947;
createNode joint -n "rtLegQd1_digit_fk" -p "rtLegQd1_palm_fk";
	rename -uid "4BC6A06C-47B1-CFDF-6843-3392B3815E39";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -13.491889250720417 75.491141985610483 -13.0766349112714 ;
	setAttr ".radi" 1.510272632487947;
createNode transform -n "rtLegQd1_ball_fkc_SPACE_1_ofs" -p "rtLegQd1_digit_fk";
	rename -uid "95DE637B-4688-F402-C9D2-DEA7524E18B2";
	setAttr ".t" -type "double3" -4.09718311134435 1.7763568394002505e-15 -1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" 0.11817735961003852 -36.311780755793059 0.30844930894797917 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "rtLegQd1_ball_fkc_SPACE_1" -p "rtLegQd1_ball_fkc_SPACE_1_ofs";
	rename -uid "CF311C1B-419A-A127-3648-0E918D88FAD1";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode transform -n "rtLegQd1_ball_fk_SPACE_2_ofs" -p "rtLegQd1_digit_fk";
	rename -uid "1DF19B54-451D-F21A-5518-C3AB480B04B4";
	setAttr ".t" -type "double3" -4.0971831113443358 0 -8.8817841970012523e-15 ;
	setAttr ".r" -type "double3" 0.11817735961002757 -36.311780755793023 0.30844930894800426 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
createNode transform -n "rtLegQd1_ball_fk_SPACE_2" -p "rtLegQd1_ball_fk_SPACE_2_ofs";
	rename -uid "71226794-4B63-0735-6933-4896BCF7AD52";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fk_ofs" -p "rtLegQd1_digit_fk";
	rename -uid "F2B39BD9-45CA-D6FB-488A-A590A70E8866";
	setAttr ".t" -type "double3" -4.0971831113443358 0 -1.0658141036401503e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
createNode joint -n "rtLegQd1_ball_fk" -p "rtLegQd1_ball_fk_ofs";
	rename -uid "5E32C2F0-4C3A-0090-9417-7189E74CF106";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -1.9841194633973579e-14 -2.5387849824166225e-14 5.2677936911739541e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 8.7465253740246703e-15 6.361109362927032e-15 -5.5659706925611528e-15 ;
	setAttr ".radi" 1.510272632487947;
createNode joint -n "rtLegQd1_tip_fk" -p "rtLegQd1_ball_fk";
	rename -uid "9EC22F49-4C47-EFEA-2C18-FCA08C47AA48";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.7362915691878129 0 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 3.5771691908085179 50.343747700230146 4.6422174961580041 ;
	setAttr ".radi" 1.510272632487947;
createNode transform -n "rtLegQd1_upr_fkc_ofs" -p "rtLegQd1_FK";
	rename -uid "BB855A33-4353-AAA0-0E40-1283288D8ADB";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_upr_fkc" -p "rtLegQd1_upr_fkc_ofs";
	rename -uid "039071B6-4417-A332-2F91-01A1867AF65E";
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
	rename -uid "1E905544-44ED-F5C3-4BB4-F79042FE616A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.6045090328703058e-16 -7.8173314767124866 -7.8173314767124955
		2.2691184352353276e-16 -4.3281868361191832e-16 -7.0684655186011698
		1.6045090328703051e-16 7.8173314767124866 -7.8173314767124902
		-9.2610129530084919e-32 7.0684655186011902 -2.7446659913421885e-15
		-1.6045090328703056e-16 7.8173314767124866 7.8173314767124866
		-2.2691184352353296e-16 7.0805302534320585e-16 7.0684655186011769
		-1.6045090328703051e-16 -7.8173314767124866 7.8173314767124902
		-1.3531716755173743e-31 -7.0684655186011902 -1.4143113436072255e-15
		1.6045090328703058e-16 -7.8173314767124866 -7.8173314767124955
		2.2691184352353276e-16 -4.3281868361191832e-16 -7.0684655186011698
		1.6045090328703051e-16 7.8173314767124866 -7.8173314767124902
		;
createNode transform -n "rtLegQd1_lwr_fkc_ofs" -p "rtLegQd1_FK";
	rename -uid "E9C3A4B7-4376-99FB-DCAC-E49D0FA70CD5";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_lwr_fkc" -p "rtLegQd1_lwr_fkc_ofs";
	rename -uid "A4A2ECE0-49C8-BE3E-756D-BE894910350D";
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
	rename -uid "651C5A3C-434F-6A61-1410-3D8BC064457A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.6045090328703058e-16 -7.8173314767124866 -7.8173314767124955
		2.2691184352353276e-16 -4.3281868361191832e-16 -7.0684655186011698
		1.6045090328703051e-16 7.8173314767124866 -7.8173314767124902
		-9.2610129530084919e-32 7.0684655186011902 -2.7446659913421885e-15
		-1.6045090328703056e-16 7.8173314767124866 7.8173314767124866
		-2.2691184352353296e-16 7.0805302534320585e-16 7.0684655186011769
		-1.6045090328703051e-16 -7.8173314767124866 7.8173314767124902
		-1.3531716755173743e-31 -7.0684655186011902 -1.4143113436072255e-15
		1.6045090328703058e-16 -7.8173314767124866 -7.8173314767124955
		2.2691184352353276e-16 -4.3281868361191832e-16 -7.0684655186011698
		1.6045090328703051e-16 7.8173314767124866 -7.8173314767124902
		;
createNode transform -n "rtLegQd1_palm_fkc_ofs" -p "rtLegQd1_FK";
	rename -uid "12636F29-425C-D8A7-28AF-2E93728FED12";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_palm_fkc" -p "rtLegQd1_palm_fkc_ofs";
	rename -uid "286F806B-4E20-6612-D50C-BE968D2EDEAD";
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
	rename -uid "F8510F01-42CA-ED27-0CCE-68A95C12762C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.6045090328703058e-16 -7.8173314767124866 -7.8173314767124955
		2.2691184352353276e-16 -4.3281868361191832e-16 -7.0684655186011698
		1.6045090328703051e-16 7.8173314767124866 -7.8173314767124902
		-9.2610129530084919e-32 7.0684655186011902 -2.7446659913421885e-15
		-1.6045090328703056e-16 7.8173314767124866 7.8173314767124866
		-2.2691184352353296e-16 7.0805302534320585e-16 7.0684655186011769
		-1.6045090328703051e-16 -7.8173314767124866 7.8173314767124902
		-1.3531716755173743e-31 -7.0684655186011902 -1.4143113436072255e-15
		1.6045090328703058e-16 -7.8173314767124866 -7.8173314767124955
		2.2691184352353276e-16 -4.3281868361191832e-16 -7.0684655186011698
		1.6045090328703051e-16 7.8173314767124866 -7.8173314767124902
		;
createNode transform -n "rtLegQd1_digit_fkc_ofs" -p "rtLegQd1_FK";
	rename -uid "B16C7587-4CBE-5EDF-CB0B-858CA3719C2F";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_digit_fkc" -p "rtLegQd1_digit_fkc_ofs";
	rename -uid "8A354653-4625-D6A8-6BC7-8ABF7E8FB21A";
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
createNode nurbsCurve -n "rtLegQd1_digit_fkcShape1" -p "rtLegQd1_digit_fkc";
	rename -uid "CDC982D6-45EA-64F1-9630-C3A3E1BA27BA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.6045090328703058e-16 -7.8173314767124866 -7.8173314767124955
		2.2691184352353276e-16 -4.3281868361191832e-16 -7.0684655186011698
		1.6045090328703051e-16 7.8173314767124866 -7.8173314767124902
		-9.2610129530084919e-32 7.0684655186011902 -2.7446659913421885e-15
		-1.6045090328703056e-16 7.8173314767124866 7.8173314767124866
		-2.2691184352353296e-16 7.0805302534320585e-16 7.0684655186011769
		-1.6045090328703051e-16 -7.8173314767124866 7.8173314767124902
		-1.3531716755173743e-31 -7.0684655186011902 -1.4143113436072255e-15
		1.6045090328703058e-16 -7.8173314767124866 -7.8173314767124955
		2.2691184352353276e-16 -4.3281868361191832e-16 -7.0684655186011698
		1.6045090328703051e-16 7.8173314767124866 -7.8173314767124902
		;
createNode transform -n "rtLegQd1_ikc_matcher" -p "rtLegQd1_digit_fkc";
	rename -uid "A924F6B8-404E-B092-EDE6-F996BBC37E60";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -1.4210854715202004e-14 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 75.898489160717915 0.81728633010226748 -86.750209618245265 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "rtLegQd1_quadScap_ofs" -p "rtLegQd1_FK";
	rename -uid "90BC81B5-4435-70B4-D125-A2A9EB898B7F";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_quadScap" -p "rtLegQd1_quadScap_ofs";
	rename -uid "327270F5-4E92-59CC-52A2-359C5F9C029B";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999989 ;
createNode transform -n "rtLegQd1_hip_fkc_ofs" -p "rtLegQd1_quadScap";
	rename -uid "B112A569-4C1A-E3B4-F440-6281F89DA876";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd1_hip_fkc" -p "rtLegQd1_hip_fkc_ofs";
	rename -uid "13D750CF-405E-FFB3-3F09-D4A7BDD5CFFF";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "autoAim" -ln "autoAim" -dv 0.3 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -k on ".autoAim";
createNode nurbsCurve -n "rtLegQd1_hip_fkcShape1" -p "rtLegQd1_hip_fkc";
	rename -uid "8A7BE9CD-4CFF-D6C8-FB97-EBA99542D11C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-3.9086657383562433 15.10272632487947 3.9086657383562478
		-2.1640934180595916e-16 15.10272632487947 3.5342327593005849
		3.9086657383562433 15.10272632487947 3.9086657383562451
		3.5342327593005951 15.10272632487947 1.3723329956710942e-15
		3.9086657383562433 15.10272632487947 -3.9086657383562433
		3.5402651267160293e-16 15.10272632487947 -3.5342327593005884
		-3.9086657383562433 15.10272632487947 -3.9086657383562451
		-3.5342327593005951 15.10272632487947 7.0715567180361275e-16
		-3.9086657383562433 15.10272632487947 3.9086657383562478
		-2.1640934180595916e-16 15.10272632487947 3.5342327593005849
		3.9086657383562433 15.10272632487947 3.9086657383562451
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd1_scap_fkc_ofs" -p "rtLegQd1_hip_fkc";
	rename -uid "89517470-414A-9948-E29D-88B8F5D645BE";
	setAttr ".t" -type "double3" -19.589722460236658 1.9539925233402755e-14 -5.6843418860808015e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999956 0.99999999999999967 ;
createNode transform -n "rtLegQd1_scap_fkc" -p "rtLegQd1_scap_fkc_ofs";
	rename -uid "E0EEFF36-4836-B8C3-0E7B-86A0162BB881";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtLegQd1_scap_fkcShape1" -p "rtLegQd1_scap_fkc";
	rename -uid "D43C40D1-440F-D24B-B0EC-868A3678AE5A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 6 7 8 9 10 11 14 15 18 19
		10
		28.317611859149004 0 -1.8878407906099341
		28.317611859149007 0 1.8878407906099333
		26.429771068539072 0 2.8317611859149006
		24.54193027792914 0 1.8878407906099341
		24.541930277929136 0 -1.8878407906099333
		28.317611859149004 0 -1.8878407906099341
		24.541930277929136 0 -1.8878407906099333
		24.54193027792914 0 1.8878407906099341
		26.429771068539072 0 2.8317611859149006
		28.317611859149007 0 1.8878407906099333
		;
createNode joint -n "rtLegQd1_autoAim" -p "rtLegQd1_quadScap_ofs";
	rename -uid "AFCD6459-420D-29DB-91D7-6680E11963CE";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -173.0539921989326 -28.849521003393843 8.5346862732716104 ;
	setAttr ".radi" 2.2654089487319204;
createNode joint -n "rtLegQd1_autoAim_end" -p "rtLegQd1_autoAim";
	rename -uid "545103A6-4121-9330-0791-F386C1DA29B8";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -70.867554338613843 -2.4868995751603507e-14 -3.5527136788005009e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.1805546814635168e-15 3.9756933518293979e-16 3.5781240166464568e-15 ;
	setAttr ".radi" 2.2654089487319204;
createNode ikEffector -n "effector51" -p "rtLegQd1_autoAim";
	rename -uid "3D84B7EA-459A-B3FA-5F69-70BE05ED470B";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikHandle -n "rtLegQd1_legLock_ikh" -p "rtLegQd1_quadScap_ofs";
	rename -uid "4700711A-4BC0-D78D-CA7D-2F9231749A7D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 0 ;
	setAttr ".r" -type "double3" -6.9460078010672976 28.849521003393811 -171.46531372672843 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_ballOfsG" -p "rtLegQd1_FK";
	rename -uid "4419C0B3-459E-4612-9DD3-3B975831A007";
	setAttr ".t" -type "double3" -6.5563385234044134 3.8802126196262012 36.346189347652739 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fkc_ofs" -p "rtLegQd1_ballOfsG";
	rename -uid "64D84303-4F13-75A1-BF5D-4C83388281CF";
	setAttr ".t" -type "double3" -0.23224220235308124 -0.99984551574162195 3.9665191556345576 ;
	setAttr ".r" -type "double3" -3.8380993850600271 39.500623875665255 87.556460576236233 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ball_fkc_ofs1" -p "rtLegQd1_ball_fkc_ofs";
	rename -uid "242F15B8-465A-1CD1-C9FA-A4A50965975A";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999967 ;
createNode transform -n "rtLegQd1_ball_fkc" -p "rtLegQd1_ball_fkc_ofs1";
	rename -uid "D986C72D-45DF-1A66-3E9A-10BD19C6DE02";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 1 0.99999999999999967 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegQd1_ball_fkcShape1" -p "rtLegQd1_ball_fkc";
	rename -uid "E7EF6888-4973-E2A6-C3D3-A4B69EA3C36D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		8.0225451643515292e-17 -3.9086657383562433 -3.9086657383562478
		1.1345592176176638e-16 -2.1640934180595916e-16 -3.5342327593005849
		8.0225451643515255e-17 3.9086657383562433 -3.9086657383562451
		-4.630506476504246e-32 3.5342327593005951 -1.3723329956710942e-15
		-8.022545164351528e-17 3.9086657383562433 3.9086657383562433
		-1.1345592176176648e-16 3.5402651267160293e-16 3.5342327593005884
		-8.0225451643515255e-17 -3.9086657383562433 3.9086657383562451
		-6.7658583775868716e-32 -3.5342327593005951 -7.0715567180361275e-16
		8.0225451643515292e-17 -3.9086657383562433 -3.9086657383562478
		1.1345592176176638e-16 -2.1640934180595916e-16 -3.5342327593005849
		8.0225451643515255e-17 3.9086657383562433 -3.9086657383562451
		;
createNode ikHandle -n "rtLegQd1_3_ikh" -p "rtLegQd1_ball_fkc";
	rename -uid "AC28703F-441E-7B3A-0035-9EA6F81B9522";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.7362915691877916 -6.2172489379008766e-15 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.63608662221668344 -0.05165006702279322 0.7698870564008149 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_ball_fk_SPACE_1_ofs" -p "rtLegQd1_ball_fkc";
	rename -uid "5EA9A33F-45E9-82A0-4E8B-22A24D45EE59";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -3.5527136788005009e-15 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000004 ;
createNode transform -n "rtLegQd1_ball_fk_SPACE_1" -p "rtLegQd1_ball_fk_SPACE_1_ofs";
	rename -uid "1C7255F6-43D1-C437-74A9-30804A9C735A";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000004 0.99999999999999978 ;
createNode ikHandle -n "rtLegQd1_toe01_2_ikh" -p "rtLegQd1_ball_fkc";
	rename -uid "5D6BF92E-439E-13D3-25D5-CF82F2F6E420";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.38777173389291519 -2.869651092227445 -1.2512814870986091 ;
	setAttr ".r" -type "double3" 4.8254231270374657 9.0288403454591588 4.7085321783247034 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000007 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.636086622216683 -0.051650067022793331 0.76988705640081556 ;
	setAttr ".roc" yes;
createNode ikHandle -n "rtLegQd1_toe02_2_ikh" -p "rtLegQd1_ball_fkc";
	rename -uid "008245F4-4D62-3FCC-5A18-949468451FBB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.02743213563378788 -1.148911007729863 0.059268831595034044 ;
	setAttr ".r" -type "double3" 3.9654459559388191 35.993857292378564 4.986687789145634 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000007 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.636086622216683 -0.051650067022793331 0.76988705640081556 ;
	setAttr ".roc" yes;
createNode ikHandle -n "rtLegQd1_toe03_2_ikh" -p "rtLegQd1_ball_fkc";
	rename -uid "07B5D342-45FA-C0AF-8B0A-6B9D7E5955E4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.15672518086124754 1.1376437205388346 -0.077097667468109421 ;
	setAttr ".r" -type "double3" -5.0052022952485178 36.879647213121729 -6.322261339240308 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000007 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.636086622216683 -0.051650067022793331 0.76988705640081556 ;
	setAttr ".roc" yes;
createNode ikHandle -n "rtLegQd1_toe04_2_ikh" -p "rtLegQd1_ball_fkc";
	rename -uid "99770A49-43DA-F68E-74A0-839B4FA26DEF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.0442356871489835 2.8280168475935472 -2.2397237688809568 ;
	setAttr ".r" -type "double3" -8.8667987093833833 8.2050254139097696 -8.6028389325244454 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.636086622216683 -0.051650067022793331 0.76988705640081556 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_toe01_3_ikc_ofs" -p "rtLegQd1_ball_fkc_ofs1";
	rename -uid "EDD53EB2-44D4-04A3-69FF-6E95F913414C";
	setAttr ".t" -type "double3" 0.38777173389291875 -2.8696510922274427 -1.2512814870986055 ;
	setAttr ".r" -type "double3" 18.003547274455723 -24.411234345894815 6.3742377091505169 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd1_toe01_3_ikc_ofs1" -p "rtLegQd1_toe01_3_ikc_ofs";
	rename -uid "93C992B4-4DFD-3C58-95DF-0D9A1ED06386";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toe01_3_ikc" -p "rtLegQd1_toe01_3_ikc_ofs1";
	rename -uid "00FFA4C5-4B1B-B34C-B06A-E99F84ACAD2A";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe01_3_ikcShape1" -p "rtLegQd1_toe01_3_ikc";
	rename -uid "9CB9F163-4D47-CB34-E43B-989782EC0A5D";
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
		-9.1644097399469359e-16 -2.2610043435654745e-16 7.1054273576010011e-15
		-9.1644097399469359e-16 -2.2610043435654745e-16 0.85572934425285752
		-0.098817723332037088 -2.2610043435654745e-16 0.85572934425285752
		-0.098817723332037088 -2.2610043435654745e-16 1.0533647909169306
		0.098817723332035257 -2.2610043435654745e-16 1.0533647909169306
		0.098817723332035257 -2.2610043435654745e-16 0.85572934425285752
		-9.1644097399469359e-16 -2.2610043435654745e-16 0.85572934425285752
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegQd1_toe01_3_1_ikj_ikh" -p "rtLegQd1_toe01_3_ikc";
	rename -uid "5D0F48B4-48F5-CA9E-9BFE-E2A509AC03B3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.5626297883771176 0.63301354941129517 1.8229884513739023 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.26268181899084331 0.3165067762804436 0.9114942251820487 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_toe02_3_ikc_ofs" -p "rtLegQd1_ball_fkc_ofs1";
	rename -uid "449FF081-424F-C112-DF39-EBA698C7FCC6";
	setAttr ".t" -type "double3" -0.02743213563378788 -1.1489110077298603 0.059268831595041149 ;
	setAttr ".r" -type "double3" 12.167306374090062 -26.791116494147719 3.555756293920207 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "rtLegQd1_toe02_3_ikc_ofs1" -p "rtLegQd1_toe02_3_ikc_ofs";
	rename -uid "76878442-4487-08E2-B418-EDBD01C2B939";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "rtLegQd1_toe02_3_ikc" -p "rtLegQd1_toe02_3_ikc_ofs1";
	rename -uid "2DF195CF-4B0E-B2C7-6CAE-3FA405F9253C";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe02_3_ikcShape1" -p "rtLegQd1_toe02_3_ikc";
	rename -uid "EC4938B5-4928-365C-6A30-D0AB96CA0735";
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
		-1.8328819479893872e-15 2.2610043435654745e-16 -7.1054273576010011e-15
		-1.8328819479893872e-15 2.2610043435654745e-16 0.8557293442528433
		-0.098817723332038004 2.2610043435654745e-16 0.8557293442528433
		-0.098817723332038004 2.2610043435654745e-16 1.0533647909169164
		0.098817723332034341 2.2610043435654745e-16 1.0533647909169164
		0.098817723332034341 2.2610043435654745e-16 0.8557293442528433
		-1.8328819479893872e-15 2.2610043435654745e-16 0.8557293442528433
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegQd1_toe02_3_1_ikj_ikh" -p "rtLegQd1_toe02_3_ikc";
	rename -uid "C414A9E2-4275-4327-966C-0CBEDD9CCF33";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.8662743381252822 0.38727278489830752 1.9109939114979611 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999944 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.22255452150265725 0.19363639407788252 0.95549695543588142 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_toe03_3_ikc_ofs" -p "rtLegQd1_ball_fkc_ofs1";
	rename -uid "FC81DBAA-45D2-7721-9177-E38FCE67E946";
	setAttr ".t" -type "double3" 0.15672518086125464 1.137643720538839 -0.077097667468109421 ;
	setAttr ".r" -type "double3" 13.378399613383589 -26.778509649870543 3.929240357572243 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000002 1 ;
createNode transform -n "rtLegQd1_toe03_3_ikc_ofs1" -p "rtLegQd1_toe03_3_ikc_ofs";
	rename -uid "CBEA31CB-41C4-2440-76D6-098CBCF1C291";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000002 ;
createNode transform -n "rtLegQd1_toe03_3_ikc" -p "rtLegQd1_toe03_3_ikc_ofs1";
	rename -uid "090F727A-4173-327A-4BB9-46805218A4ED";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe03_3_ikcShape1" -p "rtLegQd1_toe03_3_ikc";
	rename -uid "FE580CAC-452D-B840-854F-CF8D73821860";
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
		-1.8328819479893872e-15 0 0
		-1.8328819479893872e-15 0 0.85572934425285041
		-0.098817723332038004 0 0.85572934425285041
		-0.098817723332038004 0 1.0533647909169235
		0.098817723332034341 0 1.0533647909169235
		0.098817723332034341 0 0.85572934425285041
		-1.8328819479893872e-15 0 0.85572934425285041
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegQd1_toe03_3_1_ikj_ikh" -p "rtLegQd1_toe03_3_ikc";
	rename -uid "E05600F6-4848-C3BA-BE38-55A5E2D43302";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.7955488836422253 0.43566116712211667 1.9004187101316106 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000009 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.22282732860694282 0.21783058518133533 0.95020935471371359 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_toe04_3_ikc_ofs" -p "rtLegQd1_ball_fkc_ofs1";
	rename -uid "2AE841B1-4D8F-491E-D272-64BC5CD603CD";
	setAttr ".t" -type "double3" 1.0442356871489871 2.828016847593549 -2.2397237688809497 ;
	setAttr ".r" -type "double3" 12.252398878086726 -33.824460196654975 1.6170225290283569 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "rtLegQd1_toe04_3_ikc_ofs1" -p "rtLegQd1_toe04_3_ikc_ofs";
	rename -uid "339E885D-4AEC-FD80-F670-31A18ADC47E1";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000004 ;
createNode transform -n "rtLegQd1_toe04_3_ikc" -p "rtLegQd1_toe04_3_ikc_ofs1";
	rename -uid "7CFDC4D4-4834-F635-9D46-12817BE12A52";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe04_3_ikcShape1" -p "rtLegQd1_toe04_3_ikc";
	rename -uid "13A0D52D-4F15-66EA-0FEB-219E11708658";
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
		2.291102434986734e-16 3.3266132444439533e-15 6.9923771404227276e-15
		2.291102434986734e-16 3.3266132444439533e-15 0.8557293442528574
		-0.098817723332035937 3.3266132444439533e-15 0.8557293442528574
		-0.098817723332035937 3.3266132444439533e-15 1.0533647909169304
		0.098817723332036408 3.3266132444439533e-15 1.0533647909169304
		0.098817723332036408 3.3266132444439533e-15 0.8557293442528574
		2.291102434986734e-16 3.3266132444439533e-15 0.8557293442528574
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegQd1_toe04_3_1_ikj_ikh" -p "rtLegQd1_toe04_3_ikc";
	rename -uid "6D8F9716-4671-2F3B-5C4C-DAA88131EBAC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.0556628781092585 0.35620465595729556 1.9576566670581954 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999889 0.99999999999999922 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.10086949114154553 0.17810232961225406 0.97882833323496121 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_IK" -p "rtLegQd1_ctl_data";
	rename -uid "967D52FF-4952-2A70-7F43-D3999CB22C94";
	setAttr -cb on ".ro";
createNode joint -n "rtLegQd1_hip_ik" -p "rtLegQd1_IK";
	rename -uid "81E2BA99-4F40-A725-F90E-6096698BEF2D";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.1878708825604098 29.189704617139078 77.800209130523982 ;
	setAttr ".radi" 2.2654089487319204;
createNode joint -n "rtLegQd1_upr_ik" -p "rtLegQd1_hip_ik";
	rename -uid "4FF8A37A-416A-23E7-4845-908D6797B74C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -19.589722460236683 -1.7763568394002505e-15 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 2.1802680386999819e-15 -1.3872179782028085e-05 -6.3767358146625714e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -176.36206915280155 -61.402027391942383 10.608547169899598 ;
	setAttr ".radi" 2.2654089487319204;
createNode joint -n "rtLegQd1_lwr_ik" -p "rtLegQd1_upr_ik";
	rename -uid "C1307AAF-4E0D-32F4-F758-C39F809C2859";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -19.895986025125822 1.7763568394002505e-15 -9.7699626167013776e-15 ;
	setAttr ".r" -type "double3" 1.2438893758593934e-20 2.3795604470149375e-05 -4.2592647935044096e-20 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 -32.572365256841863 0 ;
	setAttr ".radi" 2.2654089487319204;
createNode joint -n "rtLegQd1_palm_ik" -p "rtLegQd1_lwr_ik";
	rename -uid "A89C46C6-4163-C98B-258C-8DA5CEC7163C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -27.185365881276574 1.4210854715202004e-14 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -1.547516523108848e-07 1.5552399809798728e-05 1.5134176761277545e-06 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 174.51382157609763 0.34690762756695337 0.55067656956348232 ;
	setAttr ".radi" 2.2654089487319204;
createNode joint -n "rtLegQd1_digit_ik" -p "rtLegQd1_palm_ik";
	rename -uid "93199C10-490E-0F94-5074-B2972BB07DD4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -10.025702856031041 -0.25029452353601656 1.4625183496183425 ;
	setAttr ".r" -type "double3" 8.4456105511676625e-07 -8.0960944761854231e-30 1.0984926222070949e-21 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -13.491889250720417 75.491141985610483 -13.0766349112714 ;
	setAttr ".radi" 2.2654089487319204;
createNode joint -n "rtLegQd1_ball_ik" -p "rtLegQd1_digit_ik";
	rename -uid "DBE15708-47EE-E3FE-F64F-3B9F746868F5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.09718311134435 0 -5.3290705182007514e-15 ;
	setAttr ".r" -type "double3" 4.7201884316688931e-07 7.3951243956435257e-30 -1.795307212745313e-21 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0.11817735961004197 -36.311780755793023 0.30844930894799655 ;
	setAttr ".radi" 2.2654089487319204;
createNode joint -n "rtLegQd1_tip_ik" -p "rtLegQd1_ball_ik";
	rename -uid "26AE6693-44ED-2F4A-7350-208614B6224B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.7362915691878129 0 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 3.5771691908085179 50.343747700230146 4.6422174961580041 ;
	setAttr ".radi" 2.2654089487319204;
createNode ikEffector -n "effector49" -p "rtLegQd1_ball_ik";
	rename -uid "F7F83603-4D34-90F2-4D6D-BC92C492ADB7";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector48" -p "rtLegQd1_digit_ik";
	rename -uid "046578A3-4D71-5365-D444-65A03945E8C6";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector47" -p "rtLegQd1_palm_ik";
	rename -uid "DD8CC05E-483D-FBA4-65FB-58A10678A3A2";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector46" -p "rtLegQd1_lwr_ik";
	rename -uid "A8FDD028-4D0F-BB47-A1FF-13802DBBBD3B";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "rtLegQd1_softJ" -p "rtLegQd1_hip_ik";
	rename -uid "D7C2D84F-45E5-D884-9922-059CFED8EF15";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -19.589722460236672 -1.7763568394002505e-15 -2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 89.979129619392154 -42.550184613231018 12.205315048981378 ;
createNode joint -n "rtLegQd1_softJ_end" -p "rtLegQd1_softJ";
	rename -uid "29FDEF93-4860-E054-59DB-C6BFFE46AD6D";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -45.238327026367188 1.7763568394002505e-14 2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 3.1805546814635176e-15 -3.5781240166464568e-15 -2.385416011097638e-15 ;
createNode ikEffector -n "effector50" -p "rtLegQd1_softJ";
	rename -uid "3531040A-4A60-2C68-CE9B-C0BCC3B02E47";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegQd1_pvc_SPACE_1_ofs" -p "rtLegQd1_softJ";
	rename -uid "1742A163-4731-2299-FC74-8B876DB22448";
	setAttr ".t" -type "double3" -23.563659495108638 -27.788614892316655 -1.1567664130136617 ;
	setAttr ".r" -type "double3" 179.14752540867315 87.672552887786267 76.639519262722075 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "rtLegQd1_pvc_SPACE_1" -p "rtLegQd1_pvc_SPACE_1_ofs";
	rename -uid "B23C80A7-4A82-EA8B-0AC2-7EBE0B4324F1";
	setAttr ".t" -type "double3" 0 7.1054273576010019e-15 0 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999967 ;
createNode transform -n "rtLegQd1_ikCstG" -p "rtLegQd1_IK";
	rename -uid "A9283B69-4146-3ACF-1F89-15A81DE0AFAD";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_heelRollG" -p "rtLegQd1_ikCstG";
	rename -uid "89DBEC8A-4127-E8A2-5338-95AAF0121CB1";
	setAttr ".t" -type "double3" -0.90397694971567422 -13.905917933200026 0.58016245404608924 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_heelRollG_ctl" -p "rtLegQd1_heelRollG";
	rename -uid "80C9005C-490B-3291-7FD4-11B093665953";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_toeRollG" -p "rtLegQd1_heelRollG_ctl";
	rename -uid "D9B5F610-46C8-5EB7-1492-3ABFD712F078";
	setAttr ".t" -type "double3" 2.6645352591003757e-15 0 7.8132388181902996 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toeRollG_ctl" -p "rtLegQd1_toeRollG";
	rename -uid "7BF4820D-4A67-96A0-B85E-31A845FE53BE";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_footRollG" -p "rtLegQd1_toeRollG_ctl";
	rename -uid "A3B5F76B-48FF-3B36-3EB1-538067B1BABD";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_outRollG" -p "rtLegQd1_footRollG";
	rename -uid "959333B6-474F-9B36-A25F-BBB4DF5CB9E9";
	setAttr ".t" -type "double3" -2.1735779586575772 0 -1.3965053866766297 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_outRollG_ctl" -p "rtLegQd1_outRollG";
	rename -uid "0B213542-48C3-7CD9-CC20-27A2D5A25588";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_inRollG" -p "rtLegQd1_outRollG_ctl";
	rename -uid "6AE829CB-41E6-FD45-B22E-1AAFC731E8AB";
	setAttr ".t" -type "double3" 6.7956132775613423 0 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_inRollG_ctl" -p "rtLegQd1_inRollG";
	rename -uid "97BD2B84-4511-1533-4BE4-E49130C93DDE";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegQd1_ballRollG" -p "rtLegQd1_inRollG_ctl";
	rename -uid "1011BAC7-41DB-6F8E-AD95-B19BF7B5A62F";
	setAttr ".t" -type "double3" -3.7000059825266503 2.880367103884574 -1.5678580202873746 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ballG_ikc" -p "rtLegQd1_ballRollG";
	rename -uid "69F4C3A8-4567-F547-9DAF-F59929CF59BF";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtLegQd1_ballG_ikcShape1" -p "rtLegQd1_ballG_ikc";
	rename -uid "8A6DCAD2-4BA9-66DF-B8CA-A3981DA67D38";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 25 0 no 3
		26 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		26
		-4.6769981155288038e-17 6.7875513896817026 4.1287245333866223e-16
		-4.517633130218296e-17 6.8135777592238789 0.19768902468483193
		-4.0503991458072178e-17 6.889882888225646 0.38190585637259489
		-3.3071368449524971e-17 7.0112667839087113 0.54009643854386646
		-2.3384990577644019e-17 7.1694572760607187 0.66148039423977345
		-1.2104961186966999e-17 7.3536741377549033 0.73778546322869842
		1.4322168272910436e-32 7.5513631624397348 0.76381171274518977
		1.2104961186966999e-17 7.7490521871245663 0.73778546322869842
		2.3384990577644019e-17 7.9332690488187509 0.66148039423977345
		3.3071368449524971e-17 8.0914595409707584 0.54009643854386646
		4.0503991458072178e-17 8.2128439167565634 0.38190585637259489
		4.517633130218296e-17 8.2891485656555908 0.19768902468483193
		4.6769981155288038e-17 8.3151749351977671 2.25700169483588e-16
		4.517633130218296e-17 8.2891485656555908 -0.19768902468483193
		4.0503991458072178e-17 8.2128439167565634 -0.38190585637259489
		3.3071368449524971e-17 8.0914595409707584 -0.54009643854386646
		2.3384990577644019e-17 7.9332690488187509 -0.66148039423977345
		1.2104961186966999e-17 7.7490521871245663 -0.73778546322869842
		-3.4991784048564525e-32 7.5513631624397348 -0.76381171274518977
		-1.2104961186966999e-17 7.3536741377549033 -0.73778546322869842
		-2.3384990577644019e-17 7.1694572760607187 -0.66148039423977345
		-3.3071368449524971e-17 7.0112667839087113 -0.54009643854386646
		-4.0503991458072178e-17 6.889882888225646 -0.38190585637259489
		-4.517633130218296e-17 6.8135777592238789 -0.19768902468483193
		-4.6769981155288038e-17 6.7875513896817026 4.1287245333866223e-16
		0 0 0
		;
createNode transform -n "rtLegQd1_extraRollG_ofs" -p "rtLegQd1_ballG_ikc";
	rename -uid "DCD54D2A-4B60-3B3A-EAA6-2CAD34F1273C";
	setAttr ".t" -type "double3" 0.23224213687456885 0.99984797328440989 -3.966519515654042 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_extraRollG_ofs1" -p "rtLegQd1_extraRollG_ofs";
	rename -uid "C012B2E2-40E6-A37D-994D-88A3C6883F10";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
	setAttr ".r" -type "double3" 170.57027692020947 0 89.657128700477585 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_extraRollG" -p "rtLegQd1_extraRollG_ofs1";
	rename -uid "BFD0CE1F-4557-B30D-7D36-DC8B9B28CF5E";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_extra_ikc" -p "rtLegQd1_extraRollG";
	rename -uid "93254EC2-4AA4-2331-CB75-98AD19788A69";
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
	rename -uid "940A48D7-4D7E-36D1-EA5F-95A01AC43419";
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
		4.5083903037874906 7.5513631624397348 0
		4.1859289767043375 9.2852316408288367 0
		3.2037715087116161 10.755134671151351 0
		1.7338684783891025 11.737292139144072 0
		0 12.059647747144009 0
		-1.7338684783891025 11.737292139144072 0
		-3.2037715087116161 10.755134671151351 0
		-4.1859289767043375 9.2852316408288367 0
		-4.5083903037874906 7.5513629488355356 0
		-4.1859289767043375 5.8174946840506321 0
		-3.2037715087116161 4.3475916537281183 0
		-1.7338684783891025 3.3654341857353973 0
		1.8003839050039827e-07 3.0430785777354608 -0.030655513587685208
		1.7338684783891025 3.3654341857353973 0
		3.2037715087116161 4.3475916537281183 0
		4.1859289767043375 5.8174946840506321 0
		4.5083903037874906 7.5513631624397348 0
		4.1652080363938131 7.5630948393097741 -1.7252478422890676
		3.187913646229072 7.5730406490152076 -3.187844173688672
		1.7252871093771196 7.5796862109971306 -4.1651174200367702
		1.8003839050039827e-07 7.582019884245514 -4.5082906257947446
		-1.7252871093771196 7.5796862109971306 -4.1651174200367702
		-3.187913646229072 7.5730406490152076 -3.187844173688672
		-4.1652080363938131 7.5630948393097741 -1.7252478422890676
		-4.5083903037874906 7.5513629488355356 0
		-4.1652080363938131 7.5396310626933634 1.7252418011985982
		-3.187913646229072 7.5296852529879299 3.1878411531434367
		-1.7252871093771196 7.5230396910060069 4.1651113789463006
		1.8003839050039827e-07 7.520706138579432 4.5082845847042741
		1.7252871093771196 7.5230396910060069 4.1651113789463006
		3.187913646229072 7.5296852529879299 3.1878411531434367
		4.1652080363938131 7.5396310626933634 1.7252418011985982
		4.5083903037874906 7.5513631624397348 0
		4.1652080363938131 7.5630948393097741 -1.7252478422890676
		3.187913646229072 7.5730406490152076 -3.187844173688672
		1.7252871093771196 7.5796862109971306 -4.1651174200367702
		1.8003839050039827e-07 7.582019884245514 -4.5082906257947446
		1.8003839050039827e-07 9.3049316368500108 -4.1533826017996862
		1.8003839050039827e-07 10.760879748187884 -3.1661657205387241
		1.8003839050039827e-07 11.728206339077882 -1.6969241896226253
		0 12.059647747144009 0
		1.8003839050039827e-07 11.704742743694187 1.7535684744102753
		1.8003839050039827e-07 10.717525862433224 3.2095135652029154
		1.8003839050039827e-07 9.2482873520623592 4.1768431766381484
		1.8003839050039827e-07 7.520706138579432 4.5082845847042741
		1.8003839050039827e-07 5.7977946880294597 4.1533765607092175
		1.8003839050039827e-07 4.3418465766915855 3.1661596794482549
		1.8003839050039827e-07 3.3745199858015864 1.6969181485321554
		1.8003839050039827e-07 3.0430785777354608 -0.030655513587685208
		1.8003839050039827e-07 3.397983581185283 -1.7535745155007449
		1.8003839050039827e-07 4.385200462446246 -3.2095196062933842
		1.8003839050039827e-07 5.8544389728171096 -4.1768492177286189
		1.8003839050039827e-07 7.582019884245514 -4.5082906257947446
		;
createNode transform -n "rtLegQd1_extraRollG_ofs2" -p "rtLegQd1_extra_ikc";
	rename -uid "38DA255C-436E-629B-DE33-AB9D22FDD9D8";
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegQd1_X_ikh" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "BE8382D9-4DD5-A173-397A-599EA2E039F3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.4210854715202004e-14 7.1054273576010019e-15 -2.1316282072803006e-14 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999957 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 1.0000000000000002 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_dist_loc1" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "3FF20621-4B50-BFC6-7D7A-D3904C3DF7B6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.25029452353602455 10.025702856031049 -1.4625183496183567 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode locator -n "rtLegQd1_dist_loc1Shape" -p "rtLegQd1_dist_loc1";
	rename -uid "65F7A821-497E-DF52-3352-92BED9DAC778";
	setAttr -k off ".v";
createNode transform -n "rtLegQd1_softJ_posGrp" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "89009F81-49E6-C530-A9F5-76A0FC47BF2B";
	setAttr ".t" -type "double3" -0.25029452353602455 10.025702856031046 -1.4625183496183567 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "rtLegQd1_1_ikh_ofs" -p "rtLegQd1_extraRollG_ofs2";
	rename -uid "C9BFA9FA-4261-1878-4DBE-C7821496DC42";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode ikHandle -n "rtLegQd1_1_ikh" -p "rtLegQd1_1_ikh_ofs";
	rename -uid "07457B1A-40E1-5EE7-7776-87BEA4AD0C52";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_toe_wiggle_grp" -p "rtLegQd1_inRollG_ctl";
	rename -uid "DAACB2C5-4AAD-A145-668B-EF9E57363816";
	setAttr ".t" -type "double3" -3.7000059825266503 2.880367103884574 -1.5678580202873746 ;
	setAttr ".r" -type "double3" -3.8380993850600129 39.500623875665262 87.556460576236248 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode ikHandle -n "rtLegQd1_2_ikh" -p "rtLegQd1_toe_wiggle_grp";
	rename -uid "7A008773-47B6-A1FB-F061-468779A328FE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.1316282072803006e-14 1.5987211554602254e-14 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -0.37332514108575621 36.310291538791617 -0.46962295000967752 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999967 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.636086622216683 -0.051650067022793109 0.7698870564008149 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegQd1_ball_fkc_SPACE_2_ofs" -p "rtLegQd1_toe_wiggle_grp";
	rename -uid "63720D9A-472F-EA3F-248B-C2B27BB20432";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 1.9539925233402755e-14 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "rtLegQd1_ball_fkc_SPACE_2" -p "rtLegQd1_ball_fkc_SPACE_2_ofs";
	rename -uid "38E7D464-4E67-7FF2-51B3-0797FBBD9B69";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999989 1 ;
createNode nurbsCurve -n "rtLegQd1_inRollG_ctlShape1" -p "rtLegQd1_inRollG_ctl";
	rename -uid "8C6FC86F-4A0C-A114-F397-078B271F55BA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.4672405956759586
		-0.4672405956759586 0 0
		0 0 -0.4672405956759586
		0.4672405956759586 0 0
		0 0 0.4672405956759586
		0 0.4672405956759586 0
		0.4672405956759586 0 0
		0 0 -0.4672405956759586
		0 0.4672405956759586 0
		-0.4672405956759586 0 0
		0 -0.4672405956759586 0
		0.4672405956759586 0 0
		0 0 0.4672405956759586
		0 -0.4672405956759586 0
		0 0 -0.4672405956759586
		;
createNode nurbsCurve -n "rtLegQd1_outRollG_ctlShape1" -p "rtLegQd1_outRollG_ctl";
	rename -uid "A8F600C7-4DCE-4DFF-1595-A6BA040016F8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.4672405956759586
		-0.4672405956759586 0 0
		0 0 -0.4672405956759586
		0.4672405956759586 0 0
		0 0 0.4672405956759586
		0 0.4672405956759586 0
		0.4672405956759586 0 0
		0 0 -0.4672405956759586
		0 0.4672405956759586 0
		-0.4672405956759586 0 0
		0 -0.4672405956759586 0
		0.4672405956759586 0 0
		0 0 0.4672405956759586
		0 -0.4672405956759586 0
		0 0 -0.4672405956759586
		;
createNode nurbsCurve -n "rtLegQd1_toeRollG_ctlShape1" -p "rtLegQd1_toeRollG_ctl";
	rename -uid "618C38E8-44E7-3163-FCEB-8EBAD503AAE4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.4672405956759586
		-0.4672405956759586 0 0
		0 0 -0.4672405956759586
		0.4672405956759586 0 0
		0 0 0.4672405956759586
		0 0.4672405956759586 0
		0.4672405956759586 0 0
		0 0 -0.4672405956759586
		0 0.4672405956759586 0
		-0.4672405956759586 0 0
		0 -0.4672405956759586 0
		0.4672405956759586 0 0
		0 0 0.4672405956759586
		0 -0.4672405956759586 0
		0 0 -0.4672405956759586
		;
createNode nurbsCurve -n "rtLegQd1_heelRollG_ctlShape1" -p "rtLegQd1_heelRollG_ctl";
	rename -uid "0D053C0D-4553-C1BB-4829-4697395E9F3A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 0.4672405956759586
		-0.4672405956759586 0 0
		0 0 -0.4672405956759586
		0.4672405956759586 0 0
		0 0 0.4672405956759586
		0 0.4672405956759586 0
		0.4672405956759586 0 0
		0 0 -0.4672405956759586
		0 0.4672405956759586 0
		-0.4672405956759586 0 0
		0 -0.4672405956759586 0
		0.4672405956759586 0 0
		0 0 0.4672405956759586
		0 -0.4672405956759586 0
		0 0 -0.4672405956759586
		;
createNode transform -n "rtLegQd1_line_53" -p "rtLegQd1_IK";
	rename -uid "A66A5039-4BAE-CFE7-96DA-10807763CB5B";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape4" -p "rtLegQd1_line_53";
	rename -uid "03611AA6-4618-396E-0AF7-FA90ADDDC59A";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-7.0824493703723199 41.089527378570089 34.744818165453395
		-9.1798497785781823 41.415276495648492 12.953339738975783
		;
createNode transform -n "rtLegQd1_ikc_ofs" -p "rtLegQd1_IK";
	rename -uid "AB9583E6-43A9-5061-00AE-93B95F51552A";
	setAttr ".t" -type "double3" -6.5563385888829053 3.8802150771689838 36.346188987633248 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_ikc_ofs1" -p "rtLegQd1_ikc_ofs";
	rename -uid "CE3C161C-4B0B-E951-35A9-C0AA97020812";
createNode transform -n "rtLegQd1_ikc" -p "rtLegQd1_ikc_ofs1";
	rename -uid "1B4236DD-4402-58E6-B53F-738FCC8997D2";
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
	rename -uid "3C8B1529-4E01-9B01-2980-1B9C9A971C23";
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
		5.6635223718297958 -3.8802150771689825 5.663522371829802
		5.554699377525055 -3.8802150771689825 6.768420775095624
		5.2324124012533257 -3.8802150771689825 7.8308585523581025
		4.7090467507721119 -3.8802150771689825 8.8100068156590119
		4.0047150745225686 -3.880215077168983 9.6682374463523697
		3.1464844438292099 -3.880215077168983 10.372569122601915
		2.1673361805283005 -3.880215077168983 10.895934773083129
		1.1048984032658209 -3.880215077168983 11.218221749354859
		-6.6117937411229546e-16 -3.880215077168983 11.327044743659599
		-1.1048984032658222 -3.880215077168983 11.218221749354859
		-2.1673361805283018 -3.880215077168983 10.895934773083129
		-3.1464844438292121 -3.880215077168983 10.372569122601915
		-4.0047150745225712 -3.880215077168983 9.6682374463523715
		-4.7090467507721154 -3.8802150771689825 8.8100068156590137
		-5.2324124012533284 -3.8802150771689825 7.8308585523581025
		-5.5546993775250595 -3.8802150771689825 6.7684207750956231
		-5.6635223718298002 -3.8802150771689825 5.6635223718298002
		-5.5546993441237849 -2.1842120731457886 5.6635223718298011
		-5.2324123759621211 -0.53277279607655403 5.6635223718298011
		-4.7090468577703435 0.89727264446865762 5.6635223718298011
		-4.0047150734992414 2.0351854093077235 5.6635223718298011
		-3.1464843754572644 2.8920710481954193 5.6635223718298011
		-2.1673361115249916 3.4154365663871968 5.6635223718298011
		-1.1048983789693512 3.7377235345488597 5.6635223718298011
		3.4679072736913362e-16 3.846546562254876 5.6635223718298011
		1.1048983789693512 3.7377235345488597 5.6635223718298011
		2.1673361115249916 3.4154365663871968 5.6635223718298011
		3.1464843754572644 2.8920710481954193 5.6635223718298011
		4.0047150734992414 2.0351854093077235 5.6635223718298011
		4.7090468577703435 0.89727264446865762 5.6635223718298011
		5.2324123759621211 -0.53277279607655403 5.6635223718298011
		5.5546993441237849 -2.1842120731457886 5.6635223718298011
		5.6635223718298011 -3.8802150771689825 5.6635223718298011
		5.6635223718298011 -3.8802150771689838 -5.3237110295200125
		5.6635223718298011 -3.5404037348591944 -5.6635223718298011
		5.5546993441237849 -2.1842120731457886 -5.6635223718298011
		5.2324123759621211 -0.53277279607655403 -5.6635223718298011
		4.7090468577703435 0.89727264446865762 -5.6635223718298011
		4.0047150734992414 2.0351854093077235 -5.6635223718298011
		3.1464843754572644 2.8920710481954193 -5.6635223718298011
		2.1673361115249916 3.4154365663871968 -5.6635223718298011
		1.1048983789693512 3.7377235345488597 -5.6635223718298011
		3.4679072736913362e-16 3.846546562254876 -5.6635223718298011
		-1.1048983789693512 3.7377235345488597 -5.6635223718298011
		-2.1673361115249916 3.4154365663871968 -5.6635223718298011
		-3.1464843754572644 2.8920710481954193 -5.6635223718298011
		-4.0047150734992414 2.0351854093077235 -5.6635223718298011
		-4.7090468577703435 0.89727264446865762 -5.6635223718298011
		-5.2324123759621211 -0.53277279607655403 -5.6635223718298011
		-5.5546993441237849 -2.1842120731457886 -5.6635223718298011
		-5.6635223718298011 -3.5404037348591944 -5.6635223718298011
		-5.6635223718298011 -3.8802150771689821 -5.3237110295200125
		-5.6635223718298011 -3.8802150771689825 5.6635223718298011
		;
createNode transform -n "rtLegQd1_ikc_gmb" -p "rtLegQd1_ikc";
	rename -uid "A4BA9997-49E3-DE87-347E-DFAC0B21E692";
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
	rename -uid "B640034F-438D-5126-9753-15945B21A22A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".tw" yes;
	setAttr -s 53 ".cp[0:52]" -type "double3" -1.1327044743659593 0.77267616362715597 
		-0.5663522500159841 -1.1109398755050108 0.77267616362715597 -0.78733193066914886 
		-1.0464824802506651 0.77267616362715597 -0.99981948612164384 -0.94180935015442202 
		0.77267616362715597 -1.1956491387818264 -0.80094301490451336 0.77267616362715597 
		-1.3672952649204984 -0.62929688876584189 0.77267616362715597 -1.508161600170407 -0.43346723610565996 
		0.77267616362715597 -1.6128347302666501 -0.22097968065316409 0.77267616362715597 
		-1.6772921255209958 1.3223587482245907e-16 0.77267616362715597 -1.6990567243819434 
		0.22097968065316442 0.77267616362715597 -1.6772921255209958 0.43346723610566018 0.77267616362715597 
		-1.6128347302666501 0.62929688876584233 0.77267616362715597 -1.508161600170407 0.80094301490451425 
		0.77267616362715597 -1.3672952649204984 0.94180935015442291 0.77267616362715597 -1.1956491387818264 
		1.0464824802506651 0.77267616362715597 -0.99981948612164384 1.1109398755050117 0.77267616362715597 
		-0.78733193066914797 1.1327044743659602 0.77267616362715597 -0.5663522500159841 1.1109398688247571 
		0.43347556282251709 -0.56635225001598499 1.0464824751924242 0.10318770740867012 -0.56635225001598499 
		0.94180937155406852 -0.18282138070037213 -0.56635225001598499 0.80094301469984819 
		-0.41040393366818506 -0.56635225001598499 0.62929687509145271 -0.58178106144572439 
		-0.56635225001598499 0.43346722230499823 -0.68645416508407964 -0.56635225001598499 
		0.22097967579387023 -0.75091155871641213 -0.56635225001598499 -6.9358145473826685e-17 
		-0.77267616425761565 -0.56635225001598499 -0.22097967579387023 -0.75091155871641213 
		-0.56635225001598499 -0.43346722230499823 -0.68645416508407964 -0.56635225001598499 
		-0.62929687509145271 -0.58178106144572439 -0.56635225001598499 -0.80094301469984819 
		-0.41040393366818506 -0.56635225001598499 -0.94180937155406852 -0.18282138070037213 
		-0.56635225001598499 -1.0464824751924242 0.10318770740867012 -0.56635225001598499 
		-1.1109398688247571 0.43347556282251709 -0.56635225001598499 -1.1327044743659602 
		0.77267616362715597 -0.56635225001598499 -1.1327044743659602 0.77267616362715597 
		1.6310944302539778 -1.1327044743659602 0.70471389516519833 1.6990566987159359 -1.1109398688247571 
		0.43347556282251709 1.6990566987159359 -1.0464824751924242 0.10318770740867012 1.6990566987159359 
		-0.94180937155406852 -0.18282138070037213 1.6990566987159359 -0.80094301469984819 
		-0.41040393366818506 1.6990566987159359 -0.62929687509145271 -0.58178106144572439 
		1.6990566987159359 -0.43346722230499823 -0.68645416508407964 1.6990566987159359 -0.22097967579387023 
		-0.75091155871641213 1.6990566987159359 -6.9358145473826685e-17 -0.77267616425761565 
		1.6990566987159359 0.22097967579387023 -0.75091155871641213 1.6990566987159359 0.43346722230499823 
		-0.68645416508407964 1.6990566987159359 0.62929687509145271 -0.58178106144572439 
		1.6990566987159359 0.80094301469984819 -0.41040393366818506 1.6990566987159359 0.94180937155406852 
		-0.18282138070037213 1.6990566987159359 1.0464824751924242 0.10318770740867012 1.6990566987159359 
		1.1109398688247571 0.43347556282251709 1.6990566987159359 1.1327044743659602 0.70471389516519833 
		1.6990566987159359 1.1327044743659602 0.77267616362715552 1.6310944302539778 1.1327044743659602 
		0.77267616362715597 -0.56635225001598499;
createNode nurbsCurve -n "rtLegQd1_ikc_gmbShapeOrig" -p "rtLegQd1_ikc_gmb";
	rename -uid "41F5814E-466B-6CBB-AC49-92935A3E3495";
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
		5.6635223718297958 -3.8802150771689825 5.663522371829802
		5.554699377525055 -3.8802150771689825 6.768420775095624
		5.2324124012533257 -3.8802150771689825 7.8308585523581025
		4.7090467507721119 -3.8802150771689825 8.8100068156590119
		4.0047150745225686 -3.880215077168983 9.6682374463523697
		3.1464844438292099 -3.880215077168983 10.372569122601915
		2.1673361805283005 -3.880215077168983 10.895934773083129
		1.1048984032658209 -3.880215077168983 11.218221749354859
		-6.6117937411229546e-16 -3.880215077168983 11.327044743659599
		-1.1048984032658222 -3.880215077168983 11.218221749354859
		-2.1673361805283018 -3.880215077168983 10.895934773083129
		-3.1464844438292121 -3.880215077168983 10.372569122601915
		-4.0047150745225712 -3.880215077168983 9.6682374463523715
		-4.7090467507721154 -3.8802150771689825 8.8100068156590137
		-5.2324124012533284 -3.8802150771689825 7.8308585523581025
		-5.5546993775250595 -3.8802150771689825 6.7684207750956231
		-5.6635223718298002 -3.8802150771689825 5.6635223718298002
		-5.5546993441237849 -2.1842120731457886 5.6635223718298011
		-5.2324123759621211 -0.53277279607655403 5.6635223718298011
		-4.7090468577703435 0.89727264446865762 5.6635223718298011
		-4.0047150734992414 2.0351854093077235 5.6635223718298011
		-3.1464843754572644 2.8920710481954193 5.6635223718298011
		-2.1673361115249916 3.4154365663871968 5.6635223718298011
		-1.1048983789693512 3.7377235345488597 5.6635223718298011
		3.4679072736913362e-16 3.846546562254876 5.6635223718298011
		1.1048983789693512 3.7377235345488597 5.6635223718298011
		2.1673361115249916 3.4154365663871968 5.6635223718298011
		3.1464843754572644 2.8920710481954193 5.6635223718298011
		4.0047150734992414 2.0351854093077235 5.6635223718298011
		4.7090468577703435 0.89727264446865762 5.6635223718298011
		5.2324123759621211 -0.53277279607655403 5.6635223718298011
		5.5546993441237849 -2.1842120731457886 5.6635223718298011
		5.6635223718298011 -3.8802150771689825 5.6635223718298011
		5.6635223718298011 -3.8802150771689838 -5.3237110295200125
		5.6635223718298011 -3.5404037348591944 -5.6635223718298011
		5.5546993441237849 -2.1842120731457886 -5.6635223718298011
		5.2324123759621211 -0.53277279607655403 -5.6635223718298011
		4.7090468577703435 0.89727264446865762 -5.6635223718298011
		4.0047150734992414 2.0351854093077235 -5.6635223718298011
		3.1464843754572644 2.8920710481954193 -5.6635223718298011
		2.1673361115249916 3.4154365663871968 -5.6635223718298011
		1.1048983789693512 3.7377235345488597 -5.6635223718298011
		3.4679072736913362e-16 3.846546562254876 -5.6635223718298011
		-1.1048983789693512 3.7377235345488597 -5.6635223718298011
		-2.1673361115249916 3.4154365663871968 -5.6635223718298011
		-3.1464843754572644 2.8920710481954193 -5.6635223718298011
		-4.0047150734992414 2.0351854093077235 -5.6635223718298011
		-4.7090468577703435 0.89727264446865762 -5.6635223718298011
		-5.2324123759621211 -0.53277279607655403 -5.6635223718298011
		-5.5546993441237849 -2.1842120731457886 -5.6635223718298011
		-5.6635223718298011 -3.5404037348591944 -5.6635223718298011
		-5.6635223718298011 -3.8802150771689821 -5.3237110295200125
		-5.6635223718298011 -3.8802150771689825 5.6635223718298011
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode transform -n "rtLegQd1_smart_ctl_ofs" -p "rtLegQd1_ikc_gmb";
	rename -uid "466E5592-498A-9A11-DB17-D7B1FB9D4914";
	setAttr ".t" -type "double3" -1.1542714732516837 -3.8802150771689838 6.9308829226180535 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_smart_ctl" -p "rtLegQd1_smart_ctl_ofs";
	rename -uid "C1B10C2F-493E-764E-F3A2-C2A5F139551F";
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
	rename -uid "07C5B58B-4454-D628-A103-78A8EB0F50ED";
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
		2.6057771589041621 5.3483634429010195e-17 -2.6057771589041652
		1.4427289453730611e-16 7.5637281174510921e-17 -2.3561551728670564
		-2.6057771589041621 5.3483634429010164e-17 -2.6057771589041634
		-2.3561551728670631 -3.0870043176694971e-32 -9.1488866378072949e-16
		-2.6057771589041621 -5.3483634429010182e-17 2.6057771589041621
		-2.3601767511440195e-16 -7.5637281174510995e-17 2.3561551728670587
		2.6057771589041621 -5.3483634429010164e-17 2.6057771589041634
		2.3561551728670631 -4.5105722517245816e-32 -4.714371145357418e-16
		2.6057771589041621 5.3483634429010195e-17 -2.6057771589041652
		1.4427289453730611e-16 7.5637281174510921e-17 -2.3561551728670564
		-2.6057771589041621 5.3483634429010164e-17 -2.6057771589041634
		;
createNode ikHandle -n "rtLegQd1_autoAimJ_ikh" -p "rtLegQd1_ikc";
	rename -uid "0DB8E4D0-4063-4600-AACE-BD8161610839";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.2172489379008766e-15 -2.8421709430404007e-14 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode joint -n "rtLegQd1_legLock" -p "rtLegQd1_ikc";
	rename -uid "C7F99CD6-4731-961A-D7EB-B4BE496ED53A";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -8.3424034830611244 -0.4680790161630215 -93.188693568690297 ;
	setAttr ".radi" 1.510272632487947;
createNode joint -n "rtLegQd1_legLock_end" -p "rtLegQd1_legLock";
	rename -uid "9A8FB573-427F-3589-EABF-6CB4571E95DA";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -70.867554338613814 -2.1316282072803006e-14 0 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 1.510272632487947;
createNode ikEffector -n "effector52" -p "rtLegQd1_legLock";
	rename -uid "964080E2-43BC-2FAD-4E88-08A6217B593B";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegQd1_pvc_ofs" -p "rtLegQd1_IK";
	rename -uid "38799A5C-454F-730A-997A-1D85D3A02926";
	setAttr ".t" -type "double3" -9.1798497785781823 41.415276495648499 12.953339738975782 ;
	setAttr ".r" -type "double3" -0.85247459132736192 -174.50229338151311 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_pvc_ofs1" -p "rtLegQd1_pvc_ofs";
	rename -uid "D4236E15-45CE-7D7E-A1A7-5AADC79D47E4";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "rtLegQd1_pvc" -p "rtLegQd1_pvc_ofs1";
	rename -uid "22154AEA-4DD1-889D-565B-E1BB3C61A0B1";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 -3.5527136788005009e-15 ;
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
createNode nurbsCurve -n "rtLegQd1_pvcShape1" -p "rtLegQd1_pvc";
	rename -uid "259A9B4A-40D7-CC66-1E05-2CA8344B9A2C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.8689623827038344
		-1.8689623827038344 0 0
		0 0 -1.8689623827038344
		1.8689623827038344 0 0
		0 0 1.8689623827038344
		0 1.8689623827038344 0
		1.8689623827038344 0 0
		0 0 -1.8689623827038344
		0 1.8689623827038344 0
		-1.8689623827038344 0 0
		0 -1.8689623827038344 0
		1.8689623827038344 0 0
		0 0 1.8689623827038344
		0 -1.8689623827038344 0
		0 0 -1.8689623827038344
		;
createNode transform -n "rtLegQd1_extraRollG_ofs_loc" -p "rtLegQd1_IK";
	rename -uid "E15650A8-4A7C-9455-4078-36A02D012326";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 6.4847072250354802 -147.88746500753572 -92.904553348445475 ;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd1_extraRollG_ofs_locShape" -p "rtLegQd1_extraRollG_ofs_loc";
	rename -uid "38014422-46E4-D32F-1A02-B7A0629F6379";
	setAttr -k off ".v";
createNode transform -n "rtLegQd1_setting" -p "rtLegQd1_ctl_data";
	rename -uid "696DFBD7-4A8C-17A1-AD5D-45AB45954258";
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
	rename -uid "01AB9C80-4B70-56DD-5D30-F4B1E88978AF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-3.7756815812198674 3.7756815812198674 9.3995522133126201e-17
		-3.7031328960825229 3.7756815812198674 -0.73659891931290067
		-3.4882749173080807 3.7756815812198674 -1.444890831035925
		-3.1393645718468957 3.7756815812198674 -2.0976562503048428
		-2.6698100489994938 3.7756815812198674 -2.6698100489994938
		-2.0976562503048428 3.7756815812198674 -3.1393645718468957
		-1.444890831035925 3.7756815812198674 -3.4882749173080807
		-0.73659891931290067 3.7756815812198679 -3.7031328960825229
		2.3119381824608908e-16 3.7756815812198679 -3.7756815812198674
		0.73659891931290067 3.7756815812198679 -3.7031328960825229
		1.444890831035925 3.7756815812198674 -3.4882749173080807
		2.0976562503048428 3.7756815812198674 -3.1393645718468957
		2.6698100489994938 3.7756815812198674 -2.6698100489994938
		3.1393645718468957 3.7756815812198674 -2.0976562503048428
		3.4882749173080807 3.7756815812198674 -1.444890831035925
		3.7031328960825229 3.7756815812198674 -0.73659891931290067
		3.7756815812198674 3.7756815812198674 -4.0838414902909044e-16
		3.6319784293025017 3.7756815812198674 -0.72244537050833058
		3.2227458151096804 3.7756815812198674 -1.3349050244997469
		2.6102860710990003 3.7756815812198674 -1.7441374586540404
		1.8878407906099337 3.7756815812198674 -1.8878407906099337
		1.1653954201016032 3.7756815812198674 -1.7441374586540404
		0.55293576611018691 3.7756815812198674 -1.3349050244997469
		0.14370333195589327 3.7756815812198674 -0.72244537050833058
		0 3.7756815812198674 -4.0838414902909044e-16
		-0.14370333195589327 3.7756815812198674 0.72244537050833058
		-0.55293576611018691 3.7756815812198674 1.3349050244997469
		-1.1653954201016032 3.7756815812198674 1.7441374586540404
		-1.8878407906099337 3.7756815812198674 1.8878407906099337
		-2.6102860710990003 3.7756815812198674 1.7441374586540404
		-3.2227458151096804 3.7756815812198674 1.3349050244997469
		-3.6319784293025017 3.7756815812198674 0.72244537050833058
		-3.7756815812198674 3.7756815812198674 9.3995522133126201e-17
		-3.7031328960825229 3.7756815812198674 0.73659891931290067
		-3.4882749173080807 3.7756815812198674 1.444890831035925
		-3.1393645718468957 3.7756815812198674 2.0976562503048428
		-2.6698100489994938 3.7756815812198674 2.6698100489994938
		-2.0976562503048428 3.7756815812198674 3.1393645718468957
		-1.444890831035925 3.7756815812198674 3.4882749173080807
		-0.73659891931290067 3.775681581219867 3.7031328960825229
		-4.4078624950225982e-16 3.775681581219867 3.7756815812198674
		0.73659891931290067 3.775681581219867 3.7031328960825229
		1.444890831035925 3.7756815812198674 3.4882749173080807
		2.0976562503048428 3.7756815812198674 3.1393645718468957
		2.6698100489994938 3.7756815812198674 2.6698100489994938
		3.1393645718468957 3.7756815812198674 2.0976562503048428
		3.4882749173080807 3.7756815812198674 1.444890831035925
		3.7031328960825229 3.7756815812198674 0.73659891931290067
		3.7756815812198674 3.7756815812198674 -4.0838414902909044e-16
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd1_toe01_4_ctl_ofs" -p "rtLegQd1_ctl_data";
	rename -uid "3D5A5B35-47DB-93F2-557E-F0BE0BC50717";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toe01_4_ctl" -p "rtLegQd1_toe01_4_ctl_ofs";
	rename -uid "C752DC0A-49C9-B2DF-CE66-689996830A00";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe01_4_ctlShape1" -p "rtLegQd1_toe01_4_ctl";
	rename -uid "56E6A674-4DE6-A338-B91B-0187BA8E2FDF";
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
		-6.7612656898314461e-18 0.32941575283613783 0.32941575283613822
		-9.5618736373675231e-18 1.8238614152194799e-17 0.29785917319006944
		-6.7612656898314423e-18 -0.32941575283613783 0.329415752836138
		3.9025127219288302e-33 -0.29785917319007033 1.1565790916185616e-16
		6.7612656898314446e-18 -0.32941575283613783 -0.32941575283613783
		9.5618736373675324e-18 -2.9836757093665661e-17 -0.29785917319006971
		6.7612656898314423e-18 0.32941575283613783 -0.329415752836138
		5.7021512716325664e-33 0.29785917319007033 5.9597886745234028e-17
		-6.7612656898314461e-18 0.32941575283613783 0.32941575283613822
		-9.5618736373675231e-18 1.8238614152194799e-17 0.29785917319006944
		-6.7612656898314423e-18 -0.32941575283613783 0.329415752836138
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd1_toe02_4_ctl_ofs" -p "rtLegQd1_ctl_data";
	rename -uid "5873AD71-427B-BFD5-A3D7-F380A5F4018A";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toe02_4_ctl" -p "rtLegQd1_toe02_4_ctl_ofs";
	rename -uid "19FF03BB-4D78-E30E-3748-198BCEBA74B9";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe02_4_ctlShape1" -p "rtLegQd1_toe02_4_ctl";
	rename -uid "A53EB7F5-437C-DBF5-9B5F-7A8370F9E6D3";
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
		-6.7612656898314461e-18 0.32941575283613783 0.32941575283613822
		-9.5618736373675231e-18 1.8238614152194799e-17 0.29785917319006944
		-6.7612656898314423e-18 -0.32941575283613783 0.329415752836138
		3.9025127219288302e-33 -0.29785917319007033 1.1565790916185616e-16
		6.7612656898314446e-18 -0.32941575283613783 -0.32941575283613783
		9.5618736373675324e-18 -2.9836757093665661e-17 -0.29785917319006971
		6.7612656898314423e-18 0.32941575283613783 -0.329415752836138
		5.7021512716325664e-33 0.29785917319007033 5.9597886745234028e-17
		-6.7612656898314461e-18 0.32941575283613783 0.32941575283613822
		-9.5618736373675231e-18 1.8238614152194799e-17 0.29785917319006944
		-6.7612656898314423e-18 -0.32941575283613783 0.329415752836138
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd1_toe03_4_ctl_ofs" -p "rtLegQd1_ctl_data";
	rename -uid "5ABB8CB7-452F-EA8B-6649-D595E451942E";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toe03_4_ctl" -p "rtLegQd1_toe03_4_ctl_ofs";
	rename -uid "FDAC6E07-4F8D-436E-F79C-2B870AB683C8";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe03_4_ctlShape1" -p "rtLegQd1_toe03_4_ctl";
	rename -uid "00425F65-4A5C-4174-52FF-F1A9DC9433BE";
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
		-6.7612656898314461e-18 0.32941575283613783 0.32941575283613822
		-9.5618736373675231e-18 1.8238614152194799e-17 0.29785917319006944
		-6.7612656898314423e-18 -0.32941575283613783 0.329415752836138
		3.9025127219288302e-33 -0.29785917319007033 1.1565790916185616e-16
		6.7612656898314446e-18 -0.32941575283613783 -0.32941575283613783
		9.5618736373675324e-18 -2.9836757093665661e-17 -0.29785917319006971
		6.7612656898314423e-18 0.32941575283613783 -0.329415752836138
		5.7021512716325664e-33 0.29785917319007033 5.9597886745234028e-17
		-6.7612656898314461e-18 0.32941575283613783 0.32941575283613822
		-9.5618736373675231e-18 1.8238614152194799e-17 0.29785917319006944
		-6.7612656898314423e-18 -0.32941575283613783 0.329415752836138
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd1_toe04_4_ctl_ofs" -p "rtLegQd1_ctl_data";
	rename -uid "484D84F8-4F94-57E9-A428-D18CAE457A41";
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_toe04_4_ctl" -p "rtLegQd1_toe04_4_ctl_ofs";
	rename -uid "53B2B4AD-4C09-BDC2-8A7B-DD803F2D3B24";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegQd1_toe04_4_ctlShape1" -p "rtLegQd1_toe04_4_ctl";
	rename -uid "3795D5B2-4A92-E96D-AA35-2C8EFA723EE7";
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
		-7.0556635147016955e-15 0.32941575283613983 0.32941575283613816
		-7.0584641226492323e-15 2.0206958879089927e-15 0.29785917319006938
		-7.0556635147016955e-15 -0.32941575283613583 0.32941575283613794
		-7.0489022490118644e-15 -0.29785917319006833 5.8380348287187816e-17
		-7.0421409833220332e-15 -0.32941575283613583 -0.32941575283613789
		-7.0393403753744972e-15 1.9726205166631322e-15 -0.29785917319006977
		-7.0421409833220332e-15 0.32941575283613983 -0.32941575283613805
		-7.0489022490118644e-15 0.29785917319007232 2.320325870565679e-18
		-7.0556635147016955e-15 0.32941575283613983 0.32941575283613816
		-7.0584641226492323e-15 2.0206958879089927e-15 0.29785917319006938
		-7.0556635147016955e-15 -0.32941575283613583 0.32941575283613794
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegQd1_anchorF1" -p "master_ctl";
	rename -uid "6BD83F0B-40E6-F804-C195-A0A78685FD7B";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "rtLegQd1_anchorF1Shape" -p "rtLegQd1_anchorF1";
	rename -uid "08031CDD-46C6-0F43-BCC4-189C3CAD3128";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 3.8184968696867037 3.8184968696867037 3.8184968696867037 ;
createNode transform -n "spineQd0_ctl_data" -p "master_ctl";
	rename -uid "AB6B538E-4779-2FBB-D961-12B5194626D8";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_IK" -p "spineQd0_ctl_data";
	rename -uid "76F7B03C-45EE-E12F-4E65-22B9B13E0D51";
	setAttr ".t" -type "double3" 3.8176485085174293e-14 66.77233511237435 -20.312828175810324 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_cog_ctl_ofs" -p "spineQd0_IK";
	rename -uid "DAC64F14-4297-9806-E835-E58CBF00A255";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_cog_ctl" -p "spineQd0_cog_ctl_ofs";
	rename -uid "D3457F6D-42BC-694F-56F2-999C6ACE8AF0";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spineQd0_cog_ctlShape1" -p "spineQd0_cog_ctl";
	rename -uid "83BF9875-4437-4BAF-5024-48A508811C2F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		1.6111150402357182 35.444530885185806 33.170093596630991
		1.6111150402357182 39.76567423450075 33.170093596630991
		1.6111150402357182 41.888991046128673 20.281173274745242
		1.6111150402357182 35.444530885185806 20.281173274745242
		1.6111150402357182 35.444530885185806 33.170093596630991
		-1.6111150402357182 35.444530885185806 33.170093596630991
		-1.6111150402357182 35.444530885185806 20.281173274745242
		1.6111150402357182 35.444530885185806 20.281173274745242
		1.6111150402357182 41.888991046128673 20.281173274745242
		-1.6111150402357182 41.888991046128673 20.281173274745242
		-1.6111150402357182 35.444530885185806 20.281173274745242
		-1.6111150402357182 41.888991046128673 20.281173274745242
		-1.6111150402357182 39.76567423450075 33.170093596630991
		-1.6111150402357182 35.444530885185806 33.170093596630991
		1.6111150402357182 35.444530885185806 33.170093596630991
		1.6111150402357182 39.76567423450075 33.170093596630991
		-1.6111150402357182 39.76567423450075 33.170093596630991
		;
createNode transform -n "spineQd0_base_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "A054CDC7-4349-3729-634E-88A5F4C66789";
	setAttr ".t" -type "double3" -3.8176485085174293e-14 2.1594443332982678 9.3640135186775257 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_base_ctl" -p "spineQd0_base_ctl_ofs";
	rename -uid "95619743-47DE-43E1-30AB-B2BBAD39C6FB";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode nurbsCurve -n "spineQd0_base_ctlShape1" -p "spineQd0_base_ctl";
	rename -uid "79F1ACC6-430A-194E-67DA-ACB0708F1836";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		15.149861694789621 24.006152980446217 -12.076764570245263
		1.311911448573318e-15 30.281431162504717 -12.076764570245262
		-15.149861694789621 24.006152980446217 -12.076764570245263
		-21.425139876848124 1.1106830346119909e-15 6.8009721160242177e-32
		-15.149861694789621 -15.149861694789621 -9.2766148160246019e-16
		-2.1461709147879906e-15 -21.425139876848128 -1.311911448573319e-15
		15.149861694789621 -15.149861694789619 -9.2766148160246019e-16
		21.425139876848124 -2.9217387602639409e-15 -1.7890490103509954e-31
		15.149861694789621 24.006152980446217 -12.076764570245263
		1.311911448573318e-15 30.281431162504717 -12.076764570245262
		-15.149861694789621 24.006152980446217 -12.076764570245263
		;
createNode transform -n "spineQd0_tangent0_ctl_ofs" -p "spineQd0_base_ctl";
	rename -uid "60ED7BF2-463E-0D96-B4C6-93B9543D9EC5";
	setAttr ".t" -type "double3" 3.8193295639858686e-14 -2.1594443332982678 -9.3640135186775328 ;
	setAttr ".r" -type "double3" -12.473462535825112 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_tangent0_ctl" -p "spineQd0_tangent0_ctl_ofs";
	rename -uid "6125CAC4-4097-B365-6F48-C79A7A7D361E";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "spineQd0_tangent0_ctlShape1" -p "spineQd0_tangent0_ctl";
	rename -uid "5BE9AD8D-4A34-DCE6-585E-32BAD3CB30E0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-4.5836094391273466e-07 3.0799094734835379 -0.65902913918552608
		-5.5897966548618643e-07 3.291019914076069 -1.2105900776219924
		-5.8940397203974441e-07 3.0293744554157915 -1.6136882368576015
		-5.4394828069778659e-07 2.7232326320156206 -1.7304287113154642
		-4.7990676065819692e-07 2.2919161751700332 -1.7346542322182577
		1.987129867883286e-07 -2.278554525512257 -1.7794308102418184
		2.6275450682904904e-07 -2.7098709823578129 -1.783656331144579
		3.0821019809875775e-07 -3.016012805757998 -1.6729142768882255
		4.1831624546204847e-07 -3.291019914076069 -1.262893375524287
		4.5822787771503956e-07 -3.0932711231413212 -0.70808352181315537
		5.8940397217813456e-07 -0.56632071704433551 2.7437322143561977
		5.6128368753611811e-07 -0.28388121475795902 3.0292819582342689
		5.2753331983385511e-07 -0.0010015693103676189 3.1464436025344238
		4.5862089096990711e-07 0.28462694155280371 3.0360557479969201
		3.8407837904977857e-07 0.57069559557723548 2.7572797938815197
		-4.5836094391273466e-07 3.0799094734835379 -0.65902913918552608
		;
	setAttr ".adot" yes;
createNode joint -n "spineQd0_0_ikj" -p "spineQd0_tangent0_ctl";
	rename -uid "51EE26B1-4B06-5394-2234-4FA82181BAC9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" -12.473462535825112 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 12.473462535825112 0 0 ;
	setAttr ".radi" 2.5777840643771492;
createNode transform -n "spineQd0_end_ctl_ofs" -p "spineQd0_base_ctl";
	rename -uid "06341204-427A-CC54-1C85-9DA2037D3462";
	setAttr ".t" -type "double3" 0 -3.5543404750280416 -12.748526558688299 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_end_ctl" -p "spineQd0_end_ctl_ofs";
	rename -uid "890A2CA9-4EEF-D812-627C-9F890ADDE09C";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spineQd0_end_ctlShape1" -p "spineQd0_end_ctl";
	rename -uid "CD763AF7-4568-738A-31AE-5CB6D8D42143";
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
		0 13.523232270879706 -2.6048778433155513
		2.3918916538914199 13.224677771542828 -4.4017651028041183
		1.4817010772469377 13.224677771542828 -4.4017651028041183
		1.4817010772469377 13.02929302326436 -5.5298172548364564
		1.4817010772469377 12.568550012044842 -6.7233703690054449
		1.4817010772469377 11.930901492197954 -7.9605907912655356
		1.4817010772469377 11.160014771814804 -9.0645730129893636
		1.4817010772469377 10.145603442536144 -10.145603442536146
		1.4817010772469377 9.06457301298936 -11.16001477181481
		1.4817010772469377 7.960590791265532 -11.930901492197956
		1.4817010772469377 6.7233703690054414 -12.568550012044842
		1.4817010772469377 5.529817254836451 -13.029293023264362
		1.4817010772469377 4.4017651028041138 -13.224677771542829
		2.3918916538914199 4.4017651028041138 -13.224677771542829
		0 2.6048778433155477 -13.523232270879706
		-2.3918916538914199 4.4017651028041138 -13.224677771542829
		-1.4817010772469377 4.4017651028041138 -13.224677771542829
		-1.4817010772469377 5.529817254836451 -13.029293023264362
		-1.4817010772469377 6.7233703690054414 -12.568550012044842
		-1.4817010772469377 7.960590791265532 -11.930901492197956
		-1.4817010772469377 9.06457301298936 -11.16001477181481
		-1.4817010772469377 10.145603442536144 -10.145603442536146
		-1.4817010772469377 11.160014771814804 -9.0645730129893636
		-1.4817010772469377 11.930901492197954 -7.9605907912655356
		-1.4817010772469377 12.568550012044842 -6.7233703690054449
		-1.4817010772469377 13.02929302326436 -5.5298172548364564
		-1.4817010772469377 13.224677771542828 -4.4017651028041183
		-2.3918916538914199 13.224677771542828 -4.4017651028041183
		0 13.523232270879706 -2.6048778433155513
		;
	setAttr ".adot" yes;
createNode joint -n "spineQd0_two_ikj" -p "spineQd0_base_ctl";
	rename -uid "C9D2BFD3-4B9C-82EA-620A-4BB3615C8A57";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 3.8176485085174293e-14 -2.1594443332982678 -9.3640135186775257 ;
	setAttr ".r" -type "double3" -12.473462535825169 -1.4957761662724122e-16 -7.0107676186973885e-15 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 12.888920321885745;
createNode joint -n "spineQd0_two_ikj_end" -p "spineQd0_two_ikj";
	rename -uid "C3413943-4410-40DE-C95E-B795A28D5AF6";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -3.5689585510013945e-14 -12.43558821792216 62.510973621809512 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 12.888920321885745;
createNode transform -n "spineQd0_loc2" -p "spineQd0_two_ikj_end";
	rename -uid "0A66EE20-48CA-77AA-B564-0EAF705D16BD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.7755822029788782e-14 10.373829726037727 -31.83229962074271 ;
	setAttr ".r" -type "double3" 17.331683379474615 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_loc2Shape" -p "spineQd0_loc2";
	rename -uid "2162B0B3-472F-CC31-BDE0-7EAB0F121392";
	setAttr -k off ".v";
createNode ikEffector -n "effector62" -p "spineQd0_two_ikj";
	rename -uid "B6D9728A-4388-61E4-9D2C-6F8E582E618A";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "spineQd0_loc1" -p "spineQd0_base_ctl";
	rename -uid "CA26D5E2-4A0B-F5DC-906E-8AABA2340D75";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.024272160494913e-14 2.4536697535324237 21.035839523146123 ;
	setAttr ".r" -type "double3" 4.8582208436494492 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_loc1Shape" -p "spineQd0_loc1";
	rename -uid "7CCEA879-44B4-BFF5-36A3-E1B72AF177AC";
	setAttr -k off ".v";
createNode transform -n "spineQd0_mid_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "5DA9271C-4C9E-C907-F76F-98B7E32C2169";
	setAttr ".t" -type "double3" -1.7933763480225163e-14 4.6131140868306915 30.399853041823647 ;
	setAttr ".r" -type "double3" 4.8582208436494492 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_mid_ctl_ofs1" -p "spineQd0_mid_ctl_ofs";
	rename -uid "7A7FAC8C-44D7-6D49-BEEA-1FBDFDDD56BF";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_mid_ctl_ofs2" -p "spineQd0_mid_ctl_ofs1";
	rename -uid "234FBC4C-4D88-EB0B-C563-97B576C39AFB";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_mid_ctl" -p "spineQd0_mid_ctl_ofs2";
	rename -uid "7B49DF61-4719-4406-ECED-CDBD1EC38A22";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spineQd0_mid_ctlShape1" -p "spineQd0_mid_ctl";
	rename -uid "D5F07090-49B7-8572-B7B7-E5AC172D94BE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		15.149861694789621 15.149861694789623 9.2766148160246039e-16
		1.311911448573318e-15 21.425139876848117 1.311911448573318e-15
		-15.149861694789621 15.149861694789619 9.2766148160246019e-16
		-21.425139876848124 1.1106830346119909e-15 6.8009721160242177e-32
		-15.149861694789621 -15.149861694789621 -9.2766148160246019e-16
		-2.1461709147879906e-15 -21.425139876848128 -1.311911448573319e-15
		15.149861694789621 -15.149861694789619 -9.2766148160246019e-16
		21.425139876848124 -2.9217387602639409e-15 -1.7890490103509954e-31
		15.149861694789621 15.149861694789623 9.2766148160246039e-16
		1.311911448573318e-15 21.425139876848117 1.311911448573318e-15
		-15.149861694789621 15.149861694789619 9.2766148160246019e-16
		;
createNode joint -n "spineQd0_1_ikj" -p "spineQd0_mid_ctl";
	rename -uid "D4F9B7E2-46E1-234F-3208-2D8CDBD59182";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" 4.8582208436494492 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -4.8582208436494492 0 0 ;
	setAttr ".radi" 2.5777840643771492;
createNode transform -n "spineQd0_fore_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "EE44B548-47F4-02A2-9AB5-E49F43EB9DE7";
	setAttr ".t" -type "double3" -3.5689585510013939e-14 1.3595224251884872 63.721404380692192 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_fore_ctl" -p "spineQd0_fore_ctl_ofs";
	rename -uid "3A260370-4B72-595E-3547-94829B5E093B";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode nurbsCurve -n "spineQd0_fore_ctlShape1" -p "spineQd0_fore_ctl";
	rename -uid "3BEB0579-4D30-A52C-421B-2680E790056D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		15.149861694789621 29.858690364606389 -14.319909372866256
		1.311911448573318e-15 36.133968546664889 -14.319909372866254
		-15.149861694789621 29.858690364606389 -14.319909372866256
		-21.425139876848124 1.1106830346119909e-15 6.8009721160242177e-32
		-15.149861694789621 -15.149861694789621 -9.2766148160246019e-16
		-2.1461709147879906e-15 -21.425139876848128 -1.311911448573319e-15
		15.149861694789621 -15.149861694789619 -9.2766148160246019e-16
		21.425139876848124 -2.9217387602639409e-15 -1.7890490103509954e-31
		15.149861694789621 29.858690364606389 -14.319909372866256
		1.311911448573318e-15 36.133968546664889 -14.319909372866254
		-15.149861694789621 29.858690364606389 -14.319909372866256
		;
createNode transform -n "spineQd0_tangent1_ctl_ofs" -p "spineQd0_fore_ctl";
	rename -uid "4319B52F-4AAD-76C4-5217-90B162D9D600";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_tangent1_ctl" -p "spineQd0_tangent1_ctl_ofs";
	rename -uid "8CD9545D-42DF-5FAD-92DE-59B2172254AD";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "spineQd0_tangent1_ctlShape1" -p "spineQd0_tangent1_ctl";
	rename -uid "6E2420AA-4B33-3010-1A30-88B2910FA289";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-4.5836094391273466e-07 -3.0799094734835379 0.65902913918552652
		-5.5897966548618643e-07 -3.291019914076069 1.2105900776219929
		-5.8940397203974441e-07 -3.0293744554157915 1.6136882368576018
		-5.4394828069778659e-07 -2.7232326320156206 1.7304287113154644
		-4.7990676065819692e-07 -2.2919161751700328 1.7346542322182581
		1.987129867883286e-07 2.278554525512257 1.7794308102418182
		2.6275450682904904e-07 2.7098709823578129 1.7836563311445788
		3.0821019809875775e-07 3.016012805757998 1.672914276888225
		4.1831624546204847e-07 3.291019914076069 1.2628933755242866
		4.5822787771503956e-07 3.0932711231413212 0.70808352181315493
		5.8940397217813456e-07 0.56632071704433518 -2.7437322143561977
		5.6128368753611811e-07 0.28388121475795869 -3.0292819582342689
		5.2753331983385511e-07 0.0010015693103672335 -3.1464436025344238
		4.5862089096990711e-07 -0.2846269415528041 -3.0360557479969201
		3.8407837904977857e-07 -0.57069559557723581 -2.7572797938815197
		-4.5836094391273466e-07 -3.0799094734835379 0.65902913918552652
		;
	setAttr ".adot" yes;
createNode joint -n "spineQd0_2_ikj" -p "spineQd0_tangent1_ctl";
	rename -uid "87E45910-402C-32A0-D20E-E7B181CD96A5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".radi" 2.5777840643771492;
createNode ikHandle -n "spineQd0_two_ikj_ikh" -p "spineQd0_tangent1_ctl";
	rename -uid "C783C38C-4FC6-A82E-5188-5BB47432253E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.3108872417680944e-30 0 0 ;
	setAttr ".r" -type "double3" -12.473462535825165 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "spineQd0_anchorToRbj" -p "spineQd0_fore_ctl";
	rename -uid "B189459F-4B1B-A1D6-2BA0-949B858C1657";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorToRbjShape" -p "spineQd0_anchorToRbj";
	rename -uid "08D05054-4A56-DB0D-E5E0-F3B44D294807";
	setAttr -k off ".v";
createNode transform -n "neckQd0_cog_ctl_SPACE_1_ofs" -p "spineQd0_fore_ctl";
	rename -uid "00235792-4901-CDC6-CEAC-7ABD0B7D0FEA";
	setAttr ".t" -type "double3" 1.1007337619509112e-14 0.8536192981796944 2.4379209352357307 ;
	setAttr ".r" -type "double3" -27.654316899160339 0 0 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_1" -p "neckQd0_cog_ctl_SPACE_1_ofs";
	rename -uid "08A741AB-4473-517C-C8D6-2B8CA5D91C43";
createNode transform -n "head0_head_fkc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "9CA40E76-4758-1843-145C-529992CBCB63";
	setAttr ".t" -type "double3" -3.8176485085174293e-14 24.087639646693589 86.279707372714341 ;
createNode transform -n "head0_head_fkc_SPACE_2" -p "head0_head_fkc_SPACE_2_ofs";
	rename -uid "ED700CDD-49F6-58E4-6864-46BBB1ABC231";
createNode transform -n "lfLegQd0_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "CA2AF63E-4BB2-29FD-1CBA-3C97E6E778C8";
	setAttr ".t" -type "double3" 7.6284932772336616 -62.190861454790877 -18.46219408578763 ;
createNode transform -n "lfLegQd0_ikc_SPACE_2" -p "lfLegQd0_ikc_SPACE_2_ofs";
	rename -uid "BEF45EE3-429F-74A8-166B-789375D0BF95";
createNode transform -n "lfLegQd0_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "1D50A653-47AE-4C87-A157-EFABBAC23E32";
	setAttr ".t" -type "double3" 8.6727015988764453 -26.139449315930506 23.119261458417924 ;
	setAttr ".r" -type "double3" -0.32451139200814644 3.258734252829893 6.8971350639224699e-06 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "lfLegQd0_pvc_SPACE_3" -p "lfLegQd0_pvc_SPACE_3_ofs";
	rename -uid "1EE0BBF2-4310-A34B-8D24-8C9E3DC0AE9D";
	setAttr ".t" -type "double3" 0 7.1054273576010019e-15 4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "lfLegQd1_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "C171A86C-4613-2EFA-D6F6-CCA27191FA87";
	setAttr ".t" -type "double3" 6.5563385888811601 -62.89212003520452 56.659017163443579 ;
createNode transform -n "lfLegQd1_ikc_SPACE_2" -p "lfLegQd1_ikc_SPACE_2_ofs";
	rename -uid "91381020-4E9D-6136-5538-859FB1926EB9";
createNode transform -n "lfLegQd1_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "64D899F6-4C60-BAE9-BADB-24B227341C50";
	setAttr ".t" -type "double3" 9.1798497785790598 -25.357058616725872 33.266167914786188 ;
	setAttr ".r" -type "double3" 179.14752474596889 5.4977065160364109 179.99999308285081 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
createNode transform -n "lfLegQd1_pvc_SPACE_3" -p "lfLegQd1_pvc_SPACE_3_ofs";
	rename -uid "61517F2D-4D76-77F6-FC49-48B49C6AE97F";
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 0 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "D3FA8CDE-4CAD-10B0-D871-D4A1E3DB32F4";
	setAttr ".t" -type "double3" -3.9952841924574537e-14 20.81271889782137 81.08208350132891 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_2" -p "neckQd0_fore_ctl_SPACE_2_ofs";
	rename -uid "8498FF7A-46B5-85BE-873F-E7B4DA564A15";
createNode transform -n "neckQd0_cog_ctl_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "A3A3A1CB-4970-9F65-4C93-F3AB00F1FF54";
	setAttr ".t" -type "double3" -2.4682247890504826e-14 2.2131417233681816 66.15932531592793 ;
	setAttr ".r" -type "double3" -27.654316899160339 0 0 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_2" -p "neckQd0_cog_ctl_SPACE_2_ofs";
	rename -uid "C98236CD-4EBD-B279-D4F0-A091B2144F52";
createNode transform -n "rtLegQd0_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "E86A9BED-40D1-4222-825B-DF839B98CB96";
	setAttr ".t" -type "double3" -7.6284932772340319 -62.190861454791033 -18.462194085787637 ;
createNode transform -n "rtLegQd0_ikc_SPACE_2" -p "rtLegQd0_ikc_SPACE_2_ofs";
	rename -uid "FF8C3C8E-49B2-F2E4-4F74-6C8BA9F01174";
createNode transform -n "rtLegQd0_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "9E4D4874-4DB5-9888-10FC-BAB0813629B2";
	setAttr ".t" -type "double3" -8.6727015988773424 -26.139449315930499 23.119261458417888 ;
	setAttr ".r" -type "double3" -0.32451178407552655 -3.2587342138291011 1.5555204662315087e-18 ;
createNode transform -n "rtLegQd0_pvc_SPACE_3" -p "rtLegQd0_pvc_SPACE_3_ofs";
	rename -uid "21BDCA86-40B7-823C-09E6-84A1047C91B0";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 7.1054273576010019e-15 4.4408920985006262e-16 ;
createNode transform -n "rtLegQd1_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "F1F47F28-4FD6-B93A-DDAA-0784A416AB3D";
	setAttr ".t" -type "double3" -6.5563385888829435 -62.892120035205366 56.659017163443572 ;
createNode transform -n "rtLegQd1_ikc_SPACE_2" -p "rtLegQd1_ikc_SPACE_2_ofs";
	rename -uid "333EFFF7-4775-BBF5-8164-1FBBCCEA291F";
createNode transform -n "rtLegQd1_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "0B9D8C06-48C3-C3E4-1465-9093A6415043";
	setAttr ".t" -type "double3" -9.1798497785782196 -25.357058616725851 33.266167914786109 ;
	setAttr ".r" -type "double3" 179.14752540867264 -5.4977066184868768 180 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "rtLegQd1_pvc_SPACE_3" -p "rtLegQd1_pvc_SPACE_3_ofs";
	rename -uid "C323B960-4A0C-801E-3D14-8E9EC9360AA6";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 7.1054273576010019e-15 -1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode joint -n "spineQd0_end" -p "spineQd0_IK";
	rename -uid "FE6CC94A-4FC7-7547-2A8A-F3862D94E9D7";
	addAttr -ci true -sn "proxyRatio" -ln "proxyRatio" -dv 5 -at "double";
	addAttr -ci true -sn "proxyDiv" -ln "proxyDiv" -dv 1 -at "double";
	setAttr -cb on ".ro";
	setAttr ".radi" 1.2888920321885746;
	setAttr -cb on ".proxyRatio";
	setAttr -cb on ".proxyDiv";
createNode transform -n "spineQd0_setting" -p "spineQd0_IK";
	rename -uid "B04907E7-458D-06DB-2394-6AB0A48B9A7D";
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
	rename -uid "9A21EC6B-44B5-C7A3-6847-FB8DCF62A9F2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-4.8333451207071549 6.4444601609428727 1.2032603610701861e-16
		-4.7404737209931431 6.4444601609428727 -0.94293883527882438
		-4.4654286090006918 6.4444601609428727 -1.8496411569446163
		-4.018779684952861 6.4444601609428727 -2.6852626166256623
		-3.4176911097936129 6.4444601609428727 -3.4176911097936129
		-2.6852626166256623 6.4444601609428727 -4.018779684952861
		-1.8496411569446163 6.4444601609428727 -4.4654286090006918
		-0.94293883527882438 6.4444601609428727 -4.7404737209931431
		2.9595703168283676e-16 6.4444601609428727 -4.8333451207071549
		0.94293883527882438 6.4444601609428727 -4.7404737209931431
		1.8496411569446163 6.4444601609428727 -4.4654286090006918
		2.6852626166256623 6.4444601609428727 -4.018779684952861
		3.4176911097936129 6.4444601609428727 -3.4176911097936129
		4.018779684952861 6.4444601609428727 -2.6852626166256623
		4.4654286090006918 6.4444601609428727 -1.8496411569446163
		4.7404737209931431 6.4444601609428727 -0.94293883527882438
		4.8333451207071549 6.4444601609428727 -5.2278283844215804e-16
		4.6493870953257783 6.4444601609428727 -0.9248205208543443
		4.1255181152503839 6.4444601609428727 -1.7088455548968065
		3.3414929659719941 6.4444601609428727 -2.2327143045003459
		2.4166725603535775 6.4444601609428727 -2.4166725603535775
		1.4918520394992332 6.4444601609428727 -2.2327143045003459
		0.70782700545677091 6.4444601609428727 -1.7088455548968065
		0.18395825585323131 6.4444601609428727 -0.9248205208543443
		0 6.4444601609428727 -5.2278283844215804e-16
		-0.18395825585323131 6.4444601609428727 0.9248205208543443
		-0.70782700545677091 6.4444601609428727 1.7088455548968065
		-1.4918520394992332 6.4444601609428727 2.2327143045003459
		-2.4166725603535775 6.4444601609428727 2.4166725603535775
		-3.3414929659719941 6.4444601609428727 2.2327143045003459
		-4.1255181152503839 6.4444601609428727 1.7088455548968065
		-4.6493870953257783 6.4444601609428727 0.9248205208543443
		-4.8333451207071549 6.4444601609428727 1.2032603610701861e-16
		-4.7404737209931431 6.4444601609428727 0.94293883527882438
		-4.4654286090006918 6.4444601609428727 1.8496411569446163
		-4.018779684952861 6.4444601609428727 2.6852626166256623
		-3.4176911097936129 6.4444601609428727 3.4176911097936129
		-2.6852626166256623 6.4444601609428727 4.018779684952861
		-1.8496411569446163 6.4444601609428727 4.4654286090006918
		-0.94293883527882438 6.4444601609428727 4.7404737209931431
		-5.6426158363127371e-16 6.4444601609428727 4.8333451207071549
		0.94293883527882438 6.4444601609428727 4.7404737209931431
		1.8496411569446163 6.4444601609428727 4.4654286090006918
		2.6852626166256623 6.4444601609428727 4.018779684952861
		3.4176911097936129 6.4444601609428727 3.4176911097936129
		4.018779684952861 6.4444601609428727 2.6852626166256623
		4.4654286090006918 6.4444601609428727 1.8496411569446163
		4.7404737209931431 6.4444601609428727 0.94293883527882438
		4.8333451207071549 6.4444601609428727 -5.2278283844215804e-16
		;
	setAttr ".adot" yes;
createNode transform -n "spineQd0_anchorM1" -p "master_ctl";
	rename -uid "A92A0CF5-4507-96EF-3916-4281CEF50253";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorM1Shape" -p "spineQd0_anchorM1";
	rename -uid "EC0FB731-4FAD-B0EA-137B-0AAC27795C1B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 9.6666902414143099 9.6666902414143099 9.6666902414143099 ;
createNode transform -n "spineQd0_anchorM2" -p "master_ctl";
	rename -uid "1F1AEDF9-4BBA-7435-09BD-BD8065085857";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorM2Shape" -p "spineQd0_anchorM2";
	rename -uid "065BF9C5-4745-F87C-6BDA-A59124DD9DDD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 9.6666902414143099 9.6666902414143099 9.6666902414143099 ;
createNode transform -n "tail0_ctl_data" -p "master_ctl";
	rename -uid "CD62409D-4E87-A5E5-353A-9381FF3EC870";
	setAttr -cb on ".ro";
createNode transform -n "tail0_FK" -p "tail0_ctl_data";
	rename -uid "B00E0F0B-4F83-236B-989B-E095870F53CC";
	setAttr ".t" -type "double3" 0 64.071255229378409 -28.667042554673237 ;
	setAttr -cb on ".ro";
createNode transform -n "tail0_setting" -p "tail0_FK";
	rename -uid "6A968F00-4957-D15F-D5A9-2DB366EC2593";
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
	rename -uid "6091E61E-49F5-40EA-A3A0-6484E73AF1B8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-1.8050867622514433 1.8050867622514433 4.493760108303432e-17
		-1.770402515621234 1.8050867622514433 -0.35215494997087482
		-1.6676827059903216 1.8050867622514433 -0.69077681893894738
		-1.5008748244843075 1.8050867622514433 -1.0028524513330186
		-1.276389089891907 1.8050867622514433 -1.276389089891907
		-1.0028524513330186 1.8050867622514433 -1.5008748244843075
		-0.69077681893894738 1.8050867622514433 -1.6676827059903216
		-0.35215494997087482 1.8050867622514433 -1.770402515621234
		1.1052968632369418e-16 1.8050867622514433 -1.8050867622514433
		0.35215494997087482 1.8050867622514433 -1.770402515621234
		0.69077681893894738 1.8050867622514433 -1.6676827059903216
		1.0028524513330186 1.8050867622514433 -1.5008748244843075
		1.276389089891907 1.8050867622514433 -1.276389089891907
		1.5008748244843075 1.8050867622514433 -1.0028524513330186
		1.6676827059903216 1.8050867622514433 -0.69077681893894738
		1.770402515621234 1.8050867622514433 -0.35215494997087482
		1.8050867622514433 1.8050867622514433 -1.9524125789430669e-16
		1.7363848201941265 1.8050867622514433 -0.34538838795116261
		1.5407379260716751 1.8050867622514433 -0.63819454494595351
		1.2479317260402623 1.8050867622514433 -0.83384135299516082
		0.90254338112572163 1.8050867622514433 -0.90254338112572163
		0.55715499317455897 1.8050867622514433 -0.83384135299516082
		0.26434883617976812 1.8050867622514433 -0.63819454494595351
		0.068702028130560838 1.8050867622514433 -0.34538838795116261
		0 1.8050867622514433 -1.9524125789430669e-16
		-0.068702028130560838 1.8050867622514433 0.34538838795116261
		-0.26434883617976812 1.8050867622514433 0.63819454494595351
		-0.55715499317455897 1.8050867622514433 0.83384135299516082
		-0.90254338112572163 1.8050867622514433 0.90254338112572163
		-1.2479317260402623 1.8050867622514433 0.83384135299516082
		-1.5407379260716751 1.8050867622514433 0.63819454494595351
		-1.7363848201941265 1.8050867622514433 0.34538838795116261
		-1.8050867622514433 1.8050867622514433 4.493760108303432e-17
		-1.770402515621234 1.8050867622514433 0.35215494997087482
		-1.6676827059903216 1.8050867622514433 0.69077681893894738
		-1.5008748244843075 1.8050867622514433 1.0028524513330186
		-1.276389089891907 1.8050867622514433 1.276389089891907
		-1.0028524513330186 1.8050867622514433 1.5008748244843075
		-0.69077681893894738 1.8050867622514433 1.6676827059903216
		-0.35215494997087482 1.8050867622514433 1.770402515621234
		-2.107321305685756e-16 1.8050867622514433 1.8050867622514433
		0.35215494997087482 1.8050867622514433 1.770402515621234
		0.69077681893894738 1.8050867622514433 1.6676827059903216
		1.0028524513330186 1.8050867622514433 1.5008748244843075
		1.276389089891907 1.8050867622514433 1.276389089891907
		1.5008748244843075 1.8050867622514433 1.0028524513330186
		1.6676827059903216 1.8050867622514433 0.69077681893894738
		1.770402515621234 1.8050867622514433 0.35215494997087482
		1.8050867622514433 1.8050867622514433 -1.9524125789430669e-16
		;
	setAttr ".adot" yes;
createNode transform -n "tail0_0_chainGrp" -p "tail0_FK";
	rename -uid "61FC29B4-4A37-D72E-1BD1-13BFF4733BB6";
	setAttr -cb on ".ro";
createNode transform -n "tail0_1_chainGrp" -p "tail0_0_chainGrp";
	rename -uid "B19BE1EB-482D-B96B-1C72-B494120C04ED";
	setAttr -cb on ".ro";
createNode transform -n "tail0_2_chainGrp" -p "tail0_1_chainGrp";
	rename -uid "BDDC9DAD-4DBA-70FD-A1F5-4B9FF334A489";
	setAttr -cb on ".ro";
createNode transform -n "tail0_3_chainGrp" -p "tail0_2_chainGrp";
	rename -uid "71C1D558-413F-56DF-99F6-BCB3C0557F8A";
	setAttr -cb on ".ro";
createNode transform -n "tail0_4_chainGrp" -p "tail0_3_chainGrp";
	rename -uid "025DD979-4DCE-2E6E-FD0D-31906F20F59B";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "tail0_5_chainGrp" -p "tail0_4_chainGrp";
	rename -uid "75B7138B-4DEA-DC8D-9872-5EB441E16036";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "tail0_6_chainGrp" -p "tail0_5_chainGrp";
	rename -uid "BA5B97FB-4547-8E83-53C1-26B2EE7C1B8D";
	setAttr -cb on ".ro";
createNode transform -n "tail0_0_fkc_ofs" -p "tail0_FK";
	rename -uid "8B903468-4AA7-D010-DEAA-6EBFC2B75B73";
	setAttr -cb on ".ro";
createNode transform -n "tail0_0_fkc" -p "tail0_0_fkc_ofs";
	rename -uid "14E4DB91-4EC8-795C-2604-20B87C1C8168";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_0_fkcShape1" -p "tail0_0_fkc";
	rename -uid "4436D6A1-4776-448C-7DC6-0EA4437BA257";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.4746565679334598 7.4746565679334687 1.5341749312511201e-16
		4.1384595572307281e-16 6.7586173582653899 2.1696509948281473e-16
		-7.4746565679334598 7.4746565679334633 1.5341749312511191e-16
		-6.7586173582654085 2.6243527909855354e-15 -8.8550538634742497e-32
		-7.4746565679334598 -7.4746565679334598 -1.5341749312511196e-16
		-6.7701532320751057e-16 -6.7586173582653961 -2.1696509948281492e-16
		7.4746565679334598 -7.4746565679334633 -1.5341749312511191e-16
		6.7586173582654085 1.3523146108219395e-15 -1.2938550171600288e-31
		7.4746565679334598 7.4746565679334687 1.5341749312511201e-16
		4.1384595572307281e-16 6.7586173582653899 2.1696509948281473e-16
		-7.4746565679334598 7.4746565679334633 1.5341749312511191e-16
		;
createNode transform -n "tail0_1_fkc_ofs" -p "tail0_0_fkc";
	rename -uid "716F0962-41A1-F4CC-320F-4D9481DAF111";
	setAttr -cb on ".ro";
createNode transform -n "tail0_1_fkc" -p "tail0_1_fkc_ofs";
	rename -uid "7463FCCF-43B3-2167-0B09-B1B18F851050";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_1_fkcShape1" -p "tail0_1_fkc";
	rename -uid "33CA606B-4C3C-9C99-DE69-D3A230AC9D35";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.4746565679334598 7.4746565679334687 1.5341749312511201e-16
		4.1384595572307281e-16 6.7586173582653899 2.1696509948281473e-16
		-7.4746565679334598 7.4746565679334633 1.5341749312511191e-16
		-6.7586173582654085 2.6243527909855354e-15 -8.8550538634742497e-32
		-7.4746565679334598 -7.4746565679334598 -1.5341749312511196e-16
		-6.7701532320751057e-16 -6.7586173582653961 -2.1696509948281492e-16
		7.4746565679334598 -7.4746565679334633 -1.5341749312511191e-16
		6.7586173582654085 1.3523146108219395e-15 -1.2938550171600288e-31
		7.4746565679334598 7.4746565679334687 1.5341749312511201e-16
		4.1384595572307281e-16 6.7586173582653899 2.1696509948281473e-16
		-7.4746565679334598 7.4746565679334633 1.5341749312511191e-16
		;
createNode transform -n "tail0_2_fkc_ofs" -p "tail0_1_fkc";
	rename -uid "3B74CCB3-4F7D-642F-0A45-BA84BD442EA2";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "tail0_2_fkc" -p "tail0_2_fkc_ofs";
	rename -uid "E07A234D-4260-00A8-9B78-C6B8601752A8";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_2_fkcShape1" -p "tail0_2_fkc";
	rename -uid "3DDE4F0D-4D91-EAC2-91E9-899ACB295DEF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.4746565679334598 7.4746565679334687 1.5341749312511201e-16
		4.1384595572307281e-16 6.7586173582653899 2.1696509948281473e-16
		-7.4746565679334598 7.4746565679334633 1.5341749312511191e-16
		-6.7586173582654085 2.6243527909855354e-15 -8.8550538634742497e-32
		-7.4746565679334598 -7.4746565679334598 -1.5341749312511196e-16
		-6.7701532320751057e-16 -6.7586173582653961 -2.1696509948281492e-16
		7.4746565679334598 -7.4746565679334633 -1.5341749312511191e-16
		6.7586173582654085 1.3523146108219395e-15 -1.2938550171600288e-31
		7.4746565679334598 7.4746565679334687 1.5341749312511201e-16
		4.1384595572307281e-16 6.7586173582653899 2.1696509948281473e-16
		-7.4746565679334598 7.4746565679334633 1.5341749312511191e-16
		;
createNode transform -n "tail0_3_fkc_ofs" -p "tail0_2_fkc";
	rename -uid "C1BC57EA-4266-E909-C4A7-5589124C2731";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "tail0_3_fkc" -p "tail0_3_fkc_ofs";
	rename -uid "D2F238CD-49AC-8757-99B9-CCAF0E2866EA";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_3_fkcShape1" -p "tail0_3_fkc";
	rename -uid "DC6D39C5-418C-A15C-E68E-A0A2D27AECAB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.4746565679334598 7.4746565679334687 1.5341749312511201e-16
		4.1384595572307281e-16 6.7586173582653899 2.1696509948281473e-16
		-7.4746565679334598 7.4746565679334633 1.5341749312511191e-16
		-6.7586173582654085 2.6243527909855354e-15 -8.8550538634742497e-32
		-7.4746565679334598 -7.4746565679334598 -1.5341749312511196e-16
		-6.7701532320751057e-16 -6.7586173582653961 -2.1696509948281492e-16
		7.4746565679334598 -7.4746565679334633 -1.5341749312511191e-16
		6.7586173582654085 1.3523146108219395e-15 -1.2938550171600288e-31
		7.4746565679334598 7.4746565679334687 1.5341749312511201e-16
		4.1384595572307281e-16 6.7586173582653899 2.1696509948281473e-16
		-7.4746565679334598 7.4746565679334633 1.5341749312511191e-16
		;
createNode transform -n "tail0_4_fkc_ofs" -p "tail0_3_fkc";
	rename -uid "6A7B8DE3-44FE-6E92-0250-A5944C4CC46C";
	setAttr -cb on ".ro";
createNode transform -n "tail0_4_fkc" -p "tail0_4_fkc_ofs";
	rename -uid "59083489-450A-9D38-0697-458C9BDD669F";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_4_fkcShape1" -p "tail0_4_fkc";
	rename -uid "47FBF2F0-44E7-502E-E7E7-48A7512A405D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.4746565679334598 7.4746565679334687 1.5341749312511201e-16
		4.1384595572307281e-16 6.7586173582653899 2.1696509948281473e-16
		-7.4746565679334598 7.4746565679334633 1.5341749312511191e-16
		-6.7586173582654085 2.6243527909855354e-15 -8.8550538634742497e-32
		-7.4746565679334598 -7.4746565679334598 -1.5341749312511196e-16
		-6.7701532320751057e-16 -6.7586173582653961 -2.1696509948281492e-16
		7.4746565679334598 -7.4746565679334633 -1.5341749312511191e-16
		6.7586173582654085 1.3523146108219395e-15 -1.2938550171600288e-31
		7.4746565679334598 7.4746565679334687 1.5341749312511201e-16
		4.1384595572307281e-16 6.7586173582653899 2.1696509948281473e-16
		-7.4746565679334598 7.4746565679334633 1.5341749312511191e-16
		;
createNode transform -n "tail0_5_fkc_ofs" -p "tail0_4_fkc";
	rename -uid "D7718757-49CD-CF78-56C0-D08EEE176681";
	setAttr -cb on ".ro";
createNode transform -n "tail0_5_fkc" -p "tail0_5_fkc_ofs";
	rename -uid "9CDE2AFD-4332-BFB3-688D-0089587267E0";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_5_fkcShape1" -p "tail0_5_fkc";
	rename -uid "F4618472-40F4-E2BF-8D6E-D3B94225B6D4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.4746565679334598 7.4746565679334687 1.5341749312511201e-16
		4.1384595572307281e-16 6.7586173582653899 2.1696509948281473e-16
		-7.4746565679334598 7.4746565679334633 1.5341749312511191e-16
		-6.7586173582654085 2.6243527909855354e-15 -8.8550538634742497e-32
		-7.4746565679334598 -7.4746565679334598 -1.5341749312511196e-16
		-6.7701532320751057e-16 -6.7586173582653961 -2.1696509948281492e-16
		7.4746565679334598 -7.4746565679334633 -1.5341749312511191e-16
		6.7586173582654085 1.3523146108219395e-15 -1.2938550171600288e-31
		7.4746565679334598 7.4746565679334687 1.5341749312511201e-16
		4.1384595572307281e-16 6.7586173582653899 2.1696509948281473e-16
		-7.4746565679334598 7.4746565679334633 1.5341749312511191e-16
		;
createNode transform -n "tail0_6_fkc_ofs" -p "tail0_5_fkc";
	rename -uid "25B11845-4B4F-8840-FA35-CCBE4D58C6FB";
	setAttr -cb on ".ro";
createNode transform -n "tail0_6_fkc" -p "tail0_6_fkc_ofs";
	rename -uid "FC29706A-43C4-B87B-1343-7FAE40FFAFD1";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_6_fkcShape1" -p "tail0_6_fkc";
	rename -uid "98EC6EB8-4789-AA67-6896-C4BE45AFCF2C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.4746565679334598 7.4746565679334616 5.2837826384630406e-15
		4.1384595572307237e-16 6.7586173582653828 5.3473302448207432e-15
		-7.4746565679334598 7.4746565679334562 5.2837826384630398e-15
		-6.7586173582654085 -4.4810745666154665e-15 5.1303651453379282e-15
		-7.4746565679334598 -7.474656567933466 4.9769476522128165e-15
		-6.7701532320751096e-16 -6.7586173582654032 4.9134000458551131e-15
		7.4746565679334598 -7.4746565679334704 4.9769476522128165e-15
		6.7586173582654085 -5.7531127467790624e-15 5.1303651453379282e-15
		7.4746565679334598 7.4746565679334616 5.2837826384630406e-15
		4.1384595572307237e-16 6.7586173582653828 5.3473302448207432e-15
		-7.4746565679334598 7.4746565679334562 5.2837826384630398e-15
		;
createNode transform -n "tail0_6_ofs_ctl" -p "tail0_6_fkc";
	rename -uid "8321BA88-4EF6-36E6-CE0A-859BAA195B73";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_6_ofs_ctlShape1" -p "tail0_6_ofs_ctl";
	rename -uid "26201B20-4B64-35A0-036C-1083A11023AA";
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
		0.3592303129633565 6.7975946705383974 5.9372689156255065
		0.33353646756817296 6.9357499929836957 5.9372689156255065
		0.25527777414717095 7.0528724446855691 5.9372689156255065
		0.13815532244529805 7.1311311381065705 5.9372689156255065
		-1.2929293349875958e-30 7.1568165597636151 5.9372689156255065
		-0.13815532244529805 7.1311311381065705 5.9372689156255065
		-0.25527777414717095 7.0528724446855691 5.9372689156255065
		-0.33353646756817296 6.9357499929836957 5.9372689156255065
		-0.3592303129633565 6.7975946535183311 5.9372689156255065
		-0.33353646756817296 6.6594393480931 5.9372689156255065
		-0.25527777414717095 6.5423168963912266 5.9372689156255065
		-0.13815532244529805 6.4640582029702252 5.9372689156255065
		1.4345529780450353e-08 6.4383727813131806 5.9348262722432539
		0.13815532244529805 6.4640582029702252 5.9372689156255065
		0.25527777414717095 6.5423168963912266 5.9372689156255065
		0.33353646756817296 6.6594393480931 5.9372689156255065
		0.3592303129633565 6.7975946705383974 5.9372689156255065
		0.33188541489281087 6.7985294551665314 5.7998004888559347
		0.25401421342623065 6.799321941196447 5.683260237798625
		0.13747155558659488 6.7998514621894675 5.6053907210796723
		1.4345529780450353e-08 6.8000374101919432 5.5780465450438248
		-0.13747155558659488 6.7998514621894675 5.6053907210796723
		-0.25401421342623065 6.799321941196447 5.683260237798625
		-0.33188541489281087 6.7985294551665314 5.7998004888559347
		-0.3592303129633565 6.7975946535183311 5.9372689156255065
		-0.33188541489281087 6.7966598522153108 6.0747368610386125
		-0.25401421342623065 6.7958673661853961 6.191277352774156
		-0.13747155558659488 6.7953378451923756 6.2691466288148758
		1.4345529780450353e-08 6.7951519068170292 6.2964908048507233
		0.13747155558659488 6.7953378451923756 6.2691466288148758
		0.25401421342623065 6.7958673661853961 6.191277352774156
		0.33188541489281087 6.7966598522153108 6.0747368610386125
		0.3592303129633565 6.7975946705383974 5.9372689156255065
		0.33188541489281087 6.7985294551665314 5.7998004888559347
		0.25401421342623065 6.799321941196447 5.683260237798625
		0.13747155558659488 6.7998514621894675 5.6053907210796723
		1.4345529780450353e-08 6.8000374101919432 5.5780465450438248
		1.4345529780450353e-08 6.937319696416453 5.6063257560131685
		1.4345529780450353e-08 7.0533302146838981 5.6849875854737082
		1.4345529780450353e-08 7.13040717798303 5.8020573286426504
		-1.2929293349875958e-30 7.1568165597636151 5.9372689156255065
		1.4345529780450353e-08 7.1285375894725034 6.0769939415035612
		1.4345529780450353e-08 7.0498757600119628 6.1930042190927743
		1.4345529780450353e-08 6.9328062575212535 6.2700814230701392
		1.4345529780450353e-08 6.7951519068170292 6.2964908048507233
		1.4345529780450353e-08 6.6578696446603427 6.2682115938813796
		1.4345529780450353e-08 6.5418591263928976 6.189549764420839
		1.4345529780450353e-08 6.4647821630937656 6.0724800212518968
		1.4345529780450353e-08 6.4383727813131806 5.9348262722432539
		1.4345529780450353e-08 6.4666517516042923 5.7975434083909869
		1.4345529780450353e-08 6.545313581064832 5.6815331308017738
		1.4345529780450353e-08 6.6623830835555422 5.604455926824409
		1.4345529780450353e-08 6.8000374101919432 5.5780465450438248
		;
createNode joint -n "tail0_6_ofs_jnt" -p "tail0_6_ofs_ctl";
	rename -uid "E37C1BB1-41C0-7F9F-5107-8381F52CD766";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -1.5777218104420236e-30 -7.1054273576010019e-15 0 ;
	setAttr ".r" -type "double3" -41.135156892646854 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 41.135156892646854 0 0 ;
createNode transform -n "tail0_5_ofs_ctl" -p "tail0_5_fkc";
	rename -uid "157744B9-47BD-3045-779A-83B4EA5A59A6";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_5_ofs_ctlShape1" -p "tail0_5_ofs_ctl";
	rename -uid "5BB739BF-4E5B-4851-7269-8A925DE6F792";
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
		0.3592303129633565 6.7975946705384089 5.9372689156255047
		0.33353646756817296 6.9357499929837063 5.9372689156255047
		0.25527777414717095 7.0528724446855797 5.9372689156255047
		0.13815532244529805 7.1311311381065812 5.9372689156255047
		0 7.1568165597636257 5.9372689156255047
		-0.13815532244529805 7.1311311381065812 5.9372689156255047
		-0.25527777414717095 7.0528724446855797 5.9372689156255047
		-0.33353646756817296 6.9357499929837063 5.9372689156255047
		-0.3592303129633565 6.7975946535183418 5.9372689156255047
		-0.33353646756817296 6.6594393480931107 5.9372689156255047
		-0.25527777414717095 6.5423168963912373 5.9372689156255047
		-0.13815532244529805 6.4640582029702358 5.9372689156255047
		1.4345529780450353e-08 6.4383727813131912 5.934826272243253
		0.13815532244529805 6.4640582029702358 5.9372689156255047
		0.25527777414717095 6.5423168963912373 5.9372689156255047
		0.33353646756817296 6.6594393480931107 5.9372689156255047
		0.3592303129633565 6.7975946705384089 5.9372689156255047
		0.33188541489281087 6.7985294551665429 5.7998004888559338
		0.25401421342623065 6.7993219411964576 5.6832602377986232
		0.13747155558659488 6.7998514621894781 5.6053907210796714
		1.4345529780450353e-08 6.8000374101919538 5.578046545043823
		-0.13747155558659488 6.7998514621894781 5.6053907210796714
		-0.25401421342623065 6.7993219411964576 5.6832602377986232
		-0.33188541489281087 6.7985294551665429 5.7998004888559338
		-0.3592303129633565 6.7975946535183418 5.9372689156255047
		-0.33188541489281087 6.7966598522153223 6.0747368610386117
		-0.25401421342623065 6.7958673661854068 6.1912773527741543
		-0.13747155558659488 6.7953378451923863 6.2691466288148741
		1.4345529780450353e-08 6.7951519068170398 6.2964908048507215
		0.13747155558659488 6.7953378451923863 6.2691466288148741
		0.25401421342623065 6.7958673661854068 6.1912773527741543
		0.33188541489281087 6.7966598522153223 6.0747368610386117
		0.3592303129633565 6.7975946705384089 5.9372689156255047
		0.33188541489281087 6.7985294551665429 5.7998004888559338
		0.25401421342623065 6.7993219411964576 5.6832602377986232
		0.13747155558659488 6.7998514621894781 5.6053907210796714
		1.4345529780450353e-08 6.8000374101919538 5.578046545043823
		1.4345529780450353e-08 6.9373196964164636 5.6063257560131667
		1.4345529780450353e-08 7.0533302146839087 5.6849875854737073
		1.4345529780450353e-08 7.1304071779830407 5.8020573286426496
		0 7.1568165597636257 5.9372689156255047
		1.4345529780450353e-08 7.128537589472514 6.0769939415035603
		1.4345529780450353e-08 7.0498757600119744 6.1930042190927725
		1.4345529780450353e-08 6.9328062575212641 6.2700814230701374
		1.4345529780450353e-08 6.7951519068170398 6.2964908048507215
		1.4345529780450353e-08 6.6578696446603534 6.2682115938813778
		1.4345529780450353e-08 6.5418591263929082 6.1895497644208382
		1.4345529780450353e-08 6.4647821630937763 6.0724800212518959
		1.4345529780450353e-08 6.4383727813131912 5.934826272243253
		1.4345529780450353e-08 6.4666517516043029 5.7975434083909851
		1.4345529780450353e-08 6.5453135810648426 5.681533130801772
		1.4345529780450353e-08 6.6623830835555529 5.6044559268244072
		1.4345529780450353e-08 6.8000374101919538 5.578046545043823
		;
createNode joint -n "tail0_5_ofs_jnt" -p "tail0_5_ofs_ctl";
	rename -uid "D3903CBC-4AD7-D93E-20FD-34A38B59A8C8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 7.1054273576010019e-15 -1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" -41.135156892646854 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 41.135156892646854 0 0 ;
createNode transform -n "tail0_4_ofs_ctl" -p "tail0_4_fkc";
	rename -uid "EEDD59BF-4960-F038-96C8-EEA6A38C431C";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_4_ofs_ctlShape1" -p "tail0_4_ofs_ctl";
	rename -uid "8508A5C2-4004-FD50-7932-089750A598CA";
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
		0.3592303129633565 3.6956914791494779 8.2340949698389352
		0.33353646756817296 3.8338468015947758 8.2340949698389352
		0.25527777414717095 3.9509692532966487 8.2340949698389352
		0.13815532244529805 4.0292279467176506 8.2340949698389352
		6.4646466749379792e-31 4.0549133683746952 8.2340949698389352
		-0.13815532244529805 4.0292279467176506 8.2340949698389352
		-0.25527777414717095 3.9509692532966487 8.2340949698389352
		-0.33353646756817296 3.8338468015947758 8.2340949698389352
		-0.3592303129633565 3.6956914621294112 8.2340949698389352
		-0.33353646756817296 3.5575361567041801 8.2340949698389352
		-0.25527777414717095 3.4404137050023071 8.2340949698389352
		-0.13815532244529805 3.3621550115813048 8.2340949698389352
		1.4345529780450353e-08 3.3364695899242611 8.2316523264566843
		0.13815532244529805 3.3621550115813048 8.2340949698389352
		0.25527777414717095 3.4404137050023071 8.2340949698389352
		0.33353646756817296 3.5575361567041801 8.2340949698389352
		0.3592303129633565 3.6956914791494779 8.2340949698389352
		0.33188541489281087 3.6966262637776119 8.0966265430693642
		0.25401421342623065 3.697418749807527 7.9800862920120537
		0.13747155558659488 3.6979482708005471 7.9022167752931018
		1.4345529780450353e-08 3.6981342188030233 7.8748725992572535
		-0.13747155558659488 3.6979482708005471 7.9022167752931018
		-0.25401421342623065 3.697418749807527 7.9800862920120537
		-0.33188541489281087 3.6966262637776119 8.0966265430693642
		-0.3592303129633565 3.6956914621294112 8.2340949698389352
		-0.33188541489281087 3.6947566608263913 8.3715629152520421
		-0.25401421342623065 3.6939641747964762 8.4881034069875856
		-0.13747155558659488 3.6934346538034561 8.5659726830283045
		1.4345529780450353e-08 3.6932487154281093 8.5933168590641529
		0.13747155558659488 3.6934346538034561 8.5659726830283045
		0.25401421342623065 3.6939641747964762 8.4881034069875856
		0.33188541489281087 3.6947566608263913 8.3715629152520421
		0.3592303129633565 3.6956914791494779 8.2340949698389352
		0.33188541489281087 3.6966262637776119 8.0966265430693642
		0.25401421342623065 3.697418749807527 7.9800862920120537
		0.13747155558659488 3.6979482708005471 7.9022167752931018
		1.4345529780450353e-08 3.6981342188030233 7.8748725992572535
		1.4345529780450353e-08 3.8354165050275326 7.9031518102265981
		1.4345529780450353e-08 3.9514270232949782 7.9818136396871378
		1.4345529780450353e-08 4.0285039865941101 8.09888338285608
		6.4646466749379792e-31 4.0549133683746952 8.2340949698389352
		1.4345529780450353e-08 4.0266343980835835 8.3738199957169908
		1.4345529780450353e-08 3.9479725686230434 8.4898302733062039
		1.4345529780450353e-08 3.8309030661323336 8.5669074772835678
		1.4345529780450353e-08 3.6932487154281093 8.5933168590641529
		1.4345529780450353e-08 3.5559664532714232 8.5650376480948083
		1.4345529780450353e-08 3.4399559350039777 8.4863758186342686
		1.4345529780450353e-08 3.3628789717048457 8.3693060754653263
		1.4345529780450353e-08 3.3364695899242611 8.2316523264566843
		1.4345529780450353e-08 3.3647485602153724 8.0943694626044156
		1.4345529780450353e-08 3.4434103896759125 7.9783591850152034
		1.4345529780450353e-08 3.5604798921666223 7.9012819810378385
		1.4345529780450353e-08 3.6981342188030233 7.8748725992572535
		;
createNode joint -n "tail0_4_ofs_jnt" -p "tail0_4_ofs_ctl";
	rename -uid "A331005F-4666-2334-B855-609559734B28";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 7.8886090522101181e-31 0 -3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" -65.82812690697375 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 65.828126906973765 0 0 ;
createNode transform -n "tail0_3_ofs_ctl" -p "tail0_3_fkc";
	rename -uid "48ACA53D-4874-CDF4-B8E9-C9A34A9CC1A5";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_3_ofs_ctlShape1" -p "tail0_3_ofs_ctl";
	rename -uid "7CDDEBC7-42A9-8F12-F6F9-7F9F5B1C9533";
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
		0.3592303129633565 3.2705798815804346 8.4120011126714829
		0.33353646756817296 3.4087352040257324 8.4120011126714829
		0.25527777414717095 3.5258576557276053 8.4120011126714829
		0.13815532244529805 3.6041163491486077 8.4120011126714829
		0 3.6298017708056514 8.4120011126714829
		-0.13815532244529805 3.6041163491486077 8.4120011126714829
		-0.25527777414717095 3.5258576557276053 8.4120011126714829
		-0.33353646756817296 3.4087352040257324 8.4120011126714829
		-0.3592303129633565 3.2705798645603679 8.4120011126714829
		-0.33353646756817296 3.1324245591351367 8.4120011126714829
		-0.25527777414717095 3.0153021074332638 8.4120011126714829
		-0.13815532244529805 2.9370434140122614 8.4120011126714829
		1.4345529780450353e-08 2.9113579923552177 8.4095584692892302
		0.13815532244529805 2.9370434140122614 8.4120011126714829
		0.25527777414717095 3.0153021074332638 8.4120011126714829
		0.33353646756817296 3.1324245591351367 8.4120011126714829
		0.3592303129633565 3.2705798815804346 8.4120011126714829
		0.33188541489281087 3.2715146662085686 8.2745326859019119
		0.25401421342623065 3.2723071522384837 8.1579924348446013
		0.13747155558659488 3.2728366732315037 8.0801229181256495
		1.4345529780450353e-08 3.2730226212339799 8.0527787420898012
		-0.13747155558659488 3.2728366732315037 8.0801229181256495
		-0.25401421342623065 3.2723071522384837 8.1579924348446013
		-0.33188541489281087 3.2715146662085686 8.2745326859019119
		-0.3592303129633565 3.2705798645603679 8.4120011126714829
		-0.33188541489281087 3.2696450632573479 8.5494690580845898
		-0.25401421342623065 3.2688525772274328 8.6660095498201315
		-0.13747155558659488 3.2683230562344128 8.7438788258608522
		1.4345529780450353e-08 3.2681371178590659 8.7712230018967006
		0.13747155558659488 3.2683230562344128 8.7438788258608522
		0.25401421342623065 3.2688525772274328 8.6660095498201315
		0.33188541489281087 3.2696450632573479 8.5494690580845898
		0.3592303129633565 3.2705798815804346 8.4120011126714829
		0.33188541489281087 3.2715146662085686 8.2745326859019119
		0.25401421342623065 3.2723071522384837 8.1579924348446013
		0.13747155558659488 3.2728366732315037 8.0801229181256495
		1.4345529780450353e-08 3.2730226212339799 8.0527787420898012
		1.4345529780450353e-08 3.4103049074584892 8.081057953059144
		1.4345529780450353e-08 3.5263154257259348 8.1597197825196854
		1.4345529780450353e-08 3.6033923890250668 8.2767895256886277
		0 3.6298017708056514 8.4120011126714829
		1.4345529780450353e-08 3.6015228005145401 8.5517261385495384
		1.4345529780450353e-08 3.522860971054 8.6677364161387498
		1.4345529780450353e-08 3.4057914685632902 8.7448136201161155
		1.4345529780450353e-08 3.2681371178590659 8.7712230018967006
		1.4345529780450353e-08 3.1308548557023799 8.742943790927356
		1.4345529780450353e-08 3.0148443374349343 8.6642819614668163
		1.4345529780450353e-08 2.9377673741358024 8.547212218297874
		1.4345529780450353e-08 2.9113579923552177 8.4095584692892302
		1.4345529780450353e-08 2.939636962646329 8.2722756054369633
		1.4345529780450353e-08 3.0182987921068691 8.1562653278477502
		1.4345529780450353e-08 3.1353682945975789 8.0791881238703862
		1.4345529780450353e-08 3.2730226212339799 8.0527787420898012
		;
createNode joint -n "tail0_3_ofs_jnt" -p "tail0_3_ofs_ctl";
	rename -uid "A8631FD2-4CCD-40A5-C7C3-C0A418690DCC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" -68.753954930041715 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 68.753954930041715 0 0 ;
createNode transform -n "tail0_2_ofs_ctl" -p "tail0_2_fkc";
	rename -uid "3A99EFF5-468A-B443-F1F6-8884A4C5BE79";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_2_ofs_ctlShape1" -p "tail0_2_ofs_ctl";
	rename -uid "A5592199-466C-5EAB-98E9-E786B7021EFA";
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
		0.3592303129633565 4.5847221153097264 7.7742381367420732
		0.33353646756817296 4.7228774377550247 7.7742381367420732
		0.25527777414717095 4.8399998894568972 7.7742381367420732
		0.13815532244529805 4.9182585828778995 7.7742381367420732
		0 4.9439440045349432 7.7742381367420732
		-0.13815532244529805 4.9182585828778995 7.7742381367420732
		-0.25527777414717095 4.8399998894568972 7.7742381367420732
		-0.33353646756817296 4.7228774377550247 7.7742381367420732
		-0.3592303129633565 4.5847220982896602 7.7742381367420732
		-0.33353646756817296 4.4465667928644281 7.7742381367420732
		-0.25527777414717095 4.3294443411625556 7.7742381367420732
		-0.13815532244529805 4.2511856477415533 7.7742381367420732
		1.4345529780450353e-08 4.2255002260845096 7.7717954933598206
		0.13815532244529805 4.2511856477415533 7.7742381367420732
		0.25527777414717095 4.3294443411625556 7.7742381367420732
		0.33353646756817296 4.4465667928644281 7.7742381367420732
		0.3592303129633565 4.5847221153097264 7.7742381367420732
		0.33188541489281087 4.5856568999378604 7.6367697099725014
		0.25401421342623065 4.586449385967776 7.5202294589151917
		0.13747155558659488 4.5869789069607956 7.442359942196239
		1.4345529780450353e-08 4.5871648549632713 7.4150157661603915
		-0.13747155558659488 4.5869789069607956 7.442359942196239
		-0.25401421342623065 4.586449385967776 7.5202294589151917
		-0.33188541489281087 4.5856568999378604 7.6367697099725014
		-0.3592303129633565 4.5847220982896602 7.7742381367420732
		-0.33188541489281087 4.5837872969866398 7.9117060821551792
		-0.25401421342623065 4.5829948109567242 8.0282465738907227
		-0.13747155558659488 4.5824652899637046 8.1061158499314416
		1.4345529780450353e-08 4.5822793515883582 8.13346002596729
		0.13747155558659488 4.5824652899637046 8.1061158499314416
		0.25401421342623065 4.5829948109567242 8.0282465738907227
		0.33188541489281087 4.5837872969866398 7.9117060821551792
		0.3592303129633565 4.5847221153097264 7.7742381367420732
		0.33188541489281087 4.5856568999378604 7.6367697099725014
		0.25401421342623065 4.586449385967776 7.5202294589151917
		0.13747155558659488 4.5869789069607956 7.442359942196239
		1.4345529780450353e-08 4.5871648549632713 7.4150157661603915
		1.4345529780450353e-08 4.7244471411877811 7.4432949771297352
		1.4345529780450353e-08 4.8404576594552271 7.5219568065902749
		1.4345529780450353e-08 4.917534622754359 7.6390265497592171
		0 4.9439440045349432 7.7742381367420732
		1.4345529780450353e-08 4.9156650342438324 7.9139631626201279
		1.4345529780450353e-08 4.8370032047832918 8.029973440209341
		1.4345529780450353e-08 4.7199337022925825 8.107050644186705
		1.4345529780450353e-08 4.5822793515883582 8.13346002596729
		1.4345529780450353e-08 4.4449970894316717 8.1051808149979454
		1.4345529780450353e-08 4.3289865711642257 8.0265189855374057
		1.4345529780450353e-08 4.2519096078650938 7.9094492423684635
		1.4345529780450353e-08 4.2255002260845096 7.7717954933598206
		1.4345529780450353e-08 4.2537791963756204 7.6345126295075536
		1.4345529780450353e-08 4.332441025836161 7.5185023519183405
		1.4345529780450353e-08 4.4495105283268703 7.4414251479409756
		1.4345529780450353e-08 4.5871648549632713 7.4150157661603915
		;
createNode joint -n "tail0_2_ofs_jnt" -p "tail0_2_ofs_ctl";
	rename -uid "97EAFB36-41E3-8C2C-6E6F-3C8B92AEA554";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" -59.470758845391011 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 59.470758845391011 0 0 ;
createNode transform -n "tail0_1_ofs_ctl" -p "tail0_1_fkc";
	rename -uid "C5E9F920-453C-9A68-A649-6EA59D71167D";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_1_ofs_ctlShape1" -p "tail0_1_ofs_ctl";
	rename -uid "0D7DAD5D-4303-4501-F1B6-BE96F8920059";
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
		0.3592303129633565 6.5629467758625371 6.1956585685930499
		0.33353646756817296 6.7011020983078353 6.1956585685930499
		0.25527777414717095 6.8182245500097078 6.1956585685930499
		0.13815532244529805 6.8964832434307102 6.1956585685930499
		0 6.9221686650877539 6.1956585685930499
		-0.13815532244529805 6.8964832434307102 6.1956585685930499
		-0.25527777414717095 6.8182245500097078 6.1956585685930499
		-0.33353646756817296 6.7011020983078353 6.1956585685930499
		-0.3592303129633565 6.5629467588424708 6.1956585685930499
		-0.33353646756817296 6.4247914534172388 6.1956585685930499
		-0.25527777414717095 6.3076690017153663 6.1956585685930499
		-0.13815532244529805 6.2294103082943639 6.1956585685930499
		1.4345529780450353e-08 6.2037248866373202 6.1932159252107972
		0.13815532244529805 6.2294103082943639 6.1956585685930499
		0.25527777414717095 6.3076690017153663 6.1956585685930499
		0.33353646756817296 6.4247914534172388 6.1956585685930499
		0.3592303129633565 6.5629467758625371 6.1956585685930499
		0.33188541489281087 6.5638815604906711 6.058190141823478
		0.25401421342623065 6.5646740465205866 5.9416498907661683
		0.13747155558659488 6.5652035675136062 5.8637803740472156
		1.4345529780450353e-08 6.565389515516082 5.8364361980113681
		-0.13747155558659488 6.5652035675136062 5.8637803740472156
		-0.25401421342623065 6.5646740465205866 5.9416498907661683
		-0.33188541489281087 6.5638815604906711 6.058190141823478
		-0.3592303129633565 6.5629467588424708 6.1956585685930499
		-0.33188541489281087 6.5620119575394504 6.3331265140061568
		-0.25401421342623065 6.5612194715095349 6.4496670057416994
		-0.13747155558659488 6.5606899505165153 6.5275362817824192
		1.4345529780450353e-08 6.5605040121411689 6.5548804578182667
		0.13747155558659488 6.5606899505165153 6.5275362817824192
		0.25401421342623065 6.5612194715095349 6.4496670057416994
		0.33188541489281087 6.5620119575394504 6.3331265140061568
		0.3592303129633565 6.5629467758625371 6.1956585685930499
		0.33188541489281087 6.5638815604906711 6.058190141823478
		0.25401421342623065 6.5646740465205866 5.9416498907661683
		0.13747155558659488 6.5652035675136062 5.8637803740472156
		1.4345529780450353e-08 6.565389515516082 5.8364361980113681
		1.4345529780450353e-08 6.7026718017405917 5.8647154089807119
		1.4345529780450353e-08 6.8186823200080369 5.9433772384412515
		1.4345529780450353e-08 6.8957592833071697 6.0604469816101938
		0 6.9221686650877539 6.1956585685930499
		1.4345529780450353e-08 6.893889694796643 6.3353835944711046
		1.4345529780450353e-08 6.8152278653361025 6.4513938720603177
		1.4345529780450353e-08 6.6981583628453931 6.5284710760376825
		1.4345529780450353e-08 6.5605040121411689 6.5548804578182667
		1.4345529780450353e-08 6.4232217499844824 6.526601246848923
		1.4345529780450353e-08 6.3072112317170372 6.4479394173883833
		1.4345529780450353e-08 6.2301342684179044 6.3308696742194401
		1.4345529780450353e-08 6.2037248866373202 6.1932159252107972
		1.4345529780450353e-08 6.2320038569284311 6.0559330613585303
		1.4345529780450353e-08 6.3106656863889716 5.9399227837693171
		1.4345529780450353e-08 6.427735188879681 5.8628455797919523
		1.4345529780450353e-08 6.565389515516082 5.8364361980113681
		;
createNode joint -n "tail0_1_ofs_jnt" -p "tail0_1_ofs_ctl";
	rename -uid "63FFDCA4-464F-D3D7-9CA0-07BDCBABA025";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" -43.351053798321431 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 43.351053798321423 0 0 ;
createNode transform -n "tail0_0_ofs_ctl" -p "tail0_0_fkc";
	rename -uid "49C35F4E-463C-3778-6B11-94BC34A2C213";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_0_ofs_ctlShape1" -p "tail0_0_ofs_ctl";
	rename -uid "AD7095D4-4B0B-BC95-9F0D-329C1227DFE2";
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
		0.3592303129633565 7.7459790885404161 4.6323064925887119
		0.33353646756817296 7.8841344109857143 4.6323064925887119
		0.25527777414717095 8.0012568626875868 4.6323064925887119
		0.13815532244529805 8.0795155561085892 4.6323064925887119
		1.2929293349875958e-30 8.1052009777656338 4.6323064925887119
		-0.13815532244529805 8.0795155561085892 4.6323064925887119
		-0.25527777414717095 8.0012568626875868 4.6323064925887119
		-0.33353646756817296 7.8841344109857143 4.6323064925887119
		-0.3592303129633565 7.7459790715203498 4.6323064925887119
		-0.33353646756817296 7.6078237660951178 4.6323064925887119
		-0.25527777414717095 7.4907013143932453 4.6323064925887119
		-0.13815532244529805 7.4124426209722429 4.6323064925887119
		1.4345529780450353e-08 7.3867571993151993 4.6298638492064592
		0.13815532244529805 7.4124426209722429 4.6323064925887119
		0.25527777414717095 7.4907013143932453 4.6323064925887119
		0.33353646756817296 7.6078237660951178 4.6323064925887119
		0.3592303129633565 7.7459790885404161 4.6323064925887119
		0.33188541489281087 7.7469138731685501 4.49483806581914
		0.25401421342623065 7.7477063591984656 4.3782978147618303
		0.13747155558659488 7.7482358801914852 4.3004282980428776
		1.4345529780450353e-08 7.748421828193961 4.2730841220070301
		-0.13747155558659488 7.7482358801914852 4.3004282980428776
		-0.25401421342623065 7.7477063591984656 4.3782978147618303
		-0.33188541489281087 7.7469138731685501 4.49483806581914
		-0.3592303129633565 7.7459790715203498 4.6323064925887119
		-0.33188541489281087 7.7450442702173294 4.7697744380018179
		-0.25401421342623065 7.7442517841874139 4.8863149297373614
		-0.13747155558659488 7.7437222631943943 4.9641842057780812
		1.4345529780450353e-08 7.7435363248190479 4.9915283818139287
		0.13747155558659488 7.7437222631943943 4.9641842057780812
		0.25401421342623065 7.7442517841874139 4.8863149297373614
		0.33188541489281087 7.7450442702173294 4.7697744380018179
		0.3592303129633565 7.7459790885404161 4.6323064925887119
		0.33188541489281087 7.7469138731685501 4.49483806581914
		0.25401421342623065 7.7477063591984656 4.3782978147618303
		0.13747155558659488 7.7482358801914852 4.3004282980428776
		1.4345529780450353e-08 7.748421828193961 4.2730841220070301
		1.4345529780450353e-08 7.8857041144184707 4.3013633329763739
		1.4345529780450353e-08 8.0017146326859159 4.3800251624369135
		1.4345529780450353e-08 8.0787915959850487 4.4970949056058558
		1.2929293349875958e-30 8.1052009777656338 4.6323064925887119
		1.4345529780450353e-08 8.076922007474522 4.7720315184667665
		1.4345529780450353e-08 7.9982601780139815 4.8880417960559797
		1.4345529780450353e-08 7.8811906755232721 4.9651190000333445
		1.4345529780450353e-08 7.7435363248190479 4.9915283818139287
		1.4345529780450353e-08 7.6062540626623614 4.9632491708445849
		1.4345529780450353e-08 7.4902435443949162 4.8845873413840444
		1.4345529780450353e-08 7.4131665810957834 4.7675175982151021
		1.4345529780450353e-08 7.3867571993151993 4.6298638492064592
		1.4345529780450353e-08 7.4150361696063101 4.4925809853541923
		1.4345529780450353e-08 7.4936979990668506 4.3765707077649791
		1.4345529780450353e-08 7.61076750155756 4.2994935037876143
		1.4345529780450353e-08 7.748421828193961 4.2730841220070301
		;
createNode joint -n "tail0_0_ofs_jnt" -p "tail0_0_ofs_ctl";
	rename -uid "706AC0BE-4B11-30CF-DC56-E1BF51D2759E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 1.5777218104420236e-30 0 0 ;
	setAttr ".r" -type "double3" -30.880573279223352 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 30.880573279223352 0 0 ;
createNode transform -n "tail0_IK" -p "tail0_ctl_data";
	rename -uid "95D5D407-4483-3844-E44A-C2B42B41E242";
	setAttr -cb on ".ro";
createNode transform -n "tail0_0_ikc_ofs" -p "tail0_IK";
	rename -uid "AE7A578C-486A-9C0C-BE9F-629E10647A11";
	setAttr ".t" -type "double3" -8.1873376336046327e-15 -1.4210854715202004e-14 1.0658141036401503e-14 ;
	setAttr ".r" -type "double3" -30.880573279223359 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "tail0_0_ikc" -p "tail0_0_ikc_ofs";
	rename -uid "379D6EBB-4A8B-441C-D76C-CF8EECCF1223";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_0_ikcShape1" -p "tail0_0_ikc";
	rename -uid "4BDE599A-4E6A-C1BF-D76D-F7ABE1F58EED";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
		27
		1.3263562932206287e-16 2.1661041147017319 1.3263562932206287e-16
		9.3787549272956357e-17 1.5316668820483152 1.5316668820483152
		8.1215894529522476e-33 1.3263562932206287e-16 2.1661041147017319
		-9.3787549272956357e-17 -1.5316668820483152 1.5316668820483152
		-1.3263562932206287e-16 -2.1661041147017319 1.3263562932206287e-16
		-9.3787549272956357e-17 -1.5316668820483152 -1.5316668820483152
		-8.1215894529522476e-33 -1.3263562932206287e-16 -2.1661041147017319
		9.3787549272956357e-17 1.5316668820483152 -1.5316668820483152
		1.3263562932206287e-16 2.1661041147017319 -1.3263562932206287e-16
		-1.5316668820483152 1.5316668820483152 9.3787549272956357e-17
		-2.1661041147017319 8.1215894529522476e-33 1.3263562932206287e-16
		-1.5316668820483152 -1.5316668820483152 -9.3787549272956357e-17
		-1.3263562932206287e-16 -2.1661041147017319 1.3263562932206287e-16
		1.5316668820483152 -1.5316668820483152 -9.3787549272956357e-17
		2.1661041147017319 -8.1215894529522476e-33 -1.3263562932206287e-16
		1.5316668820483152 1.5316668820483152 9.3787549272956357e-17
		1.3263562932206287e-16 2.1661041147017319 1.3263562932206287e-16
		9.3787549272956357e-17 1.5316668820483152 1.5316668820483152
		8.1215894529522476e-33 1.3263562932206287e-16 2.1661041147017319
		-1.5316668820483152 9.3787549272956357e-17 1.5316668820483152
		-2.1661041147017319 1.3263562932206287e-16 8.1215894529522476e-33
		-1.5316668820483152 -9.3787549272956357e-17 -1.5316668820483152
		-8.1215894529522476e-33 -1.3263562932206287e-16 -2.1661041147017319
		1.5316668820483152 -9.3787549272956357e-17 -1.5316668820483152
		2.1661041147017319 -1.3263562932206287e-16 -8.1215894529522476e-33
		1.5316668820483152 9.3787549272956357e-17 1.5316668820483152
		8.1215894529522476e-33 1.3263562932206287e-16 2.1661041147017319
		;
createNode joint -n "tail0_0_ikj" -p "tail0_0_ikc";
	rename -uid "DBD64B37-496B-EF4A-2906-87BA08F43D67";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 3.1805546814635168e-15 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.85823897781833314 -0.51325028685169061 0
		 0 0.51325028685169061 0.85823897781833314 0 -8.1873376336046327e-15 64.071255229378394 -28.667042554673227 1;
	setAttr ".radi" 1.4440694098011546;
createNode transform -n "tail0_1_ikc_ofs" -p "tail0_0_ikc";
	rename -uid "515B2524-4F31-75C6-25DD-D3B6D25D629B";
	setAttr ".t" -type "double3" 4.6381223072172317e-15 -1.3112477221901173 -7.804110917934171 ;
	setAttr ".r" -type "double3" -20.833754150388145 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "tail0_1_ikc" -p "tail0_1_ikc_ofs";
	rename -uid "2C5752C2-463F-7FB9-DE99-5B88D818213C";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_1_ikcShape1" -p "tail0_1_ikc";
	rename -uid "8E4B0D3C-499C-4316-C13D-689CA8D71551";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
		27
		1.3263562932206287e-16 2.1661041147017319 1.3263562932206287e-16
		9.3787549272956357e-17 1.5316668820483152 1.5316668820483152
		8.1215894529522476e-33 1.3263562932206287e-16 2.1661041147017319
		-9.3787549272956357e-17 -1.5316668820483152 1.5316668820483152
		-1.3263562932206287e-16 -2.1661041147017319 1.3263562932206287e-16
		-9.3787549272956357e-17 -1.5316668820483152 -1.5316668820483152
		-8.1215894529522476e-33 -1.3263562932206287e-16 -2.1661041147017319
		9.3787549272956357e-17 1.5316668820483152 -1.5316668820483152
		1.3263562932206287e-16 2.1661041147017319 -1.3263562932206287e-16
		-1.5316668820483152 1.5316668820483152 9.3787549272956357e-17
		-2.1661041147017319 8.1215894529522476e-33 1.3263562932206287e-16
		-1.5316668820483152 -1.5316668820483152 -9.3787549272956357e-17
		-1.3263562932206287e-16 -2.1661041147017319 1.3263562932206287e-16
		1.5316668820483152 -1.5316668820483152 -9.3787549272956357e-17
		2.1661041147017319 -8.1215894529522476e-33 -1.3263562932206287e-16
		1.5316668820483152 1.5316668820483152 9.3787549272956357e-17
		1.3263562932206287e-16 2.1661041147017319 1.3263562932206287e-16
		9.3787549272956357e-17 1.5316668820483152 1.5316668820483152
		8.1215894529522476e-33 1.3263562932206287e-16 2.1661041147017319
		-1.5316668820483152 9.3787549272956357e-17 1.5316668820483152
		-2.1661041147017319 1.3263562932206287e-16 8.1215894529522476e-33
		-1.5316668820483152 -9.3787549272956357e-17 -1.5316668820483152
		-8.1215894529522476e-33 -1.3263562932206287e-16 -2.1661041147017319
		1.5316668820483152 -9.3787549272956357e-17 -1.5316668820483152
		2.1661041147017319 -1.3263562932206287e-16 -8.1215894529522476e-33
		1.5316668820483152 9.3787549272956357e-17 1.5316668820483152
		8.1215894529522476e-33 1.3263562932206287e-16 2.1661041147017319
		;
createNode joint -n "tail0_1_ikj" -p "tail0_1_ikc";
	rename -uid "E8A97A46-4B10-08CC-F653-78AEB5011B8C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -6.3611093629270335e-15 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.61958277059687994 -0.78493132844822422 0
		 0 0.78493132844822422 0.61958277059687994 0 -3.549215326387401e-15 58.940429157367205 -34.691836462114239 1;
	setAttr ".radi" 1.4440694098011546;
createNode transform -n "tail0_2_ikc_ofs" -p "tail0_0_ikc";
	rename -uid "AEC57485-49DA-F978-5B94-C49C4689C0C6";
	setAttr ".t" -type "double3" 1.0062980408359485e-14 -6.37295516666358 -16.137506849501516 ;
	setAttr ".r" -type "double3" -37.873381650818345 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "tail0_2_ikc" -p "tail0_2_ikc_ofs";
	rename -uid "925EB51E-4277-3626-57C2-3AB25431B671";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_2_ikcShape1" -p "tail0_2_ikc";
	rename -uid "EA99BE8C-493F-F2FB-E3F1-DE96AC088FE1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
		27
		1.3263562932206287e-16 2.1661041147017319 1.3263562932206287e-16
		9.3787549272956357e-17 1.5316668820483152 1.5316668820483152
		8.1215894529522476e-33 1.3263562932206287e-16 2.1661041147017319
		-9.3787549272956357e-17 -1.5316668820483152 1.5316668820483152
		-1.3263562932206287e-16 -2.1661041147017319 1.3263562932206287e-16
		-9.3787549272956357e-17 -1.5316668820483152 -1.5316668820483152
		-8.1215894529522476e-33 -1.3263562932206287e-16 -2.1661041147017319
		9.3787549272956357e-17 1.5316668820483152 -1.5316668820483152
		1.3263562932206287e-16 2.1661041147017319 -1.3263562932206287e-16
		-1.5316668820483152 1.5316668820483152 9.3787549272956357e-17
		-2.1661041147017319 8.1215894529522476e-33 1.3263562932206287e-16
		-1.5316668820483152 -1.5316668820483152 -9.3787549272956357e-17
		-1.3263562932206287e-16 -2.1661041147017319 1.3263562932206287e-16
		1.5316668820483152 -1.5316668820483152 -9.3787549272956357e-17
		2.1661041147017319 -8.1215894529522476e-33 -1.3263562932206287e-16
		1.5316668820483152 1.5316668820483152 9.3787549272956357e-17
		1.3263562932206287e-16 2.1661041147017319 1.3263562932206287e-16
		9.3787549272956357e-17 1.5316668820483152 1.5316668820483152
		8.1215894529522476e-33 1.3263562932206287e-16 2.1661041147017319
		-1.5316668820483152 9.3787549272956357e-17 1.5316668820483152
		-2.1661041147017319 1.3263562932206287e-16 8.1215894529522476e-33
		-1.5316668820483152 -9.3787549272956357e-17 -1.5316668820483152
		-8.1215894529522476e-33 -1.3263562932206287e-16 -2.1661041147017319
		1.5316668820483152 -9.3787549272956357e-17 -1.5316668820483152
		2.1661041147017319 -1.3263562932206287e-16 -8.1215894529522476e-33
		1.5316668820483152 9.3787549272956357e-17 1.5316668820483152
		8.1215894529522476e-33 1.3263562932206287e-16 2.1661041147017319
		;
createNode joint -n "tail0_2_ikj" -p "tail0_2_ikc";
	rename -uid "C7C2AF75-48A6-4FF9-D8F3-5997A07CFBB2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.272221872585407e-14 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.36237370413166381 -0.9320328849101287 0
		 0 0.9320328849101287 0.36237370413166381 0 1.8756427747548521e-15 50.319156681881196 -39.245958870342712 1;
	setAttr ".radi" 1.4440694098011546;
createNode transform -n "tail0_3_ikc_ofs" -p "tail0_0_ikc";
	rename -uid "6437558C-4589-924C-37C9-97B43F19BC6F";
	setAttr ".t" -type "double3" 1.5444584604255226e-14 -13.009330656341348 -25.381485497670429 ;
	setAttr ".r" -type "double3" -25.295431375770661 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "tail0_3_ikc" -p "tail0_3_ikc_ofs";
	rename -uid "71B5C060-46C5-6625-E6E3-C2AD8C0187B9";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_3_ikcShape1" -p "tail0_3_ikc";
	rename -uid "0F978995-4E57-274C-2D54-F79A7CA618A0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
		27
		1.3263562932206287e-16 2.1661041147017319 1.3263562932206287e-16
		9.3787549272956357e-17 1.5316668820483152 1.5316668820483152
		8.1215894529522476e-33 1.3263562932206287e-16 2.1661041147017319
		-9.3787549272956357e-17 -1.5316668820483152 1.5316668820483152
		-1.3263562932206287e-16 -2.1661041147017319 1.3263562932206287e-16
		-9.3787549272956357e-17 -1.5316668820483152 -1.5316668820483152
		-8.1215894529522476e-33 -1.3263562932206287e-16 -2.1661041147017319
		9.3787549272956357e-17 1.5316668820483152 -1.5316668820483152
		1.3263562932206287e-16 2.1661041147017319 -1.3263562932206287e-16
		-1.5316668820483152 1.5316668820483152 9.3787549272956357e-17
		-2.1661041147017319 8.1215894529522476e-33 1.3263562932206287e-16
		-1.5316668820483152 -1.5316668820483152 -9.3787549272956357e-17
		-1.3263562932206287e-16 -2.1661041147017319 1.3263562932206287e-16
		1.5316668820483152 -1.5316668820483152 -9.3787549272956357e-17
		2.1661041147017319 -8.1215894529522476e-33 -1.3263562932206287e-16
		1.5316668820483152 1.5316668820483152 9.3787549272956357e-17
		1.3263562932206287e-16 2.1661041147017319 1.3263562932206287e-16
		9.3787549272956357e-17 1.5316668820483152 1.5316668820483152
		8.1215894529522476e-33 1.3263562932206287e-16 2.1661041147017319
		-1.5316668820483152 9.3787549272956357e-17 1.5316668820483152
		-2.1661041147017319 1.3263562932206287e-16 8.1215894529522476e-33
		-1.5316668820483152 -9.3787549272956357e-17 -1.5316668820483152
		-8.1215894529522476e-33 -1.3263562932206287e-16 -2.1661041147017319
		1.5316668820483152 -9.3787549272956357e-17 -1.5316668820483152
		2.1661041147017319 -1.3263562932206287e-16 -8.1215894529522476e-33
		1.5316668820483152 9.3787549272956357e-17 1.5316668820483152
		8.1215894529522476e-33 1.3263562932206287e-16 2.1661041147017319
		;
createNode joint -n "tail0_3_ikj" -p "tail0_3_ikc";
	rename -uid "2A54B2D5-442E-0269-FBA3-FCB4B4BB5584";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 9.5416640443905503e-15 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.55664358115256229 -0.83075142104100586 0
		 0 0.83075142104100586 0.55664358115256229 0 7.2572469706505948e-15 39.879085872377914 -43.773380032589053 1;
	setAttr ".radi" 1.4440694098011546;
createNode transform -n "tail0_4_ikc_ofs" -p "tail0_0_ikc";
	rename -uid "74CE6753-43CE-B564-46F6-55B40E001A1C";
	setAttr ".t" -type "double3" 2.0042495671667206e-14 -13.543902579411281 -33.464876970064843 ;
	setAttr ".r" -type "double3" -25.295431375770661 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "tail0_4_ikc" -p "tail0_4_ikc_ofs";
	rename -uid "C9260F11-42BD-7E33-6624-AB80B86E28BF";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_4_ikcShape1" -p "tail0_4_ikc";
	rename -uid "6DAF8344-4165-44B7-D81F-78AA764F8811";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
		27
		1.3263562932206287e-16 2.1661041147017319 1.3263562932206287e-16
		9.3787549272956357e-17 1.5316668820483152 1.5316668820483152
		8.1215894529522476e-33 1.3263562932206287e-16 2.1661041147017319
		-9.3787549272956357e-17 -1.5316668820483152 1.5316668820483152
		-1.3263562932206287e-16 -2.1661041147017319 1.3263562932206287e-16
		-9.3787549272956357e-17 -1.5316668820483152 -1.5316668820483152
		-8.1215894529522476e-33 -1.3263562932206287e-16 -2.1661041147017319
		9.3787549272956357e-17 1.5316668820483152 -1.5316668820483152
		1.3263562932206287e-16 2.1661041147017319 -1.3263562932206287e-16
		-1.5316668820483152 1.5316668820483152 9.3787549272956357e-17
		-2.1661041147017319 8.1215894529522476e-33 1.3263562932206287e-16
		-1.5316668820483152 -1.5316668820483152 -9.3787549272956357e-17
		-1.3263562932206287e-16 -2.1661041147017319 1.3263562932206287e-16
		1.5316668820483152 -1.5316668820483152 -9.3787549272956357e-17
		2.1661041147017319 -8.1215894529522476e-33 -1.3263562932206287e-16
		1.5316668820483152 1.5316668820483152 9.3787549272956357e-17
		1.3263562932206287e-16 2.1661041147017319 1.3263562932206287e-16
		9.3787549272956357e-17 1.5316668820483152 1.5316668820483152
		8.1215894529522476e-33 1.3263562932206287e-16 2.1661041147017319
		-1.5316668820483152 9.3787549272956357e-17 1.5316668820483152
		-2.1661041147017319 1.3263562932206287e-16 8.1215894529522476e-33
		-1.5316668820483152 -9.3787549272956357e-17 -1.5316668820483152
		-8.1215894529522476e-33 -1.3263562932206287e-16 -2.1661041147017319
		1.5316668820483152 -9.3787549272956357e-17 -1.5316668820483152
		2.1661041147017319 -1.3263562932206287e-16 -8.1215894529522476e-33
		1.5316668820483152 9.3787549272956357e-17 1.5316668820483152
		8.1215894529522476e-33 1.3263562932206287e-16 2.1661041147017319
		;
createNode joint -n "tail0_4_ikj" -p "tail0_4_ikc";
	rename -uid "2BFEDA07-4827-EF3A-DF21-E2A1EA6B8B66";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -1.5777218104420236e-30 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -3.1805546814635168e-15 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.55664358115256229 -0.83075142104100586 0
		 0 0.83075142104100586 0.55664358115256229 0 1.1855158038062577e-14 35.271492419611057 -50.436492474303762 1;
	setAttr ".radi" 1.4440694098011546;
createNode transform -n "tail0_anchorF1" -p "master_ctl";
	rename -uid "805784FA-4943-8C07-637D-D3B6DDDABAFE";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "tail0_anchorF1Shape" -p "tail0_anchorF1";
	rename -uid "AC6C9241-4BCF-AB37-7DD7-8D9DC4ABB720";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 5.4152602867543296 5.4152602867543296 5.4152602867543296 ;
createNode transform -n "head0_head_fkc_SPACE_3_ofs" -p "master_ctl";
	rename -uid "EBC1FF53-4DDB-902F-FDB5-358B952A0416";
	setAttr ".t" -type "double3" 0 90.859974759067939 65.966879196904017 ;
createNode transform -n "head0_head_fkc_SPACE_3" -p "head0_head_fkc_SPACE_3_ofs";
	rename -uid "F5B9CB38-4AC6-DB9D-8C71-66AACA15E6F4";
createNode transform -n "lfLegQd0_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "EAF28202-467D-9EFB-F82C-1387A36E8723";
	setAttr ".t" -type "double3" 7.6284932772336997 4.5814736575834729 -38.775022261597954 ;
createNode transform -n "lfLegQd0_ikc_SPACE_1" -p "lfLegQd0_ikc_SPACE_1_ofs";
	rename -uid "42D204D9-4D3A-1048-A8A9-FC8DA3FF4957";
createNode transform -n "lfLegQd0_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "B9BAE9EF-4873-DAE1-C5A2-1B89B6DD3E75";
	setAttr ".t" -type "double3" 8.6727015988764826 40.632885796443844 2.8064332826076011 ;
	setAttr ".r" -type "double3" -0.32451139200814633 3.258734252829893 6.8971350639193579e-06 ;
createNode transform -n "lfLegQd0_pvc_SPACE_2" -p "lfLegQd0_pvc_SPACE_2_ofs";
	rename -uid "FF121E22-4015-F6B1-B668-49A162AC670C";
	setAttr ".t" -type "double3" 0 7.1054273576010019e-15 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "lfLegQd1_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "1E1111A0-4BF2-2457-7F2A-0CAF2E58026A";
	setAttr ".t" -type "double3" 6.5563385888811982 3.8802150771698276 36.346188987633255 ;
createNode transform -n "lfLegQd1_ikc_SPACE_1" -p "lfLegQd1_ikc_SPACE_1_ofs";
	rename -uid "1825DBE8-443F-4F0C-0B64-98B07566CBDF";
createNode transform -n "lfLegQd1_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "6A73273D-4582-BC3C-9530-708F4740995A";
	setAttr ".t" -type "double3" 9.1798497785790971 41.415276495648477 12.953339738975863 ;
	setAttr ".r" -type "double3" 179.14752474596889 5.4977065160364083 179.99999308285081 ;
createNode transform -n "lfLegQd1_pvc_SPACE_2" -p "lfLegQd1_pvc_SPACE_2_ofs";
	rename -uid "81911195-4BF6-C771-FE1A-9FABD714AB37";
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 0 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_3_ofs" -p "master_ctl";
	rename -uid "3F7F8D91-4263-7F1D-1ACF-CE99BEBA8FDA";
	setAttr ".t" -type "double3" -1.7763568394002473e-15 87.585054010195719 60.769255325518586 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_3" -p "neckQd0_fore_ctl_SPACE_3_ofs";
	rename -uid "1D907A38-4F34-78D6-3D5B-F1B58DD77456";
createNode transform -n "neckQd0_cog_ctl_SPACE_3_ofs" -p "master_ctl";
	rename -uid "9F95D1FE-47FD-8B7D-8EE0-EDBC5CF0AFC6";
	setAttr ".t" -type "double3" 1.3494237194669467e-14 68.985476835742531 45.846497140117599 ;
	setAttr ".r" -type "double3" -27.654316899160339 0 0 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_3" -p "neckQd0_cog_ctl_SPACE_3_ofs";
	rename -uid "25D7F910-4576-9651-9A1C-989275A5AF0D";
createNode transform -n "rtLegQd0_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "5914D6D3-466E-78F3-8566-24AD042C68EF";
	setAttr ".t" -type "double3" -7.6284932772339937 4.5814736575833166 -38.775022261597961 ;
createNode transform -n "rtLegQd0_ikc_SPACE_1" -p "rtLegQd0_ikc_SPACE_1_ofs";
	rename -uid "706C9113-42B7-4ABD-8D88-FEA67A228672";
createNode transform -n "rtLegQd0_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "003E5B6D-4E1F-4E4D-595E-A9B0E8F9A043";
	setAttr ".t" -type "double3" -8.6727015988773051 40.632885796443851 2.8064332826075646 ;
	setAttr ".r" -type "double3" -0.32451178407552667 -3.258734213829102 0 ;
createNode transform -n "rtLegQd0_pvc_SPACE_2" -p "rtLegQd0_pvc_SPACE_2_ofs";
	rename -uid "395131AD-4A9B-2421-5AF7-27AEBD231012";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 7.1054273576010019e-15 4.4408920985006262e-16 ;
createNode transform -n "rtLegQd1_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "E1030663-47B1-08B6-7511-A0930FA8766B";
	setAttr ".t" -type "double3" -6.5563385888829053 3.8802150771689838 36.346188987633248 ;
createNode transform -n "rtLegQd1_ikc_SPACE_1" -p "rtLegQd1_ikc_SPACE_1_ofs";
	rename -uid "D9FFABE8-455D-6EA0-B514-30BB3F34A02C";
createNode transform -n "rtLegQd1_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "7A8F541C-4713-3BBE-91EA-32ABA6ACB278";
	setAttr ".t" -type "double3" -9.1798497785781823 41.415276495648499 12.953339738975782 ;
	setAttr ".r" -type "double3" 179.14752540867264 -5.4977066184868786 180 ;
createNode transform -n "rtLegQd1_pvc_SPACE_2" -p "rtLegQd1_pvc_SPACE_2_ofs";
	rename -uid "F3421751-444E-98BB-6DFE-4387BFC07743";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 7.1054273576010019e-15 -1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode nurbsCurve -n "master1_ctlShape" -p "master1_ctl";
	rename -uid "49BE8033-48C7-98F2-E5EC-00982D016C1E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -56.049637266136116 -4.050189483028989e-16 
		43.054795150826898 -6.405816006229214e-14 -5.727832897080489e-16 60.888675227494673 
		56.049637266136095 -4.050189483028989e-16 43.05479515082687 79.266157187862007 -1.6896644140034908e-31 
		-1.9273066985676015e-14 56.049637266136095 4.050189483028989e-16 -43.05479515082687 
		-5.1264362600135411e-14 5.7278328970805048e-16 -60.888675227494701 -56.049637266136116 
		4.050189483028989e-16 -43.054795150826841 -79.266157187862007 -6.1162999535526225e-32 
		-3.0732913803935915e-14 0 0 0 0 0 0 0 0 0;
createNode nurbsCurve -n "master1_ctlShapeOrig" -p "master1_ctl";
	rename -uid "6C38CF02-436E-8711-D591-D7B3BD4EE2C5";
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
	rename -uid "F078BD41-4459-FCE6-ACCD-59840D8702B4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".tw" yes;
	setAttr -s 45 ".cp[0:44]" -type "double3" -9.7515721504889689e-14 -5.9449867256442266e-16 
		65.711431978308951 12.174254997500556 -5.8844753327401807e-16 65.042584348830758 
		21.931723137162518 -4.8561589789876025e-16 57.375467568017427 32.338353629843553 
		-4.6038039915756649e-16 54.393896029991339 42.086668498731974 -4.2577288311696781e-16 
		50.30502162783764 50.978220164915875 -3.8249785900371028e-16 45.19208205304426 58.832002277589325 
		-3.3143628151387496e-16 39.159162010853663 65.488134481375653 -2.73627617115729e-16 
		32.32907435582019 70.811117119306104 -2.1024868350999169e-16 24.840859976253949 74.692589615086618 
		-1.4258969301512881e-16 16.846957322695911 84.673803390143576 -8.4605982439688568e-17 
		9.3517118146989819 85.54452329224145 1.783827163147057e-31 -6.0477461326871693e-14 
		84.673803390143576 8.4605982439688568e-17 -9.3517118146990672 74.692589615086618 
		1.4258969301512881e-16 -16.846957322695971 70.811117119306104 2.1024868350999169e-16 
		-24.840859976253977 65.488134481375653 2.73627617115729e-16 -32.329074355820204 58.832002277589297 
		3.3143628151387496e-16 -39.159162010853663 50.978220164915854 3.8249785900370949e-16 
		-45.192082053044267 42.086668498731989 4.2577288311696781e-16 -50.305021627837654 
		32.338353629843525 4.6038039915756649e-16 -54.393896029991311 21.931723137162511 
		4.8561589789876025e-16 -57.375467568017385 12.174254997500551 5.8844753327401807e-16 
		-65.042584348830729 -9.4162551295668893e-14 5.9449867256442266e-16 -65.711431978308866 
		-12.174254997500693 5.8844753327401807e-16 -65.042584348830729 -21.931723137162546 
		4.8561589789876025e-16 -57.375467568017385 -32.33835362984351 4.6038039915756649e-16 
		-54.393896029991296 -42.086668498732031 4.2577288311696781e-16 -50.305021627837661 
		-50.978220164915882 3.8249785900370949e-16 -45.192082053044196 -58.832002277589275 
		3.3143628151387496e-16 -39.15916201085367 -65.488134481375681 2.73627617115729e-16 
		-32.32907435582019 -70.811117119306076 2.1024868350999169e-16 -24.840859976253935 
		-74.692589615086504 1.4258969301512881e-16 -16.84695732269596 -84.673803390143519 
		8.4605982439688568e-17 -9.3517118146990619 -85.544523292241337 6.9680624502761693e-32 
		-4.8462346000896881e-14 -84.673803390143519 -8.4605982439688568e-17 9.3517118146989819 
		-74.692589615086476 -1.4258969301512881e-16 16.846957322695911 -70.811117119306047 
		-2.1024868350999169e-16 24.84085997625392 -65.488134481375624 -2.73627617115729e-16 
		32.329074355820183 -58.832002277589176 -3.3143628151387417e-16 39.159162010853635 
		-50.978220164915768 -3.8249785900370949e-16 45.192082053044096 -42.086668498731932 
		-4.2577288311696781e-16 50.305021627837604 -32.338353629843525 -4.6038039915756649e-16 
		54.39389602999124 -21.931723137162539 -4.8561589789876025e-16 57.375467568017314 
		-12.174254997500668 -5.8844753327401807e-16 65.042584348830516 -8.0895359111704443e-14 
		-5.9449867256442266e-16 65.711431978308795;
createNode nurbsCurve -n "master2_ctlShapeOrig" -p "master2_ctl";
	rename -uid "79BAD673-4675-9168-5B6C-87B8A3A35104";
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
	rename -uid "4E31C59F-4685-76C4-634C-AA8610294176";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion50";
	rename -uid "0E2B8695-46A5-4A28-9381-5A85100872F1";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion81";
	rename -uid "5E292F1A-4DA5-D24D-AB23-879E125EC990";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion109";
	rename -uid "735C65EF-4FA8-17CA-6F5A-6288C9A08FBB";
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
	setAttr -s 7 ".st";
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
	setAttr -s 10 ".s";
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
connectAttr "lfLegQd0_ball_fkc.ry" "lfLegQd0_toe01_3_ikc_ofs1.ry";
connectAttr "lfLegQd0_ball_fkc.ry" "lfLegQd0_toe02_3_ikc_ofs1.ry";
connectAttr "lfLegQd0_ball_fkc.ry" "lfLegQd0_toe03_3_ikc_ofs1.ry";
connectAttr "lfLegQd0_ball_fkc.ry" "lfLegQd0_toe04_3_ikc_ofs1.ry";
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
connectAttr "lfLegQd1_autoAim_end.tx" "effector20.tx";
connectAttr "lfLegQd1_autoAim_end.ty" "effector20.ty";
connectAttr "lfLegQd1_autoAim_end.tz" "effector20.tz";
connectAttr "lfLegQd1_autoAim_end.opm" "effector20.opm";
connectAttr "lfLegQd1_legLock.msg" "lfLegQd1_legLock_ikh.hsj";
connectAttr "effector21.hp" "lfLegQd1_legLock_ikh.hee";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_ball_fkc.fkIkBlend";
connectAttr "lfLegQd1_ball_ik.msg" "lfLegQd1_3_ikh.hsj";
connectAttr "effector18.hp" "lfLegQd1_3_ikh.hee";
connectAttr "lfLegQd1_ball_fkc.ry" "lfLegQd1_toe01_3_ikc_ofs1.ry";
connectAttr "lfLegQd1_ball_fkc.ry" "lfLegQd1_toe02_3_ikc_ofs1.ry";
connectAttr "lfLegQd1_ball_fkc.ry" "lfLegQd1_toe03_3_ikc_ofs1.ry";
connectAttr "lfLegQd1_ball_fkc.ry" "lfLegQd1_toe04_3_ikc_ofs1.ry";
connectAttr "lfLegQd1_hip_ik.s" "lfLegQd1_upr_ik.is";
connectAttr "lfLegQd1_upr_ik.s" "lfLegQd1_lwr_ik.is";
connectAttr "lfLegQd1_lwr_ik.s" "lfLegQd1_palm_ik.is";
connectAttr "lfLegQd1_palm_ik.s" "lfLegQd1_digit_ik.is";
connectAttr "lfLegQd1_digit_ik.s" "lfLegQd1_ball_ik.is";
connectAttr "lfLegQd1_ball_ik.s" "lfLegQd1_tip_ik.is";
connectAttr "lfLegQd1_tip_ik.tx" "effector18.tx";
connectAttr "lfLegQd1_tip_ik.ty" "effector18.ty";
connectAttr "lfLegQd1_tip_ik.tz" "effector18.tz";
connectAttr "lfLegQd1_tip_ik.opm" "effector18.opm";
connectAttr "lfLegQd1_ball_ik.tx" "effector17.tx";
connectAttr "lfLegQd1_ball_ik.ty" "effector17.ty";
connectAttr "lfLegQd1_ball_ik.tz" "effector17.tz";
connectAttr "lfLegQd1_ball_ik.opm" "effector17.opm";
connectAttr "lfLegQd1_digit_ik.tx" "effector16.tx";
connectAttr "lfLegQd1_digit_ik.ty" "effector16.ty";
connectAttr "lfLegQd1_digit_ik.tz" "effector16.tz";
connectAttr "lfLegQd1_digit_ik.opm" "effector16.opm";
connectAttr "lfLegQd1_palm_ik.tx" "effector15.tx";
connectAttr "lfLegQd1_palm_ik.ty" "effector15.ty";
connectAttr "lfLegQd1_palm_ik.tz" "effector15.tz";
connectAttr "lfLegQd1_palm_ik.opm" "effector15.opm";
connectAttr "lfLegQd1_hip_ik.s" "lfLegQd1_softJ.is";
connectAttr "lfLegQd1_softJ.s" "lfLegQd1_softJ_end.is";
connectAttr "lfLegQd1_softJ_end.tx" "effector19.tx";
connectAttr "lfLegQd1_softJ_end.ty" "effector19.ty";
connectAttr "lfLegQd1_softJ_end.tz" "effector19.tz";
connectAttr "lfLegQd1_softJ_end.opm" "effector19.opm";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_ikCstG.v";
connectAttr "lfLegQd1_ikc.extraCtl" "lfLegQd1_heelRollG_ctl.v" -l on;
connectAttr "lfLegQd1_ikc.extraCtl" "lfLegQd1_toeRollG_ctl.v" -l on;
connectAttr "lfLegQd1_ikc.extraCtl" "lfLegQd1_outRollG_ctl.v" -l on;
connectAttr "lfLegQd1_ikc.extraCtl" "lfLegQd1_inRollG_ctl.v" -l on;
connectAttr "lfLegQd1_ikc.extraCtl" "lfLegQd1_ballG_ikc.v" -l on;
connectAttr "lfLegQd1_palm_ik.msg" "lfLegQd1_X_ikh.hsj";
connectAttr "effector16.hp" "lfLegQd1_X_ikh.hee";
connectAttr "lfLegQd1_upr_ik.msg" "lfLegQd1_1_ikh.hsj";
connectAttr "effector15.hp" "lfLegQd1_1_ikh.hee";
connectAttr "lfLegQd1_digit_ik.msg" "lfLegQd1_2_ikh.hsj";
connectAttr "effector17.hp" "lfLegQd1_2_ikh.hee";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_line_30.v";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_ikc.fkIkBlend";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_ikc.v" -l on;
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_ikc_gmb.fkIkBlend";
connectAttr "lfLegQd1_ikc.gimbalCtl" "lfLegQd1_ikc_gmbShape.v";
connectAttr "lfLegQd1_ikc_gmbShapeOrig.ws" "lfLegQd1_ikc_gmbShape.cr";
connectAttr "unitConversion50.o" "lfLegQd1_smart_ctl.footRoll";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_smart_ctl.fkIkBlend";
connectAttr "lfLegQd1_autoAim.msg" "lfLegQd1_autoAimJ_ikh.hsj";
connectAttr "effector20.hp" "lfLegQd1_autoAimJ_ikh.hee";
connectAttr "lfLegQd1_legLock.s" "lfLegQd1_legLock_end.is";
connectAttr "lfLegQd1_legLock_end.tx" "effector21.tx";
connectAttr "lfLegQd1_legLock_end.ty" "effector21.ty";
connectAttr "lfLegQd1_legLock_end.tz" "effector21.tz";
connectAttr "lfLegQd1_legLock_end.opm" "effector21.opm";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_pvc.fkIkBlend";
connectAttr "lfLegQd1_setting.fkIkBlend" "lfLegQd1_pvc.v" -l on;
connectAttr "neckQd0_base_ctl.tangentCtl" "neckQd0_tangent0_ctlShape1.v";
connectAttr "neckQd0_two_ikj.s" "neckQd0_two_ikj_end.is";
connectAttr "neckQd0_fore_ctl.rx" "neckQd0_two_ikj_end.rx";
connectAttr "neckQd0_fore_ctl.ry" "neckQd0_two_ikj_end.ry";
connectAttr "neckQd0_fore_ctl.rz" "neckQd0_two_ikj_end.rz";
connectAttr "neckQd0_two_ikj_end.tx" "effector31.tx";
connectAttr "neckQd0_two_ikj_end.ty" "effector31.ty";
connectAttr "neckQd0_two_ikj_end.tz" "effector31.tz";
connectAttr "neckQd0_two_ikj_end.opm" "effector31.opm";
connectAttr "neckQd0_fore_ctl.tangentCtl" "neckQd0_tangent1_ctlShape1.v";
connectAttr "neckQd0_two_ikj.msg" "neckQd0_two_ikj_ikh.hsj";
connectAttr "effector31.hp" "neckQd0_two_ikj_ikh.hee";
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
connectAttr "rtLegQd0_autoAim_end.tx" "effector37.tx";
connectAttr "rtLegQd0_autoAim_end.ty" "effector37.ty";
connectAttr "rtLegQd0_autoAim_end.tz" "effector37.tz";
connectAttr "rtLegQd0_autoAim_end.opm" "effector37.opm";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ball_fkc.fkIkBlend";
connectAttr "rtLegQd0_ball_ik.msg" "rtLegQd0_3_ikh.hsj";
connectAttr "effector35.hp" "rtLegQd0_3_ikh.hee";
connectAttr "rtLegQd0_ball_fkc.ry" "rtLegQd0_toe01_3_ikc_ofs1.ry";
connectAttr "rtLegQd0_ball_fkc.ry" "rtLegQd0_toe02_3_ikc_ofs1.ry";
connectAttr "rtLegQd0_ball_fkc.ry" "rtLegQd0_toe03_3_ikc_ofs1.ry";
connectAttr "rtLegQd0_ball_fkc.ry" "rtLegQd0_toe04_3_ikc_ofs1.ry";
connectAttr "rtLegQd0_hip_ik.s" "rtLegQd0_upr_ik.is";
connectAttr "rtLegQd0_upr_ik.s" "rtLegQd0_lwr_ik.is";
connectAttr "rtLegQd0_lwr_ik.s" "rtLegQd0_palm_ik.is";
connectAttr "rtLegQd0_palm_ik.s" "rtLegQd0_digit_ik.is";
connectAttr "rtLegQd0_digit_ik.s" "rtLegQd0_ball_ik.is";
connectAttr "rtLegQd0_ball_ik.s" "rtLegQd0_tip_ik.is";
connectAttr "rtLegQd0_tip_ik.tx" "effector35.tx";
connectAttr "rtLegQd0_tip_ik.ty" "effector35.ty";
connectAttr "rtLegQd0_tip_ik.tz" "effector35.tz";
connectAttr "rtLegQd0_tip_ik.opm" "effector35.opm";
connectAttr "rtLegQd0_ball_ik.tx" "effector34.tx";
connectAttr "rtLegQd0_ball_ik.ty" "effector34.ty";
connectAttr "rtLegQd0_ball_ik.tz" "effector34.tz";
connectAttr "rtLegQd0_ball_ik.opm" "effector34.opm";
connectAttr "rtLegQd0_digit_ik.tx" "effector33.tx";
connectAttr "rtLegQd0_digit_ik.ty" "effector33.ty";
connectAttr "rtLegQd0_digit_ik.tz" "effector33.tz";
connectAttr "rtLegQd0_digit_ik.opm" "effector33.opm";
connectAttr "rtLegQd0_palm_ik.tx" "effector32.tx";
connectAttr "rtLegQd0_palm_ik.ty" "effector32.ty";
connectAttr "rtLegQd0_palm_ik.tz" "effector32.tz";
connectAttr "rtLegQd0_palm_ik.opm" "effector32.opm";
connectAttr "rtLegQd0_hip_ik.s" "rtLegQd0_softJ.is";
connectAttr "rtLegQd0_softJ.s" "rtLegQd0_softJ_end.is";
connectAttr "rtLegQd0_softJ_end.tx" "effector36.tx";
connectAttr "rtLegQd0_softJ_end.ty" "effector36.ty";
connectAttr "rtLegQd0_softJ_end.tz" "effector36.tz";
connectAttr "rtLegQd0_softJ_end.opm" "effector36.opm";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ikCstG.v";
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_heelRollG_ctl.v" -l on;
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_toeRollG_ctl.v" -l on;
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_outRollG_ctl.v" -l on;
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_inRollG_ctl.v" -l on;
connectAttr "rtLegQd0_ikc.extraCtl" "rtLegQd0_ballG_ikc.v" -l on;
connectAttr "rtLegQd0_palm_ik.msg" "rtLegQd0_X_ikh.hsj";
connectAttr "effector33.hp" "rtLegQd0_X_ikh.hee";
connectAttr "rtLegQd0_upr_ik.msg" "rtLegQd0_1_ikh.hsj";
connectAttr "effector32.hp" "rtLegQd0_1_ikh.hee";
connectAttr "rtLegQd0_digit_ik.msg" "rtLegQd0_2_ikh.hsj";
connectAttr "effector34.hp" "rtLegQd0_2_ikh.hee";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_line_53.v";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ikc.fkIkBlend";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ikc.v" -l on;
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_ikc_gmb.fkIkBlend";
connectAttr "rtLegQd0_ikc.gimbalCtl" "rtLegQd0_ikc_gmbShape.v";
connectAttr "rtLegQd0_ikc_gmbShapeOrig.ws" "rtLegQd0_ikc_gmbShape.cr";
connectAttr "unitConversion81.o" "rtLegQd0_smart_ctl.footRoll";
connectAttr "rtLegQd0_setting.fkIkBlend" "rtLegQd0_smart_ctl.fkIkBlend";
connectAttr "rtLegQd0_autoAim.msg" "rtLegQd0_autoAimJ_ikh.hsj";
connectAttr "effector37.hp" "rtLegQd0_autoAimJ_ikh.hee";
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
connectAttr "rtLegQd1_autoAim_end.tx" "effector51.tx";
connectAttr "rtLegQd1_autoAim_end.ty" "effector51.ty";
connectAttr "rtLegQd1_autoAim_end.tz" "effector51.tz";
connectAttr "rtLegQd1_autoAim_end.opm" "effector51.opm";
connectAttr "rtLegQd1_legLock.msg" "rtLegQd1_legLock_ikh.hsj";
connectAttr "effector52.hp" "rtLegQd1_legLock_ikh.hee";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ball_fkc.fkIkBlend";
connectAttr "rtLegQd1_ball_ik.msg" "rtLegQd1_3_ikh.hsj";
connectAttr "effector49.hp" "rtLegQd1_3_ikh.hee";
connectAttr "rtLegQd1_ball_fkc.ry" "rtLegQd1_toe01_3_ikc_ofs1.ry";
connectAttr "rtLegQd1_ball_fkc.ry" "rtLegQd1_toe02_3_ikc_ofs1.ry";
connectAttr "rtLegQd1_ball_fkc.ry" "rtLegQd1_toe03_3_ikc_ofs1.ry";
connectAttr "rtLegQd1_ball_fkc.ry" "rtLegQd1_toe04_3_ikc_ofs1.ry";
connectAttr "rtLegQd1_hip_ik.s" "rtLegQd1_upr_ik.is";
connectAttr "rtLegQd1_upr_ik.s" "rtLegQd1_lwr_ik.is";
connectAttr "rtLegQd1_lwr_ik.s" "rtLegQd1_palm_ik.is";
connectAttr "rtLegQd1_palm_ik.s" "rtLegQd1_digit_ik.is";
connectAttr "rtLegQd1_digit_ik.s" "rtLegQd1_ball_ik.is";
connectAttr "rtLegQd1_ball_ik.s" "rtLegQd1_tip_ik.is";
connectAttr "rtLegQd1_tip_ik.tx" "effector49.tx";
connectAttr "rtLegQd1_tip_ik.ty" "effector49.ty";
connectAttr "rtLegQd1_tip_ik.tz" "effector49.tz";
connectAttr "rtLegQd1_tip_ik.opm" "effector49.opm";
connectAttr "rtLegQd1_ball_ik.tx" "effector48.tx";
connectAttr "rtLegQd1_ball_ik.ty" "effector48.ty";
connectAttr "rtLegQd1_ball_ik.tz" "effector48.tz";
connectAttr "rtLegQd1_ball_ik.opm" "effector48.opm";
connectAttr "rtLegQd1_digit_ik.tx" "effector47.tx";
connectAttr "rtLegQd1_digit_ik.ty" "effector47.ty";
connectAttr "rtLegQd1_digit_ik.tz" "effector47.tz";
connectAttr "rtLegQd1_digit_ik.opm" "effector47.opm";
connectAttr "rtLegQd1_palm_ik.tx" "effector46.tx";
connectAttr "rtLegQd1_palm_ik.ty" "effector46.ty";
connectAttr "rtLegQd1_palm_ik.tz" "effector46.tz";
connectAttr "rtLegQd1_palm_ik.opm" "effector46.opm";
connectAttr "rtLegQd1_hip_ik.s" "rtLegQd1_softJ.is";
connectAttr "rtLegQd1_softJ.s" "rtLegQd1_softJ_end.is";
connectAttr "rtLegQd1_softJ_end.tx" "effector50.tx";
connectAttr "rtLegQd1_softJ_end.ty" "effector50.ty";
connectAttr "rtLegQd1_softJ_end.tz" "effector50.tz";
connectAttr "rtLegQd1_softJ_end.opm" "effector50.opm";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ikCstG.v";
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_heelRollG_ctl.v" -l on;
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_toeRollG_ctl.v" -l on;
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_outRollG_ctl.v" -l on;
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_inRollG_ctl.v" -l on;
connectAttr "rtLegQd1_ikc.extraCtl" "rtLegQd1_ballG_ikc.v" -l on;
connectAttr "rtLegQd1_palm_ik.msg" "rtLegQd1_X_ikh.hsj";
connectAttr "effector47.hp" "rtLegQd1_X_ikh.hee";
connectAttr "rtLegQd1_upr_ik.msg" "rtLegQd1_1_ikh.hsj";
connectAttr "effector46.hp" "rtLegQd1_1_ikh.hee";
connectAttr "rtLegQd1_digit_ik.msg" "rtLegQd1_2_ikh.hsj";
connectAttr "effector48.hp" "rtLegQd1_2_ikh.hee";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_line_53.v";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ikc.fkIkBlend";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ikc.v" -l on;
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_ikc_gmb.fkIkBlend";
connectAttr "rtLegQd1_ikc.gimbalCtl" "rtLegQd1_ikc_gmbShape.v";
connectAttr "rtLegQd1_ikc_gmbShapeOrig.ws" "rtLegQd1_ikc_gmbShape.cr";
connectAttr "unitConversion109.o" "rtLegQd1_smart_ctl.footRoll";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_smart_ctl.fkIkBlend";
connectAttr "rtLegQd1_autoAim.msg" "rtLegQd1_autoAimJ_ikh.hsj";
connectAttr "effector51.hp" "rtLegQd1_autoAimJ_ikh.hee";
connectAttr "rtLegQd1_legLock.s" "rtLegQd1_legLock_end.is";
connectAttr "rtLegQd1_legLock_end.tx" "effector52.tx";
connectAttr "rtLegQd1_legLock_end.ty" "effector52.ty";
connectAttr "rtLegQd1_legLock_end.tz" "effector52.tz";
connectAttr "rtLegQd1_legLock_end.opm" "effector52.opm";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_pvc.fkIkBlend";
connectAttr "rtLegQd1_setting.fkIkBlend" "rtLegQd1_pvc.v" -l on;
connectAttr "spineQd0_base_ctl.tangentCtl" "spineQd0_tangent0_ctlShape1.v";
connectAttr "spineQd0_two_ikj.s" "spineQd0_two_ikj_end.is";
connectAttr "spineQd0_fore_ctl.rx" "spineQd0_two_ikj_end.rx";
connectAttr "spineQd0_fore_ctl.ry" "spineQd0_two_ikj_end.ry";
connectAttr "spineQd0_fore_ctl.rz" "spineQd0_two_ikj_end.rz";
connectAttr "spineQd0_two_ikj_end.tx" "effector62.tx";
connectAttr "spineQd0_two_ikj_end.ty" "effector62.ty";
connectAttr "spineQd0_two_ikj_end.tz" "effector62.tz";
connectAttr "spineQd0_two_ikj_end.opm" "effector62.opm";
connectAttr "spineQd0_fore_ctl.tangentCtl" "spineQd0_tangent1_ctlShape1.v";
connectAttr "spineQd0_two_ikj.msg" "spineQd0_two_ikj_ikh.hsj";
connectAttr "effector62.hp" "spineQd0_two_ikj_ikh.hee";
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
connectAttr "lfLegQd1_smart_ctl.rx" "unitConversion50.i";
connectAttr "rtLegQd0_smart_ctl.rx" "unitConversion81.i";
connectAttr "rtLegQd1_smart_ctl.rx" "unitConversion109.i";
// End of wolf_ctl.ma
