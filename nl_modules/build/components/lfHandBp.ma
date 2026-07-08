//Maya ASCII 2023 scene
//Name: lfHandBp.ma
//Last modified: Wed, Jul 08, 2026 03:51:39 PM
//Codeset: 1252
requires maya "2023";
requires -nodeType "ikSpringSolver" "ikSpringSolver" "1.0";
requires "stereoCamera" "10.0";
requires -nodeType "ik2Bsolver" "ik2Bsolver" "2.5";
requires -nodeType "ilrOptionsNode" -nodeType "ilrUIOptionsNode" -nodeType "ilrBakeLayerManager"
		 "Turtle" "2023.0.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 26200)";
fileInfo "UUID" "B833A878-4724-0BA6-1ECD-AA8241D3DFFC";
createNode transform -s -n "persp";
	rename -uid "AB7E52E5-4BC6-549B-1229-4BA904DD5D93";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 103.38554082813754 21.573626820836846 25.969385463735343 ;
	setAttr ".r" -type "double3" -31.538352339117733 -1034.2000000020359 -4.5621254826502656e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "19F6DB4F-4918-877A-57DD-5EBBE38E71A5";
	setAttr -k off ".v";
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 41.349444178597579;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 80.688781104127813 1.8405111002294872 0.066916531670936141 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "171F7699-45BC-8AD1-0831-258C9B72CA5C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 77.500624456643209 1003.4593721729385 0.93715239132697303 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "5E6699AB-4C66-CE08-5EDA-24B6E1416196";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 857.6467517137512;
	setAttr ".ow" 6.0526315789473673;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 77.195128856443972 145.81262045918729 0.66984374115264134 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "7B9C70A5-4198-874E-2278-1EB978984F6B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 77.055694992479715 145.26106871831763 1013.6629330131781 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "3A751D4F-4DF6-6C00-16C1-DC8CFC5998C1";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1015.190509000512;
	setAttr ".ow" 3.7997171898436868;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 76.480343493702122 145.59669042593788 -1.5275759873338262 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "EFA658DE-4B76-8C6D-C386-03B883047C7C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1011.3590969489642 145.38474586722339 -1.3862796148574916 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "E53ABB81-4149-337F-1000-49B475007B9C";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 934.87875345526209;
	setAttr ".ow" 1.3953016782038012;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 76.480343493702122 145.59669042593788 -1.5275759873338262 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "master_guide";
	rename -uid "50807175-43FF-E7F4-58C3-EABB95B14D6E";
	addAttr -ci true -sn "____________" -ln "____________" -min 0 -max 0 -en "____________" 
		-at "enum";
	addAttr -ci true -sn "built" -ln "built" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentNameMatch" -ln "parentNameMatch" -dt "string";
	addAttr -ci true -sn "showRef" -ln "showRef" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rigID" -ln "rigID" -dt "string";
	addAttr -ci true -sn "rigClass" -ln "rigClass" -dt "string";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -dv 1 -at "double";
	addAttr -ci true -sn "flipRX" -ln "flipRX" -dv 1 -at "double";
	setAttr ".t" -type "double3" 72 0 0 ;
	setAttr -l on -k on ".____________";
	setAttr -k on ".parentNameMatch" -type "string" "*Arm*";
	setAttr -cb on ".showRef";
	setAttr ".rigID" -type "string" "";
	setAttr ".rigClass" -type "string" "HandBp";
	setAttr -l on ".wsMirror";
	setAttr -l on ".flipRX";
createNode joint -n "orient" -p "master_guide";
	rename -uid "9B8E2D0D-4BB1-D0A7-883F-1FA9EF91A0DA";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".t" -type "double3" 0 0 -4.4408920985006262e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 0 0 ;
	setAttr ".ds" 2;
createNode transform -n "fgr02_2_guide_ofs" -p "orient";
	rename -uid "B359B3DB-4CA0-B428-8478-1D807B2DEF8B";
	setAttr ".t" -type "double3" 7.5 1 -2.8421709430404007e-14 ;
	setAttr ".ro" 3;
createNode transform -n "fgr02_2_guide" -p "fgr02_2_guide_ofs";
	rename -uid "5F7655F9-488F-340A-B14B-5D90B9A1FBA4";
createNode transform -n "fgr02_3_guide" -p "fgr02_2_guide";
	rename -uid "AFB1C47C-4441-17F3-DC2A-7F82A54F9A06";
	setAttr ".t" -type "double3" 5 -1.021405182655144e-14 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "fgr01_5_guideShape2" -p "fgr02_3_guide";
	rename -uid "14B91A30-46C1-4DDA-E612-788DB4B556BF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 0.995 0.80000001 0.236 ;
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.15742001795705099 -1.9428902930940239e-14 -1.8214596497756474e-15
		0.14616059619464522 0.060541698613313571 -1.8214596497756474e-15
		0.11186648325633636 0.11186648325631572 -1.8214596497756474e-15
		0.060541698613334215 0.14616059619462457 -1.8214596497756474e-15
		1.214306433183765e-15 0.15741632655081728 -1.8214596497756474e-15
		-0.060541698613331786 0.14616059619462457 -1.8214596497756474e-15
		-0.11186648325633394 0.11186648325631572 -1.8214596497756474e-15
		-0.14616059619464278 0.060541698613313571 -1.8214596497756474e-15
		-0.15742001795704857 -7.4584634949434898e-09 -1.8214596497756474e-15
		-0.14616059619464278 -0.060541698613352429 -1.8214596497756474e-15
		-0.11186648325633394 -0.11186648325635458 -1.8214596497756474e-15
		-0.060541698613331786 -0.14616059619466343 -1.8214596497756474e-15
		6.2864238076922076e-09 -0.15741632655085613 -0.0010704023330477984
		0.060541698613334215 -0.14616059619466343 -1.8214596497756474e-15
		0.11186648325633636 -0.11186648325635458 -1.8214596497756474e-15
		0.14616059619464522 -0.060541698613352429 -1.8214596497756474e-15
		0.15742001795705099 -1.9428902930940239e-14 -1.8214596497756474e-15
		0.14543708057688037 0.00040963640213420712 -0.060240690803844907
		0.11131277232437348 0.00075691546116141649 -0.11131034654314835
		0.060242061897580593 0.00098895936509097739 -0.14543391651441265
		6.2864238076922076e-09 0.0010704445205261255 -0.15741653748833645
		-0.060242061897578164 0.00098895936509097739 -0.14543391651441265
		-0.11131277232437105 0.00075691546116141649 -0.11131034654314835
		-0.14543708057687796 0.00040963640213420712 -0.060240690803844907
		-0.15742001795704857 -7.4584634949434898e-09 -1.8214596497756474e-15
		-0.14543708057687796 -0.00040965116779791719 0.060240479866343372
		-0.11131277232437105 -0.00075693022682512667 0.11131024107439574
		-0.060242061897578164 -0.00098897413075468778 0.1454337055769111
		6.2864238076922076e-09 -0.0010704550674398784 0.1574163265508349
		0.060242061897580593 -0.00098897413075468778 0.1454337055769111
		0.11131277232437348 -0.00075693022682512667 0.11131024107439574
		0.14543708057688037 -0.00040965116779791719 0.060240479866343372
		0.15742001795705099 -1.9428902930940239e-14 -1.8214596497756474e-15
		0.14543708057688037 0.00040963640213420712 -0.060240690803844907
		0.11131277232437348 0.00075691546116141649 -0.11131034654314835
		0.060242061897580593 0.00098895936509097739 -0.14543391651441265
		6.2864238076922076e-09 0.0010704445205261255 -0.15741653748833645
		6.2864238076922076e-09 0.061229565793934917 -0.14502417042476007
		6.2864238076922076e-09 0.1120670848168097 -0.11055339733196784
		6.2864238076922076e-09 0.1458433461977971 -0.059251710344984714
		1.214306433183765e-15 0.15741632655081728 -1.8214596497756474e-15
		6.2864238076922076e-09 0.14502406495598993 0.061229565793952521
		6.2864238076922076e-09 0.11055329186319761 0.1120669793480784
		6.2864238076922076e-09 0.05925171034496346 0.14584334619781469
		6.2864238076922076e-09 -0.0010704550674398784 0.1574163265508349
		6.2864238076922076e-09 -0.061229565793973775 0.14502395948725855
		6.2864238076922076e-09 -0.11206708481684856 0.11055318639446632
		6.2864238076922076e-09 -0.14584334619783595 0.059251499407483171
		6.2864238076922076e-09 -0.15741632655085613 -0.0010704023330477984
		6.2864238076922076e-09 -0.14502406495602879 -0.06122977673145405
		6.2864238076922076e-09 -0.11055329186323647 -0.1120671902855799
		6.2864238076922076e-09 -0.059251710345002317 -0.14584355713531624
		6.2864238076922076e-09 0.0010704445205261255 -0.15741653748833645
		;
	setAttr ".adot" yes;
createNode transform -n "fgr02_4_guide" -p "fgr02_3_guide";
	rename -uid "3E9796E7-43E7-0AF8-3479-3C838C6D0E72";
	setAttr ".t" -type "double3" 3 1.9539925233402755e-14 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "fgr02_5_guide" -p "fgr02_4_guide";
	rename -uid "AAA207A6-4CE2-95AA-8CA7-6DBC75E8A631";
	setAttr ".t" -type "double3" 2 -1.021405182655144e-14 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "fgr02_1_guide" -p "fgr02_2_guide";
	rename -uid "07F7F36E-4E0F-63CB-37DE-3C89D9337AA1";
	setAttr ".t" -type "double3" -5 -1.7763568394002505e-15 2.8421709430404007e-14 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "fgr00_2_guideShape" -p "fgr02_2_guide";
	rename -uid "757A1147-4880-551D-12F0-9AAFC2DA92FF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".ovrgb" -type "float3" 1 0.94999999 0 ;
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 58 0 no 3
		59 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 52.37464662
		 52.597181769999999 52.658450129999999 52.692305070000003 53 56
		59
		8.3819031610856363e-09 -0.20988871665110687 -0.0014272593607277803
		8.3819031610856363e-09 -0.19445807618041325 0.079002280459976815
		8.3819031610856363e-09 -0.1494229203807648 0.14740438915095566
		8.3819031610856363e-09 -0.081639702308596962 0.1933654199413454
		8.3819031610856363e-09 -0.0014272031107219738 0.20988843540111524
		8.3819031610856363e-09 0.07900199920998599 0.19445779493042165
		8.3819031610856363e-09 0.14740424852596351 0.14942277975577178
		8.3819031610856363e-09 0.19336527931635317 0.081639421058605416
		8.3819031610856363e-09 0.20988843540112159 0.0014272734232268912
		8.3819031610856363e-09 0.19445779493042803 -0.079002280459977564
		8.3819031610856363e-09 0.14942263913077958 -0.14740438915095641
		8.3819031610856363e-09 0.081639421058611786 -0.19336541994134615
		6.3699046037868357e-15 5.9952043329758453e-15 -0.20988843540111596
		8.3819031610856363e-09 -0.079002280459971194 -0.19445779493042242
		8.3819031610856363e-09 -0.1474045297759487 -0.14942277975577253
		8.3819031610856363e-09 -0.1933655605663383 -0.081639421058606165
		8.3819031610856363e-09 -0.20988871665110687 -0.0014272593607277803
		0.08032274919677887 -0.19391188868587514 -0.0013186124868142498
		0.14841702976583604 -0.14841379539085606 -0.0010092206149081686
		0.1939161074358452 -0.08032092107178479 -0.00054618186953855603
		0.2098933572760727 5.9952043329758453e-15 -3.7470027081099033e-16
		0.1939161074358452 0.0803206398217996 0.00054620155703760968
		0.14841702976583604 0.14841365476586943 0.0010092403024072223
		0.08032274919677887 0.19391160743588992 0.0013186321743133037
		8.3819031610856363e-09 0.20988843540112159 0.0014272734232268912
		-0.08032274919676613 0.19391160743588992 0.0013186321743133037
		-0.1484170297658233 0.14841365476586943 0.0010092403024072223
		-0.19391610743583249 0.0803206398217996 0.00054620155703760968
		-0.20989335727605996 5.9952043329758453e-15 9.9445917133538082e-09
		-0.19391610743583249 -0.08032092107178479 -0.00054618186953855603
		-0.1484170297658233 -0.14841379539085606 -0.0010092206149081686
		-0.08032274919676613 -0.19391188868587514 -0.0013186124868142498
		8.3819031610856363e-09 -0.20988871665110687 -0.0014272593607277803
		0.08032274919677887 -0.19391188868587514 -0.0013186124868142498
		0.14841702976583604 -0.14841379539085606 -0.0010092206149081686
		0.1939161074358452 -0.08032092107178479 -0.00054618186953855603
		0.2098933572760727 5.9952043329758453e-15 -3.7470027081099033e-16
		0.19488079492619834 5.9952043329758453e-15 0.080722264817776931
		0.14915531100845322 5.9952043329758453e-15 0.14915531100844648
		0.080722264817783676 5.9952043329758453e-15 0.19488079492619159
		8.3819031610856363e-09 -0.0014272031107219738 0.20988843540111524
		-0.080722264817770936 5.9952043329758453e-15 0.19488079492619159
		-0.14915531100844048 5.9952043329758453e-15 0.14915531100844648
		-0.1948807949261856 5.9952043329758453e-15 0.080722264817776931
		-0.20989335727605996 5.9952043329758453e-15 9.9445917133538082e-09
		-0.1948807949261856 5.9952043329758453e-15 -0.080722264817777681
		-0.14915531100844048 5.9952043329758453e-15 -0.14915531100844723
		-0.080722264817770936 5.9952043329758453e-15 -0.19488079492619234
		6.3699046037868357e-15 5.9952043329758453e-15 -0.20988843540111596
		0.080722264817783676 5.9952043329758453e-15 -0.19488079492619234
		0.14915531100845322 5.9952043329758453e-15 -0.14915531100844723
		0.19488079492619834 5.9952043329758453e-15 -0.080722264817777681
		0.2098933572760727 5.9952043329758453e-15 -3.7470027081099033e-16
		0.84375000000000633 5.9952043329758453e-15 -3.7470027081099033e-16
		1.5615161570031733e-08 5.9952043329758453e-15 -3.7470027081099033e-16
		6.3699046037868357e-15 5.9952043329758453e-15 -1.6875000000000007
		6.3699046037868357e-15 5.9952043329758453e-15 1.6874999999999993
		-1.5615148830222525e-08 5.9952043329758453e-15 -3.7470027081099033e-16
		-1.5615148830222525e-08 5.9952043329758453e-15 -3.7470027081099033e-16
		;
	setAttr ".adot" yes;
createNode transform -n "fgr03_2_guide_ofs" -p "orient";
	rename -uid "FE4EF634-4FFD-7277-581F-2E8D10395EA2";
	setAttr ".t" -type "double3" 7.5 -1 -2.8421709430404007e-14 ;
	setAttr ".ro" 3;
createNode transform -n "fgr03_2_guide" -p "fgr03_2_guide_ofs";
	rename -uid "8A7C7F9F-47AF-8C33-0EF6-3194B2FF3C7E";
createNode transform -n "fgr03_1_guide" -p "fgr03_2_guide";
	rename -uid "ACF93070-456A-FB43-692E-19B6CEE352E5";
	setAttr ".t" -type "double3" -5 -1.7763568394002505e-15 2.8421709430404007e-14 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "fgr03_3_guide" -p "fgr03_2_guide";
	rename -uid "3A403DCF-4867-98A6-B929-CEB466BE575B";
	setAttr ".t" -type "double3" 5 -1.021405182655144e-14 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "fgr03_4_guide" -p "fgr03_3_guide";
	rename -uid "5927FA8A-405C-3865-CEB6-6C8A63535ACD";
	setAttr ".t" -type "double3" 3 1.9539925233402755e-14 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "fgr03_5_guide" -p "fgr03_4_guide";
	rename -uid "1BCDE36A-4B58-01D6-96C4-CF8CB8A59AEA";
	setAttr ".t" -type "double3" 2 -1.021405182655144e-14 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "fgr04_2_guide_ofs" -p "orient";
	rename -uid "2F0C9DDD-4AED-D341-ECFB-9AAB68F47A3F";
	setAttr ".t" -type "double3" 7.5 -3 -2.8421709430404007e-14 ;
	setAttr ".ro" 3;
createNode transform -n "fgr04_2_guide" -p "fgr04_2_guide_ofs";
	rename -uid "5E7C14F1-48C2-B725-F8C0-52ADF0A6956D";
createNode transform -n "fgr04_3_guide" -p "fgr04_2_guide";
	rename -uid "97A1F794-463C-9CC5-23AE-75B2C27B4462";
	setAttr ".t" -type "double3" 5 -1.0658141036401503e-14 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "fgr04_4_guide" -p "fgr04_3_guide";
	rename -uid "3C3909B4-49EB-964A-138F-04B32B8CC8DE";
	setAttr ".t" -type "double3" 3 1.9539925233402755e-14 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "fgr04_5_guide" -p "fgr04_4_guide";
	rename -uid "9F46FE35-4EE1-8820-6E66-7ABCA4821059";
	setAttr ".t" -type "double3" 2 -1.0658141036401503e-14 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "fgr04_1_guide" -p "fgr04_2_guide";
	rename -uid "2C2502D3-4DB2-E0F2-3634-6E84A707E65C";
	setAttr ".t" -type "double3" -5 -1.7763568394002505e-15 2.8421709430404007e-14 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "fgr01_1_guideShape2" -p "fgr04_1_guide";
	rename -uid "0F4DDCE5-4B59-248C-7D8F-498042CF1842";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 0.995 0.80000001 0.236 ;
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.15742001795704974 0 0
		0.146160596194644 0.060541698613333 0
		0.11186648325633515 0.11186648325633515 0
		0.060541698613333 0.146160596194644 0
		0 0.1574163265508367 0
		-0.060541698613333 0.146160596194644 0
		-0.11186648325633515 0.11186648325633515 0
		-0.146160596194644 0.060541698613333 0
		-0.15742001795704974 -7.4584440660405572e-09 0
		-0.146160596194644 -0.060541698613333 0
		-0.11186648325633515 -0.11186648325633515 0
		-0.060541698613333 -0.146160596194644 0
		6.2864225933857744e-09 -0.1574163265508367 -0.0010704023330459769
		0.060541698613333 -0.146160596194644 0
		0.11186648325633515 -0.11186648325633515 0
		0.146160596194644 -0.060541698613333 0
		0.15742001795704974 0 0
		0.14543708057687912 0.00040963640215363603 -0.060240690803843089
		0.11131277232437228 0.0007569154611808454 -0.11131034654314652
		0.060242061897579365 0.00098895936511040629 -0.14543391651441084
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		-0.060242061897579365 0.00098895936511040629 -0.14543391651441084
		-0.11131277232437228 0.0007569154611808454 -0.11131034654314652
		-0.14543708057687912 0.00040963640215363603 -0.060240690803843089
		-0.15742001795704974 -7.4584440660405572e-09 0
		-0.14543708057687912 -0.00040965116777848829 0.060240479866345203
		-0.11131277232437228 -0.00075693022680569776 0.11131024107439758
		-0.060242061897579365 -0.00098897413073525888 0.1454337055769129
		6.2864225933857744e-09 -0.0010704550674204495 0.1574163265508367
		0.060242061897579365 -0.00098897413073525888 0.1454337055769129
		0.11131277232437228 -0.00075693022680569776 0.11131024107439758
		0.14543708057687912 -0.00040965116777848829 0.060240479866345203
		0.15742001795704974 0 0
		0.14543708057687912 0.00040963640215363603 -0.060240690803843089
		0.11131277232437228 0.0007569154611808454 -0.11131034654314652
		0.060242061897579365 0.00098895936511040629 -0.14543391651441084
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		6.2864225933857744e-09 0.061229565793954346 -0.14502417042475826
		6.2864225933857744e-09 0.11206708481682913 -0.11055339733196602
		6.2864225933857744e-09 0.14584334619781653 -0.059251710344982882
		0 0.1574163265508367 0
		6.2864225933857744e-09 0.14502406495600936 0.061229565793954346
		6.2864225933857744e-09 0.11055329186321704 0.11206697934808023
		6.2864225933857744e-09 0.059251710344982882 0.14584334619781653
		6.2864225933857744e-09 -0.0010704550674204495 0.1574163265508367
		6.2864225933857744e-09 -0.061229565793954346 0.14502395948726038
		6.2864225933857744e-09 -0.11206708481682913 0.11055318639446814
		6.2864225933857744e-09 -0.14584334619781653 0.059251499407484996
		6.2864225933857744e-09 -0.1574163265508367 -0.0010704023330459769
		6.2864225933857744e-09 -0.14502406495600936 -0.061229776731452218
		6.2864225933857744e-09 -0.11055329186321704 -0.1120671902855781
		6.2864225933857744e-09 -0.059251710344982882 -0.14584355713531444
		6.2864225933857744e-09 0.0010704445205455544 -0.15741653748833465
		;
	setAttr ".adot" yes;
createNode transform -n "fgr01_2_guide_ofs" -p "orient";
	rename -uid "8AC14195-4A17-6957-CE7E-3ABFA1389665";
	setAttr ".t" -type "double3" 7.5 3 -2.8421709430404007e-14 ;
	setAttr ".ro" 3;
createNode transform -n "fgr01_2_guide" -p "fgr01_2_guide_ofs";
	rename -uid "F2E2E732-47C1-2978-7C33-82BF854E0349";
createNode transform -n "fgr01_3_guide" -p "fgr01_2_guide";
	rename -uid "66E5AAAC-4557-FA5C-EEC8-BBACA0056447";
	setAttr ".t" -type "double3" 5 -1.0658141036401503e-14 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "fgr01_4_guide" -p "fgr01_3_guide";
	rename -uid "CB899F28-494D-EE1D-44EB-B8B6CE5A0022";
	setAttr ".t" -type "double3" 3 -8.8817841970012523e-16 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "fgr01_5_guide" -p "fgr01_4_guide";
	rename -uid "35FBC839-412A-2D97-01B5-04B16DC8AA21";
	setAttr ".t" -type "double3" 2 8.8817841970012523e-15 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "fgr01_1_guide" -p "fgr01_2_guide";
	rename -uid "F03CB21B-471E-302F-B785-7FA252B9F314";
	setAttr ".t" -type "double3" -5 -1.7763568394002505e-15 2.8421709430404007e-14 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "fgr00_2_guide_ofs" -p "orient";
	rename -uid "C079CB6F-4C55-930F-6675-79BE083A1B45";
	setAttr ".t" -type "double3" 4 4.2 3.4 ;
	setAttr ".r" -type "double3" 90 -29.999999999999996 10 ;
	setAttr ".ro" 3;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "fgr00_2_guide" -p "fgr00_2_guide_ofs";
	rename -uid "3678C5E8-4A0A-9C0C-690F-A8ADB5D5B3F3";
createNode transform -n "fgr00_3_guide" -p "fgr00_2_guide";
	rename -uid "1CF5A0ED-4599-97A4-9316-0D90D7BB8AF2";
	setAttr ".t" -type "double3" 3.8000000000000114 -2.8421709430404007e-14 -2.3092638912203256e-14 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "fgr00_4_guide" -p "fgr00_3_guide";
	rename -uid "BA6A09DD-47E6-DCAC-5FF5-5FB7DBD58ED3";
	setAttr ".t" -type "double3" 2.5000000000000142 7.1054273576010019e-14 2.8421709430404007e-14 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999933 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "fgr00_1_guide" -p "fgr00_2_guide";
	rename -uid "9B4EA223-44D3-B220-E1A1-2DA3134393AA";
	setAttr ".t" -type "double3" -3.4999999999999929 0 -2.7533531010703882e-14 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999978 0.99999999999999978 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "handJ_guide" -p "master_guide";
	rename -uid "A3FA3389-4A5B-93B0-B679-66ABEBF38C5E";
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "handJ_guideShape" -p "handJ_guide";
	rename -uid "A0805D9D-450D-88BE-EF8E-A7BD04E0DAC4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".ovrgb" -type "float3" 0.995 0.80000001 0.236 ;
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 52 0 no 3
		53 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52
		53
		0.27985780970142182 0 0
		0.25984105990158934 0.10762968642370312 0
		0.19887374801126248 0.19887374801126248 0
		0.10762968642370312 0.25984105990158934 0
		0 0.27985124720148746 0
		-0.10762968642370312 0.25984105990158934 0
		-0.19887374801126248 0.19887374801126248 0
		-0.25984105990158934 0.10762968642370312 0
		-0.27985780970142182 -1.3259456117405438e-08 0
		-0.25984105990158934 -0.10762968642370312 0
		-0.19887374801126248 -0.19887374801126248 0
		-0.10762968642370312 -0.25984105990158934 0
		1.1175862388241376e-08 -0.27985124720148746 -0.0019029374809706253
		0.10762968642370312 -0.25984105990158934 0
		0.19887374801126248 -0.19887374801126248 0
		0.25984105990158934 -0.10762968642370312 0
		0.27985780970142182 0 0
		0.25855480991445184 0.00072824249271757511 -0.10709456142905438
		0.19788937302110626 0.0013456274865437251 -0.1978850605211494
		0.10709699892903 0.0017581499824185001 -0.25854918491450818
		1.1175862388241376e-08 0.0019030124809698748 -0.2798516222014838
		-0.10709699892903 0.0017581499824185001 -0.25854918491450818
		-0.19788937302110626 0.0013456274865437251 -0.1978850605211494
		-0.25855480991445184 0.00072824249271757511 -0.10709456142905438
		-0.27985780970142182 -1.3259456117405438e-08 0
		-0.25855480991445184 -0.00072826874271731247 0.10709418642905813
		-0.19788937302110626 -0.0013456537365434625 0.19788487302115124
		-0.10709699892903 -0.0017581762324182378 0.2585488099145119
		1.1175862388241376e-08 -0.0019030312309696879 0.27985124720148746
		0.10709699892903 -0.0017581762324182378 0.2585488099145119
		0.19788937302110626 -0.0013456537365434625 0.19788487302115124
		0.25855480991445184 -0.00072826874271731247 0.10709418642905813
		0.27985780970142182 0 0
		0.25855480991445184 0.00072824249271757511 -0.10709456142905438
		0.19788937302110626 0.0013456274865437251 -0.1978850605211494
		0.10709699892903 0.0017581499824185001 -0.25854918491450818
		1.1175862388241376e-08 0.0019030124809698748 -0.2798516222014838
		1.1175862388241376e-08 0.10885256141147438 -0.25782074742179245
		1.1175862388241376e-08 0.19923037300769625 -0.19653937303460625
		1.1175862388241376e-08 0.25927705990722938 -0.10533637394663625
		0 0.27985124720148746 0
		1.1175862388241376e-08 0.25782055992179442 0.10885256141147438
		1.1175862388241376e-08 0.19653918553460809 0.19923018550769817
		1.1175862388241376e-08 0.10533637394663625 0.25927705990722938
		1.1175862388241376e-08 -0.0019030312309696879 0.27985124720148746
		1.1175862388241376e-08 -0.10885256141147438 0.25782037242179623
		1.1175862388241376e-08 -0.19923037300769625 0.19653899803461003
		1.1175862388241376e-08 -0.25927705990722938 0.10533599894663999
		1.1175862388241376e-08 -0.27985124720148746 -0.0019029374809706253
		1.1175862388241376e-08 -0.25782055992179442 -0.10885293641147062
		1.1175862388241376e-08 -0.19653918553460809 -0.19923056050769439
		1.1175862388241376e-08 -0.10533637394663625 -0.25927743490722566
		1.1175862388241376e-08 0.0019030124809698748 -0.2798516222014838
		;
	setAttr ".adot" yes;
createNode transform -n "line_grp" -p "master_guide";
	rename -uid "71D30D7F-4719-E829-E3ED-DA99891C6E72";
	setAttr ".it" no;
createNode transform -n "line_02" -p "line_grp";
	rename -uid "E3F49ED7-481C-AFA1-17E6-D294B0BA16D1";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "line_02Shape" -p "line_02";
	rename -uid "8E81E978-4F1B-8D34-3F7B-10888BC0DDC6";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		74.5 0 -3.0000000000000022
		79.5 2.8421709430404007e-14 -3.0000000000000004
		;
	setAttr ".adot" yes;
createNode transform -n "line_03" -p "line_grp";
	rename -uid "47ACFE0C-4391-C33B-1BE4-EEB0A114F8C0";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "line_03Shape" -p "line_03";
	rename -uid "E0EADF59-4739-F09E-10C9-3F9F9F55D736";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		79.5 2.8421709430404007e-14 -3.0000000000000004
		84.5 2.8421709430404007e-14 -3.0000000000000111
		;
	setAttr ".adot" yes;
createNode transform -n "line_04" -p "line_grp";
	rename -uid "48643509-4677-07AA-4013-158C842CA94D";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "line_04Shape" -p "line_04";
	rename -uid "40407BDA-4145-3D08-E65B-CCAA90379283";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		84.5 2.8421709430404007e-14 -3.0000000000000111
		87.5 2.8421709430404007e-14 -2.9999999999999916
		;
	setAttr ".adot" yes;
createNode transform -n "line_05" -p "line_grp";
	rename -uid "9889F57A-4C6D-148A-3F62-34968BCDC561";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "line_05Shape" -p "line_05";
	rename -uid "784337C9-4EDB-D202-E867-97A9622C696F";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		87.5 2.8421709430404007e-14 -2.9999999999999916
		89.5 2.8421709430404007e-14 -3.0000000000000022
		;
	setAttr ".adot" yes;
createNode transform -n "line_07" -p "line_grp";
	rename -uid "059676C7-4D7D-D7A2-BA20-EBA608892634";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "line_07Shape" -p "line_07";
	rename -uid "30E82451-4219-947E-8E1C-5F86EC151283";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		74.5 0 -1.0000000000000022
		79.5 2.8421709430404007e-14 -1.0000000000000004
		;
	setAttr ".adot" yes;
createNode transform -n "line_08" -p "line_grp";
	rename -uid "79A48CEA-440C-CF48-6137-D28FAC329356";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "line_08Shape" -p "line_08";
	rename -uid "362CF81C-467C-2C54-2210-77B56BF32677";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		79.5 2.8421709430404007e-14 -1.0000000000000004
		84.5 2.8421709430404007e-14 -1.0000000000000107
		;
	setAttr ".adot" yes;
createNode transform -n "line_09" -p "line_grp";
	rename -uid "0FD6D5BC-4D58-9A55-9AE6-22AD32E5A791";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "line_09Shape" -p "line_09";
	rename -uid "CA36DBCF-46D5-E9A9-5B20-8BBAEB0A666A";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		84.5 2.8421709430404007e-14 -1.0000000000000107
		87.5 2.8421709430404007e-14 -0.99999999999999112
		;
	setAttr ".adot" yes;
createNode transform -n "line_10" -p "line_grp";
	rename -uid "07DFDB7C-4449-E71D-8CC2-059D4721439A";
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
	rename -uid "FE6B5ED6-40C5-69D3-107D-68BF9DDA2ABE";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		87.5 2.8421709430404007e-14 -0.99999999999999112
		89.5 2.8421709430404007e-14 -1.0000000000000013
		;
	setAttr ".adot" yes;
createNode transform -n "line_12" -p "line_grp";
	rename -uid "74270338-4CBC-4CDC-1F4C-0FAC3EDCA64C";
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
	rename -uid "39684501-49BE-74CF-D9DD-49A0161CC8D5";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		74.5 0 0.99999999999999778
		79.5 2.8421709430404007e-14 0.99999999999999956
		;
	setAttr ".adot" yes;
createNode transform -n "line_13" -p "line_grp";
	rename -uid "55BFFE5D-4C54-6C8E-AA91-EDA59FB000BA";
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
	rename -uid "FADEFA43-4842-8304-E413-6C81E4D91CE7";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		79.5 2.8421709430404007e-14 0.99999999999999956
		84.5 2.8421709430404007e-14 0.99999999999998934
		;
	setAttr ".adot" yes;
createNode transform -n "line_14" -p "line_grp";
	rename -uid "D9C63A5D-4230-2E82-58EA-A48FFFB23131";
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
	rename -uid "890283DE-4612-6514-FBE4-879938673047";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		84.5 2.8421709430404007e-14 0.99999999999998934
		87.5 2.8421709430404007e-14 1.0000000000000089
		;
	setAttr ".adot" yes;
createNode transform -n "line_15" -p "line_grp";
	rename -uid "0590B4B2-4860-A126-E6DE-8CAF52E99137";
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
	rename -uid "19710904-43E9-F6F7-CA5F-C18852AF1A81";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		87.5 2.8421709430404007e-14 1.0000000000000089
		89.5 2.8421709430404007e-14 0.99999999999999867
		;
	setAttr ".adot" yes;
createNode transform -n "line_17" -p "line_grp";
	rename -uid "6774F0A0-4CE9-1CB6-11EF-BCB79B735181";
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
	rename -uid "B6AA7557-44BD-E83C-0517-E5A1D10E524C";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		74.5 0 2.9999999999999978
		79.5 2.8421709430404007e-14 2.9999999999999996
		;
	setAttr ".adot" yes;
createNode transform -n "line_18" -p "line_grp";
	rename -uid "774804C2-4356-3F6A-68F6-6D9935BDDE7B";
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
	rename -uid "5830B148-40E7-3972-FCD6-10AEA3CEBCD8";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		79.5 2.8421709430404007e-14 2.9999999999999996
		84.5 2.8421709430404007e-14 2.9999999999999889
		;
	setAttr ".adot" yes;
createNode transform -n "line_19" -p "line_grp";
	rename -uid "89822152-4255-E389-CDFE-1BAFFEE3D59F";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "line_19Shape" -p "line_19";
	rename -uid "88BD4962-4013-AEDF-14B1-27BAC22C9042";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		84.5 2.8421709430404007e-14 2.9999999999999889
		87.5 2.8421709430404007e-14 2.999999999999988
		;
	setAttr ".adot" yes;
createNode transform -n "line_20" -p "line_grp";
	rename -uid "A428497D-4FE7-D947-D51A-8C95DFE7588F";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "line_20Shape" -p "line_20";
	rename -uid "3E2DF6AE-44E6-137B-C6F8-50B80D604A01";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		87.5 2.8421709430404007e-14 2.999999999999988
		89.5 2.8421709430404007e-14 2.9999999999999969
		;
	setAttr ".adot" yes;
createNode transform -n "line_22" -p "line_grp";
	rename -uid "5A3F41E8-45D1-78A8-C635-1887EC805321";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "line_22Shape" -p "line_22";
	rename -uid "364C8450-4B7D-D1EC-6CDC-D4B0264ED79B";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		73.014960138166458 -1.676586432228637 3.5922313781657715
		76 -3.3999999999999999 4.1999999999999993
		;
	setAttr ".adot" yes;
createNode transform -n "line_23" -p "line_grp";
	rename -uid "E07BE230-4952-A584-CD0A-8FB63E9ACB9C";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "line_23Shape" -p "line_23";
	rename -uid "DF4D442E-44D6-4D1F-C20A-7BA27C85C986";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		76 -3.3999999999999999 4.1999999999999993
		79.240900421419298 -5.2711347307231744 4.859863075134359
		;
	setAttr ".adot" yes;
createNode transform -n "line_24" -p "line_grp";
	rename -uid "9A6A523A-4237-125E-2B7E-1A827BCCA305";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "line_24Shape" -p "line_24";
	rename -uid "94B16B61-4A02-8D03-6910-33B76F8B5216";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		79.240900421419298 -5.2711347307231744 4.859863075134359
		81.373071751300387 -6.502144421988505 5.2939835193016593
		;
	setAttr ".adot" yes;
createNode transform -n "line_29" -p "line_grp";
	rename -uid "39A2B488-46FD-F2A9-412C-34ABDAD8C43D";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "line_29Shape" -p "line_29";
	rename -uid "C81DC618-4C24-052C-D569-ED816909700E";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		79.5 2.8421709430404007e-14 2.9999999999999996
		79.5 2.8421709430404007e-14 0.99999999999999956
		;
	setAttr ".adot" yes;
createNode transform -n "line_30" -p "line_grp";
	rename -uid "C8C70661-406E-FF7B-4E39-3D9DBBB59DD9";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "line_30Shape" -p "line_30";
	rename -uid "802940C7-4F39-9EC4-A1AA-C3844227B735";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		79.5 2.8421709430404007e-14 0.99999999999999956
		79.5 2.8421709430404007e-14 -1.0000000000000004
		;
	setAttr ".adot" yes;
createNode transform -n "line_31" -p "line_grp";
	rename -uid "EA3A3974-48BC-3742-6B80-78870A9091FB";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "line_31Shape" -p "line_31";
	rename -uid "EC0452B9-48F6-9107-E636-43B5BE37FF30";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		79.5 2.8421709430404007e-14 -1.0000000000000004
		79.5 2.8421709430404007e-14 -3.0000000000000004
		;
	setAttr ".adot" yes;
createNode transform -n "fgrRef_grp" -p "master_guide";
	rename -uid "E7B069B7-4BFC-7698-F2BD-3EAADB903947";
	setAttr ".t" -type "double3" -72 -140 0 ;
createNode transform -n "null1" -p "fgrRef_grp";
	rename -uid "2E6D64CB-4F41-AC0F-2431-E29B1B258810";
	setAttr ".t" -type "double3" 73 141.6 4.1999999999999993 ;
	setAttr ".r" -type "double3" 180 -10 -29.999999999999996 ;
createNode transform -n "fgrRef1" -p "null1";
	rename -uid "687540E2-41CE-5680-398D-AC851F11C0B7";
	setAttr ".s" -type "double3" 1.5 2 3 ;
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".rpt" -type "double3" 0.019175006322035365 0.085882464239595335 0.17494723236666326 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode mesh -n "fgrRefShape" -p "fgrRef1";
	rename -uid "E0271ED8-4C18-49C7-996D-37833029D5D6";
	setAttr -k off ".v";
	setAttr -s 19 ".iog";
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
	rename -uid "450961A6-4F97-3507-FDE1-3D80B5AA9F28";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fgr00_1_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 70.588525872190218 143.56961550602441 3.5054072893323034 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef1_aimCst" -p "fgrRef1";
	rename -uid "E0E7D8CC-45EB-81BE-0B3C-0F96AE6C70E4";
	addAttr -dcb 0 -ci true -sn "w0" -ln "fgr00_2_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" -179.99999999999986 -9.9999999999993676 -29.999999999999872 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef2" -p "null1";
	rename -uid "4C2FABD0-4A35-049F-C7DA-EA96B596CB83";
	setAttr ".s" -type "double3" 1.5 1.5 2 ;
	setAttr ".rp" -type "double3" -1.0000000000000002 0 0 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
	setAttr ".spt" -type "double3" -2.2204460492503141e-16 0 0 ;
createNode pointConstraint -n "fgrRef2_poiCst" -p "fgrRef2";
	rename -uid "B964066E-4043-634E-53D4-A8A83864A7F4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fgr00_2_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 74 141.6 4.1999999999999993 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef2_aimCst" -p "fgrRef2";
	rename -uid "65F742EF-41E2-6319-E96D-3793DA84E260";
	addAttr -dcb 0 -ci true -sn "w0" -ln "fgr00_3_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" 179.99999999999989 -10.000000000000261 -29.999999999999392 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef3" -p "null1";
	rename -uid "F8E91A1A-4E3F-77D5-DB58-21A8ABC40664";
	setAttr ".s" -type "double3" 1.5 1.5 2 ;
	setAttr ".rp" -type "double3" -1.0000000000000002 0 0 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
	setAttr ".spt" -type "double3" -2.2204460492503141e-16 0 0 ;
createNode pointConstraint -n "fgrRef3_poiCst" -p "fgrRef3";
	rename -uid "BED8F03E-4110-2FF1-A95A-8DAD6EDE9F3F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fgr00_3_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 77.240900421419298 139.72886526927684 4.8598630751343554 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef3_aimCst" -p "fgrRef3";
	rename -uid "75A533F4-4CD5-FBCE-C772-D08C77C51D58";
	addAttr -dcb 0 -ci true -sn "w0" -ln "fgr00_4_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" -179.99999999999955 -9.9999999999993658 -30.000000000001315 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "null1_scaleConstraint1" -p "null1";
	rename -uid "1E68F040-4066-731E-F7BA-F5B7C09E74D1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fgr00_2_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "null2" -p "fgrRef_grp";
	rename -uid "D8BF2B2B-4E4F-3329-346B-CFB987AB2C3C";
	setAttr ".t" -type "double3" 76.5 145.00000000000003 2.9999999999999996 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode transform -n "fgrRef4" -p "null2";
	rename -uid "FC5FC946-4E49-0BAE-A818-3EAF7D632663";
	setAttr ".s" -type "double3" 1.5 2 3 ;
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef4_poiCst" -p "fgrRef4";
	rename -uid "D675D101-48C3-3C20-B0A5-4B9C5D564206";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fgr01_1_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 71.5 145 2.9999999999999978 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef4_aimCst" -p "fgrRef4";
	rename -uid "316DBD58-4EC4-8C2D-7265-6CB0020C7CBD";
	addAttr -dcb 0 -ci true -sn "w0" -ln "fgr01_2_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" 90 2.5444437451708134e-13 2.8837029111935884e-13 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef5" -p "null2";
	rename -uid "E3C4CBC3-4052-25A6-0333-98932C9FB38A";
	setAttr ".s" -type "double3" 1.5 1.5 2 ;
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef5_poiCst" -p "fgrRef5";
	rename -uid "CF6ADF3C-4FEF-B79B-EAF8-40BA18437CAF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fgr01_2_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 77.5 145.00000000000003 2.9999999999999996 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef5_aimCst" -p "fgrRef5";
	rename -uid "76A403AF-4466-7557-1D97-AFA1FCE930B3";
	addAttr -dcb 0 -ci true -sn "w0" -ln "fgr01_3_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" 90 1.2213329976819906e-13 -1.2213329976819906e-13 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef6" -p "null2";
	rename -uid "DFD2E67F-4C26-E620-0E9A-97BD6ABE23BF";
	setAttr ".s" -type "double3" 1.5 1.5 2 ;
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef6_poiCst" -p "fgrRef6";
	rename -uid "B9F2249A-4A40-06D1-BF3C-E9B9A8788B5F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fgr01_3_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 82.5 145.00000000000003 2.9999999999999889 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef6_aimCst" -p "fgrRef6";
	rename -uid "D185BA16-4071-6378-7F9A-CF892CDF7557";
	addAttr -dcb 0 -ci true -sn "w0" -ln "fgr01_4_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" 90 1.6962958301138754e-14 -1.6962958301138754e-14 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef7" -p "null2";
	rename -uid "839CC9F1-4400-DFF5-4148-FFA190AEA395";
	setAttr ".s" -type "double3" 1.5 1.5 2 ;
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef7_poiCst" -p "fgrRef7";
	rename -uid "0CB35D4F-41A3-E25F-5C2D-BFBDDC0F39EE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fgr01_4_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 85.5 145.00000000000003 2.999999999999988 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef7_aimCst" -p "fgrRef7";
	rename -uid "011CF42E-4880-A02C-21CE-25A38187E3CE";
	addAttr -dcb 0 -ci true -sn "w0" -ln "fgr01_5_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" 90 -2.5444437451708134e-13 2.5444437451708134e-13 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "null2_scaleConstraint1" -p "null2";
	rename -uid "EFD59674-4A79-E6DC-3E3D-788595F43CB5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fgr01_2_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "null3" -p "fgrRef_grp";
	rename -uid "78E8C304-4DAF-73E8-ABB9-EE976C90468A";
	setAttr ".t" -type "double3" 76.5 145.00000000000003 0.99999999999999956 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode transform -n "fgrRef8" -p "null3";
	rename -uid "BE381C40-46AA-6C9A-3F6D-C68CF1BA2048";
	setAttr ".s" -type "double3" 1.5 2 3 ;
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef8_poiCst" -p "fgrRef8";
	rename -uid "1822EA04-4B02-821B-B09A-24B33BD995B0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fgr02_1_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 71.666666666666657 145 0.99999999999999778 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef8_aimCst" -p "fgrRef8";
	rename -uid "6704842C-44F2-C769-41B1-AE85E47190ED";
	addAttr -dcb 0 -ci true -sn "w0" -ln "fgr02_2_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" 90 2.5444437451708134e-13 2.8837029111935884e-13 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef9" -p "null3";
	rename -uid "093F91B6-444F-A872-B7BB-34912F18B7DB";
	setAttr ".s" -type "double3" 1.5 1.5 2 ;
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef9_poiCst" -p "fgrRef9";
	rename -uid "A7EB60FB-4981-C9D8-63AD-C0815476A202";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fgr02_2_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 77.666666666666657 145.00000000000003 0.99999999999999956 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef9_aimCst" -p "fgrRef9";
	rename -uid "C49D1D88-413E-8BCD-7F8F-3AAAC667205A";
	addAttr -dcb 0 -ci true -sn "w0" -ln "fgr02_3_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" 90 1.1704441227785742e-13 -1.1704441227785742e-13 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef10" -p "null3";
	rename -uid "693364FD-4C2F-AACC-7BFE-CEA9999CD1A0";
	setAttr ".s" -type "double3" 1.5 1.5 2 ;
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef10_poiCst" -p "fgrRef10";
	rename -uid "CC27649A-44D7-582A-29AF-F2B3D5D0CB5B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fgr02_3_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 82.666666666666657 145.00000000000003 0.99999999999998934 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef10_aimCst" -p "fgrRef10";
	rename -uid "06FB8B86-4BD9-0553-2976-E88FD8F22F83";
	addAttr -dcb 0 -ci true -sn "w0" -ln "fgr02_4_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" 90 -3.7318508262505255e-13 3.7318508262505255e-13 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef11" -p "null3";
	rename -uid "D3DF9827-47F5-3EC8-4AA4-26B55740F2E7";
	setAttr ".s" -type "double3" 1.5 1.5 2 ;
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef11_poiCst" -p "fgrRef11";
	rename -uid "B98C9BAD-41F9-7FEE-B333-43BAB761A810";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fgr02_4_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 85.666666666666657 145.00000000000003 1.0000000000000089 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef11_aimCst" -p "fgrRef11";
	rename -uid "E31ED0A7-4E59-22B4-704A-D39C8211147B";
	addAttr -dcb 0 -ci true -sn "w0" -ln "fgr02_5_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" 90 2.9261103069464348e-13 -2.9261103069464348e-13 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "null3_scaleConstraint1" -p "null3";
	rename -uid "AF30EB20-49A4-150D-5E7C-AB925E9A0D7B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fgr02_2_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "null4" -p "fgrRef_grp";
	rename -uid "2C99A84E-4D2E-4F70-D00B-6D8E63F779BF";
	setAttr ".t" -type "double3" 76.5 145.00000000000003 -1.0000000000000004 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode transform -n "fgrRef12" -p "null4";
	rename -uid "D587CBC8-4E52-05FA-90EE-6EBFF186854F";
	setAttr ".s" -type "double3" 1.5 2 3 ;
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef12_poiCst" -p "fgrRef12";
	rename -uid "A5A45A19-440F-4A75-0D60-B0A061C00C58";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fgr03_1_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 71.833333333333329 145 -1.0000000000000022 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef12_aimCst" -p "fgrRef12";
	rename -uid "73B1D827-41BA-5991-FA5F-29A39824910C";
	addAttr -dcb 0 -ci true -sn "w0" -ln "fgr03_2_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" 90 2.5444437451708134e-13 2.8837029111935884e-13 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef13" -p "null4";
	rename -uid "1548148E-4C71-5FE7-C6F9-DFA835D6930E";
	setAttr ".s" -type "double3" 1.5 1.5 2 ;
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef13_poiCst" -p "fgrRef13";
	rename -uid "EC64EF9B-4AC2-732F-011B-FEA3682BF1D2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fgr03_2_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 77.833333333333329 145.00000000000003 -1.0000000000000004 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef13_aimCst" -p "fgrRef13";
	rename -uid "5A19DC22-44DF-23CE-1AC0-BAAFDD64D716";
	addAttr -dcb 0 -ci true -sn "w0" -ln "fgr03_3_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" 90 1.1704441227785742e-13 -1.1704441227785742e-13 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef14" -p "null4";
	rename -uid "8E3C8290-4AA0-9F54-FE69-86ABA37AD566";
	setAttr ".s" -type "double3" 1.5 1.5 2 ;
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef14_poiCst" -p "fgrRef14";
	rename -uid "4F4F3862-45AB-E61D-8049-C190475BB3FA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fgr03_3_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 82.833333333333329 145.00000000000003 -1.0000000000000107 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef14_aimCst" -p "fgrRef14";
	rename -uid "5341DB62-4D88-DCB7-2F58-2BB8F1A5561B";
	addAttr -dcb 0 -ci true -sn "w0" -ln "fgr03_4_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" 90 -3.7318508262505255e-13 3.7318508262505255e-13 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef15" -p "null4";
	rename -uid "30DFFD44-4845-0E53-77E6-B6BD0330ACE0";
	setAttr ".s" -type "double3" 1.5 1.5 2 ;
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef15_poiCst" -p "fgrRef15";
	rename -uid "9C39EAB3-428F-8F5B-9CC4-E5AD5BFB75BE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fgr03_4_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 85.833333333333329 145.00000000000003 -0.99999999999999112 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef15_aimCst" -p "fgrRef15";
	rename -uid "BFCA1E85-41BB-B81F-8524-B3BF4C46F303";
	addAttr -dcb 0 -ci true -sn "w0" -ln "fgr03_5_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" 90 2.9261103069464348e-13 -2.9261103069464348e-13 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "null4_scaleConstraint1" -p "null4";
	rename -uid "A9827118-4145-042A-A3C5-02A9994C1EC7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fgr03_2_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "null5" -p "fgrRef_grp";
	rename -uid "E1A487C2-4EDB-49C4-8604-78AC0E9F49C3";
	setAttr ".t" -type "double3" 76.5 145.00000000000003 -3.0000000000000004 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode transform -n "fgrRef16" -p "null5";
	rename -uid "0CDF350C-422C-B4B0-130D-098D25603E49";
	setAttr ".s" -type "double3" 1.5 2 3 ;
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef16_poiCst" -p "fgrRef16";
	rename -uid "36B88DFD-4368-5D3E-3214-3AA73AC1A315";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fgr04_1_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 72 145 -3.0000000000000022 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef16_aimCst" -p "fgrRef16";
	rename -uid "E0DECBCA-44B4-7036-8DCC-9FAE4F294A4C";
	addAttr -dcb 0 -ci true -sn "w0" -ln "fgr04_2_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" 90 2.5444437451708134e-13 2.8837029111935884e-13 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef17" -p "null5";
	rename -uid "8913A91A-4A5B-9994-2BBB-7B9B01A0AA43";
	setAttr ".s" -type "double3" 1.5 1.5 2 ;
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef17_poiCst" -p "fgrRef17";
	rename -uid "299F787A-45FC-1806-F443-82BBE6893DA0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fgr04_2_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 78 145.00000000000003 -3.0000000000000004 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef17_aimCst" -p "fgrRef17";
	rename -uid "6CCFF2F2-46BA-B1DE-D005-A99D46C2C8C7";
	addAttr -dcb 0 -ci true -sn "w0" -ln "fgr04_3_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" 90 1.2213329976819906e-13 -1.2213329976819906e-13 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef18" -p "null5";
	rename -uid "9591CDC5-4CB7-B71A-E482-1CA44FE8FE42";
	setAttr ".s" -type "double3" 1.5 1.5 2 ;
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef18_poiCst" -p "fgrRef18";
	rename -uid "EAF41E94-48B4-B3E9-718B-C6B047DE1BDB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fgr04_3_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 83 145.00000000000003 -3.0000000000000111 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef18_aimCst" -p "fgrRef18";
	rename -uid "F26D1622-4F45-80E6-42CA-9BB399ADCA68";
	addAttr -dcb 0 -ci true -sn "w0" -ln "fgr04_4_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" 90 -3.7318508262505255e-13 3.7318508262505255e-13 ;
	setAttr -k on ".w0";
createNode transform -n "fgrRef19" -p "null5";
	rename -uid "0B3E12E1-44E6-182B-A68F-159DDA15380F";
	setAttr ".s" -type "double3" 1.5 1.5 2 ;
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode pointConstraint -n "fgrRef19_poiCst" -p "fgrRef19";
	rename -uid "B11CAFEB-43D1-FFDD-D90F-358B505E87FB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fgr04_4_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 86 145.00000000000003 -2.9999999999999916 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "fgrRef19_aimCst" -p "fgrRef19";
	rename -uid "2FD58E57-4B34-C5E6-399F-1C90AF83D0E8";
	addAttr -dcb 0 -ci true -sn "w0" -ln "fgr04_5_guideW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" 90 3.0533324942049756e-13 -3.0533324942049756e-13 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "null5_scaleConstraint1" -p "null5";
	rename -uid "04C0E79D-4B37-C485-84AD-658D67C5AAF9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fgr04_2_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode nurbsCurve -n "master_guideShape" -p "master_guide";
	rename -uid "EEB6FC29-4CF8-F287-61AE-938D0327BDBE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 5 0 no 3
		6 0 1 3 4 6 7
		6
		0 11.181022200458974 1.3692803048987582e-15
		0 7.5000000000000036 -7.4999999999999982
		0 -7.4999999999999982 -7.5000000000000027
		0 -7.5 7.4999999999999982
		0 7.5000000000000018 7.5000000000000018
		0 11.181022200458974 1.3692803048987582e-15
		;
parent -s -nc -r -add "|master_guide|orient|fgr02_2_guide_ofs|fgr02_2_guide|fgr02_3_guide|fgr01_5_guideShape2" "fgr02_1_guide" ;
parent -s -nc -r -add "|master_guide|orient|fgr02_2_guide_ofs|fgr02_2_guide|fgr02_3_guide|fgr01_5_guideShape2" "fgr00_1_guide" ;
parent -s -nc -r -add "|master_guide|orient|fgr02_2_guide_ofs|fgr02_2_guide|fgr02_3_guide|fgr01_5_guideShape2" "fgr04_3_guide" ;
parent -s -nc -r -add "|master_guide|orient|fgr02_2_guide_ofs|fgr02_2_guide|fgr02_3_guide|fgr01_5_guideShape2" "fgr04_4_guide" ;
parent -s -nc -r -add "|master_guide|orient|fgr02_2_guide_ofs|fgr02_2_guide|fgr02_3_guide|fgr01_5_guideShape2" "fgr04_5_guide" ;
parent -s -nc -r -add "|master_guide|orient|fgr02_2_guide_ofs|fgr02_2_guide|fgr02_3_guide|fgr01_5_guideShape2" "fgr03_4_guide" ;
parent -s -nc -r -add "|master_guide|orient|fgr02_2_guide_ofs|fgr02_2_guide|fgr02_3_guide|fgr01_5_guideShape2" "fgr03_5_guide" ;
parent -s -nc -r -add "|master_guide|orient|fgr02_2_guide_ofs|fgr02_2_guide|fgr02_3_guide|fgr01_5_guideShape2" "fgr02_4_guide" ;
parent -s -nc -r -add "|master_guide|orient|fgr02_2_guide_ofs|fgr02_2_guide|fgr02_3_guide|fgr01_5_guideShape2" "fgr03_3_guide" ;
parent -s -nc -r -add "|master_guide|orient|fgr02_2_guide_ofs|fgr02_2_guide|fgr02_3_guide|fgr01_5_guideShape2" "fgr02_5_guide" ;
parent -s -nc -r -add "|master_guide|orient|fgr02_2_guide_ofs|fgr02_2_guide|fgr02_3_guide|fgr01_5_guideShape2" "fgr01_4_guide" ;
parent -s -nc -r -add "|master_guide|orient|fgr02_2_guide_ofs|fgr02_2_guide|fgr02_3_guide|fgr01_5_guideShape2" "fgr01_3_guide" ;
parent -s -nc -r -add "|master_guide|orient|fgr02_2_guide_ofs|fgr02_2_guide|fgr02_3_guide|fgr01_5_guideShape2" "fgr03_1_guide" ;
parent -s -nc -r -add "|master_guide|orient|fgr02_2_guide_ofs|fgr02_2_guide|fgr02_3_guide|fgr01_5_guideShape2" "fgr00_4_guide" ;
parent -s -nc -r -add "|master_guide|orient|fgr02_2_guide_ofs|fgr02_2_guide|fgr02_3_guide|fgr01_5_guideShape2" "fgr00_3_guide" ;
parent -s -nc -r -add "|master_guide|orient|fgr02_2_guide_ofs|fgr02_2_guide|fgr02_3_guide|fgr01_5_guideShape2" "fgr01_5_guide" ;
parent -s -nc -r -add "|master_guide|orient|fgr02_2_guide_ofs|fgr02_2_guide|fgr00_2_guideShape" "fgr04_2_guide" ;
parent -s -nc -r -add "|master_guide|orient|fgr02_2_guide_ofs|fgr02_2_guide|fgr00_2_guideShape" "fgr01_2_guide" ;
parent -s -nc -r -add "|master_guide|orient|fgr02_2_guide_ofs|fgr02_2_guide|fgr00_2_guideShape" "fgr03_2_guide" ;
parent -s -nc -r -add "|master_guide|orient|fgr02_2_guide_ofs|fgr02_2_guide|fgr00_2_guideShape" "fgr00_2_guide" ;
parent -s -nc -r -add "|master_guide|orient|fgr04_2_guide_ofs|fgr04_2_guide|fgr04_1_guide|fgr01_1_guideShape2" "fgr01_1_guide" ;
parent -s -nc -r -add "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef2" ;
parent -s -nc -r -add "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef3" ;
parent -s -nc -r -add "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef4" ;
parent -s -nc -r -add "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef5" ;
parent -s -nc -r -add "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef6" ;
parent -s -nc -r -add "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef7" ;
parent -s -nc -r -add "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef8" ;
parent -s -nc -r -add "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef9" ;
parent -s -nc -r -add "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef10" ;
parent -s -nc -r -add "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef11" ;
parent -s -nc -r -add "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef12" ;
parent -s -nc -r -add "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef13" ;
parent -s -nc -r -add "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef14" ;
parent -s -nc -r -add "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef15" ;
parent -s -nc -r -add "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef16" ;
parent -s -nc -r -add "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef17" ;
parent -s -nc -r -add "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef18" ;
parent -s -nc -r -add "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape" "fgrRef19" ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "4AC10F6B-4960-B329-AE8B-15B53791EEBF";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "9305B9AD-4A31-3E6C-A30D-CF96094D5128";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 1 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "068F88FF-4F05-B815-929A-EF89AA03608C";
createNode displayLayerManager -n "layerManager";
	rename -uid "C9EE6C32-4A69-71F1-976A-80B13A103281";
	setAttr ".cdl" 3;
	setAttr -s 4 ".dli[1:3]"  1 2 3;
createNode displayLayer -n "defaultLayer";
	rename -uid "4011EB8B-4296-1EB2-2E08-40844F6318E5";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "883A7486-4456-3B5B-2FF2-4993B41C4986";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "BD18B807-4968-E110-0D94-B9A28F4760A6";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "9EAC53FD-4E7F-55B1-0379-C8B5820375D6";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n"
		+ "            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n"
		+ "            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n"
		+ "            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n"
		+ "            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"ModelPanel\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"ModelPanel\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1177\n            -height 723\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n"
		+ "            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 1\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n"
		+ "            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n"
		+ "            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n"
		+ "            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n"
		+ "                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -image \"C:/Documents and Settings/bwilliams/My Documents/maya/projects/Tests/images/Cubes_01_large.tif\" \n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n"
		+ "                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n"
		+ "                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererOverrideName \"stereoOverrideVP2\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 943\n            -height 723\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n"
		+ "            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n"
		+ "            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n"
		+ "            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"{}\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 943\\n    -height 723\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 943\\n    -height 723\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 30 -size 300 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"1 0.000000 0.000000 -1.000000 -0.000016 1.000000 0.000000\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "7B057219-4602-0D00-E58B-C797EF200F13";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 80 -ast 1 -aet 80 ";
	setAttr ".st" 6;
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
createNode ilrOptionsNode -s -n "TurtleRenderOptions";
	rename -uid "9F0E203B-46F0-D7E1-A8BC-E79DA77D8D56";
createNode ilrUIOptionsNode -s -n "TurtleUIOptions";
	rename -uid "89C5F28B-44D1-3819-D191-F4A0E2BCB373";
createNode ilrBakeLayerManager -s -n "TurtleBakeLayerManager";
	rename -uid "9DB09F2E-48A0-C655-E5D8-48B027D7EFD1";
createNode lambert -n "lambert2";
	rename -uid "E8B48898-4F00-D8B5-0163-8D9DEE1574B6";
	setAttr ".c" -type "float3" 1 0 0 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "53B9875B-4B57-D5D2-C780-2B9D8E3419A3";
	setAttr ".ihi" 0;
	setAttr -s 19 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "4824543F-487F-9920-D01A-9A8950A3A787";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "2D59A817-4FBA-F6B2-3773-8EAEC74747F0";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -597.02378580021582 -536.30950249849889 ;
	setAttr ".tgi[0].vh" -type "double2" 599.40473808655781 533.92855021215712 ;
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
connectAttr "DCM_2.ot" "line_02Shape.cp[0]";
connectAttr "DCM_3.ot" "line_02Shape.cp[1]";
connectAttr "DCM_3.ot" "line_03Shape.cp[0]";
connectAttr "DCM_4.ot" "line_03Shape.cp[1]";
connectAttr "DCM_4.ot" "line_04Shape.cp[0]";
connectAttr "DCM_5.ot" "line_04Shape.cp[1]";
connectAttr "DCM_5.ot" "line_05Shape.cp[0]";
connectAttr "DCM_6.ot" "line_05Shape.cp[1]";
connectAttr "DCM_7.ot" "line_07Shape.cp[0]";
connectAttr "DCM_8.ot" "line_07Shape.cp[1]";
connectAttr "DCM_8.ot" "line_08Shape.cp[0]";
connectAttr "DCM_9.ot" "line_08Shape.cp[1]";
connectAttr "DCM_9.ot" "line_09Shape.cp[0]";
connectAttr "DCM_10.ot" "line_09Shape.cp[1]";
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
connectAttr "master_guide.showRef" "fgrRef_grp.v";
connectAttr "null1_scaleConstraint1.csx" "null1.sx";
connectAttr "null1_scaleConstraint1.csy" "null1.sy";
connectAttr "null1_scaleConstraint1.csz" "null1.sz";
connectAttr "fgrRef1_poiCst.ctx" "fgrRef1.tx";
connectAttr "fgrRef1_poiCst.cty" "fgrRef1.ty";
connectAttr "fgrRef1_poiCst.ctz" "fgrRef1.tz";
connectAttr "fgrRef1_aimCst.crx" "fgrRef1.rx";
connectAttr "fgrRef1_aimCst.cry" "fgrRef1.ry";
connectAttr "fgrRef1_aimCst.crz" "fgrRef1.rz";
connectAttr "fgrRef1.pim" "fgrRef1_poiCst.cpim";
connectAttr "fgrRef1.rp" "fgrRef1_poiCst.crp";
connectAttr "fgrRef1.rpt" "fgrRef1_poiCst.crt";
connectAttr "fgr00_1_guide.t" "fgrRef1_poiCst.tg[0].tt";
connectAttr "fgr00_1_guide.rp" "fgrRef1_poiCst.tg[0].trp";
connectAttr "fgr00_1_guide.rpt" "fgrRef1_poiCst.tg[0].trt";
connectAttr "fgr00_1_guide.pm" "fgrRef1_poiCst.tg[0].tpm";
connectAttr "fgrRef1_poiCst.w0" "fgrRef1_poiCst.tg[0].tw";
connectAttr "fgrRef1.pim" "fgrRef1_aimCst.cpim";
connectAttr "fgrRef1.t" "fgrRef1_aimCst.ct";
connectAttr "fgrRef1.rp" "fgrRef1_aimCst.crp";
connectAttr "fgrRef1.rpt" "fgrRef1_aimCst.crt";
connectAttr "fgrRef1.ro" "fgrRef1_aimCst.cro";
connectAttr "fgr00_2_guide.t" "fgrRef1_aimCst.tg[0].tt";
connectAttr "fgr00_2_guide.rp" "fgrRef1_aimCst.tg[0].trp";
connectAttr "fgr00_2_guide.rpt" "fgrRef1_aimCst.tg[0].trt";
connectAttr "fgr00_2_guide.pm" "fgrRef1_aimCst.tg[0].tpm";
connectAttr "fgrRef1_aimCst.w0" "fgrRef1_aimCst.tg[0].tw";
connectAttr "fgr00_1_guide.wm" "fgrRef1_aimCst.wum";
connectAttr "fgrRef2_poiCst.ctx" "fgrRef2.tx";
connectAttr "fgrRef2_poiCst.cty" "fgrRef2.ty";
connectAttr "fgrRef2_poiCst.ctz" "fgrRef2.tz";
connectAttr "fgrRef2_aimCst.crx" "fgrRef2.rx";
connectAttr "fgrRef2_aimCst.cry" "fgrRef2.ry";
connectAttr "fgrRef2_aimCst.crz" "fgrRef2.rz";
connectAttr "fgrRef2.pim" "fgrRef2_poiCst.cpim";
connectAttr "fgrRef2.rp" "fgrRef2_poiCst.crp";
connectAttr "fgrRef2.rpt" "fgrRef2_poiCst.crt";
connectAttr "fgr00_2_guide.t" "fgrRef2_poiCst.tg[0].tt";
connectAttr "fgr00_2_guide.rp" "fgrRef2_poiCst.tg[0].trp";
connectAttr "fgr00_2_guide.rpt" "fgrRef2_poiCst.tg[0].trt";
connectAttr "fgr00_2_guide.pm" "fgrRef2_poiCst.tg[0].tpm";
connectAttr "fgrRef2_poiCst.w0" "fgrRef2_poiCst.tg[0].tw";
connectAttr "fgrRef2.pim" "fgrRef2_aimCst.cpim";
connectAttr "fgrRef2.t" "fgrRef2_aimCst.ct";
connectAttr "fgrRef2.rp" "fgrRef2_aimCst.crp";
connectAttr "fgrRef2.rpt" "fgrRef2_aimCst.crt";
connectAttr "fgrRef2.ro" "fgrRef2_aimCst.cro";
connectAttr "fgr00_3_guide.t" "fgrRef2_aimCst.tg[0].tt";
connectAttr "fgr00_3_guide.rp" "fgrRef2_aimCst.tg[0].trp";
connectAttr "fgr00_3_guide.rpt" "fgrRef2_aimCst.tg[0].trt";
connectAttr "fgr00_3_guide.pm" "fgrRef2_aimCst.tg[0].tpm";
connectAttr "fgrRef2_aimCst.w0" "fgrRef2_aimCst.tg[0].tw";
connectAttr "fgr00_2_guide.wm" "fgrRef2_aimCst.wum";
connectAttr "fgrRef3_poiCst.ctx" "fgrRef3.tx";
connectAttr "fgrRef3_poiCst.cty" "fgrRef3.ty";
connectAttr "fgrRef3_poiCst.ctz" "fgrRef3.tz";
connectAttr "fgrRef3_aimCst.crx" "fgrRef3.rx";
connectAttr "fgrRef3_aimCst.cry" "fgrRef3.ry";
connectAttr "fgrRef3_aimCst.crz" "fgrRef3.rz";
connectAttr "fgrRef3.pim" "fgrRef3_poiCst.cpim";
connectAttr "fgrRef3.rp" "fgrRef3_poiCst.crp";
connectAttr "fgrRef3.rpt" "fgrRef3_poiCst.crt";
connectAttr "fgr00_3_guide.t" "fgrRef3_poiCst.tg[0].tt";
connectAttr "fgr00_3_guide.rp" "fgrRef3_poiCst.tg[0].trp";
connectAttr "fgr00_3_guide.rpt" "fgrRef3_poiCst.tg[0].trt";
connectAttr "fgr00_3_guide.pm" "fgrRef3_poiCst.tg[0].tpm";
connectAttr "fgrRef3_poiCst.w0" "fgrRef3_poiCst.tg[0].tw";
connectAttr "fgrRef3.pim" "fgrRef3_aimCst.cpim";
connectAttr "fgrRef3.t" "fgrRef3_aimCst.ct";
connectAttr "fgrRef3.rp" "fgrRef3_aimCst.crp";
connectAttr "fgrRef3.rpt" "fgrRef3_aimCst.crt";
connectAttr "fgrRef3.ro" "fgrRef3_aimCst.cro";
connectAttr "fgr00_4_guide.t" "fgrRef3_aimCst.tg[0].tt";
connectAttr "fgr00_4_guide.rp" "fgrRef3_aimCst.tg[0].trp";
connectAttr "fgr00_4_guide.rpt" "fgrRef3_aimCst.tg[0].trt";
connectAttr "fgr00_4_guide.pm" "fgrRef3_aimCst.tg[0].tpm";
connectAttr "fgrRef3_aimCst.w0" "fgrRef3_aimCst.tg[0].tw";
connectAttr "fgr00_3_guide.wm" "fgrRef3_aimCst.wum";
connectAttr "null1.pim" "null1_scaleConstraint1.cpim";
connectAttr "fgr00_2_guide.s" "null1_scaleConstraint1.tg[0].ts";
connectAttr "fgr00_2_guide.pm" "null1_scaleConstraint1.tg[0].tpm";
connectAttr "null1_scaleConstraint1.w0" "null1_scaleConstraint1.tg[0].tw";
connectAttr "null2_scaleConstraint1.csx" "null2.sx";
connectAttr "null2_scaleConstraint1.csy" "null2.sy";
connectAttr "null2_scaleConstraint1.csz" "null2.sz";
connectAttr "fgrRef4_poiCst.ctx" "fgrRef4.tx";
connectAttr "fgrRef4_poiCst.cty" "fgrRef4.ty";
connectAttr "fgrRef4_poiCst.ctz" "fgrRef4.tz";
connectAttr "fgrRef4_aimCst.crx" "fgrRef4.rx";
connectAttr "fgrRef4_aimCst.cry" "fgrRef4.ry";
connectAttr "fgrRef4_aimCst.crz" "fgrRef4.rz";
connectAttr "fgrRef4.pim" "fgrRef4_poiCst.cpim";
connectAttr "fgrRef4.rp" "fgrRef4_poiCst.crp";
connectAttr "fgrRef4.rpt" "fgrRef4_poiCst.crt";
connectAttr "fgr01_1_guide.t" "fgrRef4_poiCst.tg[0].tt";
connectAttr "fgr01_1_guide.rp" "fgrRef4_poiCst.tg[0].trp";
connectAttr "fgr01_1_guide.rpt" "fgrRef4_poiCst.tg[0].trt";
connectAttr "fgr01_1_guide.pm" "fgrRef4_poiCst.tg[0].tpm";
connectAttr "fgrRef4_poiCst.w0" "fgrRef4_poiCst.tg[0].tw";
connectAttr "fgrRef4.pim" "fgrRef4_aimCst.cpim";
connectAttr "fgrRef4.t" "fgrRef4_aimCst.ct";
connectAttr "fgrRef4.rp" "fgrRef4_aimCst.crp";
connectAttr "fgrRef4.rpt" "fgrRef4_aimCst.crt";
connectAttr "fgrRef4.ro" "fgrRef4_aimCst.cro";
connectAttr "fgr01_2_guide.t" "fgrRef4_aimCst.tg[0].tt";
connectAttr "fgr01_2_guide.rp" "fgrRef4_aimCst.tg[0].trp";
connectAttr "fgr01_2_guide.rpt" "fgrRef4_aimCst.tg[0].trt";
connectAttr "fgr01_2_guide.pm" "fgrRef4_aimCst.tg[0].tpm";
connectAttr "fgrRef4_aimCst.w0" "fgrRef4_aimCst.tg[0].tw";
connectAttr "fgr01_1_guide.wm" "fgrRef4_aimCst.wum";
connectAttr "fgrRef5_poiCst.ctx" "fgrRef5.tx";
connectAttr "fgrRef5_poiCst.cty" "fgrRef5.ty";
connectAttr "fgrRef5_poiCst.ctz" "fgrRef5.tz";
connectAttr "fgrRef5_aimCst.crx" "fgrRef5.rx";
connectAttr "fgrRef5_aimCst.cry" "fgrRef5.ry";
connectAttr "fgrRef5_aimCst.crz" "fgrRef5.rz";
connectAttr "fgrRef5.pim" "fgrRef5_poiCst.cpim";
connectAttr "fgrRef5.rp" "fgrRef5_poiCst.crp";
connectAttr "fgrRef5.rpt" "fgrRef5_poiCst.crt";
connectAttr "fgr01_2_guide.t" "fgrRef5_poiCst.tg[0].tt";
connectAttr "fgr01_2_guide.rp" "fgrRef5_poiCst.tg[0].trp";
connectAttr "fgr01_2_guide.rpt" "fgrRef5_poiCst.tg[0].trt";
connectAttr "fgr01_2_guide.pm" "fgrRef5_poiCst.tg[0].tpm";
connectAttr "fgrRef5_poiCst.w0" "fgrRef5_poiCst.tg[0].tw";
connectAttr "fgrRef5.pim" "fgrRef5_aimCst.cpim";
connectAttr "fgrRef5.t" "fgrRef5_aimCst.ct";
connectAttr "fgrRef5.rp" "fgrRef5_aimCst.crp";
connectAttr "fgrRef5.rpt" "fgrRef5_aimCst.crt";
connectAttr "fgrRef5.ro" "fgrRef5_aimCst.cro";
connectAttr "fgr01_3_guide.t" "fgrRef5_aimCst.tg[0].tt";
connectAttr "fgr01_3_guide.rp" "fgrRef5_aimCst.tg[0].trp";
connectAttr "fgr01_3_guide.rpt" "fgrRef5_aimCst.tg[0].trt";
connectAttr "fgr01_3_guide.pm" "fgrRef5_aimCst.tg[0].tpm";
connectAttr "fgrRef5_aimCst.w0" "fgrRef5_aimCst.tg[0].tw";
connectAttr "fgr01_2_guide.wm" "fgrRef5_aimCst.wum";
connectAttr "fgrRef6_poiCst.ctx" "fgrRef6.tx";
connectAttr "fgrRef6_poiCst.cty" "fgrRef6.ty";
connectAttr "fgrRef6_poiCst.ctz" "fgrRef6.tz";
connectAttr "fgrRef6_aimCst.crx" "fgrRef6.rx";
connectAttr "fgrRef6_aimCst.cry" "fgrRef6.ry";
connectAttr "fgrRef6_aimCst.crz" "fgrRef6.rz";
connectAttr "fgrRef6.pim" "fgrRef6_poiCst.cpim";
connectAttr "fgrRef6.rp" "fgrRef6_poiCst.crp";
connectAttr "fgrRef6.rpt" "fgrRef6_poiCst.crt";
connectAttr "fgr01_3_guide.t" "fgrRef6_poiCst.tg[0].tt";
connectAttr "fgr01_3_guide.rp" "fgrRef6_poiCst.tg[0].trp";
connectAttr "fgr01_3_guide.rpt" "fgrRef6_poiCst.tg[0].trt";
connectAttr "fgr01_3_guide.pm" "fgrRef6_poiCst.tg[0].tpm";
connectAttr "fgrRef6_poiCst.w0" "fgrRef6_poiCst.tg[0].tw";
connectAttr "fgrRef6.pim" "fgrRef6_aimCst.cpim";
connectAttr "fgrRef6.t" "fgrRef6_aimCst.ct";
connectAttr "fgrRef6.rp" "fgrRef6_aimCst.crp";
connectAttr "fgrRef6.rpt" "fgrRef6_aimCst.crt";
connectAttr "fgrRef6.ro" "fgrRef6_aimCst.cro";
connectAttr "fgr01_4_guide.t" "fgrRef6_aimCst.tg[0].tt";
connectAttr "fgr01_4_guide.rp" "fgrRef6_aimCst.tg[0].trp";
connectAttr "fgr01_4_guide.rpt" "fgrRef6_aimCst.tg[0].trt";
connectAttr "fgr01_4_guide.pm" "fgrRef6_aimCst.tg[0].tpm";
connectAttr "fgrRef6_aimCst.w0" "fgrRef6_aimCst.tg[0].tw";
connectAttr "fgr01_3_guide.wm" "fgrRef6_aimCst.wum";
connectAttr "fgrRef7_poiCst.ctx" "fgrRef7.tx";
connectAttr "fgrRef7_poiCst.cty" "fgrRef7.ty";
connectAttr "fgrRef7_poiCst.ctz" "fgrRef7.tz";
connectAttr "fgrRef7_aimCst.crx" "fgrRef7.rx";
connectAttr "fgrRef7_aimCst.cry" "fgrRef7.ry";
connectAttr "fgrRef7_aimCst.crz" "fgrRef7.rz";
connectAttr "fgrRef7.pim" "fgrRef7_poiCst.cpim";
connectAttr "fgrRef7.rp" "fgrRef7_poiCst.crp";
connectAttr "fgrRef7.rpt" "fgrRef7_poiCst.crt";
connectAttr "fgr01_4_guide.t" "fgrRef7_poiCst.tg[0].tt";
connectAttr "fgr01_4_guide.rp" "fgrRef7_poiCst.tg[0].trp";
connectAttr "fgr01_4_guide.rpt" "fgrRef7_poiCst.tg[0].trt";
connectAttr "fgr01_4_guide.pm" "fgrRef7_poiCst.tg[0].tpm";
connectAttr "fgrRef7_poiCst.w0" "fgrRef7_poiCst.tg[0].tw";
connectAttr "fgrRef7.pim" "fgrRef7_aimCst.cpim";
connectAttr "fgrRef7.t" "fgrRef7_aimCst.ct";
connectAttr "fgrRef7.rp" "fgrRef7_aimCst.crp";
connectAttr "fgrRef7.rpt" "fgrRef7_aimCst.crt";
connectAttr "fgrRef7.ro" "fgrRef7_aimCst.cro";
connectAttr "fgr01_5_guide.t" "fgrRef7_aimCst.tg[0].tt";
connectAttr "fgr01_5_guide.rp" "fgrRef7_aimCst.tg[0].trp";
connectAttr "fgr01_5_guide.rpt" "fgrRef7_aimCst.tg[0].trt";
connectAttr "fgr01_5_guide.pm" "fgrRef7_aimCst.tg[0].tpm";
connectAttr "fgrRef7_aimCst.w0" "fgrRef7_aimCst.tg[0].tw";
connectAttr "fgr01_4_guide.wm" "fgrRef7_aimCst.wum";
connectAttr "null2.pim" "null2_scaleConstraint1.cpim";
connectAttr "fgr01_2_guide.s" "null2_scaleConstraint1.tg[0].ts";
connectAttr "fgr01_2_guide.pm" "null2_scaleConstraint1.tg[0].tpm";
connectAttr "null2_scaleConstraint1.w0" "null2_scaleConstraint1.tg[0].tw";
connectAttr "null3_scaleConstraint1.csx" "null3.sx";
connectAttr "null3_scaleConstraint1.csy" "null3.sy";
connectAttr "null3_scaleConstraint1.csz" "null3.sz";
connectAttr "fgrRef8_poiCst.ctx" "fgrRef8.tx";
connectAttr "fgrRef8_poiCst.cty" "fgrRef8.ty";
connectAttr "fgrRef8_poiCst.ctz" "fgrRef8.tz";
connectAttr "fgrRef8_aimCst.crx" "fgrRef8.rx";
connectAttr "fgrRef8_aimCst.cry" "fgrRef8.ry";
connectAttr "fgrRef8_aimCst.crz" "fgrRef8.rz";
connectAttr "fgrRef8.pim" "fgrRef8_poiCst.cpim";
connectAttr "fgrRef8.rp" "fgrRef8_poiCst.crp";
connectAttr "fgrRef8.rpt" "fgrRef8_poiCst.crt";
connectAttr "fgr02_1_guide.t" "fgrRef8_poiCst.tg[0].tt";
connectAttr "fgr02_1_guide.rp" "fgrRef8_poiCst.tg[0].trp";
connectAttr "fgr02_1_guide.rpt" "fgrRef8_poiCst.tg[0].trt";
connectAttr "fgr02_1_guide.pm" "fgrRef8_poiCst.tg[0].tpm";
connectAttr "fgrRef8_poiCst.w0" "fgrRef8_poiCst.tg[0].tw";
connectAttr "fgrRef8.pim" "fgrRef8_aimCst.cpim";
connectAttr "fgrRef8.t" "fgrRef8_aimCst.ct";
connectAttr "fgrRef8.rp" "fgrRef8_aimCst.crp";
connectAttr "fgrRef8.rpt" "fgrRef8_aimCst.crt";
connectAttr "fgrRef8.ro" "fgrRef8_aimCst.cro";
connectAttr "fgr02_2_guide.t" "fgrRef8_aimCst.tg[0].tt";
connectAttr "fgr02_2_guide.rp" "fgrRef8_aimCst.tg[0].trp";
connectAttr "fgr02_2_guide.rpt" "fgrRef8_aimCst.tg[0].trt";
connectAttr "fgr02_2_guide.pm" "fgrRef8_aimCst.tg[0].tpm";
connectAttr "fgrRef8_aimCst.w0" "fgrRef8_aimCst.tg[0].tw";
connectAttr "fgr02_1_guide.wm" "fgrRef8_aimCst.wum";
connectAttr "fgrRef9_poiCst.ctx" "fgrRef9.tx";
connectAttr "fgrRef9_poiCst.cty" "fgrRef9.ty";
connectAttr "fgrRef9_poiCst.ctz" "fgrRef9.tz";
connectAttr "fgrRef9_aimCst.crx" "fgrRef9.rx";
connectAttr "fgrRef9_aimCst.cry" "fgrRef9.ry";
connectAttr "fgrRef9_aimCst.crz" "fgrRef9.rz";
connectAttr "fgrRef9.pim" "fgrRef9_poiCst.cpim";
connectAttr "fgrRef9.rp" "fgrRef9_poiCst.crp";
connectAttr "fgrRef9.rpt" "fgrRef9_poiCst.crt";
connectAttr "fgr02_2_guide.t" "fgrRef9_poiCst.tg[0].tt";
connectAttr "fgr02_2_guide.rp" "fgrRef9_poiCst.tg[0].trp";
connectAttr "fgr02_2_guide.rpt" "fgrRef9_poiCst.tg[0].trt";
connectAttr "fgr02_2_guide.pm" "fgrRef9_poiCst.tg[0].tpm";
connectAttr "fgrRef9_poiCst.w0" "fgrRef9_poiCst.tg[0].tw";
connectAttr "fgrRef9.pim" "fgrRef9_aimCst.cpim";
connectAttr "fgrRef9.t" "fgrRef9_aimCst.ct";
connectAttr "fgrRef9.rp" "fgrRef9_aimCst.crp";
connectAttr "fgrRef9.rpt" "fgrRef9_aimCst.crt";
connectAttr "fgrRef9.ro" "fgrRef9_aimCst.cro";
connectAttr "fgr02_3_guide.t" "fgrRef9_aimCst.tg[0].tt";
connectAttr "fgr02_3_guide.rp" "fgrRef9_aimCst.tg[0].trp";
connectAttr "fgr02_3_guide.rpt" "fgrRef9_aimCst.tg[0].trt";
connectAttr "fgr02_3_guide.pm" "fgrRef9_aimCst.tg[0].tpm";
connectAttr "fgrRef9_aimCst.w0" "fgrRef9_aimCst.tg[0].tw";
connectAttr "fgr02_2_guide.wm" "fgrRef9_aimCst.wum";
connectAttr "fgrRef10_poiCst.ctx" "fgrRef10.tx";
connectAttr "fgrRef10_poiCst.cty" "fgrRef10.ty";
connectAttr "fgrRef10_poiCst.ctz" "fgrRef10.tz";
connectAttr "fgrRef10_aimCst.crx" "fgrRef10.rx";
connectAttr "fgrRef10_aimCst.cry" "fgrRef10.ry";
connectAttr "fgrRef10_aimCst.crz" "fgrRef10.rz";
connectAttr "fgrRef10.pim" "fgrRef10_poiCst.cpim";
connectAttr "fgrRef10.rp" "fgrRef10_poiCst.crp";
connectAttr "fgrRef10.rpt" "fgrRef10_poiCst.crt";
connectAttr "fgr02_3_guide.t" "fgrRef10_poiCst.tg[0].tt";
connectAttr "fgr02_3_guide.rp" "fgrRef10_poiCst.tg[0].trp";
connectAttr "fgr02_3_guide.rpt" "fgrRef10_poiCst.tg[0].trt";
connectAttr "fgr02_3_guide.pm" "fgrRef10_poiCst.tg[0].tpm";
connectAttr "fgrRef10_poiCst.w0" "fgrRef10_poiCst.tg[0].tw";
connectAttr "fgrRef10.pim" "fgrRef10_aimCst.cpim";
connectAttr "fgrRef10.t" "fgrRef10_aimCst.ct";
connectAttr "fgrRef10.rp" "fgrRef10_aimCst.crp";
connectAttr "fgrRef10.rpt" "fgrRef10_aimCst.crt";
connectAttr "fgrRef10.ro" "fgrRef10_aimCst.cro";
connectAttr "fgr02_4_guide.t" "fgrRef10_aimCst.tg[0].tt";
connectAttr "fgr02_4_guide.rp" "fgrRef10_aimCst.tg[0].trp";
connectAttr "fgr02_4_guide.rpt" "fgrRef10_aimCst.tg[0].trt";
connectAttr "fgr02_4_guide.pm" "fgrRef10_aimCst.tg[0].tpm";
connectAttr "fgrRef10_aimCst.w0" "fgrRef10_aimCst.tg[0].tw";
connectAttr "fgr02_3_guide.wm" "fgrRef10_aimCst.wum";
connectAttr "fgrRef11_poiCst.ctx" "fgrRef11.tx";
connectAttr "fgrRef11_poiCst.cty" "fgrRef11.ty";
connectAttr "fgrRef11_poiCst.ctz" "fgrRef11.tz";
connectAttr "fgrRef11_aimCst.crx" "fgrRef11.rx";
connectAttr "fgrRef11_aimCst.cry" "fgrRef11.ry";
connectAttr "fgrRef11_aimCst.crz" "fgrRef11.rz";
connectAttr "fgrRef11.pim" "fgrRef11_poiCst.cpim";
connectAttr "fgrRef11.rp" "fgrRef11_poiCst.crp";
connectAttr "fgrRef11.rpt" "fgrRef11_poiCst.crt";
connectAttr "fgr02_4_guide.t" "fgrRef11_poiCst.tg[0].tt";
connectAttr "fgr02_4_guide.rp" "fgrRef11_poiCst.tg[0].trp";
connectAttr "fgr02_4_guide.rpt" "fgrRef11_poiCst.tg[0].trt";
connectAttr "fgr02_4_guide.pm" "fgrRef11_poiCst.tg[0].tpm";
connectAttr "fgrRef11_poiCst.w0" "fgrRef11_poiCst.tg[0].tw";
connectAttr "fgrRef11.pim" "fgrRef11_aimCst.cpim";
connectAttr "fgrRef11.t" "fgrRef11_aimCst.ct";
connectAttr "fgrRef11.rp" "fgrRef11_aimCst.crp";
connectAttr "fgrRef11.rpt" "fgrRef11_aimCst.crt";
connectAttr "fgrRef11.ro" "fgrRef11_aimCst.cro";
connectAttr "fgr02_5_guide.t" "fgrRef11_aimCst.tg[0].tt";
connectAttr "fgr02_5_guide.rp" "fgrRef11_aimCst.tg[0].trp";
connectAttr "fgr02_5_guide.rpt" "fgrRef11_aimCst.tg[0].trt";
connectAttr "fgr02_5_guide.pm" "fgrRef11_aimCst.tg[0].tpm";
connectAttr "fgrRef11_aimCst.w0" "fgrRef11_aimCst.tg[0].tw";
connectAttr "fgr02_4_guide.wm" "fgrRef11_aimCst.wum";
connectAttr "null3.pim" "null3_scaleConstraint1.cpim";
connectAttr "fgr02_2_guide.s" "null3_scaleConstraint1.tg[0].ts";
connectAttr "fgr02_2_guide.pm" "null3_scaleConstraint1.tg[0].tpm";
connectAttr "null3_scaleConstraint1.w0" "null3_scaleConstraint1.tg[0].tw";
connectAttr "null4_scaleConstraint1.csx" "null4.sx";
connectAttr "null4_scaleConstraint1.csy" "null4.sy";
connectAttr "null4_scaleConstraint1.csz" "null4.sz";
connectAttr "fgrRef12_poiCst.ctx" "fgrRef12.tx";
connectAttr "fgrRef12_poiCst.cty" "fgrRef12.ty";
connectAttr "fgrRef12_poiCst.ctz" "fgrRef12.tz";
connectAttr "fgrRef12_aimCst.crx" "fgrRef12.rx";
connectAttr "fgrRef12_aimCst.cry" "fgrRef12.ry";
connectAttr "fgrRef12_aimCst.crz" "fgrRef12.rz";
connectAttr "fgrRef12.pim" "fgrRef12_poiCst.cpim";
connectAttr "fgrRef12.rp" "fgrRef12_poiCst.crp";
connectAttr "fgrRef12.rpt" "fgrRef12_poiCst.crt";
connectAttr "fgr03_1_guide.t" "fgrRef12_poiCst.tg[0].tt";
connectAttr "fgr03_1_guide.rp" "fgrRef12_poiCst.tg[0].trp";
connectAttr "fgr03_1_guide.rpt" "fgrRef12_poiCst.tg[0].trt";
connectAttr "fgr03_1_guide.pm" "fgrRef12_poiCst.tg[0].tpm";
connectAttr "fgrRef12_poiCst.w0" "fgrRef12_poiCst.tg[0].tw";
connectAttr "fgrRef12.pim" "fgrRef12_aimCst.cpim";
connectAttr "fgrRef12.t" "fgrRef12_aimCst.ct";
connectAttr "fgrRef12.rp" "fgrRef12_aimCst.crp";
connectAttr "fgrRef12.rpt" "fgrRef12_aimCst.crt";
connectAttr "fgrRef12.ro" "fgrRef12_aimCst.cro";
connectAttr "fgr03_2_guide.t" "fgrRef12_aimCst.tg[0].tt";
connectAttr "fgr03_2_guide.rp" "fgrRef12_aimCst.tg[0].trp";
connectAttr "fgr03_2_guide.rpt" "fgrRef12_aimCst.tg[0].trt";
connectAttr "fgr03_2_guide.pm" "fgrRef12_aimCst.tg[0].tpm";
connectAttr "fgrRef12_aimCst.w0" "fgrRef12_aimCst.tg[0].tw";
connectAttr "fgr03_1_guide.wm" "fgrRef12_aimCst.wum";
connectAttr "fgrRef13_poiCst.ctx" "fgrRef13.tx";
connectAttr "fgrRef13_poiCst.cty" "fgrRef13.ty";
connectAttr "fgrRef13_poiCst.ctz" "fgrRef13.tz";
connectAttr "fgrRef13_aimCst.crx" "fgrRef13.rx";
connectAttr "fgrRef13_aimCst.cry" "fgrRef13.ry";
connectAttr "fgrRef13_aimCst.crz" "fgrRef13.rz";
connectAttr "fgrRef13.pim" "fgrRef13_poiCst.cpim";
connectAttr "fgrRef13.rp" "fgrRef13_poiCst.crp";
connectAttr "fgrRef13.rpt" "fgrRef13_poiCst.crt";
connectAttr "fgr03_2_guide.t" "fgrRef13_poiCst.tg[0].tt";
connectAttr "fgr03_2_guide.rp" "fgrRef13_poiCst.tg[0].trp";
connectAttr "fgr03_2_guide.rpt" "fgrRef13_poiCst.tg[0].trt";
connectAttr "fgr03_2_guide.pm" "fgrRef13_poiCst.tg[0].tpm";
connectAttr "fgrRef13_poiCst.w0" "fgrRef13_poiCst.tg[0].tw";
connectAttr "fgrRef13.pim" "fgrRef13_aimCst.cpim";
connectAttr "fgrRef13.t" "fgrRef13_aimCst.ct";
connectAttr "fgrRef13.rp" "fgrRef13_aimCst.crp";
connectAttr "fgrRef13.rpt" "fgrRef13_aimCst.crt";
connectAttr "fgrRef13.ro" "fgrRef13_aimCst.cro";
connectAttr "fgr03_3_guide.t" "fgrRef13_aimCst.tg[0].tt";
connectAttr "fgr03_3_guide.rp" "fgrRef13_aimCst.tg[0].trp";
connectAttr "fgr03_3_guide.rpt" "fgrRef13_aimCst.tg[0].trt";
connectAttr "fgr03_3_guide.pm" "fgrRef13_aimCst.tg[0].tpm";
connectAttr "fgrRef13_aimCst.w0" "fgrRef13_aimCst.tg[0].tw";
connectAttr "fgr03_2_guide.wm" "fgrRef13_aimCst.wum";
connectAttr "fgrRef14_poiCst.ctx" "fgrRef14.tx";
connectAttr "fgrRef14_poiCst.cty" "fgrRef14.ty";
connectAttr "fgrRef14_poiCst.ctz" "fgrRef14.tz";
connectAttr "fgrRef14_aimCst.crx" "fgrRef14.rx";
connectAttr "fgrRef14_aimCst.cry" "fgrRef14.ry";
connectAttr "fgrRef14_aimCst.crz" "fgrRef14.rz";
connectAttr "fgrRef14.pim" "fgrRef14_poiCst.cpim";
connectAttr "fgrRef14.rp" "fgrRef14_poiCst.crp";
connectAttr "fgrRef14.rpt" "fgrRef14_poiCst.crt";
connectAttr "fgr03_3_guide.t" "fgrRef14_poiCst.tg[0].tt";
connectAttr "fgr03_3_guide.rp" "fgrRef14_poiCst.tg[0].trp";
connectAttr "fgr03_3_guide.rpt" "fgrRef14_poiCst.tg[0].trt";
connectAttr "fgr03_3_guide.pm" "fgrRef14_poiCst.tg[0].tpm";
connectAttr "fgrRef14_poiCst.w0" "fgrRef14_poiCst.tg[0].tw";
connectAttr "fgrRef14.pim" "fgrRef14_aimCst.cpim";
connectAttr "fgrRef14.t" "fgrRef14_aimCst.ct";
connectAttr "fgrRef14.rp" "fgrRef14_aimCst.crp";
connectAttr "fgrRef14.rpt" "fgrRef14_aimCst.crt";
connectAttr "fgrRef14.ro" "fgrRef14_aimCst.cro";
connectAttr "fgr03_4_guide.t" "fgrRef14_aimCst.tg[0].tt";
connectAttr "fgr03_4_guide.rp" "fgrRef14_aimCst.tg[0].trp";
connectAttr "fgr03_4_guide.rpt" "fgrRef14_aimCst.tg[0].trt";
connectAttr "fgr03_4_guide.pm" "fgrRef14_aimCst.tg[0].tpm";
connectAttr "fgrRef14_aimCst.w0" "fgrRef14_aimCst.tg[0].tw";
connectAttr "fgr03_3_guide.wm" "fgrRef14_aimCst.wum";
connectAttr "fgrRef15_poiCst.ctx" "fgrRef15.tx";
connectAttr "fgrRef15_poiCst.cty" "fgrRef15.ty";
connectAttr "fgrRef15_poiCst.ctz" "fgrRef15.tz";
connectAttr "fgrRef15_aimCst.crx" "fgrRef15.rx";
connectAttr "fgrRef15_aimCst.cry" "fgrRef15.ry";
connectAttr "fgrRef15_aimCst.crz" "fgrRef15.rz";
connectAttr "fgrRef15.pim" "fgrRef15_poiCst.cpim";
connectAttr "fgrRef15.rp" "fgrRef15_poiCst.crp";
connectAttr "fgrRef15.rpt" "fgrRef15_poiCst.crt";
connectAttr "fgr03_4_guide.t" "fgrRef15_poiCst.tg[0].tt";
connectAttr "fgr03_4_guide.rp" "fgrRef15_poiCst.tg[0].trp";
connectAttr "fgr03_4_guide.rpt" "fgrRef15_poiCst.tg[0].trt";
connectAttr "fgr03_4_guide.pm" "fgrRef15_poiCst.tg[0].tpm";
connectAttr "fgrRef15_poiCst.w0" "fgrRef15_poiCst.tg[0].tw";
connectAttr "fgrRef15.pim" "fgrRef15_aimCst.cpim";
connectAttr "fgrRef15.t" "fgrRef15_aimCst.ct";
connectAttr "fgrRef15.rp" "fgrRef15_aimCst.crp";
connectAttr "fgrRef15.rpt" "fgrRef15_aimCst.crt";
connectAttr "fgrRef15.ro" "fgrRef15_aimCst.cro";
connectAttr "fgr03_5_guide.t" "fgrRef15_aimCst.tg[0].tt";
connectAttr "fgr03_5_guide.rp" "fgrRef15_aimCst.tg[0].trp";
connectAttr "fgr03_5_guide.rpt" "fgrRef15_aimCst.tg[0].trt";
connectAttr "fgr03_5_guide.pm" "fgrRef15_aimCst.tg[0].tpm";
connectAttr "fgrRef15_aimCst.w0" "fgrRef15_aimCst.tg[0].tw";
connectAttr "fgr03_4_guide.wm" "fgrRef15_aimCst.wum";
connectAttr "null4.pim" "null4_scaleConstraint1.cpim";
connectAttr "fgr03_2_guide.s" "null4_scaleConstraint1.tg[0].ts";
connectAttr "fgr03_2_guide.pm" "null4_scaleConstraint1.tg[0].tpm";
connectAttr "null4_scaleConstraint1.w0" "null4_scaleConstraint1.tg[0].tw";
connectAttr "null5_scaleConstraint1.csx" "null5.sx";
connectAttr "null5_scaleConstraint1.csy" "null5.sy";
connectAttr "null5_scaleConstraint1.csz" "null5.sz";
connectAttr "fgrRef16_poiCst.ctx" "fgrRef16.tx";
connectAttr "fgrRef16_poiCst.cty" "fgrRef16.ty";
connectAttr "fgrRef16_poiCst.ctz" "fgrRef16.tz";
connectAttr "fgrRef16_aimCst.crx" "fgrRef16.rx";
connectAttr "fgrRef16_aimCst.cry" "fgrRef16.ry";
connectAttr "fgrRef16_aimCst.crz" "fgrRef16.rz";
connectAttr "fgrRef16.pim" "fgrRef16_poiCst.cpim";
connectAttr "fgrRef16.rp" "fgrRef16_poiCst.crp";
connectAttr "fgrRef16.rpt" "fgrRef16_poiCst.crt";
connectAttr "fgr04_1_guide.t" "fgrRef16_poiCst.tg[0].tt";
connectAttr "fgr04_1_guide.rp" "fgrRef16_poiCst.tg[0].trp";
connectAttr "fgr04_1_guide.rpt" "fgrRef16_poiCst.tg[0].trt";
connectAttr "fgr04_1_guide.pm" "fgrRef16_poiCst.tg[0].tpm";
connectAttr "fgrRef16_poiCst.w0" "fgrRef16_poiCst.tg[0].tw";
connectAttr "fgrRef16.pim" "fgrRef16_aimCst.cpim";
connectAttr "fgrRef16.t" "fgrRef16_aimCst.ct";
connectAttr "fgrRef16.rp" "fgrRef16_aimCst.crp";
connectAttr "fgrRef16.rpt" "fgrRef16_aimCst.crt";
connectAttr "fgrRef16.ro" "fgrRef16_aimCst.cro";
connectAttr "fgr04_2_guide.t" "fgrRef16_aimCst.tg[0].tt";
connectAttr "fgr04_2_guide.rp" "fgrRef16_aimCst.tg[0].trp";
connectAttr "fgr04_2_guide.rpt" "fgrRef16_aimCst.tg[0].trt";
connectAttr "fgr04_2_guide.pm" "fgrRef16_aimCst.tg[0].tpm";
connectAttr "fgrRef16_aimCst.w0" "fgrRef16_aimCst.tg[0].tw";
connectAttr "fgr04_1_guide.wm" "fgrRef16_aimCst.wum";
connectAttr "fgrRef17_poiCst.ctx" "fgrRef17.tx";
connectAttr "fgrRef17_poiCst.cty" "fgrRef17.ty";
connectAttr "fgrRef17_poiCst.ctz" "fgrRef17.tz";
connectAttr "fgrRef17_aimCst.crx" "fgrRef17.rx";
connectAttr "fgrRef17_aimCst.cry" "fgrRef17.ry";
connectAttr "fgrRef17_aimCst.crz" "fgrRef17.rz";
connectAttr "fgrRef17.pim" "fgrRef17_poiCst.cpim";
connectAttr "fgrRef17.rp" "fgrRef17_poiCst.crp";
connectAttr "fgrRef17.rpt" "fgrRef17_poiCst.crt";
connectAttr "fgr04_2_guide.t" "fgrRef17_poiCst.tg[0].tt";
connectAttr "fgr04_2_guide.rp" "fgrRef17_poiCst.tg[0].trp";
connectAttr "fgr04_2_guide.rpt" "fgrRef17_poiCst.tg[0].trt";
connectAttr "fgr04_2_guide.pm" "fgrRef17_poiCst.tg[0].tpm";
connectAttr "fgrRef17_poiCst.w0" "fgrRef17_poiCst.tg[0].tw";
connectAttr "fgrRef17.pim" "fgrRef17_aimCst.cpim";
connectAttr "fgrRef17.t" "fgrRef17_aimCst.ct";
connectAttr "fgrRef17.rp" "fgrRef17_aimCst.crp";
connectAttr "fgrRef17.rpt" "fgrRef17_aimCst.crt";
connectAttr "fgrRef17.ro" "fgrRef17_aimCst.cro";
connectAttr "fgr04_3_guide.t" "fgrRef17_aimCst.tg[0].tt";
connectAttr "fgr04_3_guide.rp" "fgrRef17_aimCst.tg[0].trp";
connectAttr "fgr04_3_guide.rpt" "fgrRef17_aimCst.tg[0].trt";
connectAttr "fgr04_3_guide.pm" "fgrRef17_aimCst.tg[0].tpm";
connectAttr "fgrRef17_aimCst.w0" "fgrRef17_aimCst.tg[0].tw";
connectAttr "fgr04_2_guide.wm" "fgrRef17_aimCst.wum";
connectAttr "fgrRef18_poiCst.ctx" "fgrRef18.tx";
connectAttr "fgrRef18_poiCst.cty" "fgrRef18.ty";
connectAttr "fgrRef18_poiCst.ctz" "fgrRef18.tz";
connectAttr "fgrRef18_aimCst.crx" "fgrRef18.rx";
connectAttr "fgrRef18_aimCst.cry" "fgrRef18.ry";
connectAttr "fgrRef18_aimCst.crz" "fgrRef18.rz";
connectAttr "fgrRef18.pim" "fgrRef18_poiCst.cpim";
connectAttr "fgrRef18.rp" "fgrRef18_poiCst.crp";
connectAttr "fgrRef18.rpt" "fgrRef18_poiCst.crt";
connectAttr "fgr04_3_guide.t" "fgrRef18_poiCst.tg[0].tt";
connectAttr "fgr04_3_guide.rp" "fgrRef18_poiCst.tg[0].trp";
connectAttr "fgr04_3_guide.rpt" "fgrRef18_poiCst.tg[0].trt";
connectAttr "fgr04_3_guide.pm" "fgrRef18_poiCst.tg[0].tpm";
connectAttr "fgrRef18_poiCst.w0" "fgrRef18_poiCst.tg[0].tw";
connectAttr "fgrRef18.pim" "fgrRef18_aimCst.cpim";
connectAttr "fgrRef18.t" "fgrRef18_aimCst.ct";
connectAttr "fgrRef18.rp" "fgrRef18_aimCst.crp";
connectAttr "fgrRef18.rpt" "fgrRef18_aimCst.crt";
connectAttr "fgrRef18.ro" "fgrRef18_aimCst.cro";
connectAttr "fgr04_4_guide.t" "fgrRef18_aimCst.tg[0].tt";
connectAttr "fgr04_4_guide.rp" "fgrRef18_aimCst.tg[0].trp";
connectAttr "fgr04_4_guide.rpt" "fgrRef18_aimCst.tg[0].trt";
connectAttr "fgr04_4_guide.pm" "fgrRef18_aimCst.tg[0].tpm";
connectAttr "fgrRef18_aimCst.w0" "fgrRef18_aimCst.tg[0].tw";
connectAttr "fgr04_3_guide.wm" "fgrRef18_aimCst.wum";
connectAttr "fgrRef19_poiCst.ctx" "fgrRef19.tx";
connectAttr "fgrRef19_poiCst.cty" "fgrRef19.ty";
connectAttr "fgrRef19_poiCst.ctz" "fgrRef19.tz";
connectAttr "fgrRef19_aimCst.crx" "fgrRef19.rx";
connectAttr "fgrRef19_aimCst.cry" "fgrRef19.ry";
connectAttr "fgrRef19_aimCst.crz" "fgrRef19.rz";
connectAttr "fgrRef19.pim" "fgrRef19_poiCst.cpim";
connectAttr "fgrRef19.rp" "fgrRef19_poiCst.crp";
connectAttr "fgrRef19.rpt" "fgrRef19_poiCst.crt";
connectAttr "fgr04_4_guide.t" "fgrRef19_poiCst.tg[0].tt";
connectAttr "fgr04_4_guide.rp" "fgrRef19_poiCst.tg[0].trp";
connectAttr "fgr04_4_guide.rpt" "fgrRef19_poiCst.tg[0].trt";
connectAttr "fgr04_4_guide.pm" "fgrRef19_poiCst.tg[0].tpm";
connectAttr "fgrRef19_poiCst.w0" "fgrRef19_poiCst.tg[0].tw";
connectAttr "fgrRef19.pim" "fgrRef19_aimCst.cpim";
connectAttr "fgrRef19.t" "fgrRef19_aimCst.ct";
connectAttr "fgrRef19.rp" "fgrRef19_aimCst.crp";
connectAttr "fgrRef19.rpt" "fgrRef19_aimCst.crt";
connectAttr "fgrRef19.ro" "fgrRef19_aimCst.cro";
connectAttr "fgr04_5_guide.t" "fgrRef19_aimCst.tg[0].tt";
connectAttr "fgr04_5_guide.rp" "fgrRef19_aimCst.tg[0].trp";
connectAttr "fgr04_5_guide.rpt" "fgrRef19_aimCst.tg[0].trt";
connectAttr "fgr04_5_guide.pm" "fgrRef19_aimCst.tg[0].tpm";
connectAttr "fgrRef19_aimCst.w0" "fgrRef19_aimCst.tg[0].tw";
connectAttr "fgr04_4_guide.wm" "fgrRef19_aimCst.wum";
connectAttr "null5.pim" "null5_scaleConstraint1.cpim";
connectAttr "fgr04_2_guide.s" "null5_scaleConstraint1.tg[0].ts";
connectAttr "fgr04_2_guide.pm" "null5_scaleConstraint1.tg[0].tpm";
connectAttr "null5_scaleConstraint1.w0" "null5_scaleConstraint1.tg[0].tw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
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
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "|master_guide|fgrRef_grp|null1|fgrRef1|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|master_guide|fgrRef_grp|null1|fgrRef2|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|master_guide|fgrRef_grp|null1|fgrRef3|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|master_guide|fgrRef_grp|null2|fgrRef4|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|master_guide|fgrRef_grp|null2|fgrRef5|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|master_guide|fgrRef_grp|null2|fgrRef6|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|master_guide|fgrRef_grp|null2|fgrRef7|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|master_guide|fgrRef_grp|null3|fgrRef8|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|master_guide|fgrRef_grp|null3|fgrRef9|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|master_guide|fgrRef_grp|null3|fgrRef10|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|master_guide|fgrRef_grp|null3|fgrRef11|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|master_guide|fgrRef_grp|null4|fgrRef12|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|master_guide|fgrRef_grp|null4|fgrRef13|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|master_guide|fgrRef_grp|null4|fgrRef14|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|master_guide|fgrRef_grp|null4|fgrRef15|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|master_guide|fgrRef_grp|null5|fgrRef16|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|master_guide|fgrRef_grp|null5|fgrRef17|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|master_guide|fgrRef_grp|null5|fgrRef18|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|master_guide|fgrRef_grp|null5|fgrRef19|fgrRefShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of lfHandBp.ma
