//Maya ASCII 2023 scene
//Name: lion_prx2.ma
//Last modified: Wed, Jun 18, 2025 04:09:00 PM
//Codeset: 1252
requires maya "2023";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 26100)";
fileInfo "UUID" "C2C97415-4409-4656-0A58-1B8664150A21";
createNode transform -n "CHR";
	rename -uid "AA7592B6-4CFD-25AC-A849-15BCE47191A6";
	setAttr -cb on ".ro";
createNode transform -n "MDL" -p "CHR";
	rename -uid "35F0A71C-4854-6D48-2A81-8AAC96C92E7B";
	setAttr -cb on ".ro";
createNode transform -n "PRX" -p "MDL";
	rename -uid "A576D8F4-4A38-D745-2729-6C9A235EC79E";
	setAttr ".ove" yes;
	setAttr -cb on ".ro";
createNode transform -n "rtLegQd1_PRX" -p "PRX";
	rename -uid "095D69CA-4513-16A2-244E-539481DA73D0";
createNode transform -n "rtLegQd1_toe02_1_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "3A905270-4809-86F1-4750-13832A502447";
	setAttr ".t" -type "double3" -10.722512418641914 8.983946701823541 59.040629297629501 ;
	setAttr ".r" -type "double3" -196.18597995705645 -8.8754169069631246 -87.435811667677541 ;
createNode transform -n "rtLegQd1_toe02_1_pxGeo" -p "rtLegQd1_toe02_1_pxGeo_ofs";
	rename -uid "E5CA58D3-4277-D8F6-248D-5991B68B797C";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 0 0 ;
createNode mesh -n "rtLegQd1_toe02_1_pxGeoShape" -p "rtLegQd1_toe02_1_pxGeo";
	rename -uid "184A4213-45BA-B465-4C88-FD8E39839DE3";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -3.68135905 -0.8895309 -0.8895309 -3.68135905 0 -1.25798666
		 -3.68135905 0.8895309 -0.8895309 -3.68135905 1.25798666 0 -3.68135905 0.8895309 0.8895309
		 -3.68135905 0 1.25798666 -3.68135905 -0.88953096 0.88953096 -3.68135905 -1.25798678 0
		 0 -0.8895309 -0.8895309 0 0 -1.25798666 0 0.8895309 -0.8895309 0 1.25798666 0 0 0.8895309 0.8895309
		 0 0 1.25798666 0 -0.88953096 0.88953096 0 -1.25798678 0 3.68135905 -0.8895309 -0.8895309
		 3.68135905 0 -1.25798666 3.68135905 0.8895309 -0.8895309 3.68135905 1.25798666 0
		 3.68135905 0.8895309 0.8895309 3.68135905 0 1.25798666 3.68135905 -0.88953096 0.88953096
		 3.68135905 -1.25798678 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd1_toe01_3_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "C409471B-4369-BA72-C8D9-999FDC10EF83";
	setAttr ".t" -type "double3" -8.3876014669179497 3.6153991376237351 66.064229197493873 ;
	setAttr ".r" -type "double3" -175.51653560063417 -13.006053633860379 -91.010981222137062 ;
createNode transform -n "rtLegQd1_toe01_3_pxGeo" -p "rtLegQd1_toe01_3_pxGeo_ofs";
	rename -uid "BC74EBE6-4DFE-1403-8056-C1B6C6EAB6A0";
	setAttr ".t" -type "double3" 0 4.4408920985006262e-16 -1.4210854715202004e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode mesh -n "rtLegQd1_toe01_3_pxGeoShape" -p "rtLegQd1_toe01_3_pxGeo";
	rename -uid "C9FCFC0D-4543-9A5F-1EA6-D598AF4B86A5";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.79480827 -0.84591752 -0.84591752 -1.79480827 0 -1.19630802
		 -1.79480827 0.84591752 -0.84591752 -1.79480827 1.19630802 0 -1.79480827 0.84591752 0.84591752
		 -1.79480827 0 1.19630802 -1.79480827 -0.84591758 0.84591758 -1.79480827 -1.19630814 0
		 0 -0.84591752 -0.84591752 0 0 -1.19630802 0 0.84591752 -0.84591752 0 1.19630802 0
		 0 0.84591752 0.84591752 0 0 1.19630802 0 -0.84591758 0.84591758 0 -1.19630814 0 1.79480827 -0.84591752 -0.84591752
		 1.79480827 0 -1.19630802 1.79480827 0.84591752 -0.84591752 1.79480827 1.19630802 0
		 1.79480827 0.84591752 0.84591752 1.79480827 0 1.19630802 1.79480827 -0.84591758 0.84591758
		 1.79480827 -1.19630814 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd1_toe01_4_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "9F994A24-481B-4848-D886-BAA16F1EB93B";
	setAttr ".t" -type "double3" -8.9419765222426868 1.6726296503978904 68.128177523543471 ;
	setAttr ".r" -type "double3" 90.000000000000568 -107.84909867186047 -2.2899993706537323e-13 ;
createNode transform -n "rtLegQd1_toe01_4_pxGeo" -p "rtLegQd1_toe01_4_pxGeo_ofs";
	rename -uid "54910703-43AB-89A4-658C-0999B863D18A";
	setAttr ".t" -type "double3" 0 0 -4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode mesh -n "rtLegQd1_toe01_4_pxGeoShape" -p "rtLegQd1_toe01_4_pxGeo";
	rename -uid "7DC39A1B-44C6-D735-19E2-6E8F668719DD";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.52712989 -0.84591752 -0.84591752 -1.52712989 0 -1.19630802
		 -1.52712989 0.84591752 -0.84591752 -1.52712989 1.19630802 0 -1.52712989 0.84591752 0.84591752
		 -1.52712989 0 1.19630802 -1.52712989 -0.84591758 0.84591758 -1.52712989 -1.19630814 0
		 0 -0.84591752 -0.84591752 0 0 -1.19630802 0 0.84591752 -0.84591752 0 1.19630802 0
		 0 0.84591752 0.84591752 0 0 1.19630802 0 -0.84591758 0.84591758 0 -1.19630814 0 1.52712989 -0.84591752 -0.84591752
		 1.52712989 0 -1.19630802 1.52712989 0.84591752 -0.84591752 1.52712989 1.19630802 0
		 1.52712989 0.84591752 0.84591752 1.52712989 0 1.19630802 1.52712989 -0.84591758 0.84591758
		 1.52712989 -1.19630814 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd1_toe02_3_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "E6B2C6B5-47E5-2AA0-F1B5-DFACA2318F0C";
	setAttr ".t" -type "double3" -12.395556968675683 4.2292901495483752 66.935221973995809 ;
	setAttr ".r" -type "double3" -176.94477091739861 -18.212934903862863 -90.955727386554457 ;
createNode transform -n "rtLegQd1_toe02_3_pxGeo" -p "rtLegQd1_toe02_3_pxGeo_ofs";
	rename -uid "0A5FF117-4E62-589A-E2E2-3BA76931943F";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode mesh -n "rtLegQd1_toe02_3_pxGeoShape" -p "rtLegQd1_toe02_3_pxGeo";
	rename -uid "4F512868-48AE-EB53-7578-ED857D535368";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.95392215 -0.8895309 -0.8895309 -1.95392215 0 -1.25798666
		 -1.95392215 0.8895309 -0.8895309 -1.95392215 1.25798666 0 -1.95392215 0.8895309 0.8895309
		 -1.95392215 0 1.25798666 -1.95392215 -0.88953096 0.88953096 -1.95392215 -1.25798678 0
		 0 -0.8895309 -0.8895309 0 0 -1.25798666 0 0.8895309 -0.8895309 0 1.25798666 0 0 0.8895309 0.8895309
		 0 0 1.25798666 0 -0.88953096 0.88953096 0 -1.25798678 0 1.95392215 -0.8895309 -0.8895309
		 1.95392215 0 -1.25798666 1.95392215 0.8895309 -0.8895309 1.95392215 1.25798666 0
		 1.95392215 0.8895309 0.8895309 1.95392215 0 1.25798666 1.95392215 -0.88953096 0.88953096
		 1.95392215 -1.25798678 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd1_toe02_2_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "88B5C64C-48AC-0D11-8DDE-ADBF86A5D9F8";
	setAttr ".t" -type "double3" -11.451431895295199 5.6189175044887305 62.964196071140826 ;
	setAttr ".r" -type "double3" 124.9519710704042 -108.9615208558494 -36.466727111408701 ;
createNode transform -n "rtLegQd1_toe02_2_pxGeo" -p "rtLegQd1_toe02_2_pxGeo_ofs";
	rename -uid "E2015619-4EE2-4A3A-CCF7-199DDCD29C42";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 2.6645352591003757e-15 8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
createNode mesh -n "rtLegQd1_toe02_2_pxGeoShape" -p "rtLegQd1_toe02_2_pxGeo";
	rename -uid "7593EBC5-4077-61C3-2523-FE8C83EE515A";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -3.13324547 -0.8895309 -0.8895309 -3.13324547 0 -1.25798666
		 -3.13324547 0.8895309 -0.8895309 -3.13324547 1.25798666 0 -3.13324547 0.8895309 0.8895309
		 -3.13324547 0 1.25798666 -3.13324547 -0.88953096 0.88953096 -3.13324547 -1.25798678 0
		 0 -0.8895309 -0.8895309 0 0 -1.25798666 0 0.8895309 -0.8895309 0 1.25798666 0 0 0.8895309 0.8895309
		 0 0 1.25798666 0 -0.88953096 0.88953096 0 -1.25798678 0 3.13324547 -0.8895309 -0.8895309
		 3.13324547 0 -1.25798666 3.13324547 0.8895309 -0.8895309 3.13324547 1.25798666 0
		 3.13324547 0.8895309 0.8895309 3.13324547 0 1.25798666 3.13324547 -0.88953096 0.88953096
		 3.13324547 -1.25798678 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd1_toe03_2_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "CE151568-48B6-A402-2DD1-E2BF80DBCF5F";
	setAttr ".t" -type "double3" -14.756498334452104 5.5459854723999573 61.656058830518454 ;
	setAttr ".r" -type "double3" 123.14160942404931 -115.53306414224762 -35.889344535621191 ;
createNode transform -n "rtLegQd1_toe03_2_pxGeo" -p "rtLegQd1_toe03_2_pxGeo_ofs";
	rename -uid "ED9B7CB9-4D2D-4AED-6381-F097480893BA";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 3.5527136788005009e-15 -1.7763568394002505e-15 ;
createNode mesh -n "rtLegQd1_toe03_2_pxGeoShape" -p "rtLegQd1_toe03_2_pxGeo";
	rename -uid "153126E4-43F3-5B20-CAC1-2CBF103FEC6F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -2.82946181 -0.8623994 -0.8623994 -2.82946181 0 -1.21961689
		 -2.82946181 0.8623994 -0.8623994 -2.82946181 1.21961689 0 -2.82946181 0.8623994 0.8623994
		 -2.82946181 0 1.21961689 -2.82946181 -0.86239946 0.86239946 -2.82946181 -1.21961701 0
		 0 -0.8623994 -0.8623994 0 0 -1.21961689 0 0.8623994 -0.8623994 0 1.21961689 0 0 0.8623994 0.8623994
		 0 0 1.21961689 0 -0.86239946 0.86239946 0 -1.21961701 0 2.82946181 -0.8623994 -0.8623994
		 2.82946181 0 -1.21961689 2.82946181 0.8623994 -0.8623994 2.82946181 1.21961689 0
		 2.82946181 0.8623994 0.8623994 2.82946181 0 1.21961689 2.82946181 -0.86239946 0.86239946
		 2.82946181 -1.21961701 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd1_toe02_4_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "7AEF63DE-4647-C0D3-59CF-9AB1463E4207";
	setAttr ".t" -type "double3" -12.709544169883657 2.1673174656710432 69.287392487386697 ;
	setAttr ".r" -type "double3" 90.000000000001847 -99.484063084935599 -8.9055531080978467e-13 ;
createNode transform -n "rtLegQd1_toe02_4_pxGeo" -p "rtLegQd1_toe02_4_pxGeo_ofs";
	rename -uid "33F72EFF-4C3A-30C1-9368-D28F244AEB09";
	setAttr ".t" -type "double3" 0 -2.2204460492503131e-16 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode mesh -n "rtLegQd1_toe02_4_pxGeoShape" -p "rtLegQd1_toe02_4_pxGeo";
	rename -uid "A40989C7-4EE5-903C-8051-8C940F9A2642";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.52712989 -0.8895309 -0.8895309 -1.52712989 0 -1.25798666
		 -1.52712989 0.8895309 -0.8895309 -1.52712989 1.25798666 0 -1.52712989 0.8895309 0.8895309
		 -1.52712989 0 1.25798666 -1.52712989 -0.88953096 0.88953096 -1.52712989 -1.25798678 0
		 0 -0.8895309 -0.8895309 0 0 -1.25798666 0 0.8895309 -0.8895309 0 1.25798666 0 0 0.8895309 0.8895309
		 0 0 1.25798666 0 -0.88953096 0.88953096 0 -1.25798678 0 1.52712989 -0.8895309 -0.8895309
		 1.52712989 0 -1.25798666 1.52712989 0.8895309 -0.8895309 1.52712989 1.25798666 0
		 1.52712989 0.8895309 0.8895309 1.52712989 0 1.25798666 1.52712989 -0.88953096 0.88953096
		 1.52712989 -1.25798678 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd1_toe03_1_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "8C729037-4774-8379-BC87-88BF5E93F0DE";
	setAttr ".t" -type "double3" -13.182690777490402 8.8993315680400684 58.282335310104223 ;
	setAttr ".r" -type "double3" 221.9765616357995 -7.3282364304010219 -96.546351387202321 ;
createNode transform -n "rtLegQd1_toe03_1_pxGeo" -p "rtLegQd1_toe03_1_pxGeo_ofs";
	rename -uid "CCAF80E9-4F47-FE48-4737-6AB769B38E1F";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 3.5527136788005009e-15 -7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode mesh -n "rtLegQd1_toe03_1_pxGeoShape" -p "rtLegQd1_toe03_1_pxGeo";
	rename -uid "7A539BA8-4D15-93B5-CA27-718581BC17B0";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -3.78840423 -0.8623994 -0.8623994 -3.78840423 0 -1.21961689
		 -3.78840423 0.8623994 -0.8623994 -3.78840423 1.21961689 0 -3.78840423 0.8623994 0.8623994
		 -3.78840423 0 1.21961689 -3.78840423 -0.86239946 0.86239946 -3.78840423 -1.21961701 0
		 0 -0.8623994 -0.8623994 0 0 -1.21961689 0 0.8623994 -0.8623994 0 1.21961689 0 0 0.8623994 0.8623994
		 0 0 1.21961689 0 -0.86239946 0.86239946 0 -1.21961701 0 3.78840423 -0.8623994 -0.8623994
		 3.78840423 0 -1.21961689 3.78840423 0.8623994 -0.8623994 3.78840423 1.21961689 0
		 3.78840423 0.8623994 0.8623994 3.78840423 0 1.21961689 3.78840423 -0.86239946 0.86239946
		 3.78840423 -1.21961701 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd1_toe04_2_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "48C639E1-4980-20B7-E74D-2596C271F966";
	setAttr ".t" -type "double3" -16.730485540208033 4.9182684767876275 58.97393695909409 ;
	setAttr ".r" -type "double3" 95.277695840778222 -131.9091392313932 -7.0756584389879933 ;
createNode transform -n "rtLegQd1_toe04_2_pxGeo" -p "rtLegQd1_toe04_2_pxGeo_ofs";
	rename -uid "4A1269EF-44CB-4B3E-4E6F-ABAE3D475B0D";
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode mesh -n "rtLegQd1_toe04_2_pxGeoShape" -p "rtLegQd1_toe04_2_pxGeo";
	rename -uid "5C3CDB9C-4321-E545-9A08-DF8A957C2297";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -2.17609859 -0.80022538 -0.80022538 -2.17609859 0 -1.13168955
		 -2.17609859 0.80022538 -0.80022538 -2.17609859 1.13168955 0 -2.17609859 0.80022538 0.80022538
		 -2.17609859 0 1.13168955 -2.17609859 -0.80022544 0.80022544 -2.17609859 -1.13168967 0
		 0 -0.80022538 -0.80022538 0 0 -1.13168955 0 0.80022538 -0.80022538 0 1.13168955 0
		 0 0.80022538 0.80022538 0 0 1.13168955 0 -0.80022544 0.80022544 0 -1.13168967 0 2.17609859 -0.80022538 -0.80022538
		 2.17609859 0 -1.13168955 2.17609859 0.80022538 -0.80022538 2.17609859 1.13168955 0
		 2.17609859 0.80022538 0.80022538 2.17609859 0 1.13168955 2.17609859 -0.80022544 0.80022544
		 2.17609859 -1.13168967 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd1_toe03_4_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "7069CA3F-44A7-8D98-478F-D395921031E5";
	setAttr ".t" -type "double3" -16.200399076835595 2.2506404146345367 67.63199033992305 ;
	setAttr ".r" -type "double3" 90.000000000000341 -99.484063084935599 -1.2722218725854067e-13 ;
createNode transform -n "rtLegQd1_toe03_4_pxGeo" -p "rtLegQd1_toe03_4_pxGeo_ofs";
	rename -uid "8DD5337F-4C9D-0B69-8B35-9683860A21A9";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 0 ;
createNode mesh -n "rtLegQd1_toe03_4_pxGeoShape" -p "rtLegQd1_toe03_4_pxGeo";
	rename -uid "751680E2-45E3-7B45-0F0C-AB95F7C861F5";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.52712989 -0.8623994 -0.8623994 -1.52712989 0 -1.21961689
		 -1.52712989 0.8623994 -0.8623994 -1.52712989 1.21961689 0 -1.52712989 0.8623994 0.8623994
		 -1.52712989 0 1.21961689 -1.52712989 -0.86239946 0.86239946 -1.52712989 -1.21961701 0
		 0 -0.8623994 -0.8623994 0 0 -1.21961689 0 0.8623994 -0.8623994 0 1.21961689 0 0 0.8623994 0.8623994
		 0 0 1.21961689 0 -0.86239946 0.86239946 0 -1.21961701 0 1.52712989 -0.8623994 -0.8623994
		 1.52712989 0 -1.21961689 1.52712989 0.8623994 -0.8623994 1.52712989 1.21961689 0
		 1.52712989 0.8623994 0.8623994 1.52712989 0 1.21961689 1.52712989 -0.86239946 0.86239946
		 1.52712989 -1.21961701 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd1_toe03_3_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "D03F12CC-417D-E3DF-B9DF-7999E5BF2D8D";
	setAttr ".t" -type "double3" -15.88757097863882 4.295506898184458 65.225619555838065 ;
	setAttr ".r" -type "double3" -177.24094145506885 -19.712110545883654 -90.931252558457018 ;
createNode transform -n "rtLegQd1_toe03_3_pxGeo" -p "rtLegQd1_toe03_3_pxGeo_ofs";
	rename -uid "FCF00E2A-4AE3-C8C2-1E72-0EB34D289DF6";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode mesh -n "rtLegQd1_toe03_3_pxGeoShape" -p "rtLegQd1_toe03_3_pxGeo";
	rename -uid "A263AA21-49CC-BB71-5FB5-E58F5B290897";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.955199 -0.8623994 -0.8623994 -1.955199 0 -1.21961689
		 -1.955199 0.8623994 -0.8623994 -1.955199 1.21961689 0 -1.955199 0.8623994 0.8623994
		 -1.955199 0 1.21961689 -1.955199 -0.86239946 0.86239946 -1.955199 -1.21961701 0 0 -0.8623994 -0.8623994
		 0 0 -1.21961689 0 0.8623994 -0.8623994 0 1.21961689 0 0 0.8623994 0.8623994 0 0 1.21961689
		 0 -0.86239946 0.86239946 0 -1.21961701 0 1.955199 -0.8623994 -0.8623994 1.955199 0 -1.21961689
		 1.955199 0.8623994 -0.8623994 1.955199 1.21961689 0 1.955199 0.8623994 0.8623994
		 1.955199 0 1.21961689 1.955199 -0.86239946 0.86239946 1.955199 -1.21961701 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd1_toe04_1_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "D5823EE1-4597-4602-82CF-6B9E4C75DB8A";
	setAttr ".t" -type "double3" -14.445858488227984 8.8535652284685327 56.3990309139568 ;
	setAttr ".r" -type "double3" 222.18635334166899 -10.485644773004619 -99.365968096679296 ;
createNode transform -n "rtLegQd1_toe04_1_pxGeo" -p "rtLegQd1_toe04_1_pxGeo_ofs";
	rename -uid "2ABAFB35-43E4-E196-1324-EF85B50FE0E4";
	setAttr ".t" -type "double3" -1.8873791418627661e-15 -7.1054273576010019e-15 7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode mesh -n "rtLegQd1_toe04_1_pxGeoShape" -p "rtLegQd1_toe04_1_pxGeo";
	rename -uid "BFFB1F0D-4AED-C8DA-1425-95B72139C6A3";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -3.8351295 -0.80022538 -0.80022538 -3.8351295 0 -1.13168955
		 -3.8351295 0.80022538 -0.80022538 -3.8351295 1.13168955 0 -3.8351295 0.80022538 0.80022538
		 -3.8351295 0 1.13168955 -3.8351295 -0.80022544 0.80022544 -3.8351295 -1.13168967 0
		 0 -0.80022538 -0.80022538 0 0 -1.13168955 0 0.80022538 -0.80022538 0 1.13168955 0
		 0 0.80022538 0.80022538 0 0 1.13168955 0 -0.80022544 0.80022544 0 -1.13168967 0 3.8351295 -0.80022538 -0.80022538
		 3.8351295 0 -1.13168955 3.8351295 0.80022538 -0.80022538 3.8351295 1.13168955 0 3.8351295 0.80022538 0.80022538
		 3.8351295 0 1.13168955 3.8351295 -0.80022544 0.80022544 3.8351295 -1.13168967 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd1_toe04_3_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "12A38147-4625-C23E-C4A1-13BA34893F4D";
	setAttr ".t" -type "double3" -18.458964612132021 3.8692671155617191 61.211572986260293 ;
	setAttr ".r" -type "double3" 196.98752544778912 -19.259159788370113 -95.753939906890025 ;
createNode transform -n "rtLegQd1_toe04_3_pxGeo" -p "rtLegQd1_toe04_3_pxGeo_ofs";
	rename -uid "317B0F44-4EE8-8307-0D7F-F48A76BB447B";
	setAttr ".t" -type "double3" 0 1.6653345369377348e-15 7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode mesh -n "rtLegQd1_toe04_3_pxGeoShape" -p "rtLegQd1_toe04_3_pxGeo";
	rename -uid "5DFC47D0-4908-8282-3A9B-35BCD563E2D1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.19575286 -0.80022538 -0.80022538 -1.19575286 0 -1.13168955
		 -1.19575286 0.80022538 -0.80022538 -1.19575286 1.13168955 0 -1.19575286 0.80022538 0.80022538
		 -1.19575286 0 1.13168955 -1.19575286 -0.80022544 0.80022544 -1.19575286 -1.13168967 0
		 0 -0.80022538 -0.80022538 0 0 -1.13168955 0 0.80022538 -0.80022538 0 1.13168955 0
		 0 0.80022538 0.80022538 0 0 1.13168955 0 -0.80022544 0.80022544 0 -1.13168967 0 1.19575286 -0.80022538 -0.80022538
		 1.19575286 0 -1.13168955 1.19575286 0.80022538 -0.80022538 1.19575286 1.13168955 0
		 1.19575286 0.80022538 0.80022538 1.19575286 0 1.13168955 1.19575286 -0.80022544 0.80022544
		 1.19575286 -1.13168967 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd1_toe04_4_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "A5F6706C-4A4A-235E-DD90-1894C4CF5FDA";
	setAttr ".t" -type "double3" -19.121111990439498 2.621326441597267 63.25960118249521 ;
	setAttr ".r" -type "double3" 90.000000000000398 -108.42857460028723 -4.0711099922733015e-13 ;
createNode transform -n "rtLegQd1_toe04_4_pxGeo" -p "rtLegQd1_toe04_4_pxGeo_ofs";
	rename -uid "65B1D58A-441F-2897-F74F-1EB073DA4A19";
	setAttr ".t" -type "double3" 0 4.4408920985006262e-16 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode mesh -n "rtLegQd1_toe04_4_pxGeoShape" -p "rtLegQd1_toe04_4_pxGeo";
	rename -uid "46114AB0-4242-A407-DD6D-51868C11CD5D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.52712989 -0.80022538 -0.80022538 -1.52712989 0 -1.13168955
		 -1.52712989 0.80022538 -0.80022538 -1.52712989 1.13168955 0 -1.52712989 0.80022538 0.80022538
		 -1.52712989 0 1.13168955 -1.52712989 -0.80022544 0.80022544 -1.52712989 -1.13168967 0
		 0 -0.80022538 -0.80022538 0 0 -1.13168955 0 0.80022538 -0.80022538 0 1.13168955 0
		 0 0.80022538 0.80022538 0 0 1.13168955 0 -0.80022544 0.80022544 0 -1.13168967 0 1.52712989 -0.80022538 -0.80022538
		 1.52712989 0 -1.13168955 1.52712989 0.80022538 -0.80022538 1.52712989 1.13168955 0
		 1.52712989 0.80022538 0.80022538 1.52712989 0 1.13168955 1.52712989 -0.80022544 0.80022544
		 1.52712989 -1.13168967 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd1_scapTip_end_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "E6E9DAFC-4EDA-B62A-F850-08BF8A333B90";
	setAttr ".t" -type "double3" -8.5725586752426857 100.75212582910302 55.851647746169562 ;
	setAttr ".r" -type "double3" 90.000000023490188 -16.744161375845003 -101.11288759154918 ;
createNode transform -n "rtLegQd1_scapTip_end_pxGeo" -p "rtLegQd1_scapTip_end_pxGeo_ofs";
	rename -uid "4F16777E-48E8-BC38-34C4-1B83B88AC09C";
	setAttr ".t" -type "double3" 0 0 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode mesh -n "rtLegQd1_scapTip_end_pxGeoShape" -p "rtLegQd1_scapTip_end_pxGeo";
	rename -uid "3B023580-4D7E-8ADF-30E7-CAA63009566F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -2.29576755 -4.50931263 -4.50931263 -2.29576755 0 -6.37713099
		 -2.29576755 4.50931263 -4.50931263 -2.29576755 6.37713099 0 -2.29576755 4.50931263 4.50931263
		 -2.29576755 0 6.37713146 -2.29576755 -4.50931311 4.50931311 -2.29576755 -6.37713194 0
		 0 -4.50931263 -4.50931263 0 0 -6.37713099 0 4.50931263 -4.50931263 0 6.37713099 0
		 0 4.50931263 4.50931263 0 0 6.37713146 0 -4.50931311 4.50931311 0 -6.37713194 0 2.29576755 -4.50931263 -4.50931263
		 2.29576755 0 -6.37713099 2.29576755 4.50931263 -4.50931263 2.29576755 6.37713099 0
		 2.29576755 4.50931263 4.50931263 2.29576755 0 6.37713146 2.29576755 -4.50931311 4.50931311
		 2.29576755 -6.37713194 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd1_radius_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "A91812F9-4071-5450-868E-0A8E6E3733DA";
	setAttr ".t" -type "double3" -12.900711988939786 31.979188192811456 56.258562286520927 ;
	setAttr ".r" -type "double3" -13.134695684830694 -7.8579975746191888 -79.505308569259554 ;
createNode transform -n "rtLegQd1_radius_pxGeo" -p "rtLegQd1_radius_pxGeo_ofs";
	rename -uid "F47CD6FB-4AF4-C8A1-6875-E8BDB87F08C6";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 0 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode mesh -n "rtLegQd1_radius_pxGeoShape" -p "rtLegQd1_radius_pxGeo";
	rename -uid "948CAB0B-4F53-4F28-AB29-E9B1A8A8A10E";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -11.66041088 -2.29032063 -2.29032063 -11.66041088 0 -3.23900247
		 -11.66041088 2.29032063 -2.29032063 -11.66041088 3.23900247 0 -11.66041088 2.29032063 2.29032063
		 -11.66041088 0 3.2390027 -11.66041088 -2.29032087 2.29032087 -11.66041088 -3.23900294 0
		 0 -2.29032063 -2.29032063 0 0 -3.23900247 0 2.29032063 -2.29032063 0 3.23900247 0
		 0 2.29032063 2.29032063 0 0 3.2390027 0 -2.29032087 2.29032087 0 -3.23900294 0 11.66041088 -2.29032063 -2.29032063
		 11.66041088 0 -3.23900247 11.66041088 2.29032063 -2.29032063 11.66041088 3.23900247 0
		 11.66041088 2.29032063 2.29032063 11.66041088 0 3.2390027 11.66041088 -2.29032087 2.29032087
		 11.66041088 -3.23900294 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd1_ulna_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "18ACF66F-4B25-9AAC-8576-188B71A9034D";
	setAttr ".t" -type "double3" -13.983410123556755 35.19097130236694 51.651701257097024 ;
	setAttr ".r" -type "double3" -12.349456260114435 -12.466188919269779 -89.001913433269053 ;
createNode transform -n "rtLegQd1_ulna_pxGeo" -p "rtLegQd1_ulna_pxGeo_ofs";
	rename -uid "5E01F254-4A89-1AA5-AF6D-C28BEC602AEC";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 3.5527136788005009e-15 -7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode mesh -n "rtLegQd1_ulna_pxGeoShape" -p "rtLegQd1_ulna_pxGeo";
	rename -uid "43A11C4A-4326-6FD2-21B6-76A5AD7DE302";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -15.15849495 -2.97740912 -2.97740912 -15.15849495 0 -4.21069241
		 -15.15849495 2.97740912 -2.97740912 -15.15849495 4.21069241 0 -15.15849495 2.97740912 2.97740912
		 -15.15849495 0 4.21069241 -15.15849495 -2.97740936 2.97740936 -15.15849495 -4.21069288 0
		 0 -2.97740912 -2.97740912 0 0 -4.21069241 0 2.97740912 -2.97740912 0 4.21069241 0
		 0 2.97740912 2.97740912 0 0 4.21069241 0 -2.97740936 2.97740936 0 -4.21069288 0 15.15849495 -2.97740912 -2.97740912
		 15.15849495 0 -4.21069241 15.15849495 2.97740912 -2.97740912 15.15849495 4.21069241 0
		 15.15849495 2.97740912 2.97740912 15.15849495 0 4.21069241 15.15849495 -2.97740936 2.97740936
		 15.15849495 -4.21069288 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd1_upr_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "3B493657-4E83-9237-5DB9-90B3A66F0C05";
	setAttr ".t" -type "double3" -14.112337018814681 61.262709277875473 58.378914141756077 ;
	setAttr ".r" -type "double3" -13.967066537180759 24.443160919227751 -91.16136435807195 ;
createNode transform -n "rtLegQd1_upr_pxGeo" -p "rtLegQd1_upr_pxGeo_ofs";
	rename -uid "5451DF20-4AC0-4CDB-FDEE-3BB7377DA877";
	setAttr ".t" -type "double3" -2.8421709430404007e-14 3.5527136788005009e-15 1.4210854715202004e-14 ;
createNode mesh -n "rtLegQd1_upr_pxGeoShape" -p "rtLegQd1_upr_pxGeo";
	rename -uid "6A910818-49F5-84A1-9E29-50AB022BE64D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -12.4445715 -4.50931263 -4.50931263 -12.4445715 0 -6.37713099
		 -12.4445715 4.50931263 -4.50931263 -12.4445715 6.37713099 0 -12.4445715 4.50931263 4.50931263
		 -12.4445715 0 6.37713146 -12.4445715 -4.50931311 4.50931311 -12.4445715 -6.37713194 0
		 0 -4.50931263 -4.50931263 0 0 -6.37713099 0 4.50931263 -4.50931263 0 6.37713099 0
		 0 4.50931263 4.50931263 0 0 6.37713146 0 -4.50931311 4.50931311 0 -6.37713194 0 12.4445715 -4.50931263 -4.50931263
		 12.4445715 0 -6.37713099 12.4445715 4.50931263 -4.50931263 12.4445715 6.37713099 0
		 12.4445715 4.50931263 4.50931263 12.4445715 0 6.37713146 12.4445715 -4.50931311 4.50931311
		 12.4445715 -6.37713194 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd1_toe01_2_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "6200F07D-4177-8520-5E2E-E9BC5FF6322F";
	setAttr ".t" -type "double3" -8.1322020515855939 5.3670564035930743 62.983379117208337 ;
	setAttr ".r" -type "double3" 130.66352727506901 -96.336135261468485 -40.837130063349122 ;
createNode transform -n "rtLegQd1_toe01_2_pxGeo" -p "rtLegQd1_toe01_2_pxGeo_ofs";
	rename -uid "2385C197-419E-C7B0-A7A3-BAB0A9615838";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -2.2204460492503131e-15 1.1102230246251565e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 1 ;
createNode mesh -n "rtLegQd1_toe01_2_pxGeoShape" -p "rtLegQd1_toe01_2_pxGeo";
	rename -uid "5A1E4937-43A7-ECB5-D65D-01B6D322B9D0";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -2.3833952 -0.84591752 -0.84591752 -2.3833952 0 -1.19630802
		 -2.3833952 0.84591752 -0.84591752 -2.3833952 1.19630802 0 -2.3833952 0.84591752 0.84591752
		 -2.3833952 0 1.19630802 -2.3833952 -0.84591758 0.84591758 -2.3833952 -1.19630814 0
		 0 -0.84591752 -0.84591752 0 0 -1.19630802 0 0.84591752 -0.84591752 0 1.19630802 0
		 0 0.84591752 0.84591752 0 0 1.19630802 0 -0.84591758 0.84591758 0 -1.19630814 0 2.3833952 -0.84591752 -0.84591752
		 2.3833952 0 -1.19630802 2.3833952 0.84591752 -0.84591752 2.3833952 1.19630802 0 2.3833952 0.84591752 0.84591752
		 2.3833952 0 1.19630802 2.3833952 -0.84591758 0.84591758 2.3833952 -1.19630814 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd1_toe01_1_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "AD7B9568-4DF3-E01C-37B6-B697EF43BAFF";
	setAttr ".t" -type "double3" -8.3208451114664008 8.9708957455290594 59.369251505426561 ;
	setAttr ".r" -type "double3" -203.42832334297918 -14.428806950188269 -83.837379118296511 ;
createNode transform -n "rtLegQd1_toe01_1_pxGeo" -p "rtLegQd1_toe01_1_pxGeo_ofs";
	rename -uid "8A6DFEAE-4F63-25CF-0FF2-A7AA2D7352C0";
	setAttr ".t" -type "double3" 6.6613381477509392e-16 0 -7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
createNode mesh -n "rtLegQd1_toe01_1_pxGeoShape" -p "rtLegQd1_toe01_1_pxGeo";
	rename -uid "5D5C66E6-48AE-62FA-74B1-ACB40F3D7F44";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -3.547194 -0.84591752 -0.84591752 -3.547194 0 -1.19630802
		 -3.547194 0.84591752 -0.84591752 -3.547194 1.19630802 0 -3.547194 0.84591752 0.84591752
		 -3.547194 0 1.19630802 -3.547194 -0.84591758 0.84591758 -3.547194 -1.19630814 0 0 -0.84591752 -0.84591752
		 0 0 -1.19630802 0 0.84591752 -0.84591752 0 1.19630802 0 0 0.84591752 0.84591752 0 0 1.19630802
		 0 -0.84591758 0.84591758 0 -1.19630814 0 3.547194 -0.84591752 -0.84591752 3.547194 0 -1.19630802
		 3.547194 0.84591752 -0.84591752 3.547194 1.19630802 0 3.547194 0.84591752 0.84591752
		 3.547194 0 1.19630802 3.547194 -0.84591758 0.84591758 3.547194 -1.19630814 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "spineQd0_PRX" -p "PRX";
	rename -uid "B638CEEF-448B-7D87-A11A-969B2824DF30";
createNode transform -n "spineQd0_0_rbj_pxGeo_ofs" -p "spineQd0_PRX";
	rename -uid "5AA0C90F-4B1F-5EBE-565E-FD836D861AD2";
	setAttr ".t" -type "double3" 5.4178883601707639e-14 94.623592201811178 -30.817548829712099 ;
	setAttr ".r" -type "double3" -1.0177774980683254e-13 -94.5740346502335 90.000000000000156 ;
createNode transform -n "spineQd0_0_rbj_pxGeo" -p "spineQd0_0_rbj_pxGeo_ofs";
	rename -uid "9C9DD0A2-496C-EB3C-233D-A7B7A9B4B6D9";
	setAttr ".t" -type "double3" 0 1.2621774483536189e-29 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode mesh -n "spineQd0_0_rbj_pxGeoShape" -p "spineQd0_0_rbj_pxGeo";
	rename -uid "37C96859-4168-61BB-D452-48A4FA0EB34E";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -3.10124826 -12.1828537 -12.1828537 -3.10124826 0 -17.22915649
		 -3.10124826 12.1828537 -12.1828537 -3.10124826 17.22915649 0 -3.10124826 12.1828537 12.1828537
		 -3.10124826 0 17.22915649 -3.10124826 -12.18285465 12.18285465 -3.10124826 -17.2291584 0
		 0 -12.1828537 -12.1828537 0 0 -17.22915649 0 12.1828537 -12.1828537 0 17.22915649 0
		 0 12.1828537 12.1828537 0 0 17.22915649 0 -12.18285465 12.18285465 0 -17.2291584 0
		 3.10124826 -12.1828537 -12.1828537 3.10124826 0 -17.22915649 3.10124826 12.1828537 -12.1828537
		 3.10124826 17.22915649 0 3.10124826 12.1828537 12.1828537 3.10124826 0 17.22915649
		 3.10124826 -12.18285465 12.18285465 3.10124826 -17.2291584 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "spineQd0_4_rbj_pxGeo_ofs" -p "spineQd0_PRX";
	rename -uid "23ADDA96-4186-F10C-8300-DD880D1737CD";
	setAttr ".t" -type "double3" 2.3276529327338293e-14 93.341514324431003 21.606445934766196 ;
	setAttr ".r" -type "double3" -2.5444437451708134e-14 -95.941886806653258 89.999999999999503 ;
createNode transform -n "spineQd0_4_rbj_pxGeo" -p "spineQd0_4_rbj_pxGeo_ofs";
	rename -uid "542332DC-4B76-67E2-4897-E09C52E05F4E";
	setAttr ".t" -type "double3" 0 0 -1.4210854715202004e-14 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode mesh -n "spineQd0_4_rbj_pxGeoShape" -p "spineQd0_4_rbj_pxGeo";
	rename -uid "80031BB6-47F3-7E72-93A0-3F97E3810D39";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -3.10124826 -12.1828537 -12.1828537 -3.10124826 0 -17.22915649
		 -3.10124826 12.1828537 -12.1828537 -3.10124826 17.22915649 0 -3.10124826 12.1828537 12.1828537
		 -3.10124826 0 17.22915649 -3.10124826 -12.18285465 12.18285465 -3.10124826 -17.2291584 0
		 0 -12.1828537 -12.1828537 0 0 -17.22915649 0 12.1828537 -12.1828537 0 17.22915649 0
		 0 12.1828537 12.1828537 0 0 17.22915649 0 -12.18285465 12.18285465 0 -17.2291584 0
		 3.10124826 -12.1828537 -12.1828537 3.10124826 0 -17.22915649 3.10124826 12.1828537 -12.1828537
		 3.10124826 17.22915649 0 3.10124826 12.1828537 12.1828537 3.10124826 0 17.22915649
		 3.10124826 -12.18285465 12.18285465 3.10124826 -17.2291584 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "spineQd0_6_rbj_pxGeo_ofs" -p "spineQd0_PRX";
	rename -uid "4A500A12-4460-AC70-70E4-6CAF88092FC2";
	setAttr ".t" -type "double3" 6.3048789325692058e-15 90.145586539915826 47.616207384761033 ;
	setAttr ".r" -type "double3" 0 -95.617336822738054 89.99999999999973 ;
createNode transform -n "spineQd0_6_rbj_pxGeo" -p "spineQd0_6_rbj_pxGeo_ofs";
	rename -uid "1B1E5D42-4E3E-E6F5-0089-1A9E4C9C616A";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode mesh -n "spineQd0_6_rbj_pxGeoShape" -p "spineQd0_6_rbj_pxGeo";
	rename -uid "494A01C2-463F-0FBD-6058-A9BB500AB621";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -3.10124826 -12.1828537 -12.1828537 -3.10124826 0 -17.22915649
		 -3.10124826 12.1828537 -12.1828537 -3.10124826 17.22915649 0 -3.10124826 12.1828537 12.1828537
		 -3.10124826 0 17.22915649 -3.10124826 -12.18285465 12.18285465 -3.10124826 -17.2291584 0
		 0 -12.1828537 -12.1828537 0 0 -17.22915649 0 12.1828537 -12.1828537 0 17.22915649 0
		 0 12.1828537 12.1828537 0 0 17.22915649 0 -12.18285465 12.18285465 0 -17.2291584 0
		 3.10124826 -12.1828537 -12.1828537 3.10124826 0 -17.22915649 3.10124826 12.1828537 -12.1828537
		 3.10124826 17.22915649 0 3.10124826 12.1828537 12.1828537 3.10124826 0 17.22915649
		 3.10124826 -12.18285465 12.18285465 3.10124826 -17.2291584 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "spineQd0_3_rbj_pxGeo_ofs" -p "spineQd0_PRX";
	rename -uid "DA176831-4F17-9FC4-FEA0-BC8E62E56898";
	setAttr ".t" -type "double3" 3.4059534153979007e-14 94.188787658831131 8.5528326603053308 ;
	setAttr ".r" -type "double3" 1.7556661841678612e-12 -91.452627621855626 89.999999999998479 ;
createNode transform -n "spineQd0_3_rbj_pxGeo" -p "spineQd0_3_rbj_pxGeo_ofs";
	rename -uid "75C25CE1-47F0-BD14-48EE-D68C60B6DF3B";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 -4.0389678347315804e-28 -1.4210854715202004e-14 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode mesh -n "spineQd0_3_rbj_pxGeoShape" -p "spineQd0_3_rbj_pxGeo";
	rename -uid "E616CCA8-4019-1346-9DFE-0D85382798B0";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -3.10124826 -12.1828537 -12.1828537 -3.10124826 0 -17.22915649
		 -3.10124826 12.1828537 -12.1828537 -3.10124826 17.22915649 0 -3.10124826 12.1828537 12.1828537
		 -3.10124826 0 17.22915649 -3.10124826 -12.18285465 12.18285465 -3.10124826 -17.2291584 0
		 0 -12.1828537 -12.1828537 0 0 -17.22915649 0 12.1828537 -12.1828537 0 17.22915649 0
		 0 12.1828537 12.1828537 0 0 17.22915649 0 -12.18285465 12.18285465 0 -17.2291584 0
		 3.10124826 -12.1828537 -12.1828537 3.10124826 0 -17.22915649 3.10124826 12.1828537 -12.1828537
		 3.10124826 17.22915649 0 3.10124826 12.1828537 12.1828537 3.10124826 0 17.22915649
		 3.10124826 -12.18285465 12.18285465 3.10124826 -17.2291584 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "spineQd0_2_rbj_pxGeo_ofs" -p "spineQd0_PRX";
	rename -uid "F1007454-4A45-8859-C342-62AD718CF2B7";
	setAttr ".t" -type "double3" 4.4013732863912283e-14 94.216610996987527 -4.5605407663298427 ;
	setAttr ".r" -type "double3" 0 -89.322583147263003 90.000000000003226 ;
createNode transform -n "spineQd0_2_rbj_pxGeo" -p "spineQd0_2_rbj_pxGeo_ofs";
	rename -uid "4AAC0EE0-4742-FFDB-39C3-F2A5CE2780F9";
createNode mesh -n "spineQd0_2_rbj_pxGeoShape" -p "spineQd0_2_rbj_pxGeo";
	rename -uid "57D7CEB7-45A8-F3BB-83A1-67B5BBA477F1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -3.10124826 -12.1828537 -12.1828537 -3.10124826 0 -17.22915649
		 -3.10124826 12.1828537 -12.1828537 -3.10124826 17.22915649 0 -3.10124826 12.1828537 12.1828537
		 -3.10124826 0 17.22915649 -3.10124826 -12.18285465 12.18285465 -3.10124826 -17.2291584 0
		 0 -12.1828537 -12.1828537 0 0 -17.22915649 0 12.1828537 -12.1828537 0 17.22915649 0
		 0 12.1828537 12.1828537 0 0 17.22915649 0 -12.18285465 12.18285465 0 -17.2291584 0
		 3.10124826 -12.1828537 -12.1828537 3.10124826 0 -17.22915649 3.10124826 12.1828537 -12.1828537
		 3.10124826 17.22915649 0 3.10124826 12.1828537 12.1828537 3.10124826 0 17.22915649
		 3.10124826 -12.18285465 12.18285465 3.10124826 -17.2291584 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "spineQd0_5_rbj_pxGeo_ofs" -p "spineQd0_PRX";
	rename -uid "14C79ACF-4CB3-B0AB-BB89-A5B68A852915";
	setAttr ".t" -type "double3" 1.3451394169193676e-14 91.726097822546862 34.599642208099375 ;
	setAttr ".r" -type "double3" 3.3077768687220577e-13 -97.617692675717919 89.999999999999702 ;
createNode transform -n "spineQd0_5_rbj_pxGeo" -p "spineQd0_5_rbj_pxGeo_ofs";
	rename -uid "11DD7182-4347-B864-AAC0-33A694F2957E";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 1.0097419586828951e-28 -1.4210854715202004e-14 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000004 ;
createNode mesh -n "spineQd0_5_rbj_pxGeoShape" -p "spineQd0_5_rbj_pxGeo";
	rename -uid "881B5C4D-4B28-E585-2783-4D9553F3B217";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -3.10124826 -12.1828537 -12.1828537 -3.10124826 0 -17.22915649
		 -3.10124826 12.1828537 -12.1828537 -3.10124826 17.22915649 0 -3.10124826 12.1828537 12.1828537
		 -3.10124826 0 17.22915649 -3.10124826 -12.18285465 12.18285465 -3.10124826 -17.2291584 0
		 0 -12.1828537 -12.1828537 0 0 -17.22915649 0 12.1828537 -12.1828537 0 17.22915649 0
		 0 12.1828537 12.1828537 0 0 17.22915649 0 -12.18285465 12.18285465 0 -17.2291584 0
		 3.10124826 -12.1828537 -12.1828537 3.10124826 0 -17.22915649 3.10124826 12.1828537 -12.1828537
		 3.10124826 17.22915649 0 3.10124826 12.1828537 12.1828537 3.10124826 0 17.22915649
		 3.10124826 -12.18285465 12.18285465 3.10124826 -17.2291584 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "spineQd0_end_pxGeo_ofs" -p "spineQd0_PRX";
	rename -uid "0C14827A-4102-AB2F-00C3-96A07DFBED82";
	setAttr ".t" -type "double3" -6.3108872417680944e-30 93.334321369926982 -35.2137506563231 ;
	setAttr ".r" -type "double3" -7.6333312355124402e-14 265.4259653497665 90 ;
createNode transform -n "spineQd0_end_pxGeo" -p "spineQd0_end_pxGeo_ofs";
	rename -uid "7FC6C882-441C-219D-6C37-0087CB079F0D";
	setAttr ".t" -type "double3" 0 0 1.4210854715202004e-14 ;
createNode mesh -n "spineQd0_end_pxGeoShape" -p "spineQd0_end_pxGeo";
	rename -uid "11A3B64F-4332-1585-8F2D-169A794B8815";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -2.067498922 -8.12190151 -8.12190151 -2.067498922 0 -11.48610401
		 -2.067498922 8.12190151 -8.12190151 -2.067498922 11.48610401 0 -2.067498922 8.12190151 8.12190151
		 -2.067498922 0 11.48610401 -2.067498922 -8.12190247 8.12190247 -2.067498922 -11.48610497 0
		 0 -8.12190151 -8.12190151 0 0 -11.48610401 0 8.12190151 -8.12190151 0 11.48610401 0
		 0 8.12190151 8.12190151 0 0 11.48610401 0 -8.12190247 8.12190247 0 -11.48610497 0
		 2.067498922 -8.12190151 -8.12190151 2.067498922 0 -11.48610401 2.067498922 8.12190151 -8.12190151
		 2.067498922 11.48610401 0 2.067498922 8.12190151 8.12190151 2.067498922 0 11.48610401
		 2.067498922 -8.12190247 8.12190247 2.067498922 -11.48610497 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "spineQd0_7_rbj_pxGeo_ofs" -p "spineQd0_PRX";
	rename -uid "A2CCF24D-4C47-02E3-60DE-EDBB428E1E3E";
	setAttr ".t" -type "double3" 3.5527136788005072e-15 89.436078547765675 60.709740632658644 ;
	setAttr ".r" -type "double3" 90 -89.999999999999957 0 ;
createNode transform -n "spineQd0_7_rbj_pxGeo" -p "spineQd0_7_rbj_pxGeo_ofs";
	rename -uid "665F2259-4EEE-3294-C679-62A9866652DC";
createNode mesh -n "spineQd0_7_rbj_pxGeoShape" -p "spineQd0_7_rbj_pxGeo";
	rename -uid "C5F47745-450D-6B44-6AD4-27BE9FA8144E";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -3.10124826 -12.1828537 -12.1828537 -3.10124826 0 -17.22915649
		 -3.10124826 12.1828537 -12.1828537 -3.10124826 17.22915649 0 -3.10124826 12.1828537 12.1828537
		 -3.10124826 0 17.22915649 -3.10124826 -12.18285465 12.18285465 -3.10124826 -17.2291584 0
		 0 -12.1828537 -12.1828537 0 0 -17.22915649 0 12.1828537 -12.1828537 0 17.22915649 0
		 0 12.1828537 12.1828537 0 0 17.22915649 0 -12.18285465 12.18285465 0 -17.2291584 0
		 3.10124826 -12.1828537 -12.1828537 3.10124826 0 -17.22915649 3.10124826 12.1828537 -12.1828537
		 3.10124826 17.22915649 0 3.10124826 12.1828537 12.1828537 3.10124826 0 17.22915649
		 3.10124826 -12.18285465 12.18285465 3.10124826 -17.2291584 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "spineQd0_1_rbj_pxGeo_ofs" -p "spineQd0_PRX";
	rename -uid "B8C20C21-434D-8274-4D46-C0B3006BBC1B";
	setAttr ".t" -type "double3" 5.1328778766723884e-14 94.119671670045648 -17.696803404352284 ;
	setAttr ".r" -type "double3" -5.0888874903416268e-13 -90.358275123663432 89.999999999993889 ;
createNode transform -n "spineQd0_1_rbj_pxGeo" -p "spineQd0_1_rbj_pxGeo_ofs";
	rename -uid "F1F86030-4FBF-6210-7922-22988050DF81";
	setAttr ".t" -type "double3" 0 -3.2311742677852644e-27 0 ;
createNode mesh -n "spineQd0_1_rbj_pxGeoShape" -p "spineQd0_1_rbj_pxGeo";
	rename -uid "A955F80D-4EB0-C59B-8766-7BABF9606C16";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -3.10124826 -12.1828537 -12.1828537 -3.10124826 0 -17.22915649
		 -3.10124826 12.1828537 -12.1828537 -3.10124826 17.22915649 0 -3.10124826 12.1828537 12.1828537
		 -3.10124826 0 17.22915649 -3.10124826 -12.18285465 12.18285465 -3.10124826 -17.2291584 0
		 0 -12.1828537 -12.1828537 0 0 -17.22915649 0 12.1828537 -12.1828537 0 17.22915649 0
		 0 12.1828537 12.1828537 0 0 17.22915649 0 -12.18285465 12.18285465 0 -17.2291584 0
		 3.10124826 -12.1828537 -12.1828537 3.10124826 0 -17.22915649 3.10124826 12.1828537 -12.1828537
		 3.10124826 17.22915649 0 3.10124826 12.1828537 12.1828537 3.10124826 0 17.22915649
		 3.10124826 -12.18285465 12.18285465 3.10124826 -17.2291584 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "tail0_PRX" -p "PRX";
	rename -uid "3C9A5022-49CA-0031-CD8C-7F8E1548A32A";
createNode transform -n "tail0_1_rbj_pxGeo_ofs" -p "tail0_PRX";
	rename -uid "984F317C-433E-DA6B-EBB6-F08042E6BEE7";
	setAttr ".t" -type "double3" 0.12735238949267486 84.501329045385773 -71.715280629971545 ;
	setAttr ".r" -type "double3" -1.5155434252939772 87.394076900085466 -91.517111576326499 ;
createNode transform -n "tail0_1_rbj_pxGeo" -p "tail0_1_rbj_pxGeo_ofs";
	rename -uid "ED37F5BD-4EF3-5559-B5FF-C9AACAF1845A";
createNode mesh -n "tail0_1_rbj_pxGeoShape" -p "tail0_1_rbj_pxGeo";
	rename -uid "D10A4503-4E49-CECF-B24E-73A71C7ED6CB";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -4.59946537 -3.61368132 -3.61368132 -4.59946537 0 -5.11051702
		 -4.59946537 3.61368132 -3.61368132 -4.59946537 5.11051702 0 -4.59946537 3.61368132 3.61368132
		 -4.59946537 0 5.11051702 -4.59946537 -3.61368155 3.61368155 -4.59946537 -5.1105175 0
		 0 -3.61368132 -3.61368132 0 0 -5.11051702 0 3.61368132 -3.61368132 0 5.11051702 0
		 0 3.61368132 3.61368132 0 0 5.11051702 0 -3.61368155 3.61368155 0 -5.1105175 0 4.59946537 -3.61368132 -3.61368132
		 4.59946537 0 -5.11051702 4.59946537 3.61368132 -3.61368132 4.59946537 5.11051702 0
		 4.59946537 3.61368132 3.61368132 4.59946537 0 5.11051702 4.59946537 -3.61368155 3.61368155
		 4.59946537 -5.1105175 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "tail0_4_rbj_pxGeo_ofs" -p "tail0_PRX";
	rename -uid "D9650D36-4698-1FDA-CEE2-9C808D49FCE2";
	setAttr ".t" -type "double3" 7.7271522513910857e-14 82.968526548673864 -135.6637415678357 ;
	setAttr ".r" -type "double3" 89.999999999999986 89.999999999999716 0 ;
createNode transform -n "tail0_4_rbj_pxGeo" -p "tail0_4_rbj_pxGeo_ofs";
	rename -uid "8E74147B-40CC-377E-1026-4DAD6AA59BF8";
createNode mesh -n "tail0_4_rbj_pxGeoShape" -p "tail0_4_rbj_pxGeo";
	rename -uid "57033E16-4E39-FC9B-9969-D9A19677E0A1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -4.59946537 -3.61368132 -3.61368132 -4.59946537 0 -5.11051702
		 -4.59946537 3.61368132 -3.61368132 -4.59946537 5.11051702 0 -4.59946537 3.61368132 3.61368132
		 -4.59946537 0 5.11051702 -4.59946537 -3.61368155 3.61368155 -4.59946537 -5.1105175 0
		 0 -3.61368132 -3.61368132 0 0 -5.11051702 0 3.61368132 -3.61368132 0 5.11051702 0
		 0 3.61368132 3.61368132 0 0 5.11051702 0 -3.61368155 3.61368155 0 -5.1105175 0 4.59946537 -3.61368132 -3.61368132
		 4.59946537 0 -5.11051702 4.59946537 3.61368132 -3.61368132 4.59946537 5.11051702 0
		 4.59946537 3.61368132 3.61368132 4.59946537 0 5.11051702 4.59946537 -3.61368155 3.61368155
		 4.59946537 -5.1105175 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "tail0_2_rbj_pxGeo_ofs" -p "tail0_PRX";
	rename -uid "7E3B908E-4F57-1B38-2390-8AB94472CA19";
	setAttr ".t" -type "double3" 0.03466677585791858 84.259537999279587 -93.038670881093182 ;
	setAttr ".r" -type "double3" -16.62452318896155 89.107377820617842 -106.62642950187235 ;
createNode transform -n "tail0_2_rbj_pxGeo" -p "tail0_2_rbj_pxGeo_ofs";
	rename -uid "D5ECCA9F-407D-5281-35FC-9E8AA67F8329";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode mesh -n "tail0_2_rbj_pxGeoShape" -p "tail0_2_rbj_pxGeo";
	rename -uid "308306A4-498D-D81B-03C2-89A3E708F5A8";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -4.59946537 -3.61368132 -3.61368132 -4.59946537 0 -5.11051702
		 -4.59946537 3.61368132 -3.61368132 -4.59946537 5.11051702 0 -4.59946537 3.61368132 3.61368132
		 -4.59946537 0 5.11051702 -4.59946537 -3.61368155 3.61368155 -4.59946537 -5.1105175 0
		 0 -3.61368132 -3.61368132 0 0 -5.11051702 0 3.61368132 -3.61368132 0 5.11051702 0
		 0 3.61368132 3.61368132 0 0 5.11051702 0 -3.61368155 3.61368155 0 -5.1105175 0 4.59946537 -3.61368132 -3.61368132
		 4.59946537 0 -5.11051702 4.59946537 3.61368132 -3.61368132 4.59946537 5.11051702 0
		 4.59946537 3.61368132 3.61368132 4.59946537 0 5.11051702 4.59946537 -3.61368155 3.61368155
		 4.59946537 -5.1105175 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "tail0_0_rbj_pxGeo_ofs" -p "tail0_PRX";
	rename -uid "9ECEA777-4725-137C-2ADD-FEADDD1D1FFF";
	setAttr ".t" -type "double3" -8.3267063415116768e-16 87.335498187088547 -50.600474581131081 ;
	setAttr ".r" -type "double3" 3.2266717442399906 78.92994799814295 -86.712284743499183 ;
createNode transform -n "tail0_0_rbj_pxGeo" -p "tail0_0_rbj_pxGeo_ofs";
	rename -uid "97E4A880-4900-A6D3-9025-3CA8496BE3AD";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
createNode mesh -n "tail0_0_rbj_pxGeoShape" -p "tail0_0_rbj_pxGeo";
	rename -uid "B43476FD-4950-BCA0-A9CD-83B603399254";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -4.59946537 -3.61368132 -3.61368132 -4.59946537 0 -5.11051702
		 -4.59946537 3.61368132 -3.61368132 -4.59946537 5.11051702 0 -4.59946537 3.61368132 3.61368132
		 -4.59946537 0 5.11051702 -4.59946537 -3.61368155 3.61368155 -4.59946537 -5.1105175 0
		 0 -3.61368132 -3.61368132 0 0 -5.11051702 0 3.61368132 -3.61368132 0 5.11051702 0
		 0 3.61368132 3.61368132 0 0 5.11051702 0 -3.61368155 3.61368155 0 -5.1105175 0 4.59946537 -3.61368132 -3.61368132
		 4.59946537 0 -5.11051702 4.59946537 3.61368132 -3.61368132 4.59946537 5.11051702 0
		 4.59946537 3.61368132 3.61368132 4.59946537 0 5.11051702 4.59946537 -3.61368155 3.61368155
		 4.59946537 -5.1105175 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "tail0_3_rbj_pxGeo_ofs" -p "tail0_PRX";
	rename -uid "1797CA50-4175-DA2E-A081-A5849DD5E35C";
	setAttr ".t" -type "double3" -0.00040400749311126391 83.357185225451374 -114.34376535492612 ;
	setAttr ".r" -type "double3" 0.47180805678064824 87.095220800359797 -89.527584980496798 ;
createNode transform -n "tail0_3_rbj_pxGeo" -p "tail0_3_rbj_pxGeo_ofs";
	rename -uid "D126CA0D-428C-638B-2515-829E227BB91E";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 1.3877787807814457e-17 1.4210854715202004e-14 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode mesh -n "tail0_3_rbj_pxGeoShape" -p "tail0_3_rbj_pxGeo";
	rename -uid "257C50F1-4EA6-21AE-B170-6591F2DC1020";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -4.59946537 -3.61368132 -3.61368132 -4.59946537 0 -5.11051702
		 -4.59946537 3.61368132 -3.61368132 -4.59946537 5.11051702 0 -4.59946537 3.61368132 3.61368132
		 -4.59946537 0 5.11051702 -4.59946537 -3.61368155 3.61368155 -4.59946537 -5.1105175 0
		 0 -3.61368132 -3.61368132 0 0 -5.11051702 0 3.61368132 -3.61368132 0 5.11051702 0
		 0 3.61368132 3.61368132 0 0 5.11051702 0 -3.61368155 3.61368155 0 -5.1105175 0 4.59946537 -3.61368132 -3.61368132
		 4.59946537 0 -5.11051702 4.59946537 3.61368132 -3.61368132 4.59946537 5.11051702 0
		 4.59946537 3.61368132 3.61368132 4.59946537 0 5.11051702 4.59946537 -3.61368155 3.61368155
		 4.59946537 -5.1105175 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd0_PRX" -p "PRX";
	rename -uid "3443F05E-40FB-BB2E-560A-E884231176F8";
createNode transform -n "rtLegQd0_radius_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "3268FA1E-4ABB-659A-19D2-538EF52356AD";
	setAttr ".t" -type "double3" -11.070648049612599 36.754872138987515 -42.696166090790534 ;
	setAttr ".r" -type "double3" 9.2656793952502241 153.84847076992551 93.894877799935216 ;
createNode transform -n "rtLegQd0_radius_pxGeo" -p "rtLegQd0_radius_pxGeo_ofs";
	rename -uid "67FE7B3F-450E-2621-7AE5-ABAB3EF93947";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -3.5527136788005009e-15 7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
createNode mesh -n "rtLegQd0_radius_pxGeoShape" -p "rtLegQd0_radius_pxGeo";
	rename -uid "5D700812-4722-17F7-B255-BC8E5134A189";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -11.93856239 -2.34495497 -2.34495497 -11.93856239 0 -3.31626701
		 -11.93856239 2.34495497 -2.34495497 -11.93856239 3.31626701 0 -11.93856239 2.34495497 2.34495497
		 -11.93856239 0 3.31626725 -11.93856239 -2.34495521 2.34495521 -11.93856239 -3.31626749 0
		 0 -2.34495497 -2.34495497 0 0 -3.31626701 0 2.34495497 -2.34495497 0 3.31626701 0
		 0 2.34495497 2.34495497 0 0 3.31626725 0 -2.34495521 2.34495521 0 -3.31626749 0 11.93856239 -2.34495497 -2.34495497
		 11.93856239 0 -3.31626701 11.93856239 2.34495497 -2.34495497 11.93856239 3.31626701 0
		 11.93856239 2.34495497 2.34495497 11.93856239 0 3.31626725 11.93856239 -2.34495521 2.34495521
		 11.93856239 -3.31626749 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd0_patella_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "BBB3A017-42B8-BEA3-2CEF-1180D6CFD910";
	setAttr ".t" -type "double3" -12.657991582109677 53.997846209432389 -35.48361402868025 ;
	setAttr ".r" -type "double3" -9.4619846652440209 -27.896098234057813 94.323685187057009 ;
createNode transform -n "rtLegQd0_patella_pxGeo" -p "rtLegQd0_patella_pxGeo_ofs";
	rename -uid "2638EFA9-4EC0-2F61-6529-858D19E77B76";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -3.5527136788005009e-15 7.1054273576010019e-15 ;
createNode mesh -n "rtLegQd0_patella_pxGeoShape" -p "rtLegQd0_patella_pxGeo";
	rename -uid "B5E7A6A8-4BCD-60D7-975D-A0AF7B2B20BC";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -2.15917754 -4.24102497 -4.24102497 -2.15917754 0 -5.997715
		 -2.15917754 4.24102497 -4.24102497 -2.15917754 5.997715 0 -2.15917754 4.24102497 4.24102497
		 -2.15917754 0 5.997715 -2.15917754 -4.24102545 4.24102545 -2.15917754 -5.99771547 0
		 0 -4.24102497 -4.24102497 0 0 -5.997715 0 4.24102497 -4.24102497 0 5.997715 0 0 4.24102497 4.24102497
		 0 0 5.997715 0 -4.24102545 4.24102545 0 -5.99771547 0 2.15917754 -4.24102497 -4.24102497
		 2.15917754 0 -5.997715 2.15917754 4.24102497 -4.24102497 2.15917754 5.997715 0 2.15917754 4.24102497 4.24102497
		 2.15917754 0 5.997715 2.15917754 -4.24102545 4.24102545 2.15917754 -5.99771547 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd0_ulna_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "5305CF14-4921-9D87-4328-3480CCD9B075";
	setAttr ".t" -type "double3" -13.026544458929502 35.500465093807534 -45.088960298103217 ;
	setAttr ".r" -type "double3" -170.44619444979443 22.546932148575181 -85.566803421850366 ;
createNode transform -n "rtLegQd0_ulna_pxGeo" -p "rtLegQd0_ulna_pxGeo_ofs";
	rename -uid "8A606B1C-4BBD-FA0D-180E-B4B00680933C";
createNode mesh -n "rtLegQd0_ulna_pxGeoShape" -p "rtLegQd0_ulna_pxGeo";
	rename -uid "215BC19D-462C-DBFC-DA8B-43BDC6E2D679";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -11.99796391 -2.35662246 -2.35662246 -11.99796391 0 -3.33276725
		 -11.99796391 2.35662246 -2.35662246 -11.99796391 3.33276725 0 -11.99796391 2.35662246 2.35662246
		 -11.99796391 0 3.33276749 -11.99796391 -2.3566227 2.3566227 -11.99796391 -3.33276772 0
		 0 -2.35662246 -2.35662246 0 0 -3.33276725 0 2.35662246 -2.35662246 0 3.33276725 0
		 0 2.35662246 2.35662246 0 0 3.33276749 0 -2.3566227 2.3566227 0 -3.33276772 0 11.99796391 -2.35662246 -2.35662246
		 11.99796391 0 -3.33276725 11.99796391 2.35662246 -2.35662246 11.99796391 3.33276725 0
		 11.99796391 2.35662246 2.35662246 11.99796391 0 3.33276749 11.99796391 -2.3566227 2.3566227
		 11.99796391 -3.33276772 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd0_hip_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "EAEC6CB1-4663-BA44-88B4-31833F7CF4F5";
	setAttr ".t" -type "double3" -10.493951323749435 88.910115751485861 -37.624494233150855 ;
	setAttr ".r" -type "double3" -2.4533739092377149 132.27714362201661 84.457049036977722 ;
createNode transform -n "rtLegQd0_hip_pxGeo" -p "rtLegQd0_hip_pxGeo_ofs";
	rename -uid "90EBF8C4-426D-4E25-6A44-C3ADC99A367C";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 1.7763568394002505e-15 -1.4210854715202004e-14 ;
createNode mesh -n "rtLegQd0_hip_pxGeoShape" -p "rtLegQd0_hip_pxGeo";
	rename -uid "E56EF7B9-4A35-9396-D08B-8F9AEBA32F97";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -6.84153032 -4.24102497 -4.24102497 -6.84153032 0 -5.997715
		 -6.84153032 4.24102497 -4.24102497 -6.84153032 5.997715 0 -6.84153032 4.24102497 4.24102497
		 -6.84153032 0 5.997715 -6.84153032 -4.24102545 4.24102545 -6.84153032 -5.99771547 0
		 0 -4.24102497 -4.24102497 0 0 -5.997715 0 4.24102497 -4.24102497 0 5.997715 0 0 4.24102497 4.24102497
		 0 0 5.997715 0 -4.24102545 4.24102545 0 -5.99771547 0 6.84153032 -4.24102497 -4.24102497
		 6.84153032 0 -5.997715 6.84153032 4.24102497 -4.24102497 6.84153032 5.997715 0 6.84153032 4.24102497 4.24102497
		 6.84153032 0 5.997715 6.84153032 -4.24102545 4.24102545 6.84153032 -5.99771547 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd0_upr_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "9109195C-4536-C042-1EED-9798D77C6224";
	setAttr ".t" -type "double3" -11.699584693068214 67.856362118624446 -38.658690660259289 ;
	setAttr ".r" -type "double3" 8.6944995874868169 -163.9728846940321 87.447398552657049 ;
createNode transform -n "rtLegQd0_upr_pxGeo" -p "rtLegQd0_upr_pxGeo_ofs";
	rename -uid "60E06843-4FFE-6E95-7F22-ABBAD94ACDD3";
	setAttr ".t" -type "double3" 1.4210854715202004e-14 3.5527136788005009e-15 7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode mesh -n "rtLegQd0_upr_pxGeoShape" -p "rtLegQd0_upr_pxGeo";
	rename -uid "AB0237E3-420E-90A9-FF14-41A4BAAF212D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -14.96336174 -4.24102497 -4.24102497 -14.96336174 0 -5.997715
		 -14.96336174 4.24102497 -4.24102497 -14.96336174 5.997715 0 -14.96336174 4.24102497 4.24102497
		 -14.96336174 0 5.997715 -14.96336174 -4.24102545 4.24102545 -14.96336174 -5.99771547 0
		 0 -4.24102497 -4.24102497 0 0 -5.997715 0 4.24102497 -4.24102497 0 5.997715 0 0 4.24102497 4.24102497
		 0 0 5.997715 0 -4.24102545 4.24102545 0 -5.99771547 0 14.96336174 -4.24102497 -4.24102497
		 14.96336174 0 -5.997715 14.96336174 4.24102497 -4.24102497 14.96336174 5.997715 0
		 14.96336174 4.24102497 4.24102497 14.96336174 0 5.997715 14.96336174 -4.24102545 4.24102545
		 14.96336174 -5.99771547 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd0_toe01_1_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "870CB694-4FC3-D3C4-BBB9-B8A98340325E";
	setAttr ".t" -type "double3" -8.2089775661749584 9.7458585818489674 -46.414929280050742 ;
	setAttr ".r" -type "double3" -185.27542633584207 -33.099321024075728 -87.113407840447692 ;
createNode transform -n "rtLegQd0_toe01_1_pxGeo" -p "rtLegQd0_toe01_1_pxGeo_ofs";
	rename -uid "C68B980B-4A80-B374-AAE9-74A06885815B";
	setAttr ".t" -type "double3" 0 -2.6645352591003757e-15 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode mesh -n "rtLegQd0_toe01_1_pxGeoShape" -p "rtLegQd0_toe01_1_pxGeo";
	rename -uid "BFDCACDC-4023-C341-095C-F186B002B7B0";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -4.95630836 -1.084226012 -1.084226012 -4.95630836 0 -1.53332698
		 -4.95630836 1.084226012 -1.084226012 -4.95630836 1.53332698 0 -4.95630836 1.084226012 1.084226012
		 -4.95630836 0 1.5333271 -4.95630836 -1.084226012 1.084226012 -4.95630836 -1.53332722 0
		 0 -1.084226012 -1.084226012 0 0 -1.53332698 0 1.084226012 -1.084226012 0 1.53332698 0
		 0 1.084226012 1.084226012 0 0 1.5333271 0 -1.084226012 1.084226012 0 -1.53332722 0
		 4.95630836 -1.084226012 -1.084226012 4.95630836 0 -1.53332698 4.95630836 1.084226012 -1.084226012
		 4.95630836 1.53332698 0 4.95630836 1.084226012 1.084226012 4.95630836 0 1.5333271
		 4.95630836 -1.084226012 1.084226012 4.95630836 -1.53332722 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd0_toe01_4_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "6975DD63-4900-F860-8B03-FCB88F06527D";
	setAttr ".t" -type "double3" -8.2876934432337404 1.4976302133497732 -35.21025267810662 ;
	setAttr ".r" -type "double3" 89.999999999999375 -99.48406279579433 5.0888874903416268e-14 ;
createNode transform -n "rtLegQd0_toe01_4_pxGeo" -p "rtLegQd0_toe01_4_pxGeo_ofs";
	rename -uid "0D471604-4933-13D1-63D7-3692DF20F48A";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -1.7763568394002505e-15 4.4408920985006262e-16 ;
createNode mesh -n "rtLegQd0_toe01_4_pxGeoShape" -p "rtLegQd0_toe01_4_pxGeo";
	rename -uid "79F0A24B-4A71-EDC8-9EBF-E2B107A1FDE5";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.52712989 -1.084226012 -1.084226012 -1.52712989 0 -1.53332698
		 -1.52712989 1.084226012 -1.084226012 -1.52712989 1.53332698 0 -1.52712989 1.084226012 1.084226012
		 -1.52712989 0 1.5333271 -1.52712989 -1.084226012 1.084226012 -1.52712989 -1.53332722 0
		 0 -1.084226012 -1.084226012 0 0 -1.53332698 0 1.084226012 -1.084226012 0 1.53332698 0
		 0 1.084226012 1.084226012 0 0 1.5333271 0 -1.084226012 1.084226012 0 -1.53332722 0
		 1.52712989 -1.084226012 -1.084226012 1.52712989 0 -1.53332698 1.52712989 1.084226012 -1.084226012
		 1.52712989 1.53332698 0 1.52712989 1.084226012 1.084226012 1.52712989 0 1.5333271
		 1.52712989 -1.084226012 1.084226012 1.52712989 -1.53332722 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd0_toe01_2_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "1C3EC761-4FD5-D31D-214E-FBB01D0A297B";
	setAttr ".t" -type "double3" -8.0739003186226537 5.2617142692244796 -40.548561663449426 ;
	setAttr ".r" -type "double3" -38.291106713281529 -86.855152602160445 128.2491173515929 ;
createNode transform -n "rtLegQd0_toe01_2_pxGeo" -p "rtLegQd0_toe01_2_pxGeo_ofs";
	rename -uid "4114D237-4D7D-C502-5C79-A2855666C0CE";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode mesh -n "rtLegQd0_toe01_2_pxGeoShape" -p "rtLegQd0_toe01_2_pxGeo";
	rename -uid "F640913A-4782-16CB-53C0-8B8AB042A8DA";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -2.57701135 -1.084226012 -1.084226012 -2.57701135 0 -1.53332698
		 -2.57701135 1.084226012 -1.084226012 -2.57701135 1.53332698 0 -2.57701135 1.084226012 1.084226012
		 -2.57701135 0 1.5333271 -2.57701135 -1.084226012 1.084226012 -2.57701135 -1.53332722 0
		 0 -1.084226012 -1.084226012 0 0 -1.53332698 0 1.084226012 -1.084226012 0 1.53332698 0
		 0 1.084226012 1.084226012 0 0 1.5333271 0 -1.084226012 1.084226012 0 -1.53332722 0
		 2.57701135 -1.084226012 -1.084226012 2.57701135 0 -1.53332698 2.57701135 1.084226012 -1.084226012
		 2.57701135 1.53332698 0 2.57701135 1.084226012 1.084226012 2.57701135 0 1.5333271
		 2.57701135 -1.084226012 1.084226012 2.57701135 -1.53332722 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd0_toe01_3_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "54DD6749-44DE-8BDC-AC80-8BBE7A964E3B";
	setAttr ".t" -type "double3" -8.0896263466342599 3.4413534542474471 -37.286699352384204 ;
	setAttr ".r" -type "double3" -191.68672874044753 -11.698557885126656 -87.59835674048233 ;
createNode transform -n "rtLegQd0_toe01_3_pxGeo" -p "rtLegQd0_toe01_3_pxGeo_ofs";
	rename -uid "41C83823-4C2C-C72E-13FC-8E969E911D1A";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -4.4408920985006262e-16 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode mesh -n "rtLegQd0_toe01_3_pxGeoShape" -p "rtLegQd0_toe01_3_pxGeo";
	rename -uid "FCBA8104-438F-76A9-5FC6-F980E4D261DF";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.78802991 -1.084226012 -1.084226012 -1.78802991 0 -1.53332698
		 -1.78802991 1.084226012 -1.084226012 -1.78802991 1.53332698 0 -1.78802991 1.084226012 1.084226012
		 -1.78802991 0 1.5333271 -1.78802991 -1.084226012 1.084226012 -1.78802991 -1.53332722 0
		 0 -1.084226012 -1.084226012 0 0 -1.53332698 0 1.084226012 -1.084226012 0 1.53332698 0
		 0 1.084226012 1.084226012 0 0 1.5333271 0 -1.084226012 1.084226012 0 -1.53332722 0
		 1.78802991 -1.084226012 -1.084226012 1.78802991 0 -1.53332698 1.78802991 1.084226012 -1.084226012
		 1.78802991 1.53332698 0 1.78802991 1.084226012 1.084226012 1.78802991 0 1.5333271
		 1.78802991 -1.084226012 1.084226012 1.78802991 -1.53332722 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd0_toe02_3_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "65E62460-4AF0-2F5D-ED58-49A88E194773";
	setAttr ".t" -type "double3" -11.851086089894476 3.7928853225031594 -36.846595448408408 ;
	setAttr ".r" -type "double3" 190.9981724814489 -13.955319442962297 -92.683476511496849 ;
createNode transform -n "rtLegQd0_toe02_3_pxGeo" -p "rtLegQd0_toe02_3_pxGeo_ofs";
	rename -uid "5B22B033-4954-B2C2-5BAA-0AAD717C4BFC";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -3.5527136788005009e-15 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode mesh -n "rtLegQd0_toe02_3_pxGeoShape" -p "rtLegQd0_toe02_3_pxGeo";
	rename -uid "7E719CE0-4FAC-32CC-C2A3-F091DCB39EE6";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -2.20090938 -1.077497244 -1.077497244 -2.20090938 0 -1.5238111
		 -2.20090938 1.077497244 -1.077497244 -2.20090938 1.5238111 0 -2.20090938 1.077497244 1.077497244
		 -2.20090938 0 1.52381122 -2.20090938 -1.077497363 1.077497363 -2.20090938 -1.52381134 0
		 0 -1.077497244 -1.077497244 0 0 -1.5238111 0 1.077497244 -1.077497244 0 1.5238111 0
		 0 1.077497244 1.077497244 0 0 1.52381122 0 -1.077497363 1.077497363 0 -1.52381134 0
		 2.20090938 -1.077497244 -1.077497244 2.20090938 0 -1.5238111 2.20090938 1.077497244 -1.077497244
		 2.20090938 1.5238111 0 2.20090938 1.077497244 1.077497244 2.20090938 0 1.52381122
		 2.20090938 -1.077497363 1.077497363 2.20090938 -1.52381134 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd0_toe02_1_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "C7BA2AF0-4EA6-1D13-7E5F-C1A10B850BEA";
	setAttr ".t" -type "double3" -10.160911451652916 9.634292280914055 -45.978998466147679 ;
	setAttr ".r" -type "double3" 187.21667465448078 -25.536331042088854 -93.124444018960403 ;
createNode transform -n "rtLegQd0_toe02_1_pxGeo" -p "rtLegQd0_toe02_1_pxGeo_ofs";
	rename -uid "4C637ADB-48CF-E953-7AA0-CE89BAFA11F4";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode mesh -n "rtLegQd0_toe02_1_pxGeoShape" -p "rtLegQd0_toe02_1_pxGeo";
	rename -uid "E25398D5-484F-72A6-D002-DF91C5109B33";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -4.80684566 -1.077497244 -1.077497244 -4.80684566 0 -1.5238111
		 -4.80684566 1.077497244 -1.077497244 -4.80684566 1.5238111 0 -4.80684566 1.077497244 1.077497244
		 -4.80684566 0 1.52381122 -4.80684566 -1.077497363 1.077497363 -4.80684566 -1.52381134 0
		 0 -1.077497244 -1.077497244 0 0 -1.5238111 0 1.077497244 -1.077497244 0 1.5238111 0
		 0 1.077497244 1.077497244 0 0 1.52381122 0 -1.077497363 1.077497363 0 -1.52381134 0
		 4.80684566 -1.077497244 -1.077497244 4.80684566 0 -1.5238111 4.80684566 1.077497244 -1.077497244
		 4.80684566 1.5238111 0 4.80684566 1.077497244 1.077497244 4.80684566 0 1.52381122
		 4.80684566 -1.077497363 1.077497363 4.80684566 -1.52381134 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd0_toe02_2_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "0AAF329C-44BF-41CB-6680-909181032E04";
	setAttr ".t" -type "double3" -11.081776968498666 5.4929097210420883 -40.556481210089188 ;
	setAttr ".r" -type "double3" -45.706633873232882 -73.239486059530662 134.4631240831836 ;
createNode transform -n "rtLegQd0_toe02_2_pxGeo" -p "rtLegQd0_toe02_2_pxGeo_ofs";
	rename -uid "08FF9D65-4BC1-ABDD-5C91-EDA87156E99E";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -7.1054273576010019e-15 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode mesh -n "rtLegQd0_toe02_2_pxGeoShape" -p "rtLegQd0_toe02_2_pxGeo";
	rename -uid "77C9B552-433A-1ABF-DFC6-19B65DB7CFD5";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -2.93270016 -1.077497244 -1.077497244 -2.93270016 0 -1.5238111
		 -2.93270016 1.077497244 -1.077497244 -2.93270016 1.5238111 0 -2.93270016 1.077497244 1.077497244
		 -2.93270016 0 1.52381122 -2.93270016 -1.077497363 1.077497363 -2.93270016 -1.52381134 0
		 0 -1.077497244 -1.077497244 0 0 -1.5238111 0 1.077497244 -1.077497244 0 1.5238111 0
		 0 1.077497244 1.077497244 0 0 1.52381122 0 -1.077497363 1.077497363 0 -1.52381134 0
		 2.93270016 -1.077497244 -1.077497244 2.93270016 0 -1.5238111 2.93270016 1.077497244 -1.077497244
		 2.93270016 1.5238111 0 2.93270016 1.077497244 1.077497244 2.93270016 0 1.52381122
		 2.93270016 -1.077497363 1.077497363 2.93270016 -1.52381134 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd0_toe02_4_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "78E65560-434B-1DCD-FA62-EAAA171EBFC0";
	setAttr ".t" -type "double3" -12.241788066075769 1.422212724435594 -34.583218783184066 ;
	setAttr ".r" -type "double3" 89.999999999999446 -99.484062795794372 8.1422199845466029e-13 ;
createNode transform -n "rtLegQd0_toe02_4_pxGeo" -p "rtLegQd0_toe02_4_pxGeo_ofs";
	rename -uid "282C787A-4D09-EA68-2D32-5CBA23D22CE6";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -3.5527136788005009e-15 2.2204460492503131e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
createNode mesh -n "rtLegQd0_toe02_4_pxGeoShape" -p "rtLegQd0_toe02_4_pxGeo";
	rename -uid "43574F08-46C2-7606-C5B8-78A1A56CD354";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.52712989 -1.077497244 -1.077497244 -1.52712989 0 -1.5238111
		 -1.52712989 1.077497244 -1.077497244 -1.52712989 1.5238111 0 -1.52712989 1.077497244 1.077497244
		 -1.52712989 0 1.52381122 -1.52712989 -1.077497363 1.077497363 -1.52712989 -1.52381134 0
		 0 -1.077497244 -1.077497244 0 0 -1.5238111 0 1.077497244 -1.077497244 0 1.5238111 0
		 0 1.077497244 1.077497244 0 0 1.52381122 0 -1.077497363 1.077497363 0 -1.52381134 0
		 1.52712989 -1.077497244 -1.077497244 1.52712989 0 -1.5238111 1.52712989 1.077497244 -1.077497244
		 1.52712989 1.5238111 0 1.52712989 1.077497244 1.077497244 1.52712989 0 1.52381122
		 1.52712989 -1.077497363 1.077497363 1.52712989 -1.52381134 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd0_toe03_2_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "F60F7535-4FC8-D5E1-F081-82BCDFD81901";
	setAttr ".t" -type "double3" -14.069078663744262 5.6094830175268839 -41.127989434803311 ;
	setAttr ".r" -type "double3" 115.75920591660936 -109.51720417697726 -27.110505824450236 ;
createNode transform -n "rtLegQd0_toe03_2_pxGeo" -p "rtLegQd0_toe03_2_pxGeo_ofs";
	rename -uid "32C1CF74-4233-5F69-E86A-088D0A2ED4EF";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
createNode mesh -n "rtLegQd0_toe03_2_pxGeoShape" -p "rtLegQd0_toe03_2_pxGeo";
	rename -uid "86BE7C85-47E6-C00E-A94A-18898C1BEDEE";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -2.88553357 -1.086281061 -1.086281061 -2.88553357 0 -1.53623331
		 -2.88553357 1.086281061 -1.086281061 -2.88553357 1.53623331 0 -2.88553357 1.086281061 1.086281061
		 -2.88553357 0 1.53623343 -2.88553357 -1.08628118 1.08628118 -2.88553357 -1.53623354 0
		 0 -1.086281061 -1.086281061 0 0 -1.53623331 0 1.086281061 -1.086281061 0 1.53623331 0
		 0 1.086281061 1.086281061 0 0 1.53623343 0 -1.08628118 1.08628118 0 -1.53623354 0
		 2.88553357 -1.086281061 -1.086281061 2.88553357 0 -1.53623331 2.88553357 1.086281061 -1.086281061
		 2.88553357 1.53623331 0 2.88553357 1.086281061 1.086281061 2.88553357 0 1.53623343
		 2.88553357 -1.08628118 1.08628118 2.88553357 -1.53623354 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd0_toe03_1_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "CA553DAD-492C-193D-C8CC-508ACC2950F8";
	setAttr ".t" -type "double3" -12.166608421787489 9.8200984305831245 -46.365028630363803 ;
	setAttr ".r" -type "double3" 205.71025595327117 -24.801452693741854 -101.41854471470729 ;
createNode transform -n "rtLegQd0_toe03_1_pxGeo" -p "rtLegQd0_toe03_1_pxGeo_ofs";
	rename -uid "3F4753C7-4BA2-DDA1-6A2E-72A23A956429";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 0 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode mesh -n "rtLegQd0_toe03_1_pxGeoShape" -p "rtLegQd0_toe03_1_pxGeo";
	rename -uid "C02B63EF-4B55-95BB-0BEF-E9BD19CEF859";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -4.75260878 -1.086281061 -1.086281061 -4.75260878 0 -1.53623331
		 -4.75260878 1.086281061 -1.086281061 -4.75260878 1.53623331 0 -4.75260878 1.086281061 1.086281061
		 -4.75260878 0 1.53623343 -4.75260878 -1.08628118 1.08628118 -4.75260878 -1.53623354 0
		 0 -1.086281061 -1.086281061 0 0 -1.53623331 0 1.086281061 -1.086281061 0 1.53623331 0
		 0 1.086281061 1.086281061 0 0 1.53623343 0 -1.08628118 1.08628118 0 -1.53623354 0
		 4.75260878 -1.086281061 -1.086281061 4.75260878 0 -1.53623331 4.75260878 1.086281061 -1.086281061
		 4.75260878 1.53623331 0 4.75260878 1.086281061 1.086281061 4.75260878 0 1.53623343
		 4.75260878 -1.08628118 1.08628118 4.75260878 -1.53623354 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd0_toe03_3_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "80FCC527-4F79-F134-4500-C9AADC8E794C";
	setAttr ".t" -type "double3" -14.977359671109308 3.759911873768722 -37.437617981272652 ;
	setAttr ".r" -type "double3" -184.02132368543485 -15.954587860092214 -88.892956316923815 ;
createNode transform -n "rtLegQd0_toe03_3_pxGeo" -p "rtLegQd0_toe03_3_pxGeo_ofs";
	rename -uid "F721D74F-40E1-10AB-44BE-DEAF0BCAE2BC";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 -7.1054273576010019e-15 ;
createNode mesh -n "rtLegQd0_toe03_3_pxGeoShape" -p "rtLegQd0_toe03_3_pxGeo";
	rename -uid "C87341BF-4480-C90A-3C7E-FB97BB6183C4";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -2.1886282 -1.086281061 -1.086281061 -2.1886282 0 -1.53623331
		 -2.1886282 1.086281061 -1.086281061 -2.1886282 1.53623331 0 -2.1886282 1.086281061 1.086281061
		 -2.1886282 0 1.53623343 -2.1886282 -1.08628118 1.08628118 -2.1886282 -1.53623354 0
		 0 -1.086281061 -1.086281061 0 0 -1.53623331 0 1.086281061 -1.086281061 0 1.53623331 0
		 0 1.086281061 1.086281061 0 0 1.53623343 0 -1.08628118 1.08628118 0 -1.53623354 0
		 2.1886282 -1.086281061 -1.086281061 2.1886282 0 -1.53623331 2.1886282 1.086281061 -1.086281061
		 2.1886282 1.53623331 0 2.1886282 1.086281061 1.086281061 2.1886282 0 1.53623343 2.1886282 -1.08628118 1.08628118
		 2.1886282 -1.53623354 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd0_toe03_4_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "70EAFEF0-4F69-FFA5-5276-18808F8EC3F7";
	setAttr ".t" -type "double3" -15.211775143785406 1.4222127244355902 -35.095555369340261 ;
	setAttr ".r" -type "double3" 90.000000000000384 -99.484062795794117 -1.526666247102488e-13 ;
createNode transform -n "rtLegQd0_toe03_4_pxGeo" -p "rtLegQd0_toe03_4_pxGeo_ofs";
	rename -uid "83B424CC-419E-4E01-6757-0DAED63C6674";
	setAttr ".t" -type "double3" 0 0 2.2204460492503131e-16 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode mesh -n "rtLegQd0_toe03_4_pxGeoShape" -p "rtLegQd0_toe03_4_pxGeo";
	rename -uid "FDDBED9B-418A-61FD-49D2-8AAFCC806006";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.52712989 -1.086281061 -1.086281061 -1.52712989 0 -1.53623331
		 -1.52712989 1.086281061 -1.086281061 -1.52712989 1.53623331 0 -1.52712989 1.086281061 1.086281061
		 -1.52712989 0 1.53623343 -1.52712989 -1.08628118 1.08628118 -1.52712989 -1.53623354 0
		 0 -1.086281061 -1.086281061 0 0 -1.53623331 0 1.086281061 -1.086281061 0 1.53623331 0
		 0 1.086281061 1.086281061 0 0 1.53623343 0 -1.08628118 1.08628118 0 -1.53623354 0
		 1.52712989 -1.086281061 -1.086281061 1.52712989 0 -1.53623331 1.52712989 1.086281061 -1.086281061
		 1.52712989 1.53623331 0 1.52712989 1.086281061 1.086281061 1.52712989 0 1.53623343
		 1.52712989 -1.08628118 1.08628118 1.52712989 -1.53623354 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd0_toe04_1_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "62D2E824-4865-B1ED-78C6-0D94AD11E914";
	setAttr ".t" -type "double3" -13.380723976852867 9.782546898807114 -47.829924016941327 ;
	setAttr ".r" -type "double3" 215.05441248794386 -28.663837639693881 -108.60054281192262 ;
createNode transform -n "rtLegQd0_toe04_1_pxGeo" -p "rtLegQd0_toe04_1_pxGeo_ofs";
	rename -uid "84E8888D-4E19-96BF-DF9E-0A88697BDC84";
	setAttr ".t" -type "double3" 0 7.1054273576010019e-15 -7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode mesh -n "rtLegQd0_toe04_1_pxGeoShape" -p "rtLegQd0_toe04_1_pxGeo";
	rename -uid "DB29C6B9-4B62-070C-F0D3-9C9D9023A1F1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -5.068671227 -1.059024692 -1.059024692 -5.068671227 0 -1.4976871
		 -5.068671227 1.059024692 -1.059024692 -5.068671227 1.4976871 0 -5.068671227 1.059024692 1.059024692
		 -5.068671227 0 1.4976871 -5.068671227 -1.059024811 1.059024811 -5.068671227 -1.49768722 0
		 0 -1.059024692 -1.059024692 0 0 -1.4976871 0 1.059024692 -1.059024692 0 1.4976871 0
		 0 1.059024692 1.059024692 0 0 1.4976871 0 -1.059024811 1.059024811 0 -1.49768722 0
		 5.068671227 -1.059024692 -1.059024692 5.068671227 0 -1.4976871 5.068671227 1.059024692 -1.059024692
		 5.068671227 1.4976871 0 5.068671227 1.059024692 1.059024692 5.068671227 0 1.4976871
		 5.068671227 -1.059024811 1.059024811 5.068671227 -1.49768722 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd0_toe04_3_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "C438DB40-4447-40C3-BCAE-A486D63C0E6C";
	setAttr ".t" -type "double3" -17.124933564620182 3.2973893459126957 -40.431103713113977 ;
	setAttr ".r" -type "double3" -181.21095155268685 -11.634987487319764 -89.755745173701527 ;
createNode transform -n "rtLegQd0_toe04_3_pxGeo" -p "rtLegQd0_toe04_3_pxGeo_ofs";
	rename -uid "AD65A7D7-4E8E-98BE-8E11-41ABE12C6DC8";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 0 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode mesh -n "rtLegQd0_toe04_3_pxGeoShape" -p "rtLegQd0_toe04_3_pxGeo";
	rename -uid "3D77939F-46EB-94BD-D745-E6855A054F45";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.72307968 -1.059024692 -1.059024692 -1.72307968 0 -1.4976871
		 -1.72307968 1.059024692 -1.059024692 -1.72307968 1.4976871 0 -1.72307968 1.059024692 1.059024692
		 -1.72307968 0 1.4976871 -1.72307968 -1.059024811 1.059024811 -1.72307968 -1.49768722 0
		 0 -1.059024692 -1.059024692 0 0 -1.4976871 0 1.059024692 -1.059024692 0 1.4976871 0
		 0 1.059024692 1.059024692 0 0 1.4976871 0 -1.059024811 1.059024811 0 -1.49768722 0
		 1.72307968 -1.059024692 -1.059024692 1.72307968 0 -1.4976871 1.72307968 1.059024692 -1.059024692
		 1.72307968 1.4976871 0 1.72307968 1.059024692 1.059024692 1.72307968 0 1.4976871
		 1.72307968 -1.059024811 1.059024811 1.72307968 -1.49768722 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd0_toe04_2_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "C773BB9F-47A2-AD1B-30A9-CA9EA50E727D";
	setAttr ".t" -type "double3" -16.044943438522253 5.1357855913758135 -42.972855758961053 ;
	setAttr ".r" -type "double3" 91.72845279507834 -116.79397030543099 -1.9362029063802002 ;
createNode transform -n "rtLegQd0_toe04_2_pxGeo" -p "rtLegQd0_toe04_2_pxGeo_ofs";
	rename -uid "951EA869-4088-0106-2E47-7E9EB1B84223";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 7.1054273576010019e-15 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode mesh -n "rtLegQd0_toe04_2_pxGeoShape" -p "rtLegQd0_toe04_2_pxGeo";
	rename -uid "46BDD617-4E0C-9AAF-559C-A38578743BBC";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -2.17342663 -1.059024692 -1.059024692 -2.17342663 0 -1.4976871
		 -2.17342663 1.059024692 -1.059024692 -2.17342663 1.4976871 0 -2.17342663 1.059024692 1.059024692
		 -2.17342663 0 1.4976871 -2.17342663 -1.059024811 1.059024811 -2.17342663 -1.49768722 0
		 0 -1.059024692 -1.059024692 0 0 -1.4976871 0 1.059024692 -1.059024692 0 1.4976871 0
		 0 1.059024692 1.059024692 0 0 1.4976871 0 -1.059024811 1.059024811 0 -1.49768722 0
		 2.17342663 -1.059024692 -1.059024692 2.17342663 0 -1.4976871 2.17342663 1.059024692 -1.059024692
		 2.17342663 1.4976871 0 2.17342663 1.059024692 1.059024692 2.17342663 0 1.4976871
		 2.17342663 -1.059024811 1.059024811 2.17342663 -1.49768722 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rtLegQd0_toe04_4_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "18C9E305-41DA-0BF9-CAA6-0E849B9283E1";
	setAttr ".t" -type "double3" -17.65333921015128 1.4222127244355827 -38.435192275262722 ;
	setAttr ".r" -type "double3" 89.999999999999872 -108.42857431114591 2.0355549961366507e-13 ;
createNode transform -n "rtLegQd0_toe04_4_pxGeo" -p "rtLegQd0_toe04_4_pxGeo_ofs";
	rename -uid "10EE911B-4477-3343-31D4-33BD7A152C3F";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 0 2.2204460492503131e-16 ;
createNode mesh -n "rtLegQd0_toe04_4_pxGeoShape" -p "rtLegQd0_toe04_4_pxGeo";
	rename -uid "162E9945-4A3A-8D90-88CB-EC9262260F94";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.52712989 -1.059024692 -1.059024692 -1.52712989 0 -1.4976871
		 -1.52712989 1.059024692 -1.059024692 -1.52712989 1.4976871 0 -1.52712989 1.059024692 1.059024692
		 -1.52712989 0 1.4976871 -1.52712989 -1.059024811 1.059024811 -1.52712989 -1.49768722 0
		 0 -1.059024692 -1.059024692 0 0 -1.4976871 0 1.059024692 -1.059024692 0 1.4976871 0
		 0 1.059024692 1.059024692 0 0 1.4976871 0 -1.059024811 1.059024811 0 -1.49768722 0
		 1.52712989 -1.059024692 -1.059024692 1.52712989 0 -1.4976871 1.52712989 1.059024692 -1.059024692
		 1.52712989 1.4976871 0 1.52712989 1.059024692 1.059024692 1.52712989 0 1.4976871
		 1.52712989 -1.059024811 1.059024811 1.52712989 -1.49768722 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd1_PRX" -p "PRX";
	rename -uid "4D72C6C6-45B3-F9E7-6830-478B23E0D36B";
createNode transform -n "lfLegQd1_toe02_2_pxGeo_ofs" -p "lfLegQd1_PRX";
	rename -uid "855C0B7D-4B2B-59E8-BA87-E38F56F960FA";
	setAttr ".t" -type "double3" 11.451431909287408 5.6189175273177554 62.964196076444587 ;
	setAttr ".r" -type "double3" 55.048029447956473 -71.038479485422059 36.466726564690781 ;
createNode transform -n "lfLegQd1_toe02_2_pxGeo" -p "lfLegQd1_toe02_2_pxGeo_ofs";
	rename -uid "6822FBD4-437A-F596-C006-75B921CEE14D";
	setAttr ".t" -type "double3" 0 -2.6645352591003757e-15 -8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000002 ;
createNode mesh -n "lfLegQd1_toe02_2_pxGeoShape" -p "lfLegQd1_toe02_2_pxGeo";
	rename -uid "0ABD7971-4995-58B9-17A6-C58A9663C718";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -3.13324547 -0.8895309 -0.8895309 -3.13324547 0 -1.25798666
		 -3.13324547 0.8895309 -0.8895309 -3.13324547 1.25798666 0 -3.13324547 0.8895309 0.8895309
		 -3.13324547 0 1.25798666 -3.13324547 -0.88953096 0.88953096 -3.13324547 -1.25798678 0
		 0 -0.8895309 -0.8895309 0 0 -1.25798666 0 0.8895309 -0.8895309 0 1.25798666 0 0 0.8895309 0.8895309
		 0 0 1.25798666 0 -0.88953096 0.88953096 0 -1.25798678 0 3.13324547 -0.8895309 -0.8895309
		 3.13324547 0 -1.25798666 3.13324547 0.8895309 -0.8895309 3.13324547 1.25798666 0
		 3.13324547 0.8895309 0.8895309 3.13324547 0 1.25798666 3.13324547 -0.88953096 0.88953096
		 3.13324547 -1.25798678 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd1_toe02_1_pxGeo_ofs" -p "lfLegQd1_PRX";
	rename -uid "10234BE0-435B-CDF4-480B-47BC9531CE00";
	setAttr ".t" -type "double3" 10.722512440680815 8.9839467401200714 59.04062926467099 ;
	setAttr ".r" -type "double3" -163.81401974961329 -8.8754172165699714 -92.564188360412331 ;
createNode transform -n "lfLegQd1_toe02_1_pxGeo" -p "lfLegQd1_toe02_1_pxGeo_ofs";
	rename -uid "43DBABF7-4493-5DD7-4AD4-A598DA6241FC";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 3.5527136788005009e-15 -7.1054273576010019e-15 ;
createNode mesh -n "lfLegQd1_toe02_1_pxGeoShape" -p "lfLegQd1_toe02_1_pxGeo";
	rename -uid "5E8DB458-43BA-6D7E-3AB3-14BB2A209DD7";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -3.68135905 -0.8895309 -0.8895309 -3.68135905 0 -1.25798666
		 -3.68135905 0.8895309 -0.8895309 -3.68135905 1.25798666 0 -3.68135905 0.8895309 0.8895309
		 -3.68135905 0 1.25798666 -3.68135905 -0.88953096 0.88953096 -3.68135905 -1.25798678 0
		 0 -0.8895309 -0.8895309 0 0 -1.25798666 0 0.8895309 -0.8895309 0 1.25798666 0 0 0.8895309 0.8895309
		 0 0 1.25798666 0 -0.88953096 0.88953096 0 -1.25798678 0 3.68135905 -0.8895309 -0.8895309
		 3.68135905 0 -1.25798666 3.68135905 0.8895309 -0.8895309 3.68135905 1.25798666 0
		 3.68135905 0.8895309 0.8895309 3.68135905 0 1.25798666 3.68135905 -0.88953096 0.88953096
		 3.68135905 -1.25798678 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd1_toe02_3_pxGeo_ofs" -p "lfLegQd1_PRX";
	rename -uid "362B019A-4C6F-7A0D-3392-FFA8838FA90A";
	setAttr ".t" -type "double3" 12.395556973392237 4.229290152040841 66.935221986033369 ;
	setAttr ".r" -type "double3" -183.05522908971327 -18.21293490374973 -89.044272611222922 ;
createNode transform -n "lfLegQd1_toe02_3_pxGeo" -p "lfLegQd1_toe02_3_pxGeo_ofs";
	rename -uid "C28856C2-4B8C-B047-0DD0-1B8FA6BC1801";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode mesh -n "lfLegQd1_toe02_3_pxGeoShape" -p "lfLegQd1_toe02_3_pxGeo";
	rename -uid "B6D5D6ED-4440-484D-5B24-6BB4D062D50F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.95392215 -0.8895309 -0.8895309 -1.95392215 0 -1.25798666
		 -1.95392215 0.8895309 -0.8895309 -1.95392215 1.25798666 0 -1.95392215 0.8895309 0.8895309
		 -1.95392215 0 1.25798666 -1.95392215 -0.88953096 0.88953096 -1.95392215 -1.25798678 0
		 0 -0.8895309 -0.8895309 0 0 -1.25798666 0 0.8895309 -0.8895309 0 1.25798666 0 0 0.8895309 0.8895309
		 0 0 1.25798666 0 -0.88953096 0.88953096 0 -1.25798678 0 1.95392215 -0.8895309 -0.8895309
		 1.95392215 0 -1.25798666 1.95392215 0.8895309 -0.8895309 1.95392215 1.25798666 0
		 1.95392215 0.8895309 0.8895309 1.95392215 0 1.25798666 1.95392215 -0.88953096 0.88953096
		 1.95392215 -1.25798678 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd1_toe03_1_pxGeo_ofs" -p "lfLegQd1_PRX";
	rename -uid "ED78F4D5-4111-1DF3-37A7-5DA57885E5B3";
	setAttr ".t" -type "double3" 13.182690799556728 8.8993316012133512 58.282335277806375 ;
	setAttr ".r" -type "double3" 138.02343860491752 -7.3282367679446052 -83.453648633100315 ;
createNode transform -n "lfLegQd1_toe03_1_pxGeo" -p "lfLegQd1_toe03_1_pxGeo_ofs";
	rename -uid "EE23FEB3-4D7F-F226-B456-4F910A7B22D3";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 -3.5527136788005009e-15 -7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode mesh -n "lfLegQd1_toe03_1_pxGeoShape" -p "lfLegQd1_toe03_1_pxGeo";
	rename -uid "B317E84F-49B9-75C9-155E-1995FBD93DF3";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -3.78840423 -0.8623994 -0.8623994 -3.78840423 0 -1.21961689
		 -3.78840423 0.8623994 -0.8623994 -3.78840423 1.21961689 0 -3.78840423 0.8623994 0.8623994
		 -3.78840423 0 1.21961689 -3.78840423 -0.86239946 0.86239946 -3.78840423 -1.21961701 0
		 0 -0.8623994 -0.8623994 0 0 -1.21961689 0 0.8623994 -0.8623994 0 1.21961689 0 0 0.8623994 0.8623994
		 0 0 1.21961689 0 -0.86239946 0.86239946 0 -1.21961701 0 3.78840423 -0.8623994 -0.8623994
		 3.78840423 0 -1.21961689 3.78840423 0.8623994 -0.8623994 3.78840423 1.21961689 0
		 3.78840423 0.8623994 0.8623994 3.78840423 0 1.21961689 3.78840423 -0.86239946 0.86239946
		 3.78840423 -1.21961701 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd1_toe02_4_pxGeo_ofs" -p "lfLegQd1_PRX";
	rename -uid "6DA6D9E2-436D-BDA9-7209-29B2192EBCC2";
	setAttr ".t" -type "double3" 12.709544174878241 2.1673174681635134 69.28739249938711 ;
	setAttr ".r" -type "double3" 89.999999999998536 -80.515936908285497 9.2652547061310124e-13 ;
createNode transform -n "lfLegQd1_toe02_4_pxGeo" -p "lfLegQd1_toe02_4_pxGeo_ofs";
	rename -uid "36BF93B2-46FE-0B98-5C11-4590891A6C5C";
	setAttr ".t" -type "double3" 0 -5.1070259132757201e-15 8.8817841970012523e-16 ;
createNode mesh -n "lfLegQd1_toe02_4_pxGeoShape" -p "lfLegQd1_toe02_4_pxGeo";
	rename -uid "9513D9B1-495A-69D2-CAD2-F084BA9BDB7B";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.52712989 -0.8895309 -0.8895309 -1.52712989 0 -1.25798666
		 -1.52712989 0.8895309 -0.8895309 -1.52712989 1.25798666 0 -1.52712989 0.8895309 0.8895309
		 -1.52712989 0 1.25798666 -1.52712989 -0.88953096 0.88953096 -1.52712989 -1.25798678 0
		 0 -0.8895309 -0.8895309 0 0 -1.25798666 0 0.8895309 -0.8895309 0 1.25798666 0 0 0.8895309 0.8895309
		 0 0 1.25798666 0 -0.88953096 0.88953096 0 -1.25798678 0 1.52712989 -0.8895309 -0.8895309
		 1.52712989 0 -1.25798666 1.52712989 0.8895309 -0.8895309 1.52712989 1.25798666 0
		 1.52712989 0.8895309 0.8895309 1.52712989 0 1.25798666 1.52712989 -0.88953096 0.88953096
		 1.52712989 -1.25798678 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd1_toe03_4_pxGeo_ofs" -p "lfLegQd1_PRX";
	rename -uid "392B8F59-4038-52C5-D33F-259D333E6525";
	setAttr ".t" -type "double3" 16.200399084508266 2.2506404191544296 67.631990355445538 ;
	setAttr ".r" -type "double3" 90.000000000002856 -80.515936908285497 -1.1581568382663768e-12 ;
createNode transform -n "lfLegQd1_toe03_4_pxGeo" -p "lfLegQd1_toe03_4_pxGeo_ofs";
	rename -uid "ABB3E8E8-4032-5945-AE2F-109836C70A0D";
	setAttr ".t" -type "double3" 0 -2.6645352591003757e-15 4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode mesh -n "lfLegQd1_toe03_4_pxGeoShape" -p "lfLegQd1_toe03_4_pxGeo";
	rename -uid "E80A6F13-430A-DBFF-8E63-DB855639EFDA";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.52712989 -0.8623994 -0.8623994 -1.52712989 0 -1.21961689
		 -1.52712989 0.8623994 -0.8623994 -1.52712989 1.21961689 0 -1.52712989 0.8623994 0.8623994
		 -1.52712989 0 1.21961689 -1.52712989 -0.86239946 0.86239946 -1.52712989 -1.21961701 0
		 0 -0.8623994 -0.8623994 0 0 -1.21961689 0 0.8623994 -0.8623994 0 1.21961689 0 0 0.8623994 0.8623994
		 0 0 1.21961689 0 -0.86239946 0.86239946 0 -1.21961701 0 1.52712989 -0.8623994 -0.8623994
		 1.52712989 0 -1.21961689 1.52712989 0.8623994 -0.8623994 1.52712989 1.21961689 0
		 1.52712989 0.8623994 0.8623994 1.52712989 0 1.21961689 1.52712989 -0.86239946 0.86239946
		 1.52712989 -1.21961701 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd1_toe03_2_pxGeo_ofs" -p "lfLegQd1_PRX";
	rename -uid "B311EF7B-4623-F8FA-84FF-85B4B89C8A47";
	setAttr ".t" -type "double3" 14.75649834980854 5.5459854934198596 61.656058838344329 ;
	setAttr ".r" -type "double3" 56.858390907516529 -64.466936184910622 35.889344170067147 ;
createNode transform -n "lfLegQd1_toe03_2_pxGeo" -p "lfLegQd1_toe03_2_pxGeo_ofs";
	rename -uid "D63F86CA-4DED-02AA-E096-F1B2EDBC14D9";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 5.3290705182007514e-15 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode mesh -n "lfLegQd1_toe03_2_pxGeoShape" -p "lfLegQd1_toe03_2_pxGeo";
	rename -uid "0A7CB0D4-4105-4D26-8B1A-E7B834E627B3";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -2.82946181 -0.8623994 -0.8623994 -2.82946181 0 -1.21961689
		 -2.82946181 0.8623994 -0.8623994 -2.82946181 1.21961689 0 -2.82946181 0.8623994 0.8623994
		 -2.82946181 0 1.21961689 -2.82946181 -0.86239946 0.86239946 -2.82946181 -1.21961701 0
		 0 -0.8623994 -0.8623994 0 0 -1.21961689 0 0.8623994 -0.8623994 0 1.21961689 0 0 0.8623994 0.8623994
		 0 0 1.21961689 0 -0.86239946 0.86239946 0 -1.21961701 0 2.82946181 -0.8623994 -0.8623994
		 2.82946181 0 -1.21961689 2.82946181 0.8623994 -0.8623994 2.82946181 1.21961689 0
		 2.82946181 0.8623994 0.8623994 2.82946181 0 1.21961689 2.82946181 -0.86239946 0.86239946
		 2.82946181 -1.21961701 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd1_toe03_3_pxGeo_ofs" -p "lfLegQd1_PRX";
	rename -uid "B72B5EA7-4E10-6E3C-DD5C-2CB7C13B5531";
	setAttr ".t" -type "double3" 15.88757098602705 4.2955069027043526 65.225619571397587 ;
	setAttr ".r" -type "double3" -182.75905855210991 -19.712110545773111 -89.068747439121779 ;
createNode transform -n "lfLegQd1_toe03_3_pxGeo" -p "lfLegQd1_toe03_3_pxGeo_ofs";
	rename -uid "7E2E5ED7-48F6-092A-5F25-1987C5809DA2";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -1.7763568394002505e-15 7.1054273576010019e-15 ;
createNode mesh -n "lfLegQd1_toe03_3_pxGeoShape" -p "lfLegQd1_toe03_3_pxGeo";
	rename -uid "027329C4-4A8F-0E99-9727-03890E1D2FE1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.955199 -0.8623994 -0.8623994 -1.955199 0 -1.21961689
		 -1.955199 0.8623994 -0.8623994 -1.955199 1.21961689 0 -1.955199 0.8623994 0.8623994
		 -1.955199 0 1.21961689 -1.955199 -0.86239946 0.86239946 -1.955199 -1.21961701 0 0 -0.8623994 -0.8623994
		 0 0 -1.21961689 0 0.8623994 -0.8623994 0 1.21961689 0 0 0.8623994 0.8623994 0 0 1.21961689
		 0 -0.86239946 0.86239946 0 -1.21961701 0 1.955199 -0.8623994 -0.8623994 1.955199 0 -1.21961689
		 1.955199 0.8623994 -0.8623994 1.955199 1.21961689 0 1.955199 0.8623994 0.8623994
		 1.955199 0 1.21961689 1.955199 -0.86239946 0.86239946 1.955199 -1.21961701 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd1_toe04_2_pxGeo_ofs" -p "lfLegQd1_PRX";
	rename -uid "66D263F6-4D5C-3743-5AEC-559E7147E772";
	setAttr ".t" -type "double3" 16.730485558221503 4.9182684901087788 58.973936965559531 ;
	setAttr ".r" -type "double3" 84.722304452221195 -48.090860985909032 7.0756580460278977 ;
createNode transform -n "lfLegQd1_toe04_2_pxGeo" -p "lfLegQd1_toe04_2_pxGeo_ofs";
	rename -uid "91CE707C-4ACE-6267-84E3-6CA80B5336BB";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 1.4210854715202004e-14 -5.5511151231257827e-17 ;
createNode mesh -n "lfLegQd1_toe04_2_pxGeoShape" -p "lfLegQd1_toe04_2_pxGeo";
	rename -uid "D43AF2D7-459C-8302-8CF3-10B7AA90E4C9";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -2.17609859 -0.80022538 -0.80022538 -2.17609859 0 -1.13168955
		 -2.17609859 0.80022538 -0.80022538 -2.17609859 1.13168955 0 -2.17609859 0.80022538 0.80022538
		 -2.17609859 0 1.13168955 -2.17609859 -0.80022544 0.80022544 -2.17609859 -1.13168967 0
		 0 -0.80022538 -0.80022538 0 0 -1.13168955 0 0.80022538 -0.80022538 0 1.13168955 0
		 0 0.80022538 0.80022538 0 0 1.13168955 0 -0.80022544 0.80022544 0 -1.13168967 0 2.17609859 -0.80022538 -0.80022538
		 2.17609859 0 -1.13168955 2.17609859 0.80022538 -0.80022538 2.17609859 1.13168955 0
		 2.17609859 0.80022538 0.80022538 2.17609859 0 1.13168955 2.17609859 -0.80022544 0.80022544
		 2.17609859 -1.13168967 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd1_toe04_4_pxGeo_ofs" -p "lfLegQd1_PRX";
	rename -uid "C3C83275-4DF5-BE21-31D3-C3A5EA5DF1E0";
	setAttr ".t" -type "double3" 19.12111200333851 2.621326443085557 63.259601194992683 ;
	setAttr ".r" -type "double3" 90.000000000000924 -71.571425392933946 -3.0183465062071892e-13 ;
createNode transform -n "lfLegQd1_toe04_4_pxGeo" -p "lfLegQd1_toe04_4_pxGeo_ofs";
	rename -uid "EE7B5E92-4695-559E-D6EC-BEB5904C36BE";
	setAttr ".t" -type "double3" 1.4210854715202004e-14 -4.4408920985006262e-16 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode mesh -n "lfLegQd1_toe04_4_pxGeoShape" -p "lfLegQd1_toe04_4_pxGeo";
	rename -uid "CD5D22B0-4F96-BE36-F208-A68795F4A6B7";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.52712989 -0.80022538 -0.80022538 -1.52712989 0 -1.13168955
		 -1.52712989 0.80022538 -0.80022538 -1.52712989 1.13168955 0 -1.52712989 0.80022538 0.80022538
		 -1.52712989 0 1.13168955 -1.52712989 -0.80022544 0.80022544 -1.52712989 -1.13168967 0
		 0 -0.80022538 -0.80022538 0 0 -1.13168955 0 0.80022538 -0.80022538 0 1.13168955 0
		 0 0.80022538 0.80022538 0 0 1.13168955 0 -0.80022544 0.80022544 0 -1.13168967 0 1.52712989 -0.80022538 -0.80022538
		 1.52712989 0 -1.13168955 1.52712989 0.80022538 -0.80022538 1.52712989 1.13168955 0
		 1.52712989 0.80022538 0.80022538 1.52712989 0 1.13168955 1.52712989 -0.80022544 0.80022544
		 1.52712989 -1.13168967 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd1_toe04_1_pxGeo_ofs" -p "lfLegQd1_PRX";
	rename -uid "98F02EFD-4EC7-E6F0-2941-7BBD82129AF1";
	setAttr ".t" -type "double3" 14.445858510309169 8.8535652473462534 56.399030882016305 ;
	setAttr ".r" -type "double3" 137.81364688395465 -10.485645121893185 -80.634031933905391 ;
createNode transform -n "lfLegQd1_toe04_1_pxGeo" -p "lfLegQd1_toe04_1_pxGeo_ofs";
	rename -uid "3B419F99-4A03-0145-A347-C794E7F0F2AE";
	setAttr ".t" -type "double3" 1.6653345369377348e-15 -7.1054273576010019e-15 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999956 0.99999999999999956 ;
createNode mesh -n "lfLegQd1_toe04_1_pxGeoShape" -p "lfLegQd1_toe04_1_pxGeo";
	rename -uid "2C554859-49FF-E759-0337-B8987A474522";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -3.8351295 -0.80022538 -0.80022538 -3.8351295 0 -1.13168955
		 -3.8351295 0.80022538 -0.80022538 -3.8351295 1.13168955 0 -3.8351295 0.80022538 0.80022538
		 -3.8351295 0 1.13168955 -3.8351295 -0.80022544 0.80022544 -3.8351295 -1.13168967 0
		 0 -0.80022538 -0.80022538 0 0 -1.13168955 0 0.80022538 -0.80022538 0 1.13168955 0
		 0 0.80022538 0.80022538 0 0 1.13168955 0 -0.80022544 0.80022544 0 -1.13168967 0 3.8351295 -0.80022538 -0.80022538
		 3.8351295 0 -1.13168955 3.8351295 0.80022538 -0.80022538 3.8351295 1.13168955 0 3.8351295 0.80022538 0.80022538
		 3.8351295 0 1.13168955 3.8351295 -0.80022544 0.80022544 3.8351295 -1.13168967 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd1_toe04_3_pxGeo_ofs" -p "lfLegQd1_PRX";
	rename -uid "A036C2BC-4920-8B1B-C936-2AB712A05BA1";
	setAttr ".t" -type "double3" 18.458964624788976 3.869267117049997 61.211572998836097 ;
	setAttr ".r" -type "double3" 163.01247454509826 -19.259159787690859 -84.246060090764772 ;
createNode transform -n "lfLegQd1_toe04_3_pxGeo" -p "lfLegQd1_toe04_3_pxGeo_ofs";
	rename -uid "45949F04-4124-62F5-8203-5D97C5FB20B6";
	setAttr ".t" -type "double3" 0 -1.3322676295501878e-15 0 ;
createNode mesh -n "lfLegQd1_toe04_3_pxGeoShape" -p "lfLegQd1_toe04_3_pxGeo";
	rename -uid "F57BAC24-4FCC-F86B-B11C-229146C4A6E2";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.19575286 -0.80022538 -0.80022538 -1.19575286 0 -1.13168955
		 -1.19575286 0.80022538 -0.80022538 -1.19575286 1.13168955 0 -1.19575286 0.80022538 0.80022538
		 -1.19575286 0 1.13168955 -1.19575286 -0.80022544 0.80022544 -1.19575286 -1.13168967 0
		 0 -0.80022538 -0.80022538 0 0 -1.13168955 0 0.80022538 -0.80022538 0 1.13168955 0
		 0 0.80022538 0.80022538 0 0 1.13168955 0 -0.80022544 0.80022544 0 -1.13168967 0 1.19575286 -0.80022538 -0.80022538
		 1.19575286 0 -1.13168955 1.19575286 0.80022538 -0.80022538 1.19575286 1.13168955 0
		 1.19575286 0.80022538 0.80022538 1.19575286 0 1.13168955 1.19575286 -0.80022544 0.80022544
		 1.19575286 -1.13168967 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd1_scapTip_end_pxGeo_ofs" -p "lfLegQd1_PRX";
	rename -uid "D2ABC865-473A-CA2A-3DBD-869BA92DFC4E";
	setAttr ".t" -type "double3" 8.5725586674959704 100.7521258392233 55.851647784140134 ;
	setAttr ".r" -type "double3" 90.000000000000014 16.744161296497754 101.11288760335781 ;
createNode transform -n "lfLegQd1_scapTip_end_pxGeo" -p "lfLegQd1_scapTip_end_pxGeo_ofs";
	rename -uid "49CEC927-4CCE-87B9-59AF-BD8E5F0FA621";
	setAttr ".t" -type "double3" 0 1.4210854715202004e-14 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode mesh -n "lfLegQd1_scapTip_end_pxGeoShape" -p "lfLegQd1_scapTip_end_pxGeo";
	rename -uid "E73DA92A-4C42-F5A1-4B77-479655ED0341";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -2.29576755 -4.50931263 -4.50931263 -2.29576755 0 -6.37713099
		 -2.29576755 4.50931263 -4.50931263 -2.29576755 6.37713099 0 -2.29576755 4.50931263 4.50931263
		 -2.29576755 0 6.37713146 -2.29576755 -4.50931311 4.50931311 -2.29576755 -6.37713194 0
		 0 -4.50931263 -4.50931263 0 0 -6.37713099 0 4.50931263 -4.50931263 0 6.37713099 0
		 0 4.50931263 4.50931263 0 0 6.37713146 0 -4.50931311 4.50931311 0 -6.37713194 0 2.29576755 -4.50931263 -4.50931263
		 2.29576755 0 -6.37713099 2.29576755 4.50931263 -4.50931263 2.29576755 6.37713099 0
		 2.29576755 4.50931263 4.50931263 2.29576755 0 6.37713146 2.29576755 -4.50931311 4.50931311
		 2.29576755 -6.37713194 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd1_radius_pxGeo_ofs" -p "lfLegQd1_PRX";
	rename -uid "7796F209-4967-3537-9ED4-1E8C826658E1";
	setAttr ".t" -type "double3" 12.900712034429205 31.979188546959403 56.258562192601325 ;
	setAttr ".r" -type "double3" -166.86530433320513 -172.14200270129086 79.505308737713619 ;
createNode transform -n "lfLegQd1_radius_pxGeo" -p "lfLegQd1_radius_pxGeo_ofs";
	rename -uid "5A9E2116-402B-25F2-12FD-F28AB71C4FE0";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 0 ;
createNode mesh -n "lfLegQd1_radius_pxGeoShape" -p "lfLegQd1_radius_pxGeo";
	rename -uid "3308E12E-4CB8-5A66-2958-BDB45CA98C5A";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -11.66041088 -2.29032087 -2.29032087 -11.66041088 0 -3.2390027
		 -11.66041088 2.29032087 -2.29032087 -11.66041088 3.2390027 0 -11.66041088 2.29032087 2.29032087
		 -11.66041088 0 3.23900294 -11.66041088 -2.29032111 2.29032111 -11.66041088 -3.23900318 0
		 0 -2.29032087 -2.29032087 0 0 -3.2390027 0 2.29032087 -2.29032087 0 3.2390027 0 0 2.29032087 2.29032087
		 0 0 3.23900294 0 -2.29032111 2.29032111 0 -3.23900318 0 11.66041088 -2.29032087 -2.29032087
		 11.66041088 0 -3.2390027 11.66041088 2.29032087 -2.29032087 11.66041088 3.2390027 0
		 11.66041088 2.29032087 2.29032087 11.66041088 0 3.23900294 11.66041088 -2.29032111 2.29032111
		 11.66041088 -3.23900318 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd1_ulna_pxGeo_ofs" -p "lfLegQd1_PRX";
	rename -uid "4EF3886E-47FC-628B-EF1F-72A92BC2FC88";
	setAttr ".t" -type "double3" 13.983410168549931 35.190971650800975 51.651701170740154 ;
	setAttr ".r" -type "double3" -167.65054374222831 -167.53381140792047 89.001913374975047 ;
createNode transform -n "lfLegQd1_ulna_pxGeo" -p "lfLegQd1_ulna_pxGeo_ofs";
	rename -uid "37CC0F88-429F-B1EB-6DB0-0792F32A0CFD";
	setAttr ".t" -type "double3" 1.4210854715202004e-14 0 7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000002 ;
createNode mesh -n "lfLegQd1_ulna_pxGeoShape" -p "lfLegQd1_ulna_pxGeo";
	rename -uid "561B7E99-461A-2A2C-096D-5C9D3DDBB62E";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -15.15849495 -2.9774096 -2.9774096 -15.15849495 0 -4.21069288
		 -15.15849495 2.9774096 -2.9774096 -15.15849495 4.21069288 0 -15.15849495 2.9774096 2.9774096
		 -15.15849495 0 4.21069288 -15.15849495 -2.97740984 2.97740984 -15.15849495 -4.21069336 0
		 0 -2.9774096 -2.9774096 0 0 -4.21069288 0 2.9774096 -2.9774096 0 4.21069288 0 0 2.9774096 2.9774096
		 0 0 4.21069288 0 -2.97740984 2.97740984 0 -4.21069336 0 15.15849495 -2.9774096 -2.9774096
		 15.15849495 0 -4.21069288 15.15849495 2.9774096 -2.9774096 15.15849495 4.21069288 0
		 15.15849495 2.9774096 2.9774096 15.15849495 0 4.21069288 15.15849495 -2.97740984 2.97740984
		 15.15849495 -4.21069336 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd1_upr_pxGeo_ofs" -p "lfLegQd1_PRX";
	rename -uid "7EAB2912-47C2-045B-A67C-91A71AE71345";
	setAttr ".t" -type "double3" 14.112337018814694 61.262709277875445 58.378914141756134 ;
	setAttr ".r" -type "double3" 13.967066537180761 24.443160919227644 -88.838635641928164 ;
createNode transform -n "lfLegQd1_upr_pxGeo" -p "lfLegQd1_upr_pxGeo_ofs";
	rename -uid "D5B11533-4451-F96D-F85D-63812DCF7D54";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 3.5527136788005009e-15 -1.4210854715202004e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999989 ;
createNode mesh -n "lfLegQd1_upr_pxGeoShape" -p "lfLegQd1_upr_pxGeo";
	rename -uid "5D245D68-45AD-9602-83DE-B8866A8C42F0";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -12.4445715 -4.50931263 -4.50931263 -12.4445715 0 -6.37713099
		 -12.4445715 4.50931263 -4.50931263 -12.4445715 6.37713099 0 -12.4445715 4.50931263 4.50931263
		 -12.4445715 0 6.37713146 -12.4445715 -4.50931311 4.50931311 -12.4445715 -6.37713194 0
		 0 -4.50931263 -4.50931263 0 0 -6.37713099 0 4.50931263 -4.50931263 0 6.37713099 0
		 0 4.50931263 4.50931263 0 0 6.37713146 0 -4.50931311 4.50931311 0 -6.37713194 0 12.4445715 -4.50931263 -4.50931263
		 12.4445715 0 -6.37713099 12.4445715 4.50931263 -4.50931263 12.4445715 6.37713099 0
		 12.4445715 4.50931263 4.50931263 12.4445715 0 6.37713146 12.4445715 -4.50931311 4.50931311
		 12.4445715 -6.37713194 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd1_toe01_1_pxGeo_ofs" -p "lfLegQd1_PRX";
	rename -uid "8B45514F-42C9-FADC-4D8B-7D8C2FE7A93F";
	setAttr ".t" -type "double3" 8.3208451335095308 8.9708957856128588 59.369251472569928 ;
	setAttr ".r" -type "double3" -156.57167633810235 -14.428807242668105 -96.16262094534882 ;
createNode transform -n "lfLegQd1_toe01_1_pxGeo" -p "lfLegQd1_toe01_1_pxGeo_ofs";
	rename -uid "D0FF6FC4-42CB-2787-04F0-21BB9E345BF3";
	setAttr ".t" -type "double3" 1.5543122344752192e-15 3.5527136788005009e-15 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode mesh -n "lfLegQd1_toe01_1_pxGeoShape" -p "lfLegQd1_toe01_1_pxGeo";
	rename -uid "20856E7D-4DE7-F835-5730-5880070B3389";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -3.547194 -0.84591752 -0.84591752 -3.547194 0 -1.19630802
		 -3.547194 0.84591752 -0.84591752 -3.547194 1.19630802 0 -3.547194 0.84591752 0.84591752
		 -3.547194 0 1.19630802 -3.547194 -0.84591758 0.84591758 -3.547194 -1.19630814 0 0 -0.84591752 -0.84591752
		 0 0 -1.19630802 0 0.84591752 -0.84591752 0 1.19630802 0 0 0.84591752 0.84591752 0 0 1.19630802
		 0 -0.84591758 0.84591758 0 -1.19630814 0 3.547194 -0.84591752 -0.84591752 3.547194 0 -1.19630802
		 3.547194 0.84591752 -0.84591752 3.547194 1.19630802 0 3.547194 0.84591752 0.84591752
		 3.547194 0 1.19630802 3.547194 -0.84591758 0.84591758 3.547194 -1.19630814 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd1_toe01_3_pxGeo_ofs" -p "lfLegQd1_PRX";
	rename -uid "7F359770-4B63-1092-BE85-ED837E5D337A";
	setAttr ".t" -type "double3" 8.3876014683065065 3.6153991377512371 66.064229199556067 ;
	setAttr ".r" -type "double3" -184.4834644062889 -13.006053633741184 -88.989018776305016 ;
createNode transform -n "lfLegQd1_toe01_3_pxGeo" -p "lfLegQd1_toe01_3_pxGeo_ofs";
	rename -uid "2008A256-4C67-483E-CF72-6A9F9CEF66AB";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 1.3322676295501878e-15 1.4210854715202004e-14 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode mesh -n "lfLegQd1_toe01_3_pxGeoShape" -p "lfLegQd1_toe01_3_pxGeo";
	rename -uid "C64673DD-4187-DF62-724E-8DB7F4D84610";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.79480827 -0.84591752 -0.84591752 -1.79480827 0 -1.19630802
		 -1.79480827 0.84591752 -0.84591752 -1.79480827 1.19630802 0 -1.79480827 0.84591752 0.84591752
		 -1.79480827 0 1.19630802 -1.79480827 -0.84591758 0.84591758 -1.79480827 -1.19630814 0
		 0 -0.84591752 -0.84591752 0 0 -1.19630802 0 0.84591752 -0.84591752 0 1.19630802 0
		 0 0.84591752 0.84591752 0 0 1.19630802 0 -0.84591758 0.84591758 0 -1.19630814 0 1.79480827 -0.84591752 -0.84591752
		 1.79480827 0 -1.19630802 1.79480827 0.84591752 -0.84591752 1.79480827 1.19630802 0
		 1.79480827 0.84591752 0.84591752 1.79480827 0 1.19630802 1.79480827 -0.84591758 0.84591758
		 1.79480827 -1.19630814 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd1_toe01_4_pxGeo_ofs" -p "lfLegQd1_PRX";
	rename -uid "7855D40D-42DF-B526-DCFB-7E9D2C0AD306";
	setAttr ".t" -type "double3" 8.9419765238751783 1.672629650525405 68.128177525540124 ;
	setAttr ".r" -type "double3" 90.000000000000213 -72.150901321360934 -8.3013101631652193e-14 ;
createNode transform -n "lfLegQd1_toe01_4_pxGeo" -p "lfLegQd1_toe01_4_pxGeo_ofs";
	rename -uid "56D0EC19-47FC-97FF-7655-9F970738262C";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 2.2204460492503131e-16 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode mesh -n "lfLegQd1_toe01_4_pxGeoShape" -p "lfLegQd1_toe01_4_pxGeo";
	rename -uid "BACA1F42-467F-2E61-876D-70AB5DC7CC56";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.52712989 -0.84591752 -0.84591752 -1.52712989 0 -1.19630802
		 -1.52712989 0.84591752 -0.84591752 -1.52712989 1.19630802 0 -1.52712989 0.84591752 0.84591752
		 -1.52712989 0 1.19630802 -1.52712989 -0.84591758 0.84591758 -1.52712989 -1.19630814 0
		 0 -0.84591752 -0.84591752 0 0 -1.19630802 0 0.84591752 -0.84591752 0 1.19630802 0
		 0 0.84591752 0.84591752 0 0 1.19630802 0 -0.84591758 0.84591758 0 -1.19630814 0 1.52712989 -0.84591752 -0.84591752
		 1.52712989 0 -1.19630802 1.52712989 0.84591752 -0.84591752 1.52712989 1.19630802 0
		 1.52712989 0.84591752 0.84591752 1.52712989 0 1.19630802 1.52712989 -0.84591758 0.84591758
		 1.52712989 -1.19630814 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd1_toe01_2_pxGeo_ofs" -p "lfLegQd1_PRX";
	rename -uid "DBDCFE8A-458C-7E16-037F-D3AA3DB81A29";
	setAttr ".t" -type "double3" 8.1322020638902046 5.3670564274664363 62.983379116628925 ;
	setAttr ".r" -type "double3" 49.336474828348024 -83.663865257199305 40.837127947496946 ;
createNode transform -n "lfLegQd1_toe01_2_pxGeo" -p "lfLegQd1_toe01_2_pxGeo_ofs";
	rename -uid "325E0E2D-49AB-5EEF-9A31-D3B56BFCED33";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 0 3.3306690738754696e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999967 ;
createNode mesh -n "lfLegQd1_toe01_2_pxGeoShape" -p "lfLegQd1_toe01_2_pxGeo";
	rename -uid "055C6B9F-4931-4027-F87C-9C97B1E54A0F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -2.3833952 -0.84591752 -0.84591752 -2.3833952 0 -1.19630802
		 -2.3833952 0.84591752 -0.84591752 -2.3833952 1.19630802 0 -2.3833952 0.84591752 0.84591752
		 -2.3833952 0 1.19630802 -2.3833952 -0.84591758 0.84591758 -2.3833952 -1.19630814 0
		 0 -0.84591752 -0.84591752 0 0 -1.19630802 0 0.84591752 -0.84591752 0 1.19630802 0
		 0 0.84591752 0.84591752 0 0 1.19630802 0 -0.84591758 0.84591758 0 -1.19630814 0 2.3833952 -0.84591752 -0.84591752
		 2.3833952 0 -1.19630802 2.3833952 0.84591752 -0.84591752 2.3833952 1.19630802 0 2.3833952 0.84591752 0.84591752
		 2.3833952 0 1.19630802 2.3833952 -0.84591758 0.84591758 2.3833952 -1.19630814 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "neckQd0_PRX" -p "PRX";
	rename -uid "BB69ED61-4042-9E3F-AEA9-AAA7404EA6A6";
createNode transform -n "neckQd0_0_rbj_pxGeo_ofs" -p "neckQd0_PRX";
	rename -uid "F78CB50C-4E19-4A25-65C3-ECA0611453FA";
	setAttr ".t" -type "double3" 1.4432899320127073e-14 89.19503967441986 64.830668500115692 ;
	setAttr ".r" -type "double3" -1.7671633006061347e-14 -79.631358420106395 89.999999999999929 ;
createNode transform -n "neckQd0_0_rbj_pxGeo" -p "neckQd0_0_rbj_pxGeo_ofs";
	rename -uid "8E47BF07-447C-51CF-C367-7C9925C4D67B";
	setAttr ".t" -type "double3" 0 0 1.4210854715202004e-14 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode mesh -n "neckQd0_0_rbj_pxGeoShape" -p "neckQd0_0_rbj_pxGeo";
	rename -uid "300F2307-44AB-8E19-66D9-AA9A0148A20D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -2.0070605278 -3.15379095 -3.15379095 -2.0070605278 0 -4.46013403
		 -2.0070605278 3.15379095 -3.15379095 -2.0070605278 4.46013403 0 -2.0070605278 3.15379095 3.15379095
		 -2.0070605278 0 4.46013403 -2.0070605278 -3.15379119 3.15379119 -2.0070605278 -4.46013451 0
		 0 -3.15379095 -3.15379095 0 0 -4.46013403 0 3.15379095 -3.15379095 0 4.46013403 0
		 0 3.15379095 3.15379095 0 0 4.46013403 0 -3.15379119 3.15379119 0 -4.46013451 0 2.0070605278 -3.15379095 -3.15379095
		 2.0070605278 0 -4.46013403 2.0070605278 3.15379095 -3.15379095 2.0070605278 4.46013403 0
		 2.0070605278 3.15379095 3.15379095 2.0070605278 0 4.46013403 2.0070605278 -3.15379119 3.15379119
		 2.0070605278 -4.46013451 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "neckQd0_1_rbj_pxGeo_ofs" -p "neckQd0_PRX";
	rename -uid "09429E18-4114-4A9D-3B49-22846837AD69";
	setAttr ".t" -type "double3" 1.0201081673862165e-14 91.838977340153377 74.394750170138224 ;
	setAttr ".r" -type "double3" -8.7217858055785909e-15 -68.612858326536241 90.000000000000142 ;
createNode transform -n "neckQd0_1_rbj_pxGeo" -p "neckQd0_1_rbj_pxGeo_ofs";
	rename -uid "026CA76F-4459-2F4F-28FD-21BEF221A285";
	setAttr ".t" -type "double3" 0 5.0487097934144756e-29 0 ;
createNode mesh -n "neckQd0_1_rbj_pxGeoShape" -p "neckQd0_1_rbj_pxGeo";
	rename -uid "34F6B451-4A6F-D467-4CAE-499814F3453A";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -2.0070605278 -3.15379095 -3.15379095 -2.0070605278 0 -4.46013403
		 -2.0070605278 3.15379095 -3.15379095 -2.0070605278 4.46013403 0 -2.0070605278 3.15379095 3.15379095
		 -2.0070605278 0 4.46013403 -2.0070605278 -3.15379119 3.15379119 -2.0070605278 -4.46013451 0
		 0 -3.15379095 -3.15379095 0 0 -4.46013403 0 3.15379095 -3.15379095 0 4.46013403 0
		 0 3.15379095 3.15379095 0 0 4.46013403 0 -3.15379119 3.15379119 0 -4.46013451 0 2.0070605278 -3.15379095 -3.15379095
		 2.0070605278 0 -4.46013403 2.0070605278 3.15379095 -3.15379095 2.0070605278 4.46013403 0
		 2.0070605278 3.15379095 3.15379095 2.0070605278 0 4.46013403 2.0070605278 -3.15379119 3.15379119
		 2.0070605278 -4.46013451 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "neckQd0_2_rbj_pxGeo_ofs" -p "neckQd0_PRX";
	rename -uid "D219D7E2-4D6B-52DD-89A7-A1AD2F505FA5";
	setAttr ".t" -type "double3" 2.3354126408935342e-15 96.650589287122642 83.104687497830085 ;
	setAttr ".r" -type "double3" 0 -54.031957829440969 90.000000000000085 ;
createNode transform -n "neckQd0_2_rbj_pxGeo" -p "neckQd0_2_rbj_pxGeo_ofs";
	rename -uid "14C609C1-45FF-EF5E-7FF8-D6A03E7CC1F2";
	setAttr ".t" -type "double3" 0 -2.5243548967072378e-29 -1.4210854715202004e-14 ;
createNode mesh -n "neckQd0_2_rbj_pxGeoShape" -p "neckQd0_2_rbj_pxGeo";
	rename -uid "870AF0DE-42BE-3B13-1EBA-0F98AD9D090E";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -2.0070605278 -3.15379095 -3.15379095 -2.0070605278 0 -4.46013403
		 -2.0070605278 3.15379095 -3.15379095 -2.0070605278 4.46013403 0 -2.0070605278 3.15379095 3.15379095
		 -2.0070605278 0 4.46013403 -2.0070605278 -3.15379119 3.15379119 -2.0070605278 -4.46013451 0
		 0 -3.15379095 -3.15379095 0 0 -4.46013403 0 3.15379095 -3.15379095 0 4.46013403 0
		 0 3.15379095 3.15379095 0 0 4.46013403 0 -3.15379119 3.15379119 0 -4.46013451 0 2.0070605278 -3.15379095 -3.15379095
		 2.0070605278 0 -4.46013403 2.0070605278 3.15379095 -3.15379095 2.0070605278 4.46013403 0
		 2.0070605278 3.15379095 3.15379095 2.0070605278 0 4.46013403 2.0070605278 -3.15379119 3.15379119
		 2.0070605278 -4.46013451 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "neckQd0_3_rbj_pxGeo_ofs" -p "neckQd0_PRX";
	rename -uid "376BC923-419A-004F-0A7E-E092A041ECC0";
	setAttr ".t" -type "double3" -1.7763568394002503e-15 102.88318489164752 90.661383768901018 ;
	setAttr ".r" -type "double3" 0 -48.724430538921574 90 ;
createNode transform -n "neckQd0_3_rbj_pxGeo" -p "neckQd0_3_rbj_pxGeo_ofs";
	rename -uid "F226C1CA-465F-B6F6-F754-B896FC1E30C2";
createNode mesh -n "neckQd0_3_rbj_pxGeoShape" -p "neckQd0_3_rbj_pxGeo";
	rename -uid "0CE064CE-4BDD-F432-5BE9-A18398D13894";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -2.0070605278 -3.15379095 -3.15379095 -2.0070605278 0 -4.46013403
		 -2.0070605278 3.15379095 -3.15379095 -2.0070605278 4.46013403 0 -2.0070605278 3.15379095 3.15379095
		 -2.0070605278 0 4.46013403 -2.0070605278 -3.15379119 3.15379119 -2.0070605278 -4.46013451 0
		 0 -3.15379095 -3.15379095 0 0 -4.46013403 0 3.15379095 -3.15379095 0 4.46013403 0
		 0 3.15379095 3.15379095 0 0 4.46013403 0 -3.15379119 3.15379119 0 -4.46013451 0 2.0070605278 -3.15379095 -3.15379095
		 2.0070605278 0 -4.46013403 2.0070605278 3.15379095 -3.15379095 2.0070605278 4.46013403 0
		 2.0070605278 3.15379095 3.15379095 2.0070605278 0 4.46013403 2.0070605278 -3.15379119 3.15379119
		 2.0070605278 -4.46013451 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd0_PRX" -p "PRX";
	rename -uid "3C8591BE-44A5-E944-2C91-639758BA92C4";
createNode transform -n "lfLegQd0_patella_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "2C442772-48D8-E3DD-2B7A-FA92142A9B45";
	setAttr ".t" -type "double3" 12.65799158210967 53.997846209432382 -35.483614028680265 ;
	setAttr ".r" -type "double3" -9.4619846652440334 152.10390176594223 85.676314812942863 ;
createNode transform -n "lfLegQd0_patella_pxGeo" -p "lfLegQd0_patella_pxGeo_ofs";
	rename -uid "11AD52D8-4F7A-133B-9DBE-DABBC83EEB00";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 -7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode mesh -n "lfLegQd0_patella_pxGeoShape" -p "lfLegQd0_patella_pxGeo";
	rename -uid "524085F0-4E7C-5EBB-09F5-B78CC43EBD99";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -2.15917754 -4.24102497 -4.24102497 -2.15917754 0 -5.997715
		 -2.15917754 4.24102497 -4.24102497 -2.15917754 5.997715 0 -2.15917754 4.24102497 4.24102497
		 -2.15917754 0 5.997715 -2.15917754 -4.24102545 4.24102545 -2.15917754 -5.99771547 0
		 0 -4.24102497 -4.24102497 0 0 -5.997715 0 4.24102497 -4.24102497 0 5.997715 0 0 4.24102497 4.24102497
		 0 0 5.997715 0 -4.24102545 4.24102545 0 -5.99771547 0 2.15917754 -4.24102497 -4.24102497
		 2.15917754 0 -5.997715 2.15917754 4.24102497 -4.24102497 2.15917754 5.997715 0 2.15917754 4.24102497 4.24102497
		 2.15917754 0 5.997715 2.15917754 -4.24102545 4.24102545 2.15917754 -5.99771547 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd0_radius_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "089BC570-46AD-5163-5071-A2BB488DB0C8";
	setAttr ".t" -type "double3" 11.07064807009445 36.754872439159456 -42.696165946500031 ;
	setAttr ".r" -type "double3" -9.2656793952939118 153.84847078326186 86.105122199847912 ;
createNode transform -n "lfLegQd0_radius_pxGeo" -p "lfLegQd0_radius_pxGeo_ofs";
	rename -uid "5174F634-4917-551D-2BEC-B085137AC918";
	setAttr ".t" -type "double3" 0 0 7.1054273576010019e-15 ;
createNode mesh -n "lfLegQd0_radius_pxGeoShape" -p "lfLegQd0_radius_pxGeo";
	rename -uid "F37F8D0A-4085-B406-C10E-ED9967D1DA9D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -11.93856335 -2.34495497 -2.34495497 -11.93856335 0 -3.31626701
		 -11.93856335 2.34495497 -2.34495497 -11.93856335 3.31626701 0 -11.93856335 2.34495497 2.34495497
		 -11.93856335 0 3.31626725 -11.93856335 -2.34495521 2.34495521 -11.93856335 -3.31626749 0
		 0 -2.34495497 -2.34495497 0 0 -3.31626701 0 2.34495497 -2.34495497 0 3.31626701 0
		 0 2.34495497 2.34495497 0 0 3.31626725 0 -2.34495521 2.34495521 0 -3.31626749 0 11.93856335 -2.34495497 -2.34495497
		 11.93856335 0 -3.31626701 11.93856335 2.34495497 -2.34495497 11.93856335 3.31626701 0
		 11.93856335 2.34495497 2.34495497 11.93856335 0 3.31626725 11.93856335 -2.34495521 2.34495521
		 11.93856335 -3.31626749 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd0_ulna_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "B5B998E8-4903-87A9-C7EF-DF86681FAC22";
	setAttr ".t" -type "double3" 13.026544479411351 35.500465393979468 -45.088960153812707 ;
	setAttr ".r" -type "double3" -9.5538055443008147 157.45306777448707 85.566803434795304 ;
createNode transform -n "lfLegQd0_ulna_pxGeo" -p "lfLegQd0_ulna_pxGeo_ofs";
	rename -uid "D68DA8DE-4E74-F7F3-BCC5-96ADEB2CA1AA";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 0 -7.1054273576010019e-15 ;
createNode mesh -n "lfLegQd0_ulna_pxGeoShape" -p "lfLegQd0_ulna_pxGeo";
	rename -uid "76B7AA7A-4C91-668E-6DD4-2A9ADA9010A3";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -11.99796486 -2.3566227 -2.3566227 -11.99796486 0 -3.33276749
		 -11.99796486 2.3566227 -2.3566227 -11.99796486 3.33276749 0 -11.99796486 2.3566227 2.3566227
		 -11.99796486 0 3.33276772 -11.99796486 -2.3566227 2.3566227 -11.99796486 -3.33276796 0
		 0 -2.3566227 -2.3566227 0 0 -3.33276749 0 2.3566227 -2.3566227 0 3.33276749 0 0 2.3566227 2.3566227
		 0 0 3.33276772 0 -2.3566227 2.3566227 0 -3.33276796 0 11.99796486 -2.3566227 -2.3566227
		 11.99796486 0 -3.33276749 11.99796486 2.3566227 -2.3566227 11.99796486 3.33276749 0
		 11.99796486 2.3566227 2.3566227 11.99796486 0 3.33276772 11.99796486 -2.3566227 2.3566227
		 11.99796486 -3.33276796 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd0_hip_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "2F12F735-45F4-6D30-1F7D-03BE9461EBC5";
	setAttr ".t" -type "double3" 10.493951323749439 88.91011575148589 -37.624494233150848 ;
	setAttr ".r" -type "double3" 2.453373909237639 132.27714362201669 95.542950963022122 ;
createNode transform -n "lfLegQd0_hip_pxGeo" -p "lfLegQd0_hip_pxGeo_ofs";
	rename -uid "E41D6F77-43A1-1DD2-EE29-CD80E2B56E4B";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode mesh -n "lfLegQd0_hip_pxGeoShape" -p "lfLegQd0_hip_pxGeo";
	rename -uid "4D172424-415A-F3BB-A795-1AB1B667CCB5";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -6.84153032 -4.24102497 -4.24102497 -6.84153032 0 -5.997715
		 -6.84153032 4.24102497 -4.24102497 -6.84153032 5.997715 0 -6.84153032 4.24102497 4.24102497
		 -6.84153032 0 5.997715 -6.84153032 -4.24102545 4.24102545 -6.84153032 -5.99771547 0
		 0 -4.24102497 -4.24102497 0 0 -5.997715 0 4.24102497 -4.24102497 0 5.997715 0 0 4.24102497 4.24102497
		 0 0 5.997715 0 -4.24102545 4.24102545 0 -5.99771547 0 6.84153032 -4.24102497 -4.24102497
		 6.84153032 0 -5.997715 6.84153032 4.24102497 -4.24102497 6.84153032 5.997715 0 6.84153032 4.24102497 4.24102497
		 6.84153032 0 5.997715 6.84153032 -4.24102545 4.24102545 6.84153032 -5.99771547 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd0_upr_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "D4C3B864-4137-0E13-8444-E683B04F22AC";
	setAttr ".t" -type "double3" 11.699584689978785 67.856362112408704 -38.658690681397196 ;
	setAttr ".r" -type "double3" -8.694499584157489 -163.97288476982274 92.552601435283989 ;
createNode transform -n "lfLegQd0_upr_pxGeo" -p "lfLegQd0_upr_pxGeo_ofs";
	rename -uid "463DC056-4C83-F521-1BB6-2B9C5932468A";
	setAttr ".t" -type "double3" -2.8421709430404007e-14 -3.5527136788005009e-15 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode mesh -n "lfLegQd0_upr_pxGeoShape" -p "lfLegQd0_upr_pxGeo";
	rename -uid "2F878632-4370-82B0-E0F9-E1909B7DE5B5";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -14.96336174 -4.24102497 -4.24102497 -14.96336174 0 -5.997715
		 -14.96336174 4.24102497 -4.24102497 -14.96336174 5.997715 0 -14.96336174 4.24102497 4.24102497
		 -14.96336174 0 5.997715 -14.96336174 -4.24102545 4.24102545 -14.96336174 -5.99771547 0
		 0 -4.24102497 -4.24102497 0 0 -5.997715 0 4.24102497 -4.24102497 0 5.997715 0 0 4.24102497 4.24102497
		 0 0 5.997715 0 -4.24102545 4.24102545 0 -5.99771547 0 14.96336174 -4.24102497 -4.24102497
		 14.96336174 0 -5.997715 14.96336174 4.24102497 -4.24102497 14.96336174 5.997715 0
		 14.96336174 4.24102497 4.24102497 14.96336174 0 5.997715 14.96336174 -4.24102545 4.24102545
		 14.96336174 -5.99771547 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd0_toe01_2_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "434C130D-4185-D011-7D86-9EBAB12D2432";
	setAttr ".t" -type "double3" 8.0739003186552694 5.261714269224476 -40.548561663443486 ;
	setAttr ".r" -type "double3" 38.291106715845622 -86.855152602049969 51.750882645847007 ;
createNode transform -n "lfLegQd0_toe01_2_pxGeo" -p "lfLegQd0_toe01_2_pxGeo_ofs";
	rename -uid "CBF4EC9E-4D97-5BF1-7F08-3DB14FCE9B2B";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode mesh -n "lfLegQd0_toe01_2_pxGeoShape" -p "lfLegQd0_toe01_2_pxGeo";
	rename -uid "27FF88E4-48F4-D6E7-AC9E-DFA305A3CF4E";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -2.57701135 -1.084226012 -1.084226012 -2.57701135 0 -1.53332698
		 -2.57701135 1.084226012 -1.084226012 -2.57701135 1.53332698 0 -2.57701135 1.084226012 1.084226012
		 -2.57701135 0 1.5333271 -2.57701135 -1.084226012 1.084226012 -2.57701135 -1.53332722 0
		 0 -1.084226012 -1.084226012 0 0 -1.53332698 0 1.084226012 -1.084226012 0 1.53332698 0
		 0 1.084226012 1.084226012 0 0 1.5333271 0 -1.084226012 1.084226012 0 -1.53332722 0
		 2.57701135 -1.084226012 -1.084226012 2.57701135 0 -1.53332698 2.57701135 1.084226012 -1.084226012
		 2.57701135 1.53332698 0 2.57701135 1.084226012 1.084226012 2.57701135 0 1.5333271
		 2.57701135 -1.084226012 1.084226012 2.57701135 -1.53332722 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd0_toe01_1_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "9F45576E-48DB-E77F-6D66-F8B6BADA4396";
	setAttr ".t" -type "double3" 8.2089775661892563 9.7458585818489851 -46.4149292800452 ;
	setAttr ".r" -type "double3" -174.72457368829231 -33.099321025095215 -92.886592146372706 ;
createNode transform -n "lfLegQd0_toe01_1_pxGeo" -p "lfLegQd0_toe01_1_pxGeo_ofs";
	rename -uid "CE5B6BD1-4FB4-91CB-2058-AC9CFDCB194A";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
createNode mesh -n "lfLegQd0_toe01_1_pxGeoShape" -p "lfLegQd0_toe01_1_pxGeo";
	rename -uid "9286D664-49CE-12F1-E154-44875AE288F5";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -4.95630836 -1.084226012 -1.084226012 -4.95630836 0 -1.53332698
		 -4.95630836 1.084226012 -1.084226012 -4.95630836 1.53332698 0 -4.95630836 1.084226012 1.084226012
		 -4.95630836 0 1.5333271 -4.95630836 -1.084226012 1.084226012 -4.95630836 -1.53332722 0
		 0 -1.084226012 -1.084226012 0 0 -1.53332698 0 1.084226012 -1.084226012 0 1.53332698 0
		 0 1.084226012 1.084226012 0 0 1.5333271 0 -1.084226012 1.084226012 0 -1.53332722 0
		 4.95630836 -1.084226012 -1.084226012 4.95630836 0 -1.53332698 4.95630836 1.084226012 -1.084226012
		 4.95630836 1.53332698 0 4.95630836 1.084226012 1.084226012 4.95630836 0 1.5333271
		 4.95630836 -1.084226012 1.084226012 4.95630836 -1.53332722 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd0_toe01_3_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "2FECCDEE-4830-A06A-3438-62AC34E2ACC3";
	setAttr ".t" -type "double3" 8.0896263466767948 3.4413534542474418 -37.286699352378292 ;
	setAttr ".r" -type "double3" -168.31327125969818 -11.698557885133985 -92.401643259488466 ;
createNode transform -n "lfLegQd0_toe01_3_pxGeo" -p "lfLegQd0_toe01_3_pxGeo_ofs";
	rename -uid "0D4166A3-4062-6D4B-3C00-0EABB37D6966";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 2.2204460492503131e-16 0 ;
createNode mesh -n "lfLegQd0_toe01_3_pxGeoShape" -p "lfLegQd0_toe01_3_pxGeo";
	rename -uid "16A086AD-413F-F4F1-1F27-40BBD7F5073E";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.78802991 -1.084226012 -1.084226012 -1.78802991 0 -1.53332698
		 -1.78802991 1.084226012 -1.084226012 -1.78802991 1.53332698 0 -1.78802991 1.084226012 1.084226012
		 -1.78802991 0 1.5333271 -1.78802991 -1.084226012 1.084226012 -1.78802991 -1.53332722 0
		 0 -1.084226012 -1.084226012 0 0 -1.53332698 0 1.084226012 -1.084226012 0 1.53332698 0
		 0 1.084226012 1.084226012 0 0 1.5333271 0 -1.084226012 1.084226012 0 -1.53332722 0
		 1.78802991 -1.084226012 -1.084226012 1.78802991 0 -1.53332698 1.78802991 1.084226012 -1.084226012
		 1.78802991 1.53332698 0 1.78802991 1.084226012 1.084226012 1.78802991 0 1.5333271
		 1.78802991 -1.084226012 1.084226012 1.78802991 -1.53332722 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd0_toe02_2_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "9622F318-42A7-CAF9-E47C-09BCC5C8658D";
	setAttr ".t" -type "double3" 11.081776968531258 5.4929097210420883 -40.556481210092628 ;
	setAttr ".r" -type "double3" 45.706633873675877 -73.239486059405479 45.536875916392141 ;
createNode transform -n "lfLegQd0_toe02_2_pxGeo" -p "lfLegQd0_toe02_2_pxGeo_ofs";
	rename -uid "2A44A37B-41A5-8567-7C5E-E596D9B4DEEF";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode mesh -n "lfLegQd0_toe02_2_pxGeoShape" -p "lfLegQd0_toe02_2_pxGeo";
	rename -uid "27C43BAC-4E86-EECE-AB3E-439117D623AC";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -2.93270016 -1.077497244 -1.077497244 -2.93270016 0 -1.5238111
		 -2.93270016 1.077497244 -1.077497244 -2.93270016 1.5238111 0 -2.93270016 1.077497244 1.077497244
		 -2.93270016 0 1.52381122 -2.93270016 -1.077497363 1.077497363 -2.93270016 -1.52381134 0
		 0 -1.077497244 -1.077497244 0 0 -1.5238111 0 1.077497244 -1.077497244 0 1.5238111 0
		 0 1.077497244 1.077497244 0 0 1.52381122 0 -1.077497363 1.077497363 0 -1.52381134 0
		 2.93270016 -1.077497244 -1.077497244 2.93270016 0 -1.5238111 2.93270016 1.077497244 -1.077497244
		 2.93270016 1.5238111 0 2.93270016 1.077497244 1.077497244 2.93270016 0 1.52381122
		 2.93270016 -1.077497363 1.077497363 2.93270016 -1.52381134 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd0_toe01_4_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "81F86BBF-42EF-0EAF-EDDC-DF9055543DCA";
	setAttr ".t" -type "double3" 8.287693443282496 1.4976302133497781 -35.210252678101327 ;
	setAttr ".r" -type "double3" 90.000000000000398 -80.515937204026955 -7.721045827004838e-14 ;
createNode transform -n "lfLegQd0_toe01_4_pxGeo" -p "lfLegQd0_toe01_4_pxGeo_ofs";
	rename -uid "59378BC2-4ECD-0FD8-8914-3F8B620DF355";
	setAttr ".t" -type "double3" 0 0 2.2204460492503131e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode mesh -n "lfLegQd0_toe01_4_pxGeoShape" -p "lfLegQd0_toe01_4_pxGeo";
	rename -uid "938D249F-4044-4E5D-C537-9890D0E7B573";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.52712989 -1.084226012 -1.084226012 -1.52712989 0 -1.53332698
		 -1.52712989 1.084226012 -1.084226012 -1.52712989 1.53332698 0 -1.52712989 1.084226012 1.084226012
		 -1.52712989 0 1.5333271 -1.52712989 -1.084226012 1.084226012 -1.52712989 -1.53332722 0
		 0 -1.084226012 -1.084226012 0 0 -1.53332698 0 1.084226012 -1.084226012 0 1.53332698 0
		 0 1.084226012 1.084226012 0 0 1.5333271 0 -1.084226012 1.084226012 0 -1.53332722 0
		 1.52712989 -1.084226012 -1.084226012 1.52712989 0 -1.53332698 1.52712989 1.084226012 -1.084226012
		 1.52712989 1.53332698 0 1.52712989 1.084226012 1.084226012 1.52712989 0 1.5333271
		 1.52712989 -1.084226012 1.084226012 1.52712989 -1.53332722 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd0_toe02_1_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "A781C0C7-4197-5158-D918-2BBD19A37FB7";
	setAttr ".t" -type "double3" 10.160911451668584 9.6342922809140727 -45.978998466148241 ;
	setAttr ".r" -type "double3" 172.78332532311728 -25.536331040985488 -86.875555971382482 ;
createNode transform -n "lfLegQd0_toe02_1_pxGeo" -p "lfLegQd0_toe02_1_pxGeo_ofs";
	rename -uid "6DB41C60-474C-D3CE-8F1C-6BB80014E7AF";
	setAttr ".t" -type "double3" 0 0 -7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
createNode mesh -n "lfLegQd0_toe02_1_pxGeoShape" -p "lfLegQd0_toe02_1_pxGeo";
	rename -uid "9D632303-4C91-8319-7158-20BE19802F3A";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -4.80684566 -1.077497244 -1.077497244 -4.80684566 0 -1.5238111
		 -4.80684566 1.077497244 -1.077497244 -4.80684566 1.5238111 0 -4.80684566 1.077497244 1.077497244
		 -4.80684566 0 1.52381122 -4.80684566 -1.077497363 1.077497363 -4.80684566 -1.52381134 0
		 0 -1.077497244 -1.077497244 0 0 -1.5238111 0 1.077497244 -1.077497244 0 1.5238111 0
		 0 1.077497244 1.077497244 0 0 1.52381122 0 -1.077497363 1.077497363 0 -1.52381134 0
		 4.80684566 -1.077497244 -1.077497244 4.80684566 0 -1.5238111 4.80684566 1.077497244 -1.077497244
		 4.80684566 1.5238111 0 4.80684566 1.077497244 1.077497244 4.80684566 0 1.52381122
		 4.80684566 -1.077497363 1.077497363 4.80684566 -1.52381134 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd0_toe03_2_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "F75C2E3B-4AC0-5151-DCE8-CFA94EFC7863";
	setAttr ".t" -type "double3" 14.06907866377507 5.6094830175268946 -41.127989434816087 ;
	setAttr ".r" -type "double3" 64.24079408363508 -70.482795822863665 27.110505824219793 ;
createNode transform -n "lfLegQd0_toe03_2_pxGeo" -p "lfLegQd0_toe03_2_pxGeo_ofs";
	rename -uid "39100E9F-4D0C-ECD1-512E-F4A169A7E0D4";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode mesh -n "lfLegQd0_toe03_2_pxGeoShape" -p "lfLegQd0_toe03_2_pxGeo";
	rename -uid "C970D5CC-41B9-AFD6-B5F0-49B3B24993CB";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -2.88553357 -1.086281061 -1.086281061 -2.88553357 0 -1.53623331
		 -2.88553357 1.086281061 -1.086281061 -2.88553357 1.53623331 0 -2.88553357 1.086281061 1.086281061
		 -2.88553357 0 1.53623343 -2.88553357 -1.08628118 1.08628118 -2.88553357 -1.53623354 0
		 0 -1.086281061 -1.086281061 0 0 -1.53623331 0 1.086281061 -1.086281061 0 1.53623331 0
		 0 1.086281061 1.086281061 0 0 1.53623343 0 -1.08628118 1.08628118 0 -1.53623354 0
		 2.88553357 -1.086281061 -1.086281061 2.88553357 0 -1.53623331 2.88553357 1.086281061 -1.086281061
		 2.88553357 1.53623331 0 2.88553357 1.086281061 1.086281061 2.88553357 0 1.53623343
		 2.88553357 -1.08628118 1.08628118 2.88553357 -1.53623354 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd0_toe02_4_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "07F73C1A-4EEB-B690-C5C7-66881330BAD8";
	setAttr ".t" -type "double3" 12.241788066126478 1.4222127244355851 -34.583218783191107 ;
	setAttr ".r" -type "double3" 89.999999999999659 -80.515937204026955 0 ;
createNode transform -n "lfLegQd0_toe02_4_pxGeo" -p "lfLegQd0_toe02_4_pxGeo_ofs";
	rename -uid "AC05C166-4604-22A3-360C-51B8F094F893";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 0 0 ;
createNode mesh -n "lfLegQd0_toe02_4_pxGeoShape" -p "lfLegQd0_toe02_4_pxGeo";
	rename -uid "9E31D204-48E1-D495-39CD-558CCC39463B";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.52712989 -1.077497244 -1.077497244 -1.52712989 0 -1.5238111
		 -1.52712989 1.077497244 -1.077497244 -1.52712989 1.5238111 0 -1.52712989 1.077497244 1.077497244
		 -1.52712989 0 1.52381122 -1.52712989 -1.077497363 1.077497363 -1.52712989 -1.52381134 0
		 0 -1.077497244 -1.077497244 0 0 -1.5238111 0 1.077497244 -1.077497244 0 1.5238111 0
		 0 1.077497244 1.077497244 0 0 1.52381122 0 -1.077497363 1.077497363 0 -1.52381134 0
		 1.52712989 -1.077497244 -1.077497244 1.52712989 0 -1.5238111 1.52712989 1.077497244 -1.077497244
		 1.52712989 1.5238111 0 1.52712989 1.077497244 1.077497244 1.52712989 0 1.52381122
		 1.52712989 -1.077497363 1.077497363 1.52712989 -1.52381134 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd0_toe02_3_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "3E18E456-4834-387C-BECC-A8B5C2E1ABB4";
	setAttr ".t" -type "double3" 11.85108608993839 3.7928853225031456 -36.846595448414256 ;
	setAttr ".r" -type "double3" 169.00182751839245 -13.955319442953988 -87.316523488465108 ;
createNode transform -n "lfLegQd0_toe02_3_pxGeo" -p "lfLegQd0_toe02_3_pxGeo_ofs";
	rename -uid "00B19BB3-42A8-E93F-22B3-E0AE638EFBBD";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 3.5527136788005009e-15 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1 ;
createNode mesh -n "lfLegQd0_toe02_3_pxGeoShape" -p "lfLegQd0_toe02_3_pxGeo";
	rename -uid "10EAC26E-4622-EF27-D6D6-90A0894C59F9";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -2.20090938 -1.077497244 -1.077497244 -2.20090938 0 -1.5238111
		 -2.20090938 1.077497244 -1.077497244 -2.20090938 1.5238111 0 -2.20090938 1.077497244 1.077497244
		 -2.20090938 0 1.52381122 -2.20090938 -1.077497363 1.077497363 -2.20090938 -1.52381134 0
		 0 -1.077497244 -1.077497244 0 0 -1.5238111 0 1.077497244 -1.077497244 0 1.5238111 0
		 0 1.077497244 1.077497244 0 0 1.52381122 0 -1.077497363 1.077497363 0 -1.52381134 0
		 2.20090938 -1.077497244 -1.077497244 2.20090938 0 -1.5238111 2.20090938 1.077497244 -1.077497244
		 2.20090938 1.5238111 0 2.20090938 1.077497244 1.077497244 2.20090938 0 1.52381122
		 2.20090938 -1.077497363 1.077497363 2.20090938 -1.52381134 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd0_toe03_1_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "E7CD632C-4928-F7A4-E1F1-09A56739339E";
	setAttr ".t" -type "double3" 12.166608421801939 9.8200984305831476 -46.365028630370624 ;
	setAttr ".r" -type "double3" 154.2897440248698 -24.801452689734141 -78.581455276123364 ;
createNode transform -n "lfLegQd0_toe03_1_pxGeo" -p "lfLegQd0_toe03_1_pxGeo_ofs";
	rename -uid "8C427E37-4EAB-03D8-C628-359E9201B767";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 3.5527136788005009e-15 ;
createNode mesh -n "lfLegQd0_toe03_1_pxGeoShape" -p "lfLegQd0_toe03_1_pxGeo";
	rename -uid "4ADCB4CA-4021-7214-4288-B09773D81A06";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -4.75260878 -1.086281061 -1.086281061 -4.75260878 0 -1.53623331
		 -4.75260878 1.086281061 -1.086281061 -4.75260878 1.53623331 0 -4.75260878 1.086281061 1.086281061
		 -4.75260878 0 1.53623343 -4.75260878 -1.08628118 1.08628118 -4.75260878 -1.53623354 0
		 0 -1.086281061 -1.086281061 0 0 -1.53623331 0 1.086281061 -1.086281061 0 1.53623331 0
		 0 1.086281061 1.086281061 0 0 1.53623343 0 -1.08628118 1.08628118 0 -1.53623354 0
		 4.75260878 -1.086281061 -1.086281061 4.75260878 0 -1.53623331 4.75260878 1.086281061 -1.086281061
		 4.75260878 1.53623331 0 4.75260878 1.086281061 1.086281061 4.75260878 0 1.53623343
		 4.75260878 -1.08628118 1.08628118 4.75260878 -1.53623354 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd0_toe04_2_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "87FC1DCA-4247-163D-BBBF-F0BF9851F5E4";
	setAttr ".t" -type "double3" 16.044943438547278 5.1357855913758366 -42.972855758979975 ;
	setAttr ".r" -type "double3" 88.27154720493499 -63.206029694390651 1.9362029063679596 ;
createNode transform -n "lfLegQd0_toe04_2_pxGeo" -p "lfLegQd0_toe04_2_pxGeo_ofs";
	rename -uid "817AA219-4EE6-5397-0C51-969B2B77FA50";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 0 8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
createNode mesh -n "lfLegQd0_toe04_2_pxGeoShape" -p "lfLegQd0_toe04_2_pxGeo";
	rename -uid "3FFACF62-4C5A-3722-6873-F59B1E7488D2";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -2.17342663 -1.059024692 -1.059024692 -2.17342663 0 -1.4976871
		 -2.17342663 1.059024692 -1.059024692 -2.17342663 1.4976871 0 -2.17342663 1.059024692 1.059024692
		 -2.17342663 0 1.4976871 -2.17342663 -1.059024811 1.059024811 -2.17342663 -1.49768722 0
		 0 -1.059024692 -1.059024692 0 0 -1.4976871 0 1.059024692 -1.059024692 0 1.4976871 0
		 0 1.059024692 1.059024692 0 0 1.4976871 0 -1.059024811 1.059024811 0 -1.49768722 0
		 2.17342663 -1.059024692 -1.059024692 2.17342663 0 -1.4976871 2.17342663 1.059024692 -1.059024692
		 2.17342663 1.4976871 0 2.17342663 1.059024692 1.059024692 2.17342663 0 1.4976871
		 2.17342663 -1.059024811 1.059024811 2.17342663 -1.49768722 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd0_toe03_3_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "72C5FF30-4629-1CD9-80E6-7181A2FC02A4";
	setAttr ".t" -type "double3" 14.977359671151383 3.7599118737687203 -37.437617981288263 ;
	setAttr ".r" -type "double3" -175.97867631472883 -15.954587860095542 -91.107043683031151 ;
createNode transform -n "lfLegQd0_toe03_3_pxGeo" -p "lfLegQd0_toe03_3_pxGeo_ofs";
	rename -uid "5DA11792-4F41-DA98-2769-399530F36ABE";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 3.5527136788005009e-15 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode mesh -n "lfLegQd0_toe03_3_pxGeoShape" -p "lfLegQd0_toe03_3_pxGeo";
	rename -uid "76C7AE99-44A4-C44C-F4FD-B0BABF82C144";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -2.1886282 -1.086281061 -1.086281061 -2.1886282 0 -1.53623331
		 -2.1886282 1.086281061 -1.086281061 -2.1886282 1.53623331 0 -2.1886282 1.086281061 1.086281061
		 -2.1886282 0 1.53623343 -2.1886282 -1.08628118 1.08628118 -2.1886282 -1.53623354 0
		 0 -1.086281061 -1.086281061 0 0 -1.53623331 0 1.086281061 -1.086281061 0 1.53623331 0
		 0 1.086281061 1.086281061 0 0 1.53623343 0 -1.08628118 1.08628118 0 -1.53623354 0
		 2.1886282 -1.086281061 -1.086281061 2.1886282 0 -1.53623331 2.1886282 1.086281061 -1.086281061
		 2.1886282 1.53623331 0 2.1886282 1.086281061 1.086281061 2.1886282 0 1.53623343 2.1886282 -1.08628118 1.08628118
		 2.1886282 -1.53623354 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd0_toe03_4_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "F930DEFE-4C2D-6441-B65A-35A78BF0676C";
	setAttr ".t" -type "double3" 15.211775143834538 1.422212724435586 -35.095555369356603 ;
	setAttr ".r" -type "double3" 90.000000000000071 -80.515937204026827 -3.474470622152129e-13 ;
createNode transform -n "lfLegQd0_toe03_4_pxGeo" -p "lfLegQd0_toe03_4_pxGeo_ofs";
	rename -uid "414D2E9E-41BF-CB49-F40D-CB8674CF9838";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 2.2204460492503131e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999978 ;
createNode mesh -n "lfLegQd0_toe03_4_pxGeoShape" -p "lfLegQd0_toe03_4_pxGeo";
	rename -uid "6EEE789C-4EDB-2A4E-3C25-FBA7700374BA";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.52712989 -1.086281061 -1.086281061 -1.52712989 0 -1.53623331
		 -1.52712989 1.086281061 -1.086281061 -1.52712989 1.53623331 0 -1.52712989 1.086281061 1.086281061
		 -1.52712989 0 1.53623343 -1.52712989 -1.08628118 1.08628118 -1.52712989 -1.53623354 0
		 0 -1.086281061 -1.086281061 0 0 -1.53623331 0 1.086281061 -1.086281061 0 1.53623331 0
		 0 1.086281061 1.086281061 0 0 1.53623343 0 -1.08628118 1.08628118 0 -1.53623354 0
		 1.52712989 -1.086281061 -1.086281061 1.52712989 0 -1.53623331 1.52712989 1.086281061 -1.086281061
		 1.52712989 1.53623331 0 1.52712989 1.086281061 1.086281061 1.52712989 0 1.53623343
		 1.52712989 -1.08628118 1.08628118 1.52712989 -1.53623354 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd0_toe04_1_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "912497AE-4505-0BB0-D037-9889C768D55D";
	setAttr ".t" -type "double3" 13.380723976862743 9.7825468988071478 -47.829924016951921 ;
	setAttr ".r" -type "double3" 144.94558749019023 -28.663837633236803 -71.399457177588943 ;
createNode transform -n "lfLegQd0_toe04_1_pxGeo" -p "lfLegQd0_toe04_1_pxGeo_ofs";
	rename -uid "95A352EE-4890-024B-8220-82956508F80E";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -7.1054273576010019e-15 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999978 ;
createNode mesh -n "lfLegQd0_toe04_1_pxGeoShape" -p "lfLegQd0_toe04_1_pxGeo";
	rename -uid "D99837A0-4411-6A1D-C41C-B5ADB1EA8E8E";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -5.068671227 -1.059024692 -1.059024692 -5.068671227 0 -1.4976871
		 -5.068671227 1.059024692 -1.059024692 -5.068671227 1.4976871 0 -5.068671227 1.059024692 1.059024692
		 -5.068671227 0 1.4976871 -5.068671227 -1.059024811 1.059024811 -5.068671227 -1.49768722 0
		 0 -1.059024692 -1.059024692 0 0 -1.4976871 0 1.059024692 -1.059024692 0 1.4976871 0
		 0 1.059024692 1.059024692 0 0 1.4976871 0 -1.059024811 1.059024811 0 -1.49768722 0
		 5.068671227 -1.059024692 -1.059024692 5.068671227 0 -1.4976871 5.068671227 1.059024692 -1.059024692
		 5.068671227 1.4976871 0 5.068671227 1.059024692 1.059024692 5.068671227 0 1.4976871
		 5.068671227 -1.059024811 1.059024811 5.068671227 -1.49768722 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd0_toe04_4_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "1EE70E17-416B-82CF-0B4D-939E0BA4064D";
	setAttr ".t" -type "double3" 17.653339210189937 1.4222127244356113 -38.43519227528666 ;
	setAttr ".r" -type "double3" 90.000000000001009 -71.571425688674992 -4.8293544847416323e-13 ;
createNode transform -n "lfLegQd0_toe04_4_pxGeo" -p "lfLegQd0_toe04_4_pxGeo_ofs";
	rename -uid "2176F492-454D-0FEC-D367-4DB014868586";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 2.2204460492503131e-16 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode mesh -n "lfLegQd0_toe04_4_pxGeoShape" -p "lfLegQd0_toe04_4_pxGeo";
	rename -uid "31753F65-435E-3E0B-404F-E3BD206E79A9";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.52712989 -1.059024692 -1.059024692 -1.52712989 0 -1.4976871
		 -1.52712989 1.059024692 -1.059024692 -1.52712989 1.4976871 0 -1.52712989 1.059024692 1.059024692
		 -1.52712989 0 1.4976871 -1.52712989 -1.059024811 1.059024811 -1.52712989 -1.49768722 0
		 0 -1.059024692 -1.059024692 0 0 -1.4976871 0 1.059024692 -1.059024692 0 1.4976871 0
		 0 1.059024692 1.059024692 0 0 1.4976871 0 -1.059024811 1.059024811 0 -1.49768722 0
		 1.52712989 -1.059024692 -1.059024692 1.52712989 0 -1.4976871 1.52712989 1.059024692 -1.059024692
		 1.52712989 1.4976871 0 1.52712989 1.059024692 1.059024692 1.52712989 0 1.4976871
		 1.52712989 -1.059024811 1.059024811 1.52712989 -1.49768722 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lfLegQd0_toe04_3_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "A13A017E-4CD5-D941-485D-AAA9083DABAB";
	setAttr ".t" -type "double3" 17.124933564652878 3.2973893459127175 -40.431103713136267 ;
	setAttr ".r" -type "double3" -178.78904844745711 -11.634987487320195 -90.244254826269341 ;
createNode transform -n "lfLegQd0_toe04_3_pxGeo" -p "lfLegQd0_toe04_3_pxGeo_ofs";
	rename -uid "0A9FEA3C-4C29-E8AC-A796-F595C14A1797";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode mesh -n "lfLegQd0_toe04_3_pxGeoShape" -p "lfLegQd0_toe04_3_pxGeo";
	rename -uid "B859E058-49DC-88CD-7238-6A9C85DDF66A";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.5 0.125 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.75 0.125 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.85543299 0.78661168
		 0.50187969 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969
		 1 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.72307968 -1.059024692 -1.059024692 -1.72307968 0 -1.4976871
		 -1.72307968 1.059024692 -1.059024692 -1.72307968 1.4976871 0 -1.72307968 1.059024692 1.059024692
		 -1.72307968 0 1.4976871 -1.72307968 -1.059024811 1.059024811 -1.72307968 -1.49768722 0
		 0 -1.059024692 -1.059024692 0 0 -1.4976871 0 1.059024692 -1.059024692 0 1.4976871 0
		 0 1.059024692 1.059024692 0 0 1.4976871 0 -1.059024811 1.059024811 0 -1.49768722 0
		 1.72307968 -1.059024692 -1.059024692 1.72307968 0 -1.4976871 1.72307968 1.059024692 -1.059024692
		 1.72307968 1.4976871 0 1.72307968 1.059024692 1.059024692 1.72307968 0 1.4976871
		 1.72307968 -1.059024811 1.059024811 1.72307968 -1.49768722 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0;
	setAttr -s 18 -ch 80 ".fc[0:17]" -type "polyFaces" 
		f 4 0 25 -9 -25
		mu 0 4 8 9 18 17
		f 4 1 26 -10 -26
		mu 0 4 9 10 19 18
		f 4 2 27 -11 -27
		mu 0 4 10 11 20 19
		f 4 3 28 -12 -28
		mu 0 4 11 12 21 20
		f 4 4 29 -13 -29
		mu 0 4 12 13 22 21
		f 4 5 30 -14 -30
		mu 0 4 13 14 23 22
		f 4 6 31 -15 -31
		mu 0 4 14 15 24 23
		f 4 7 24 -16 -32
		mu 0 4 15 16 25 24
		f 4 8 33 -17 -33
		mu 0 4 17 18 27 26
		f 4 9 34 -18 -34
		mu 0 4 18 19 28 27
		f 4 10 35 -19 -35
		mu 0 4 19 20 29 28
		f 4 11 36 -20 -36
		mu 0 4 20 21 30 29
		f 4 12 37 -21 -37
		mu 0 4 21 22 31 30
		f 4 13 38 -22 -38
		mu 0 4 22 23 32 31
		f 4 14 39 -23 -39
		mu 0 4 23 24 33 32
		f 4 15 32 -24 -40
		mu 0 4 24 25 34 33
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 16 17 18 19 20 21 22 23
		mu 0 8 41 40 39 38 37 36 35 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "head0_PRX" -p "PRX";
	rename -uid "2B9CED7A-4592-BAB9-D9E4-949B1E04F6DE";
createNode transform -n "head0_st_pxGeo_ofs" -p "head0_PRX";
	rename -uid "987032D7-4C2C-39AE-96F6-77A4BD0B1606";
	setAttr ".t" -type "double3" 0 109.29330520575802 98.611642971070737 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999986 ;
createNode transform -n "head0_st_pxGeo" -p "head0_st_pxGeo_ofs";
	rename -uid "34C14937-485E-C31F-6946-228D85AD8B0C";
createNode mesh -n "head0_st_pxGeoShape" -p "head0_st_pxGeo";
	rename -uid "DE36BA30-46A5-B7BA-EC07-BDBA5A7D826E";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:15]" "f[18:19]" "f[22:25]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 6 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[16:17]" "f[20:21]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[24]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:31]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[24:31]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[24:31]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:23]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[25]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[24:31]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 52 ".uvst[0].uvsp[0:51]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.41666669 0.125 0.41666669
		 0.25 0.41666669 0.375 0.41666669 0.5 0.41666669 0.625 0.41666669 0.75 0.41666669
		 0.875 0.41666669 1 0.41666669 0 0.58333337 0.125 0.58333337 0.25 0.58333337 0.375
		 0.58333337 0.5 0.58333337 0.625 0.58333337 0.75 0.58333337 0.875 0.58333337 1 0.58333337
		 0 0.75000006 0.125 0.75000006 0.25 0.75000006 0.375 0.75000006 0.5 0.75000006 0.625
		 0.75000006 0.75 0.75000006 0.875 0.75000006 1 0.75000006 0.85543299 0.78661168 0.50187969
		 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969 1
		 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 32 ".vt[0:31]"  -4.39253712 -2.070661545 -2.070661545 -4.39253712 0 -2.92835784
		 -4.39253712 2.070661545 -2.070661545 -4.39253712 2.92835784 0 -4.39253712 2.070661545 2.070661545
		 -4.39253712 0 2.92835784 -4.39253712 -2.070661783 2.070661783 -4.39253712 -2.92835808 0
		 -1.46417904 -2.070661545 -2.070661545 -1.46417904 0 -2.92835784 -1.46417904 2.070661545 -2.070661545
		 -1.46417904 2.92835784 0 -1.46417904 2.070661545 2.070661545 -1.46417904 0 2.92835784
		 -1.46417904 -2.070661783 2.070661783 -1.46417904 -2.92835808 0 1.46417904 -2.070661545 -2.070661545
		 1.46417904 0 -2.92835784 1.46417904 2.070661545 -2.070661545 1.46417904 2.92835784 0
		 1.46417904 2.070661545 2.070661545 1.46417904 0 2.92835784 1.46417904 -2.070661783 2.070661783
		 1.46417904 -2.92835808 0 4.39253712 -2.070661545 -2.070661545 4.39253712 0 -2.92835784
		 4.39253712 2.070661545 -2.070661545 4.39253712 2.92835784 0 4.39253712 2.070661545 2.070661545
		 4.39253712 0 2.92835784 4.39253712 -2.070661783 2.070661783 4.39253712 -2.92835808 0;
	setAttr -s 56 ".ed[0:55]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 1 17 18 1
		 18 19 1 19 20 1 20 21 1 21 22 1 22 23 1 23 16 1 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 8 16 0
		 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0 18 26 0 19 27 0
		 20 28 0 21 29 0 22 30 0 23 31 0;
	setAttr -s 26 -ch 112 ".fc[0:25]" -type "polyFaces" 
		f 4 0 33 -9 -33
		mu 0 4 8 9 18 17
		f 4 1 34 -10 -34
		mu 0 4 9 10 19 18
		f 4 2 35 -11 -35
		mu 0 4 10 11 20 19
		f 4 3 36 -12 -36
		mu 0 4 11 12 21 20
		f 4 4 37 -13 -37
		mu 0 4 12 13 22 21
		f 4 5 38 -14 -38
		mu 0 4 13 14 23 22
		f 4 6 39 -15 -39
		mu 0 4 14 15 24 23
		f 4 7 32 -16 -40
		mu 0 4 15 16 25 24
		f 4 8 41 -17 -41
		mu 0 4 17 18 27 26
		f 4 9 42 -18 -42
		mu 0 4 18 19 28 27
		f 4 10 43 -19 -43
		mu 0 4 19 20 29 28
		f 4 11 44 -20 -44
		mu 0 4 20 21 30 29
		f 4 12 45 -21 -45
		mu 0 4 21 22 31 30
		f 4 13 46 -22 -46
		mu 0 4 22 23 32 31
		f 4 14 47 -23 -47
		mu 0 4 23 24 33 32
		f 4 15 40 -24 -48
		mu 0 4 24 25 34 33
		f 4 16 49 -25 -49
		mu 0 4 26 27 36 35
		f 4 17 50 -26 -50
		mu 0 4 27 28 37 36
		f 4 18 51 -27 -51
		mu 0 4 28 29 38 37
		f 4 19 52 -28 -52
		mu 0 4 29 30 39 38
		f 4 20 53 -29 -53
		mu 0 4 30 31 40 39
		f 4 21 54 -30 -54
		mu 0 4 31 32 41 40
		f 4 22 55 -31 -55
		mu 0 4 32 33 42 41
		f 4 23 48 -32 -56
		mu 0 4 33 34 43 42
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 24 25 26 27 28 29 30 31
		mu 0 8 50 49 48 47 46 45 44 51;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "head0_jaw_pxGeo_ofs" -p "head0_PRX";
	rename -uid "32FA054F-44C1-FED1-F81B-4E88D93A4030";
	setAttr ".t" -type "double3" -3.2576285432997249e-14 85.986931637078783 105.14792469900235 ;
	setAttr ".r" -type "double3" 89.999999999999659 -21.314335398363923 -89.999999999999886 ;
createNode transform -n "head0_jaw_pxGeo" -p "head0_jaw_pxGeo_ofs";
	rename -uid "0571FB8B-4CBD-CA5B-9AD5-8D9DB1FA630B";
createNode mesh -n "head0_jaw_pxGeoShape" -p "head0_jaw_pxGeo";
	rename -uid "C1A754E3-4FE4-5222-76B1-CF97E264BC9B";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:15]" "f[18:19]" "f[22:25]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 6 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[16:17]" "f[20:21]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[24]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:31]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[24:31]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[24:31]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:23]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[25]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[24:31]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 52 ".uvst[0].uvsp[0:51]" -type "float2" 0.85543299 0.036611661
		 0.50187969 1.4901161e-08 0.14832634 0.036611661 0.0018797517 0.125 0.14832634 0.21338832
		 0.50187969 0.25 0.85543311 0.21338835 1.0018796921 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.41666669 0.125 0.41666669
		 0.25 0.41666669 0.375 0.41666669 0.5 0.41666669 0.625 0.41666669 0.75 0.41666669
		 0.875 0.41666669 1 0.41666669 0 0.58333337 0.125 0.58333337 0.25 0.58333337 0.375
		 0.58333337 0.5 0.58333337 0.625 0.58333337 0.75 0.58333337 0.875 0.58333337 1 0.58333337
		 0 0.75000006 0.125 0.75000006 0.25 0.75000006 0.375 0.75000006 0.5 0.75000006 0.625
		 0.75000006 0.75 0.75000006 0.875 0.75000006 1 0.75000006 0.85543299 0.78661168 0.50187969
		 0.75 0.14832634 0.78661168 0.0018797517 0.875 0.14832634 0.96338832 0.50187969 1
		 0.85543311 0.96338832 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 32 ".vt[0:31]"  -13.60078239 -2.13715649 -2.13715649 -13.60078239 0 -3.022395611
		 -13.60078239 2.13715649 -2.13715649 -13.60078239 3.022395611 0 -13.60078239 2.13715649 2.13715649
		 -13.60078239 0 3.022395849 -13.60078239 -2.13715672 2.13715672 -13.60078239 -3.022396088 0
		 -4.53359413 -2.13715649 -2.13715649 -4.53359413 0 -3.022395611 -4.53359413 2.13715649 -2.13715649
		 -4.53359413 3.022395611 0 -4.53359413 2.13715649 2.13715649 -4.53359413 0 3.022395849
		 -4.53359413 -2.13715672 2.13715672 -4.53359413 -3.022396088 0 4.53359413 -2.13715649 -2.13715649
		 4.53359413 0 -3.022395611 4.53359413 2.13715649 -2.13715649 4.53359413 3.022395611 0
		 4.53359413 2.13715649 2.13715649 4.53359413 0 3.022395849 4.53359413 -2.13715672 2.13715672
		 4.53359413 -3.022396088 0 13.60078239 -2.13715649 -2.13715649 13.60078239 0 -3.022395611
		 13.60078239 2.13715649 -2.13715649 13.60078239 3.022395611 0 13.60078239 2.13715649 2.13715649
		 13.60078239 0 3.022395849 13.60078239 -2.13715672 2.13715672 13.60078239 -3.022396088 0;
	setAttr -s 56 ".ed[0:55]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 1 17 18 1
		 18 19 1 19 20 1 20 21 1 21 22 1 22 23 1 23 16 1 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 8 16 0
		 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0 18 26 0 19 27 0
		 20 28 0 21 29 0 22 30 0 23 31 0;
	setAttr -s 26 -ch 112 ".fc[0:25]" -type "polyFaces" 
		f 4 0 33 -9 -33
		mu 0 4 8 9 18 17
		f 4 1 34 -10 -34
		mu 0 4 9 10 19 18
		f 4 2 35 -11 -35
		mu 0 4 10 11 20 19
		f 4 3 36 -12 -36
		mu 0 4 11 12 21 20
		f 4 4 37 -13 -37
		mu 0 4 12 13 22 21
		f 4 5 38 -14 -38
		mu 0 4 13 14 23 22
		f 4 6 39 -15 -39
		mu 0 4 14 15 24 23
		f 4 7 32 -16 -40
		mu 0 4 15 16 25 24
		f 4 8 41 -17 -41
		mu 0 4 17 18 27 26
		f 4 9 42 -18 -42
		mu 0 4 18 19 28 27
		f 4 10 43 -19 -43
		mu 0 4 19 20 29 28
		f 4 11 44 -20 -44
		mu 0 4 20 21 30 29
		f 4 12 45 -21 -45
		mu 0 4 21 22 31 30
		f 4 13 46 -22 -46
		mu 0 4 22 23 32 31
		f 4 14 47 -23 -47
		mu 0 4 23 24 33 32
		f 4 15 40 -24 -48
		mu 0 4 24 25 34 33
		f 4 16 49 -25 -49
		mu 0 4 26 27 36 35
		f 4 17 50 -26 -50
		mu 0 4 27 28 37 36
		f 4 18 51 -27 -51
		mu 0 4 28 29 38 37
		f 4 19 52 -28 -52
		mu 0 4 29 30 39 38
		f 4 20 53 -29 -53
		mu 0 4 30 31 40 39
		f 4 21 54 -30 -54
		mu 0 4 31 32 41 40
		f 4 22 55 -31 -55
		mu 0 4 32 33 42 41
		f 4 23 48 -32 -56
		mu 0 4 33 34 43 42
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 24 25 26 27 28 29 30 31
		mu 0 8 50 49 48 47 46 45 44 51;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode groupId -n "groupId1";
	rename -uid "04B7FE73-4324-1AC9-07D4-C9A04701C8AD";
	setAttr ".ihi" 0;
createNode shadingEngine -n "proxy_grey_shdSG";
	rename -uid "312E8332-4280-80F5-E55B-1BAB59D5F52C";
	setAttr ".ihi" 0;
	setAttr -s 204 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 204 ".gn";
createNode materialInfo -n "materialInfo219";
	rename -uid "B282D0B8-42CF-2A77-DA3E-229575A88395";
createNode lambert -n "proxy_grey_shd";
	rename -uid "6F7AEE97-4F3D-49AC-6D6D-028A8658D63C";
	setAttr ".ambc" -type "float3" 0.5 0.5 0.5 ;
createNode groupId -n "groupId3";
	rename -uid "E6538522-49DE-4205-68E4-A998DD4775B5";
	setAttr ".ihi" 0;
createNode shadingEngine -n "proxy_color_shdSG";
	rename -uid "A2A530DC-41A2-47BB-953E-47B9B7B4D852";
	setAttr ".ihi" 0;
	setAttr -s 102 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 102 ".gn";
createNode materialInfo -n "materialInfo220";
	rename -uid "4E8B7EAB-48AD-5B78-8046-0A8E8CB32460";
createNode lambert -n "proxy_color_shd";
	rename -uid "A2BF1B63-44F1-F5AD-2B8D-929B7ECFF4AE";
	setAttr ".c" -type "float3" 0.69999999 0.30000001 0.30000001 ;
	setAttr ".ambc" -type "float3" 0.5 0.5 0.5 ;
createNode groupId -n "groupId2";
	rename -uid "8418E1C8-4BCE-8593-2EC4-B9A2642BE1E1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4";
	rename -uid "2ACE0B69-4179-13FC-FB3C-6DA77B523F74";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	rename -uid "72B80DA9-48BA-4B84-477C-80B214B0C5EA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "FD78316A-4213-A639-D777-BE96799CF787";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	rename -uid "BA6C612A-4033-7173-C76A-22B67925E581";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	rename -uid "4E56B878-41C3-D945-7717-7D915EA99CF4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	rename -uid "7FD98F23-436E-1D9F-70D7-6E9F06DEDA67";
	setAttr ".ihi" 0;
createNode groupId -n "groupId10";
	rename -uid "EC449B7A-4A54-9CDD-72BF-B98D62EB6F48";
	setAttr ".ihi" 0;
createNode groupId -n "groupId12";
	rename -uid "68BAF563-4505-8041-FE4E-0A8C309F577B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	rename -uid "367C3430-4E11-FE59-621F-DE9986F6BE07";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	rename -uid "16A0E3F4-44D6-9977-9BF2-D888C39FEC07";
	setAttr ".ihi" 0;
createNode groupId -n "groupId15";
	rename -uid "50888E0C-4F43-EDA4-79AD-EE8D5035663F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	rename -uid "1B04400F-423D-8B0E-8769-558912F3F4D8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId16";
	rename -uid "A84E0340-4767-0F6A-8337-8F918EBB5368";
	setAttr ".ihi" 0;
createNode groupId -n "groupId18";
	rename -uid "2692E44A-4B1B-7316-53E6-8DBB9926417A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId17";
	rename -uid "5ADC9DB5-4B09-7394-AA05-E083D08F7B88";
	setAttr ".ihi" 0;
createNode groupId -n "groupId19";
	rename -uid "27DF462A-491A-3876-DE6B-3CABE65460AE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId21";
	rename -uid "45AC39DA-498E-70A1-8E71-798EA48BE073";
	setAttr ".ihi" 0;
createNode groupId -n "groupId20";
	rename -uid "3DD7758F-4D32-B397-4859-FC9ABBA6BF19";
	setAttr ".ihi" 0;
createNode groupId -n "groupId22";
	rename -uid "3BE59460-442D-0B33-CA5D-028F8767A378";
	setAttr ".ihi" 0;
createNode groupId -n "groupId24";
	rename -uid "747A408B-45EE-DC62-57B4-F8B6FE3BD25B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId23";
	rename -uid "A5E40334-4C78-736E-CB13-508C2A440704";
	setAttr ".ihi" 0;
createNode groupId -n "groupId25";
	rename -uid "94869DEE-41AF-B8B6-4D49-05842271D376";
	setAttr ".ihi" 0;
createNode groupId -n "groupId27";
	rename -uid "19E34AC1-4DE5-0F91-A45D-39BF9AF42C3E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId26";
	rename -uid "1F43D036-41C8-278A-B67A-688DB845B4BC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId28";
	rename -uid "03A2B0E9-4D0B-BFF2-F03C-16A84EAB6FD2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId30";
	rename -uid "3966D1D4-4694-FCFE-C751-B9B70E5BCC76";
	setAttr ".ihi" 0;
createNode groupId -n "groupId29";
	rename -uid "3A64F8BB-436A-91C0-6F4B-E28CA5406FA8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId31";
	rename -uid "4B45B277-4061-33B5-D530-1D8BF9132F15";
	setAttr ".ihi" 0;
createNode groupId -n "groupId33";
	rename -uid "9CD8EC44-413E-2DB4-001A-88995359B613";
	setAttr ".ihi" 0;
createNode groupId -n "groupId32";
	rename -uid "645AD2B1-410E-E656-D855-8F87B2FA944D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId34";
	rename -uid "8E78CDFD-41E2-CF40-69FF-7196A1FCD6BC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId36";
	rename -uid "D38267B1-4A38-EEC4-38CE-879EAB317E51";
	setAttr ".ihi" 0;
createNode groupId -n "groupId35";
	rename -uid "3D459D86-4C38-D3DF-B780-93AA08372284";
	setAttr ".ihi" 0;
createNode groupId -n "groupId37";
	rename -uid "3136D6D9-4A34-9863-C088-9FA2830361BE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId39";
	rename -uid "5674FA86-4517-7AFB-5E4B-DA8CC484BBC2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId38";
	rename -uid "B2A58672-42E8-2AB1-7CD4-AD89996AD0FA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId40";
	rename -uid "EC1C5DA0-41D6-6066-0570-FA88B2D8745D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId42";
	rename -uid "4818E5A5-4E59-3E1F-D429-DB8754A7531B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId41";
	rename -uid "7DC8213A-41C5-8A0D-6BD8-F8AE25913033";
	setAttr ".ihi" 0;
createNode groupId -n "groupId43";
	rename -uid "7647BCCC-43EC-0483-DD2A-A287660F9FDD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId45";
	rename -uid "712669C7-4486-A8FB-CB83-D995CDD5CDE0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId44";
	rename -uid "3E7FC2BF-4758-3B6E-C51B-4C96D4595B96";
	setAttr ".ihi" 0;
createNode groupId -n "groupId46";
	rename -uid "05CB3BD7-4A26-0670-88A1-67BC1EF6FE19";
	setAttr ".ihi" 0;
createNode groupId -n "groupId48";
	rename -uid "45EC9313-4089-8670-6C55-FA94F73522C9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId47";
	rename -uid "6618EC9C-4BF6-10C2-5FF1-72B3753A3B20";
	setAttr ".ihi" 0;
createNode groupId -n "groupId49";
	rename -uid "1490BF7F-4AC6-FD31-1536-5A9EF32B60A8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId51";
	rename -uid "9698AF9C-488C-3084-FDE6-26A76599A4D0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId50";
	rename -uid "C15A6850-4531-B79B-8932-5DBE229CF4BB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId100";
	rename -uid "D9B6025A-4129-DB5A-BE1F-50B50BF0FA3C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId102";
	rename -uid "CBD12922-4DC3-5B89-CBCD-628EF3C22557";
	setAttr ".ihi" 0;
createNode groupId -n "groupId101";
	rename -uid "B456CC85-4D3F-7F23-0FE1-0794064ABE34";
	setAttr ".ihi" 0;
createNode groupId -n "groupId106";
	rename -uid "606518CB-4F02-1C17-F160-659A84E80C4D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId108";
	rename -uid "BB549FD4-4255-F832-0D75-50A84BC9F90D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId107";
	rename -uid "0D4DBBD3-47B8-4A4F-9F12-03ABF5F67540";
	setAttr ".ihi" 0;
createNode groupId -n "groupId109";
	rename -uid "BD85069B-4DE7-24F2-5820-6FAC719B9CDA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId111";
	rename -uid "09B51787-4588-F645-85D6-6A9B6886E667";
	setAttr ".ihi" 0;
createNode groupId -n "groupId110";
	rename -uid "44B85A26-453E-EF77-E78B-E999D5AA916F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId52";
	rename -uid "93B45C57-4610-7E75-1154-B082B451BB92";
	setAttr ".ihi" 0;
createNode groupId -n "groupId54";
	rename -uid "71F0CC48-45F9-B324-B926-F99D5D580B04";
	setAttr ".ihi" 0;
createNode groupId -n "groupId53";
	rename -uid "3A1B6B9F-4F2D-51B9-32BA-4180946EC921";
	setAttr ".ihi" 0;
createNode groupId -n "groupId55";
	rename -uid "E28DD9B6-4C22-3904-7B63-27B04744760C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId57";
	rename -uid "1A363EF6-4D91-CC20-331F-9388813E8C99";
	setAttr ".ihi" 0;
createNode groupId -n "groupId56";
	rename -uid "706A3CCE-4F7D-E274-1BE8-C6B53CEF128B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId58";
	rename -uid "BE15AC4E-45B6-79D3-65CB-EC9DEABD6F66";
	setAttr ".ihi" 0;
createNode groupId -n "groupId60";
	rename -uid "7935CBB0-4C6B-5C88-3316-A88561B2E5D1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId59";
	rename -uid "F1EA0CEE-436F-A17E-7F9D-E1BDEEFCBCD4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId61";
	rename -uid "7A1119A1-4F48-FF14-84C3-93BC995F17F9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId63";
	rename -uid "3AEE8ADD-4E0C-802C-3EB0-60B7875722DA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId62";
	rename -uid "D664376A-4566-649A-21E3-1B94419F6F4E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId64";
	rename -uid "6AF33F03-4693-0228-1181-F98B1E79D913";
	setAttr ".ihi" 0;
createNode groupId -n "groupId66";
	rename -uid "58F9B2C9-4353-CCB7-6C61-58B02143E5E1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId65";
	rename -uid "5D28F768-4645-F819-615D-1F9D25B82DD4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId67";
	rename -uid "D5C1FF2D-4F94-C791-7D9E-C38C33EED995";
	setAttr ".ihi" 0;
createNode groupId -n "groupId69";
	rename -uid "D033281F-4E7D-95AE-DFC2-0EBCE8259417";
	setAttr ".ihi" 0;
createNode groupId -n "groupId68";
	rename -uid "8991527F-4979-8527-0D15-CEB3B539239B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId70";
	rename -uid "B39B1ECA-4332-144B-2D13-5090B9507DB8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId72";
	rename -uid "2F07815C-40D6-05EE-19F6-6DAD98112B6A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId71";
	rename -uid "D1141058-49EC-73B9-88F2-9EAABDF78F3D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId73";
	rename -uid "D9CF2D8E-461B-B69A-1DD3-B28C14600501";
	setAttr ".ihi" 0;
createNode groupId -n "groupId75";
	rename -uid "85F914D0-42CD-F7D4-4569-01BF489D4EA2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId74";
	rename -uid "F4793BE1-4805-1B74-9CF0-AB8C5420136D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId103";
	rename -uid "FF71F5E8-4A72-95DC-3140-33B437104AFD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId105";
	rename -uid "1109BE36-4A90-063D-4E86-33960D5D7D85";
	setAttr ".ihi" 0;
createNode groupId -n "groupId104";
	rename -uid "21AB89BD-4D69-F399-7CA6-9DAE7EE702F3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId76";
	rename -uid "21AAB6FE-4C1C-18EF-0C57-B48E25DC40A8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId78";
	rename -uid "0F179549-44F5-CD40-F515-D4B2268FC61D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId77";
	rename -uid "A4475510-418B-FD39-31F6-3BA979BBEBF6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId79";
	rename -uid "5DB8E2C8-4997-74D7-F944-48B08F953760";
	setAttr ".ihi" 0;
createNode groupId -n "groupId81";
	rename -uid "29FAB3F2-457B-64AA-50BE-299D079AED3F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId80";
	rename -uid "522BDA89-4815-3FC5-B205-DAB7C545EEC1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId82";
	rename -uid "BA929A4E-47DA-1276-FF71-BF8E62535362";
	setAttr ".ihi" 0;
createNode groupId -n "groupId84";
	rename -uid "2E64F649-4DF6-547D-7D61-EBABAB6294A9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId83";
	rename -uid "5A3DF5D1-4233-B67E-5946-C69440BE9C69";
	setAttr ".ihi" 0;
createNode groupId -n "groupId85";
	rename -uid "964C0159-423B-C98F-7CBA-1EBAF5529918";
	setAttr ".ihi" 0;
createNode groupId -n "groupId87";
	rename -uid "5422F651-41F5-A1D4-14F9-41B3371B46CC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId86";
	rename -uid "279D63DA-4D65-3F90-9E22-55BD6C884F1A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId88";
	rename -uid "6D8033BF-47AF-F7BE-D631-FA9F178A7ECD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId90";
	rename -uid "901F4011-4F4E-3CEB-F664-8796EE6546C1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId89";
	rename -uid "513936DB-4E65-DAAE-A864-8FBBFD51244A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId91";
	rename -uid "35F1F71B-4AB5-811B-8E79-5596A6BF735F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId93";
	rename -uid "95BA2A57-4E06-76B0-45FE-09B2E51B31C5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId92";
	rename -uid "BCE4B010-4B1E-03CF-8381-EB86BFAB0CB5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId94";
	rename -uid "8D9D15AF-4CA4-D2FC-CEFC-03905DBEBCA5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId96";
	rename -uid "CBB7D138-460B-DC2B-C6B4-578CC16B3AD0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId95";
	rename -uid "23A5D356-4AE3-8736-11ED-369C6B42DE60";
	setAttr ".ihi" 0;
createNode groupId -n "groupId97";
	rename -uid "CA406666-4A20-73B4-D52E-76845224D9C9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId99";
	rename -uid "0BDE44C4-4096-D7A5-8BE6-66AE45578321";
	setAttr ".ihi" 0;
createNode groupId -n "groupId98";
	rename -uid "2C82F785-478F-E245-C315-2C992684CBF1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId169";
	rename -uid "F40F1925-4B82-A197-E2F1-79960D1C34FF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId171";
	rename -uid "8593FB80-4BC4-3685-420D-7982B4815D91";
	setAttr ".ihi" 0;
createNode groupId -n "groupId170";
	rename -uid "D178B1F8-418C-4017-08EB-0FACF81B40DC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId172";
	rename -uid "E7715C24-4920-CA63-0FCC-ADB0D859F9C8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId174";
	rename -uid "3978B9B4-4889-8175-563F-359D37E7A835";
	setAttr ".ihi" 0;
createNode groupId -n "groupId173";
	rename -uid "23107DC7-4153-FDAC-E57B-EC9A1A5AB112";
	setAttr ".ihi" 0;
createNode groupId -n "groupId175";
	rename -uid "6087307F-4705-1506-EACF-168334822D3D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId177";
	rename -uid "F1DC9E83-4F49-EBCA-D163-ADA5FF17BA79";
	setAttr ".ihi" 0;
createNode groupId -n "groupId176";
	rename -uid "F33C558D-4CD5-ED8E-6DE7-8AACD53FADE2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId178";
	rename -uid "737157F4-4CD1-0455-5385-179B7EFB094D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId180";
	rename -uid "37101292-4846-3AC4-E2AE-F9A1F37B12D0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId179";
	rename -uid "8C5C03A2-4FD2-DCF1-F168-AABCFA99749E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId181";
	rename -uid "C75B6FF2-45A4-F77E-4A21-ADB1FFC36B07";
	setAttr ".ihi" 0;
createNode groupId -n "groupId183";
	rename -uid "FA91B9A8-41CC-1344-7529-D6A19BDCE7E0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId182";
	rename -uid "34A576D9-47F1-981B-C081-C79D4541E42A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId184";
	rename -uid "46568B30-45AF-E287-5C88-B0A63169DDC0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId186";
	rename -uid "5C881D22-4E5D-1281-BE22-1581E55103DC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId185";
	rename -uid "AE9C8451-4EFA-6E0D-07C4-20B51245F489";
	setAttr ".ihi" 0;
createNode groupId -n "groupId187";
	rename -uid "978C52F7-41DD-8EB9-D11E-F89A56F3C463";
	setAttr ".ihi" 0;
createNode groupId -n "groupId189";
	rename -uid "53D98681-4BC4-DE8D-5780-D9B4446FE8A6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId188";
	rename -uid "1A2C1877-4F57-75FF-60F3-71AADD45E553";
	setAttr ".ihi" 0;
createNode groupId -n "groupId190";
	rename -uid "A3476333-4D70-6A1D-FF58-6489DD3FD7DC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId192";
	rename -uid "0259AD7E-4FBA-2C25-D019-7781F289A4E9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId191";
	rename -uid "D9ECC60A-43D3-E312-6575-379865AD3883";
	setAttr ".ihi" 0;
createNode groupId -n "groupId193";
	rename -uid "7E89EE65-49CB-19AE-FE91-1E940973C23E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId195";
	rename -uid "5B61C282-4D0B-D012-AED5-56A5EA323AB5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId194";
	rename -uid "156A6224-4600-BCE6-D153-A887A9268D88";
	setAttr ".ihi" 0;
createNode groupId -n "groupId196";
	rename -uid "45FA120F-4342-8F51-3F46-B38EE38E0BEF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId198";
	rename -uid "C5753E7A-4DF0-3AF7-F853-93A9CF1F65B9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId197";
	rename -uid "25ADB5B9-4F5A-04BE-37B7-C59D8C94F8C6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId199";
	rename -uid "4D36EB44-4756-183D-EBC9-8C802A02BCF8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId201";
	rename -uid "9B776487-4A11-0311-BCF8-129DA516BC9C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId200";
	rename -uid "84E3AB9F-4260-37D5-64DC-4FB17CB8A3FD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId202";
	rename -uid "39ADED10-4E29-183D-D941-32A264CE3B5E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId204";
	rename -uid "1050B763-4867-624C-1B52-AE885F213942";
	setAttr ".ihi" 0;
createNode groupId -n "groupId203";
	rename -uid "DFDBED63-4BF7-6FAD-B4CF-678460EE15FE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId205";
	rename -uid "8AEBD98D-4C0E-7F12-741A-269B0894BE33";
	setAttr ".ihi" 0;
createNode groupId -n "groupId207";
	rename -uid "EBFE96CE-4991-6F71-162A-A2AF5AC8704A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId206";
	rename -uid "029E77F6-43F8-DC91-4747-E19C1B918162";
	setAttr ".ihi" 0;
createNode groupId -n "groupId208";
	rename -uid "5092AB88-478E-B315-E806-8AA99CBA2049";
	setAttr ".ihi" 0;
createNode groupId -n "groupId210";
	rename -uid "62D10947-44B5-BC0B-5CEF-879CCDB458F9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId209";
	rename -uid "FAE6B807-40C3-1E2C-AB51-25A5D6B4DFE2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId211";
	rename -uid "2971AFB4-4CB3-CE3F-CE09-56B3164284AD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId213";
	rename -uid "98E9F60C-40B7-3BD4-9909-5C8629F1B9C6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId212";
	rename -uid "1C5F3D08-48AF-4CFA-9B6D-5C985B2F1996";
	setAttr ".ihi" 0;
createNode groupId -n "groupId214";
	rename -uid "A6B5F809-4B72-9B79-0C6D-FCB7B5C56897";
	setAttr ".ihi" 0;
createNode groupId -n "groupId216";
	rename -uid "2BB0A0F5-4809-A84E-AB78-4592EAD87994";
	setAttr ".ihi" 0;
createNode groupId -n "groupId215";
	rename -uid "B8F66574-4F39-9EDA-9611-9B8E7DFFAA56";
	setAttr ".ihi" 0;
createNode groupId -n "groupId217";
	rename -uid "F0DE4CE9-4E94-5622-E6AE-DA8BFBCD3E42";
	setAttr ".ihi" 0;
createNode groupId -n "groupId219";
	rename -uid "869C012E-4299-FC12-5B06-EC8CCCDCD5E7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId218";
	rename -uid "E3AF537F-40BC-263C-9240-0C97D95C0085";
	setAttr ".ihi" 0;
createNode groupId -n "groupId220";
	rename -uid "44BEB01A-4B97-E92B-2B55-E6BB41EF11CD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId222";
	rename -uid "AADAE3BD-40B2-321E-53DC-E186A588E18D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId221";
	rename -uid "43CDDFE9-4608-6A68-7812-989DA07C49B6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId112";
	rename -uid "0EA46161-482B-E7F5-9FBD-1F95630F510B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId114";
	rename -uid "9367BBF1-42C0-22F7-0627-229BDF37787A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId113";
	rename -uid "BD981CED-4246-BA7D-1D2B-37B2F2F7C96C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId115";
	rename -uid "32DF7972-4364-EDF8-BF5E-7E99B367284E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId117";
	rename -uid "3813825A-4879-AD1E-8AB0-2AAA0B980066";
	setAttr ".ihi" 0;
createNode groupId -n "groupId116";
	rename -uid "3251166A-47AA-EB3A-8287-23A371EBC8BB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId118";
	rename -uid "FB6C8E75-448E-33D6-FF95-C78DED196B1E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId120";
	rename -uid "6BAD0AD5-4D3B-1737-B611-769D695FB6D1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId119";
	rename -uid "9FB40C1D-4F32-0848-4897-D5846B6073CD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId121";
	rename -uid "53AFD8A4-46BE-1CBE-2AB9-97A32DF26B07";
	setAttr ".ihi" 0;
createNode groupId -n "groupId123";
	rename -uid "35E65781-4CC2-9FE5-33CF-8A88390A2CDA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId122";
	rename -uid "78BE2578-428F-282C-2D15-25A2C3E450A4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId124";
	rename -uid "AB549B26-40C6-B46B-7B1A-51B7EF73BE56";
	setAttr ".ihi" 0;
createNode groupId -n "groupId126";
	rename -uid "C625EEA8-4C71-1C6D-B0EE-128191B8747A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId125";
	rename -uid "1B7600DA-4CE8-F6CA-4034-F3B43DCB870D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId127";
	rename -uid "3546C98A-4241-D0F4-EE34-9A84F7633DA1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId129";
	rename -uid "769921EB-4090-FDF0-8199-01BAB05FFE74";
	setAttr ".ihi" 0;
createNode groupId -n "groupId128";
	rename -uid "2FB81F6F-4943-BE51-7183-0CA27CC9CA36";
	setAttr ".ihi" 0;
createNode groupId -n "groupId130";
	rename -uid "48EC461D-447F-D8F7-01CD-9180BFCE7388";
	setAttr ".ihi" 0;
createNode groupId -n "groupId132";
	rename -uid "756A365B-41E5-30FE-932D-CD899407DB5A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId131";
	rename -uid "2D62D76B-4391-4C0B-55C3-47AF31A6BABE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId133";
	rename -uid "FB5D762F-45B3-4516-EF3D-9FBA1A70D1D9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId135";
	rename -uid "EBE3825F-44F5-32D8-61F6-21BA2BE7ACB5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId134";
	rename -uid "4D6A6A00-495A-E644-7B5C-53AC46AD5A8C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId136";
	rename -uid "42A9BB84-4291-044C-6FD5-47A358096770";
	setAttr ".ihi" 0;
createNode groupId -n "groupId138";
	rename -uid "3B34F044-4E97-7A1C-EE35-19A18CEC33E8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId137";
	rename -uid "54CC3190-402C-422F-C11C-569DE5F65DE7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId139";
	rename -uid "0AA501B4-4133-19CE-0863-F79E2FF2FD8D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId141";
	rename -uid "287180B1-4C9C-D812-D4AC-F39BD18100CD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId140";
	rename -uid "33DD6950-43F5-04D3-F69D-AABA2FC40F38";
	setAttr ".ihi" 0;
createNode groupId -n "groupId142";
	rename -uid "EA9522A0-4834-89AE-9ED6-1CB36E49C4D6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId144";
	rename -uid "BA613E40-4F72-E71C-7D96-849003EA7181";
	setAttr ".ihi" 0;
createNode groupId -n "groupId143";
	rename -uid "6E76B937-4BFB-2A05-96F6-B08FE2AB2DA4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId145";
	rename -uid "40112558-48C3-6BE8-4CD7-92A220A9D4BE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId147";
	rename -uid "35C77CA4-45ED-54F7-19FC-24901E31576F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId146";
	rename -uid "5CA889E5-45DF-9E0E-3141-7C9786156414";
	setAttr ".ihi" 0;
createNode groupId -n "groupId148";
	rename -uid "227A909F-4044-AF25-3637-C5B9768D9122";
	setAttr ".ihi" 0;
createNode groupId -n "groupId150";
	rename -uid "F99CDF39-437E-14C6-2018-EC9B51AB1B40";
	setAttr ".ihi" 0;
createNode groupId -n "groupId149";
	rename -uid "4DD36A3B-41E9-FFBB-7B01-11932477B362";
	setAttr ".ihi" 0;
createNode groupId -n "groupId151";
	rename -uid "83222C31-4AB4-2256-4566-84BBB7640BA3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId153";
	rename -uid "C9BB2EFA-4961-F5B5-75BE-7D9931986DA0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId152";
	rename -uid "17F573FD-43BA-FD94-4C94-D8A3A442D651";
	setAttr ".ihi" 0;
createNode groupId -n "groupId154";
	rename -uid "8AA53AB8-46D6-909F-1282-D09472B94563";
	setAttr ".ihi" 0;
createNode groupId -n "groupId156";
	rename -uid "8EEBE1FC-4668-F2FE-DBB0-5088F52D5ABA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId155";
	rename -uid "F2DBCBFC-42EF-4556-FF52-71BD1702C310";
	setAttr ".ihi" 0;
createNode groupId -n "groupId232";
	rename -uid "D68F36E6-40D5-9CA7-7DEF-C7A47AA16964";
	setAttr ".ihi" 0;
createNode groupId -n "groupId234";
	rename -uid "B328529F-46E5-BA9D-FFDF-E2A025F04890";
	setAttr ".ihi" 0;
createNode groupId -n "groupId233";
	rename -uid "868B1A6C-4936-B209-95E2-0CA678C8847F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId235";
	rename -uid "553A3F9E-4533-82D7-4D1D-3CB8C604BD52";
	setAttr ".ihi" 0;
createNode groupId -n "groupId237";
	rename -uid "B78D31B9-4A24-9A21-047D-828E87BB2124";
	setAttr ".ihi" 0;
createNode groupId -n "groupId236";
	rename -uid "E0DB2DDE-496C-D9DB-443E-649E268926DA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId238";
	rename -uid "C71CC8C0-4A0E-E01B-A02D-AC822837DD5D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId240";
	rename -uid "24235386-4854-A893-5246-29BE95D19F1C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId239";
	rename -uid "F2F35D6B-4465-C994-A652-89964D3ABA18";
	setAttr ".ihi" 0;
createNode groupId -n "groupId241";
	rename -uid "47348FD3-4A23-D42F-1A16-5CAF5370C67A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId243";
	rename -uid "B56FC2B6-4265-E022-4265-7BA005BA84D5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId242";
	rename -uid "51486B5B-4216-77F3-F02D-699ADA0B0B85";
	setAttr ".ihi" 0;
createNode groupId -n "groupId244";
	rename -uid "D8B89284-456B-D1E9-DDF3-E0A95715BAC0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId246";
	rename -uid "1C960C1F-4DB3-79D8-2625-7BB1B5A6BA7D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId245";
	rename -uid "E8F6F10D-458A-3F0C-0A4C-A19A7A1D642C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId157";
	rename -uid "AEE67E63-47A1-CE24-BCF0-4795B51B1CEC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId159";
	rename -uid "677B6441-45E8-E574-8CE6-2095424E9035";
	setAttr ".ihi" 0;
createNode groupId -n "groupId158";
	rename -uid "C2C7CA6A-473B-03BD-6978-C48E431840A0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId160";
	rename -uid "163A78DB-486B-5FD0-C390-F593F59891DC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId162";
	rename -uid "270695AC-45CD-28E3-BA2D-E69BAF57EDEE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId161";
	rename -uid "50BA8D8B-443D-3D61-F9EB-65A890125FF8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId163";
	rename -uid "16286C97-4DC4-DB06-9DA1-61B9D3E9F20A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId165";
	rename -uid "3FAA2C70-4667-ABB8-9F62-49B63801C405";
	setAttr ".ihi" 0;
createNode groupId -n "groupId164";
	rename -uid "44408E03-460A-F791-A908-53B921B32234";
	setAttr ".ihi" 0;
createNode groupId -n "groupId166";
	rename -uid "BF97C014-42ED-1CD3-C882-EC9DA1648A7F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId168";
	rename -uid "4BAD48B3-4C88-31BA-0D20-FCA0E0581A6F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId167";
	rename -uid "93056E32-4FD8-EFC6-2D38-D3A812355FAC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId223";
	rename -uid "23D3C980-4207-FE76-C565-26BE3A046CA8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId225";
	rename -uid "A3F36116-4A83-69F2-8A0A-C7A12B513461";
	setAttr ".ihi" 0;
createNode groupId -n "groupId224";
	rename -uid "53410B66-4411-F4EB-252E-D0B0D8AFF6FD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId226";
	rename -uid "811F9443-499D-2148-0F08-EFBD6F8DD014";
	setAttr ".ihi" 0;
createNode groupId -n "groupId228";
	rename -uid "F8755661-4A77-FF4B-030D-8E8C8E4A0225";
	setAttr ".ihi" 0;
createNode groupId -n "groupId227";
	rename -uid "37712FD3-4C3D-AED8-2929-2F9FA70B8AFE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId229";
	rename -uid "CE70564A-4328-D431-9786-FB90731D20F4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId231";
	rename -uid "C3E29473-417E-B87E-666A-19A9EBCD3DF5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId230";
	rename -uid "71ACA82D-46A0-FFB1-F2FF-D48B82BA6A03";
	setAttr ".ihi" 0;
createNode groupId -n "groupId253";
	rename -uid "169B339A-48C4-8B52-DE86-88827C0C0718";
	setAttr ".ihi" 0;
createNode groupId -n "groupId255";
	rename -uid "C56EBAD4-4EB7-37D7-5B97-55B1CFCF4B75";
	setAttr ".ihi" 0;
createNode groupId -n "groupId254";
	rename -uid "0063A9F1-4EDF-7481-5E5C-B297FBF52770";
	setAttr ".ihi" 0;
createNode groupId -n "groupId256";
	rename -uid "A889E9C8-4A6C-29C7-C679-4196C5BF11DA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId258";
	rename -uid "645F5FD7-4793-77A8-D145-06A5A1D1DD7B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId257";
	rename -uid "C67D63E6-4F3E-B935-C3BC-B2B89DD4FCDE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId259";
	rename -uid "233D6347-41D8-7C0A-EA2F-78A0060063E7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId261";
	rename -uid "C32B9993-4685-5540-C91A-008C66C863BF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId260";
	rename -uid "C12A9B70-451A-6170-00C2-969592D053C2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId262";
	rename -uid "6F5E50EC-4D91-3E92-96E9-2AB2A4F7BF51";
	setAttr ".ihi" 0;
createNode groupId -n "groupId264";
	rename -uid "C38BB8AC-43DC-5B25-BA08-A4A2E770C2FF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId263";
	rename -uid "04E0C774-4AA4-2F03-4784-B8A34067E2A2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId265";
	rename -uid "5E801F0D-4786-DA1C-A8BE-F2A1E420D21A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId267";
	rename -uid "858E6B46-45E0-8D9D-55E0-ADA6A609256A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId266";
	rename -uid "04C8B183-43D7-E17C-5039-D3A7AF7042A6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId268";
	rename -uid "E175F9F0-4FD9-3E50-B666-82A7419853C0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId270";
	rename -uid "5FF21238-400B-CB28-203E-DE997BE40CCA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId269";
	rename -uid "54FAC84D-4B07-1E37-0B41-AA957BD20DEE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId271";
	rename -uid "F268D0C0-4634-D8B6-40D9-80A3E12C3123";
	setAttr ".ihi" 0;
createNode groupId -n "groupId273";
	rename -uid "D64B62C1-4077-5F4E-FE47-978ED009072A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId272";
	rename -uid "10AE2F82-4BB2-8A3D-E7CA-D48DE7088A97";
	setAttr ".ihi" 0;
createNode groupId -n "groupId274";
	rename -uid "AE13D74D-4E2A-EBAC-7C05-A69D3BF3DD63";
	setAttr ".ihi" 0;
createNode groupId -n "groupId276";
	rename -uid "7AE7A366-4D33-BBEB-4444-6486AE817CED";
	setAttr ".ihi" 0;
createNode groupId -n "groupId275";
	rename -uid "3A4A0B76-4266-8446-CDEF-39964974A53B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId277";
	rename -uid "D2F62719-442F-720F-A53C-DE8D097DBF8A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId279";
	rename -uid "BB2AD853-48FD-4EB5-2E4C-9484734E411E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId278";
	rename -uid "ED444147-4CCF-CA56-A690-D197B089F393";
	setAttr ".ihi" 0;
createNode groupId -n "groupId280";
	rename -uid "C21C9B44-4D6D-4B4B-93AE-C2BBB6BAF957";
	setAttr ".ihi" 0;
createNode groupId -n "groupId282";
	rename -uid "82DDD5DC-4FDA-1094-AE5B-80A9CF08316B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId281";
	rename -uid "24107B71-4BFC-75E7-5844-73AD169ED121";
	setAttr ".ihi" 0;
createNode groupId -n "groupId283";
	rename -uid "0EC1DBB1-4A66-F081-72A6-C39587BE9C8C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId285";
	rename -uid "A36842F0-47CA-10DF-0679-FB8C20B3BE17";
	setAttr ".ihi" 0;
createNode groupId -n "groupId284";
	rename -uid "4BD73214-480E-7C0E-DE59-E9ADA45DFE83";
	setAttr ".ihi" 0;
createNode groupId -n "groupId286";
	rename -uid "7522FBCC-4670-133E-9562-78920101DB59";
	setAttr ".ihi" 0;
createNode groupId -n "groupId288";
	rename -uid "B98DB5CE-49D3-1F01-F1E8-D891BA5FACFD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId287";
	rename -uid "439442F3-4363-D935-DD23-F8808F4A960D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId289";
	rename -uid "3CE9606A-4592-F066-9FAC-9D9753381A4A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId291";
	rename -uid "B209AA0B-4CD4-2CCB-C04C-8B97863C80C8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId290";
	rename -uid "DB516470-4F46-299B-42EF-04822AE5ACE6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId292";
	rename -uid "447E0DEC-4BE9-6DB8-E68C-789ED8678662";
	setAttr ".ihi" 0;
createNode groupId -n "groupId294";
	rename -uid "85A414AF-4335-D721-F6FE-2FA95A570F6E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId293";
	rename -uid "57BA36BC-4EA5-4830-8869-86A302C90907";
	setAttr ".ihi" 0;
createNode groupId -n "groupId295";
	rename -uid "D5178364-4DAE-3A10-95BE-D98271255296";
	setAttr ".ihi" 0;
createNode groupId -n "groupId297";
	rename -uid "39980F56-41F2-E882-78E0-1AB2A89EEF32";
	setAttr ".ihi" 0;
createNode groupId -n "groupId296";
	rename -uid "374E980D-435D-B8EA-5CC2-2BA858DB49E3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId298";
	rename -uid "F5BDB20D-4FC1-1D46-944A-898E938B0D20";
	setAttr ".ihi" 0;
createNode groupId -n "groupId300";
	rename -uid "23CCF492-45B1-8A0E-B476-DC88FF0B48A4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId299";
	rename -uid "D0AB6DD9-40E1-6A55-DA29-B68ABC9AA51D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId301";
	rename -uid "EB8C129E-4BF6-79E7-3A56-BF85718E15D7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId303";
	rename -uid "1D335CBF-4510-1521-DA5F-2C8354F012A7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId302";
	rename -uid "0FB3CD07-40D1-C93A-1E7D-5793781EB19D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId304";
	rename -uid "0F6C19ED-474B-BAC7-4461-3B8EB095082D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId306";
	rename -uid "8C9489BE-4239-8C6C-EB6D-B7ABE6553EF1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId305";
	rename -uid "75F75673-42BD-469F-D08C-228B9DBC42AD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId247";
	rename -uid "F6FCDE6F-403C-A474-F56C-EB85DA45BD58";
	setAttr ".ihi" 0;
createNode groupId -n "groupId249";
	rename -uid "05BA980B-488C-FFF7-1420-3F90C9B4E37E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId248";
	rename -uid "E01EABB2-4757-63C8-EF4B-BC970700D8B1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId250";
	rename -uid "E7ACF34D-4614-F629-50D9-DD9F68761FAE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId252";
	rename -uid "B1A90D08-44A7-C752-707A-59BAA0948A92";
	setAttr ".ihi" 0;
createNode groupId -n "groupId251";
	rename -uid "97C084FE-442E-4567-E5ED-1A98122F2BFF";
	setAttr ".ihi" 0;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "BD43ADD8-44F2-8394-15A7-0EA151B210A3";
	setAttr -s 25 ".lnk";
	setAttr -s 25 ".slnk";
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
	setAttr -s 25 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 28 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 3 ".r";
select -ne :initialShadingGroup;
	setAttr -s 6 ".dsm";
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
	setAttr -s 68 ".hyp";
connectAttr "groupId1.id" "rtLegQd1_toe02_1_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd1_toe02_1_pxGeoShape.iog.og[0].gco";
connectAttr "groupId3.id" "rtLegQd1_toe02_1_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd1_toe02_1_pxGeoShape.iog.og[1].gco";
connectAttr "groupId2.id" "rtLegQd1_toe02_1_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId4.id" "rtLegQd1_toe01_3_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd1_toe01_3_pxGeoShape.iog.og[0].gco";
connectAttr "groupId6.id" "rtLegQd1_toe01_3_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd1_toe01_3_pxGeoShape.iog.og[1].gco";
connectAttr "groupId5.id" "rtLegQd1_toe01_3_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId7.id" "rtLegQd1_toe01_4_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd1_toe01_4_pxGeoShape.iog.og[0].gco";
connectAttr "groupId9.id" "rtLegQd1_toe01_4_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd1_toe01_4_pxGeoShape.iog.og[1].gco";
connectAttr "groupId8.id" "rtLegQd1_toe01_4_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId10.id" "rtLegQd1_toe02_3_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd1_toe02_3_pxGeoShape.iog.og[0].gco";
connectAttr "groupId12.id" "rtLegQd1_toe02_3_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd1_toe02_3_pxGeoShape.iog.og[1].gco";
connectAttr "groupId11.id" "rtLegQd1_toe02_3_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId13.id" "rtLegQd1_toe02_2_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd1_toe02_2_pxGeoShape.iog.og[0].gco";
connectAttr "groupId15.id" "rtLegQd1_toe02_2_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd1_toe02_2_pxGeoShape.iog.og[1].gco";
connectAttr "groupId14.id" "rtLegQd1_toe02_2_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId16.id" "rtLegQd1_toe03_2_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd1_toe03_2_pxGeoShape.iog.og[0].gco";
connectAttr "groupId18.id" "rtLegQd1_toe03_2_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd1_toe03_2_pxGeoShape.iog.og[1].gco";
connectAttr "groupId17.id" "rtLegQd1_toe03_2_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId19.id" "rtLegQd1_toe02_4_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd1_toe02_4_pxGeoShape.iog.og[0].gco";
connectAttr "groupId21.id" "rtLegQd1_toe02_4_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd1_toe02_4_pxGeoShape.iog.og[1].gco";
connectAttr "groupId20.id" "rtLegQd1_toe02_4_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId22.id" "rtLegQd1_toe03_1_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd1_toe03_1_pxGeoShape.iog.og[0].gco";
connectAttr "groupId24.id" "rtLegQd1_toe03_1_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd1_toe03_1_pxGeoShape.iog.og[1].gco";
connectAttr "groupId23.id" "rtLegQd1_toe03_1_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId25.id" "rtLegQd1_toe04_2_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd1_toe04_2_pxGeoShape.iog.og[0].gco";
connectAttr "groupId27.id" "rtLegQd1_toe04_2_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd1_toe04_2_pxGeoShape.iog.og[1].gco";
connectAttr "groupId26.id" "rtLegQd1_toe04_2_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId28.id" "rtLegQd1_toe03_4_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd1_toe03_4_pxGeoShape.iog.og[0].gco";
connectAttr "groupId30.id" "rtLegQd1_toe03_4_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd1_toe03_4_pxGeoShape.iog.og[1].gco";
connectAttr "groupId29.id" "rtLegQd1_toe03_4_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId31.id" "rtLegQd1_toe03_3_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd1_toe03_3_pxGeoShape.iog.og[0].gco";
connectAttr "groupId33.id" "rtLegQd1_toe03_3_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd1_toe03_3_pxGeoShape.iog.og[1].gco";
connectAttr "groupId32.id" "rtLegQd1_toe03_3_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId34.id" "rtLegQd1_toe04_1_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd1_toe04_1_pxGeoShape.iog.og[0].gco";
connectAttr "groupId36.id" "rtLegQd1_toe04_1_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd1_toe04_1_pxGeoShape.iog.og[1].gco";
connectAttr "groupId35.id" "rtLegQd1_toe04_1_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId37.id" "rtLegQd1_toe04_3_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd1_toe04_3_pxGeoShape.iog.og[0].gco";
connectAttr "groupId39.id" "rtLegQd1_toe04_3_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd1_toe04_3_pxGeoShape.iog.og[1].gco";
connectAttr "groupId38.id" "rtLegQd1_toe04_3_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId40.id" "rtLegQd1_toe04_4_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd1_toe04_4_pxGeoShape.iog.og[0].gco";
connectAttr "groupId42.id" "rtLegQd1_toe04_4_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd1_toe04_4_pxGeoShape.iog.og[1].gco";
connectAttr "groupId41.id" "rtLegQd1_toe04_4_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId43.id" "rtLegQd1_scapTip_end_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd1_scapTip_end_pxGeoShape.iog.og[0].gco"
		;
connectAttr "groupId45.id" "rtLegQd1_scapTip_end_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd1_scapTip_end_pxGeoShape.iog.og[1].gco"
		;
connectAttr "groupId44.id" "rtLegQd1_scapTip_end_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId46.id" "rtLegQd1_radius_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd1_radius_pxGeoShape.iog.og[0].gco";
connectAttr "groupId48.id" "rtLegQd1_radius_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd1_radius_pxGeoShape.iog.og[1].gco";
connectAttr "groupId47.id" "rtLegQd1_radius_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId49.id" "rtLegQd1_ulna_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd1_ulna_pxGeoShape.iog.og[0].gco";
connectAttr "groupId51.id" "rtLegQd1_ulna_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd1_ulna_pxGeoShape.iog.og[1].gco";
connectAttr "groupId50.id" "rtLegQd1_ulna_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId100.id" "rtLegQd1_upr_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd1_upr_pxGeoShape.iog.og[0].gco";
connectAttr "groupId102.id" "rtLegQd1_upr_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd1_upr_pxGeoShape.iog.og[1].gco";
connectAttr "groupId101.id" "rtLegQd1_upr_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId106.id" "rtLegQd1_toe01_2_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd1_toe01_2_pxGeoShape.iog.og[0].gco";
connectAttr "groupId108.id" "rtLegQd1_toe01_2_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd1_toe01_2_pxGeoShape.iog.og[1].gco";
connectAttr "groupId107.id" "rtLegQd1_toe01_2_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId109.id" "rtLegQd1_toe01_1_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd1_toe01_1_pxGeoShape.iog.og[0].gco";
connectAttr "groupId111.id" "rtLegQd1_toe01_1_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd1_toe01_1_pxGeoShape.iog.og[1].gco";
connectAttr "groupId110.id" "rtLegQd1_toe01_1_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId52.id" "spineQd0_0_rbj_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "spineQd0_0_rbj_pxGeoShape.iog.og[0].gco";
connectAttr "groupId54.id" "spineQd0_0_rbj_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "spineQd0_0_rbj_pxGeoShape.iog.og[1].gco";
connectAttr "groupId53.id" "spineQd0_0_rbj_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId55.id" "spineQd0_4_rbj_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "spineQd0_4_rbj_pxGeoShape.iog.og[0].gco";
connectAttr "groupId57.id" "spineQd0_4_rbj_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "spineQd0_4_rbj_pxGeoShape.iog.og[1].gco";
connectAttr "groupId56.id" "spineQd0_4_rbj_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId58.id" "spineQd0_6_rbj_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "spineQd0_6_rbj_pxGeoShape.iog.og[0].gco";
connectAttr "groupId60.id" "spineQd0_6_rbj_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "spineQd0_6_rbj_pxGeoShape.iog.og[1].gco";
connectAttr "groupId59.id" "spineQd0_6_rbj_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId61.id" "spineQd0_3_rbj_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "spineQd0_3_rbj_pxGeoShape.iog.og[0].gco";
connectAttr "groupId63.id" "spineQd0_3_rbj_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "spineQd0_3_rbj_pxGeoShape.iog.og[1].gco";
connectAttr "groupId62.id" "spineQd0_3_rbj_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId64.id" "spineQd0_2_rbj_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "spineQd0_2_rbj_pxGeoShape.iog.og[0].gco";
connectAttr "groupId66.id" "spineQd0_2_rbj_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "spineQd0_2_rbj_pxGeoShape.iog.og[1].gco";
connectAttr "groupId65.id" "spineQd0_2_rbj_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId67.id" "spineQd0_5_rbj_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "spineQd0_5_rbj_pxGeoShape.iog.og[0].gco";
connectAttr "groupId69.id" "spineQd0_5_rbj_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "spineQd0_5_rbj_pxGeoShape.iog.og[1].gco";
connectAttr "groupId68.id" "spineQd0_5_rbj_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId70.id" "spineQd0_end_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "spineQd0_end_pxGeoShape.iog.og[0].gco";
connectAttr "groupId72.id" "spineQd0_end_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "spineQd0_end_pxGeoShape.iog.og[1].gco";
connectAttr "groupId71.id" "spineQd0_end_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId73.id" "spineQd0_7_rbj_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "spineQd0_7_rbj_pxGeoShape.iog.og[0].gco";
connectAttr "groupId75.id" "spineQd0_7_rbj_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "spineQd0_7_rbj_pxGeoShape.iog.og[1].gco";
connectAttr "groupId74.id" "spineQd0_7_rbj_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId103.id" "spineQd0_1_rbj_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "spineQd0_1_rbj_pxGeoShape.iog.og[0].gco";
connectAttr "groupId105.id" "spineQd0_1_rbj_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "spineQd0_1_rbj_pxGeoShape.iog.og[1].gco";
connectAttr "groupId104.id" "spineQd0_1_rbj_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId76.id" "tail0_1_rbj_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "tail0_1_rbj_pxGeoShape.iog.og[0].gco";
connectAttr "groupId78.id" "tail0_1_rbj_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "tail0_1_rbj_pxGeoShape.iog.og[1].gco";
connectAttr "groupId77.id" "tail0_1_rbj_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId79.id" "tail0_4_rbj_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "tail0_4_rbj_pxGeoShape.iog.og[0].gco";
connectAttr "groupId81.id" "tail0_4_rbj_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "tail0_4_rbj_pxGeoShape.iog.og[1].gco";
connectAttr "groupId80.id" "tail0_4_rbj_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId82.id" "tail0_2_rbj_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "tail0_2_rbj_pxGeoShape.iog.og[0].gco";
connectAttr "groupId84.id" "tail0_2_rbj_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "tail0_2_rbj_pxGeoShape.iog.og[1].gco";
connectAttr "groupId83.id" "tail0_2_rbj_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId85.id" "tail0_0_rbj_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "tail0_0_rbj_pxGeoShape.iog.og[0].gco";
connectAttr "groupId87.id" "tail0_0_rbj_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "tail0_0_rbj_pxGeoShape.iog.og[1].gco";
connectAttr "groupId86.id" "tail0_0_rbj_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId88.id" "tail0_3_rbj_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "tail0_3_rbj_pxGeoShape.iog.og[0].gco";
connectAttr "groupId90.id" "tail0_3_rbj_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "tail0_3_rbj_pxGeoShape.iog.og[1].gco";
connectAttr "groupId89.id" "tail0_3_rbj_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId91.id" "rtLegQd0_radius_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd0_radius_pxGeoShape.iog.og[0].gco";
connectAttr "groupId93.id" "rtLegQd0_radius_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd0_radius_pxGeoShape.iog.og[1].gco";
connectAttr "groupId92.id" "rtLegQd0_radius_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId94.id" "rtLegQd0_patella_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd0_patella_pxGeoShape.iog.og[0].gco";
connectAttr "groupId96.id" "rtLegQd0_patella_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd0_patella_pxGeoShape.iog.og[1].gco";
connectAttr "groupId95.id" "rtLegQd0_patella_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId97.id" "rtLegQd0_ulna_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd0_ulna_pxGeoShape.iog.og[0].gco";
connectAttr "groupId99.id" "rtLegQd0_ulna_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd0_ulna_pxGeoShape.iog.og[1].gco";
connectAttr "groupId98.id" "rtLegQd0_ulna_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId169.id" "rtLegQd0_hip_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd0_hip_pxGeoShape.iog.og[0].gco";
connectAttr "groupId171.id" "rtLegQd0_hip_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd0_hip_pxGeoShape.iog.og[1].gco";
connectAttr "groupId170.id" "rtLegQd0_hip_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId172.id" "rtLegQd0_upr_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd0_upr_pxGeoShape.iog.og[0].gco";
connectAttr "groupId174.id" "rtLegQd0_upr_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd0_upr_pxGeoShape.iog.og[1].gco";
connectAttr "groupId173.id" "rtLegQd0_upr_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId175.id" "rtLegQd0_toe01_1_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd0_toe01_1_pxGeoShape.iog.og[0].gco";
connectAttr "groupId177.id" "rtLegQd0_toe01_1_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd0_toe01_1_pxGeoShape.iog.og[1].gco";
connectAttr "groupId176.id" "rtLegQd0_toe01_1_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId178.id" "rtLegQd0_toe01_4_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd0_toe01_4_pxGeoShape.iog.og[0].gco";
connectAttr "groupId180.id" "rtLegQd0_toe01_4_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd0_toe01_4_pxGeoShape.iog.og[1].gco";
connectAttr "groupId179.id" "rtLegQd0_toe01_4_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId181.id" "rtLegQd0_toe01_2_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd0_toe01_2_pxGeoShape.iog.og[0].gco";
connectAttr "groupId183.id" "rtLegQd0_toe01_2_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd0_toe01_2_pxGeoShape.iog.og[1].gco";
connectAttr "groupId182.id" "rtLegQd0_toe01_2_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId184.id" "rtLegQd0_toe01_3_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd0_toe01_3_pxGeoShape.iog.og[0].gco";
connectAttr "groupId186.id" "rtLegQd0_toe01_3_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd0_toe01_3_pxGeoShape.iog.og[1].gco";
connectAttr "groupId185.id" "rtLegQd0_toe01_3_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId187.id" "rtLegQd0_toe02_3_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd0_toe02_3_pxGeoShape.iog.og[0].gco";
connectAttr "groupId189.id" "rtLegQd0_toe02_3_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd0_toe02_3_pxGeoShape.iog.og[1].gco";
connectAttr "groupId188.id" "rtLegQd0_toe02_3_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId190.id" "rtLegQd0_toe02_1_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd0_toe02_1_pxGeoShape.iog.og[0].gco";
connectAttr "groupId192.id" "rtLegQd0_toe02_1_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd0_toe02_1_pxGeoShape.iog.og[1].gco";
connectAttr "groupId191.id" "rtLegQd0_toe02_1_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId193.id" "rtLegQd0_toe02_2_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd0_toe02_2_pxGeoShape.iog.og[0].gco";
connectAttr "groupId195.id" "rtLegQd0_toe02_2_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd0_toe02_2_pxGeoShape.iog.og[1].gco";
connectAttr "groupId194.id" "rtLegQd0_toe02_2_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId196.id" "rtLegQd0_toe02_4_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd0_toe02_4_pxGeoShape.iog.og[0].gco";
connectAttr "groupId198.id" "rtLegQd0_toe02_4_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd0_toe02_4_pxGeoShape.iog.og[1].gco";
connectAttr "groupId197.id" "rtLegQd0_toe02_4_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId199.id" "rtLegQd0_toe03_2_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd0_toe03_2_pxGeoShape.iog.og[0].gco";
connectAttr "groupId201.id" "rtLegQd0_toe03_2_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd0_toe03_2_pxGeoShape.iog.og[1].gco";
connectAttr "groupId200.id" "rtLegQd0_toe03_2_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId202.id" "rtLegQd0_toe03_1_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd0_toe03_1_pxGeoShape.iog.og[0].gco";
connectAttr "groupId204.id" "rtLegQd0_toe03_1_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd0_toe03_1_pxGeoShape.iog.og[1].gco";
connectAttr "groupId203.id" "rtLegQd0_toe03_1_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId205.id" "rtLegQd0_toe03_3_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd0_toe03_3_pxGeoShape.iog.og[0].gco";
connectAttr "groupId207.id" "rtLegQd0_toe03_3_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd0_toe03_3_pxGeoShape.iog.og[1].gco";
connectAttr "groupId206.id" "rtLegQd0_toe03_3_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId208.id" "rtLegQd0_toe03_4_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd0_toe03_4_pxGeoShape.iog.og[0].gco";
connectAttr "groupId210.id" "rtLegQd0_toe03_4_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd0_toe03_4_pxGeoShape.iog.og[1].gco";
connectAttr "groupId209.id" "rtLegQd0_toe03_4_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId211.id" "rtLegQd0_toe04_1_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd0_toe04_1_pxGeoShape.iog.og[0].gco";
connectAttr "groupId213.id" "rtLegQd0_toe04_1_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd0_toe04_1_pxGeoShape.iog.og[1].gco";
connectAttr "groupId212.id" "rtLegQd0_toe04_1_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId214.id" "rtLegQd0_toe04_3_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd0_toe04_3_pxGeoShape.iog.og[0].gco";
connectAttr "groupId216.id" "rtLegQd0_toe04_3_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd0_toe04_3_pxGeoShape.iog.og[1].gco";
connectAttr "groupId215.id" "rtLegQd0_toe04_3_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId217.id" "rtLegQd0_toe04_2_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd0_toe04_2_pxGeoShape.iog.og[0].gco";
connectAttr "groupId219.id" "rtLegQd0_toe04_2_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd0_toe04_2_pxGeoShape.iog.og[1].gco";
connectAttr "groupId218.id" "rtLegQd0_toe04_2_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId220.id" "rtLegQd0_toe04_4_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "rtLegQd0_toe04_4_pxGeoShape.iog.og[0].gco";
connectAttr "groupId222.id" "rtLegQd0_toe04_4_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "rtLegQd0_toe04_4_pxGeoShape.iog.og[1].gco";
connectAttr "groupId221.id" "rtLegQd0_toe04_4_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId112.id" "lfLegQd1_toe02_2_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd1_toe02_2_pxGeoShape.iog.og[0].gco";
connectAttr "groupId114.id" "lfLegQd1_toe02_2_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd1_toe02_2_pxGeoShape.iog.og[1].gco";
connectAttr "groupId113.id" "lfLegQd1_toe02_2_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId115.id" "lfLegQd1_toe02_1_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd1_toe02_1_pxGeoShape.iog.og[0].gco";
connectAttr "groupId117.id" "lfLegQd1_toe02_1_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd1_toe02_1_pxGeoShape.iog.og[1].gco";
connectAttr "groupId116.id" "lfLegQd1_toe02_1_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId118.id" "lfLegQd1_toe02_3_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd1_toe02_3_pxGeoShape.iog.og[0].gco";
connectAttr "groupId120.id" "lfLegQd1_toe02_3_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd1_toe02_3_pxGeoShape.iog.og[1].gco";
connectAttr "groupId119.id" "lfLegQd1_toe02_3_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId121.id" "lfLegQd1_toe03_1_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd1_toe03_1_pxGeoShape.iog.og[0].gco";
connectAttr "groupId123.id" "lfLegQd1_toe03_1_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd1_toe03_1_pxGeoShape.iog.og[1].gco";
connectAttr "groupId122.id" "lfLegQd1_toe03_1_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId124.id" "lfLegQd1_toe02_4_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd1_toe02_4_pxGeoShape.iog.og[0].gco";
connectAttr "groupId126.id" "lfLegQd1_toe02_4_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd1_toe02_4_pxGeoShape.iog.og[1].gco";
connectAttr "groupId125.id" "lfLegQd1_toe02_4_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId127.id" "lfLegQd1_toe03_4_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd1_toe03_4_pxGeoShape.iog.og[0].gco";
connectAttr "groupId129.id" "lfLegQd1_toe03_4_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd1_toe03_4_pxGeoShape.iog.og[1].gco";
connectAttr "groupId128.id" "lfLegQd1_toe03_4_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId130.id" "lfLegQd1_toe03_2_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd1_toe03_2_pxGeoShape.iog.og[0].gco";
connectAttr "groupId132.id" "lfLegQd1_toe03_2_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd1_toe03_2_pxGeoShape.iog.og[1].gco";
connectAttr "groupId131.id" "lfLegQd1_toe03_2_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId133.id" "lfLegQd1_toe03_3_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd1_toe03_3_pxGeoShape.iog.og[0].gco";
connectAttr "groupId135.id" "lfLegQd1_toe03_3_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd1_toe03_3_pxGeoShape.iog.og[1].gco";
connectAttr "groupId134.id" "lfLegQd1_toe03_3_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId136.id" "lfLegQd1_toe04_2_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd1_toe04_2_pxGeoShape.iog.og[0].gco";
connectAttr "groupId138.id" "lfLegQd1_toe04_2_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd1_toe04_2_pxGeoShape.iog.og[1].gco";
connectAttr "groupId137.id" "lfLegQd1_toe04_2_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId139.id" "lfLegQd1_toe04_4_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd1_toe04_4_pxGeoShape.iog.og[0].gco";
connectAttr "groupId141.id" "lfLegQd1_toe04_4_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd1_toe04_4_pxGeoShape.iog.og[1].gco";
connectAttr "groupId140.id" "lfLegQd1_toe04_4_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId142.id" "lfLegQd1_toe04_1_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd1_toe04_1_pxGeoShape.iog.og[0].gco";
connectAttr "groupId144.id" "lfLegQd1_toe04_1_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd1_toe04_1_pxGeoShape.iog.og[1].gco";
connectAttr "groupId143.id" "lfLegQd1_toe04_1_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId145.id" "lfLegQd1_toe04_3_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd1_toe04_3_pxGeoShape.iog.og[0].gco";
connectAttr "groupId147.id" "lfLegQd1_toe04_3_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd1_toe04_3_pxGeoShape.iog.og[1].gco";
connectAttr "groupId146.id" "lfLegQd1_toe04_3_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId148.id" "lfLegQd1_scapTip_end_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd1_scapTip_end_pxGeoShape.iog.og[0].gco"
		;
connectAttr "groupId150.id" "lfLegQd1_scapTip_end_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd1_scapTip_end_pxGeoShape.iog.og[1].gco"
		;
connectAttr "groupId149.id" "lfLegQd1_scapTip_end_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId151.id" "lfLegQd1_radius_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd1_radius_pxGeoShape.iog.og[0].gco";
connectAttr "groupId153.id" "lfLegQd1_radius_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd1_radius_pxGeoShape.iog.og[1].gco";
connectAttr "groupId152.id" "lfLegQd1_radius_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId154.id" "lfLegQd1_ulna_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd1_ulna_pxGeoShape.iog.og[0].gco";
connectAttr "groupId156.id" "lfLegQd1_ulna_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd1_ulna_pxGeoShape.iog.og[1].gco";
connectAttr "groupId155.id" "lfLegQd1_ulna_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId232.id" "lfLegQd1_upr_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd1_upr_pxGeoShape.iog.og[0].gco";
connectAttr "groupId234.id" "lfLegQd1_upr_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd1_upr_pxGeoShape.iog.og[1].gco";
connectAttr "groupId233.id" "lfLegQd1_upr_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId235.id" "lfLegQd1_toe01_1_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd1_toe01_1_pxGeoShape.iog.og[0].gco";
connectAttr "groupId237.id" "lfLegQd1_toe01_1_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd1_toe01_1_pxGeoShape.iog.og[1].gco";
connectAttr "groupId236.id" "lfLegQd1_toe01_1_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId238.id" "lfLegQd1_toe01_3_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd1_toe01_3_pxGeoShape.iog.og[0].gco";
connectAttr "groupId240.id" "lfLegQd1_toe01_3_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd1_toe01_3_pxGeoShape.iog.og[1].gco";
connectAttr "groupId239.id" "lfLegQd1_toe01_3_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId241.id" "lfLegQd1_toe01_4_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd1_toe01_4_pxGeoShape.iog.og[0].gco";
connectAttr "groupId243.id" "lfLegQd1_toe01_4_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd1_toe01_4_pxGeoShape.iog.og[1].gco";
connectAttr "groupId242.id" "lfLegQd1_toe01_4_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId244.id" "lfLegQd1_toe01_2_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd1_toe01_2_pxGeoShape.iog.og[0].gco";
connectAttr "groupId246.id" "lfLegQd1_toe01_2_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd1_toe01_2_pxGeoShape.iog.og[1].gco";
connectAttr "groupId245.id" "lfLegQd1_toe01_2_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId157.id" "neckQd0_0_rbj_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "neckQd0_0_rbj_pxGeoShape.iog.og[0].gco";
connectAttr "groupId159.id" "neckQd0_0_rbj_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "neckQd0_0_rbj_pxGeoShape.iog.og[1].gco";
connectAttr "groupId158.id" "neckQd0_0_rbj_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId160.id" "neckQd0_1_rbj_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "neckQd0_1_rbj_pxGeoShape.iog.og[0].gco";
connectAttr "groupId162.id" "neckQd0_1_rbj_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "neckQd0_1_rbj_pxGeoShape.iog.og[1].gco";
connectAttr "groupId161.id" "neckQd0_1_rbj_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId163.id" "neckQd0_2_rbj_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "neckQd0_2_rbj_pxGeoShape.iog.og[0].gco";
connectAttr "groupId165.id" "neckQd0_2_rbj_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "neckQd0_2_rbj_pxGeoShape.iog.og[1].gco";
connectAttr "groupId164.id" "neckQd0_2_rbj_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId166.id" "neckQd0_3_rbj_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "neckQd0_3_rbj_pxGeoShape.iog.og[0].gco";
connectAttr "groupId168.id" "neckQd0_3_rbj_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "neckQd0_3_rbj_pxGeoShape.iog.og[1].gco";
connectAttr "groupId167.id" "neckQd0_3_rbj_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId223.id" "lfLegQd0_patella_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd0_patella_pxGeoShape.iog.og[0].gco";
connectAttr "groupId225.id" "lfLegQd0_patella_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd0_patella_pxGeoShape.iog.og[1].gco";
connectAttr "groupId224.id" "lfLegQd0_patella_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId226.id" "lfLegQd0_radius_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd0_radius_pxGeoShape.iog.og[0].gco";
connectAttr "groupId228.id" "lfLegQd0_radius_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd0_radius_pxGeoShape.iog.og[1].gco";
connectAttr "groupId227.id" "lfLegQd0_radius_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId229.id" "lfLegQd0_ulna_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd0_ulna_pxGeoShape.iog.og[0].gco";
connectAttr "groupId231.id" "lfLegQd0_ulna_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd0_ulna_pxGeoShape.iog.og[1].gco";
connectAttr "groupId230.id" "lfLegQd0_ulna_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId253.id" "lfLegQd0_hip_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd0_hip_pxGeoShape.iog.og[0].gco";
connectAttr "groupId255.id" "lfLegQd0_hip_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd0_hip_pxGeoShape.iog.og[1].gco";
connectAttr "groupId254.id" "lfLegQd0_hip_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId256.id" "lfLegQd0_upr_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd0_upr_pxGeoShape.iog.og[0].gco";
connectAttr "groupId258.id" "lfLegQd0_upr_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd0_upr_pxGeoShape.iog.og[1].gco";
connectAttr "groupId257.id" "lfLegQd0_upr_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId259.id" "lfLegQd0_toe01_2_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd0_toe01_2_pxGeoShape.iog.og[0].gco";
connectAttr "groupId261.id" "lfLegQd0_toe01_2_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd0_toe01_2_pxGeoShape.iog.og[1].gco";
connectAttr "groupId260.id" "lfLegQd0_toe01_2_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId262.id" "lfLegQd0_toe01_1_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd0_toe01_1_pxGeoShape.iog.og[0].gco";
connectAttr "groupId264.id" "lfLegQd0_toe01_1_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd0_toe01_1_pxGeoShape.iog.og[1].gco";
connectAttr "groupId263.id" "lfLegQd0_toe01_1_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId265.id" "lfLegQd0_toe01_3_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd0_toe01_3_pxGeoShape.iog.og[0].gco";
connectAttr "groupId267.id" "lfLegQd0_toe01_3_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd0_toe01_3_pxGeoShape.iog.og[1].gco";
connectAttr "groupId266.id" "lfLegQd0_toe01_3_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId268.id" "lfLegQd0_toe02_2_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd0_toe02_2_pxGeoShape.iog.og[0].gco";
connectAttr "groupId270.id" "lfLegQd0_toe02_2_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd0_toe02_2_pxGeoShape.iog.og[1].gco";
connectAttr "groupId269.id" "lfLegQd0_toe02_2_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId271.id" "lfLegQd0_toe01_4_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd0_toe01_4_pxGeoShape.iog.og[0].gco";
connectAttr "groupId273.id" "lfLegQd0_toe01_4_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd0_toe01_4_pxGeoShape.iog.og[1].gco";
connectAttr "groupId272.id" "lfLegQd0_toe01_4_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId274.id" "lfLegQd0_toe02_1_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd0_toe02_1_pxGeoShape.iog.og[0].gco";
connectAttr "groupId276.id" "lfLegQd0_toe02_1_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd0_toe02_1_pxGeoShape.iog.og[1].gco";
connectAttr "groupId275.id" "lfLegQd0_toe02_1_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId277.id" "lfLegQd0_toe03_2_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd0_toe03_2_pxGeoShape.iog.og[0].gco";
connectAttr "groupId279.id" "lfLegQd0_toe03_2_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd0_toe03_2_pxGeoShape.iog.og[1].gco";
connectAttr "groupId278.id" "lfLegQd0_toe03_2_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId280.id" "lfLegQd0_toe02_4_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd0_toe02_4_pxGeoShape.iog.og[0].gco";
connectAttr "groupId282.id" "lfLegQd0_toe02_4_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd0_toe02_4_pxGeoShape.iog.og[1].gco";
connectAttr "groupId281.id" "lfLegQd0_toe02_4_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId283.id" "lfLegQd0_toe02_3_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd0_toe02_3_pxGeoShape.iog.og[0].gco";
connectAttr "groupId285.id" "lfLegQd0_toe02_3_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd0_toe02_3_pxGeoShape.iog.og[1].gco";
connectAttr "groupId284.id" "lfLegQd0_toe02_3_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId286.id" "lfLegQd0_toe03_1_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd0_toe03_1_pxGeoShape.iog.og[0].gco";
connectAttr "groupId288.id" "lfLegQd0_toe03_1_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd0_toe03_1_pxGeoShape.iog.og[1].gco";
connectAttr "groupId287.id" "lfLegQd0_toe03_1_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId289.id" "lfLegQd0_toe04_2_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd0_toe04_2_pxGeoShape.iog.og[0].gco";
connectAttr "groupId291.id" "lfLegQd0_toe04_2_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd0_toe04_2_pxGeoShape.iog.og[1].gco";
connectAttr "groupId290.id" "lfLegQd0_toe04_2_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId292.id" "lfLegQd0_toe03_3_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd0_toe03_3_pxGeoShape.iog.og[0].gco";
connectAttr "groupId294.id" "lfLegQd0_toe03_3_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd0_toe03_3_pxGeoShape.iog.og[1].gco";
connectAttr "groupId293.id" "lfLegQd0_toe03_3_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId295.id" "lfLegQd0_toe03_4_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd0_toe03_4_pxGeoShape.iog.og[0].gco";
connectAttr "groupId297.id" "lfLegQd0_toe03_4_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd0_toe03_4_pxGeoShape.iog.og[1].gco";
connectAttr "groupId296.id" "lfLegQd0_toe03_4_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId298.id" "lfLegQd0_toe04_1_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd0_toe04_1_pxGeoShape.iog.og[0].gco";
connectAttr "groupId300.id" "lfLegQd0_toe04_1_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd0_toe04_1_pxGeoShape.iog.og[1].gco";
connectAttr "groupId299.id" "lfLegQd0_toe04_1_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId301.id" "lfLegQd0_toe04_4_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd0_toe04_4_pxGeoShape.iog.og[0].gco";
connectAttr "groupId303.id" "lfLegQd0_toe04_4_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd0_toe04_4_pxGeoShape.iog.og[1].gco";
connectAttr "groupId302.id" "lfLegQd0_toe04_4_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId304.id" "lfLegQd0_toe04_3_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "lfLegQd0_toe04_3_pxGeoShape.iog.og[0].gco";
connectAttr "groupId306.id" "lfLegQd0_toe04_3_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "lfLegQd0_toe04_3_pxGeoShape.iog.og[1].gco";
connectAttr "groupId305.id" "lfLegQd0_toe04_3_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId247.id" "head0_st_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "head0_st_pxGeoShape.iog.og[0].gco";
connectAttr "groupId249.id" "head0_st_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "head0_st_pxGeoShape.iog.og[1].gco";
connectAttr "groupId248.id" "head0_st_pxGeoShape.ciog.cog[0].cgid";
connectAttr "groupId250.id" "head0_jaw_pxGeoShape.iog.og[0].gid";
connectAttr "proxy_grey_shdSG.mwc" "head0_jaw_pxGeoShape.iog.og[0].gco";
connectAttr "groupId252.id" "head0_jaw_pxGeoShape.iog.og[1].gid";
connectAttr "proxy_color_shdSG.mwc" "head0_jaw_pxGeoShape.iog.og[1].gco";
connectAttr "groupId251.id" "head0_jaw_pxGeoShape.ciog.cog[0].cgid";
connectAttr "proxy_grey_shd.oc" "proxy_grey_shdSG.ss";
connectAttr "rtLegQd1_toe02_1_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd1_toe02_1_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "rtLegQd1_toe01_3_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd1_toe01_3_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "rtLegQd1_toe01_4_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd1_toe01_4_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "rtLegQd1_toe02_3_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd1_toe02_3_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "rtLegQd1_toe02_2_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd1_toe02_2_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "rtLegQd1_toe03_2_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd1_toe03_2_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "rtLegQd1_toe02_4_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd1_toe02_4_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "rtLegQd1_toe03_1_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd1_toe03_1_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "rtLegQd1_toe04_2_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd1_toe04_2_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "rtLegQd1_toe03_4_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd1_toe03_4_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "rtLegQd1_toe03_3_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd1_toe03_3_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "rtLegQd1_toe04_1_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd1_toe04_1_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "rtLegQd1_toe04_3_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd1_toe04_3_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "rtLegQd1_toe04_4_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd1_toe04_4_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "rtLegQd1_scapTip_end_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "rtLegQd1_scapTip_end_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm"
		 -na;
connectAttr "rtLegQd1_radius_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd1_radius_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd1_ulna_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd1_ulna_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "spineQd0_0_rbj_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "spineQd0_0_rbj_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "spineQd0_4_rbj_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "spineQd0_4_rbj_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "spineQd0_6_rbj_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "spineQd0_6_rbj_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "spineQd0_3_rbj_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "spineQd0_3_rbj_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "spineQd0_2_rbj_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "spineQd0_2_rbj_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "spineQd0_5_rbj_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "spineQd0_5_rbj_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "spineQd0_end_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "spineQd0_end_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "spineQd0_7_rbj_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "spineQd0_7_rbj_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "tail0_1_rbj_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "tail0_1_rbj_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "tail0_4_rbj_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "tail0_4_rbj_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "tail0_2_rbj_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "tail0_2_rbj_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "tail0_0_rbj_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "tail0_0_rbj_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "tail0_3_rbj_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "tail0_3_rbj_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd0_radius_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd0_radius_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd0_patella_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd0_patella_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "rtLegQd0_ulna_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd0_ulna_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd1_upr_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd1_upr_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "spineQd0_1_rbj_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "spineQd0_1_rbj_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd1_toe01_2_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd1_toe01_2_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "rtLegQd1_toe01_1_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd1_toe01_1_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "lfLegQd1_toe02_2_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd1_toe02_2_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "lfLegQd1_toe02_1_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd1_toe02_1_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "lfLegQd1_toe02_3_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd1_toe02_3_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "lfLegQd1_toe03_1_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd1_toe03_1_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "lfLegQd1_toe02_4_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd1_toe02_4_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "lfLegQd1_toe03_4_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd1_toe03_4_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "lfLegQd1_toe03_2_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd1_toe03_2_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "lfLegQd1_toe03_3_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd1_toe03_3_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "lfLegQd1_toe04_2_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd1_toe04_2_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "lfLegQd1_toe04_4_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd1_toe04_4_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "lfLegQd1_toe04_1_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd1_toe04_1_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "lfLegQd1_toe04_3_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd1_toe04_3_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "lfLegQd1_scapTip_end_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "lfLegQd1_scapTip_end_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm"
		 -na;
connectAttr "lfLegQd1_radius_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd1_radius_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd1_ulna_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd1_ulna_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "neckQd0_0_rbj_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "neckQd0_0_rbj_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "neckQd0_1_rbj_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "neckQd0_1_rbj_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "neckQd0_2_rbj_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "neckQd0_2_rbj_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "neckQd0_3_rbj_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "neckQd0_3_rbj_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd0_hip_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd0_hip_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd0_upr_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd0_upr_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd0_toe01_1_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd0_toe01_1_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "rtLegQd0_toe01_4_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd0_toe01_4_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "rtLegQd0_toe01_2_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd0_toe01_2_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "rtLegQd0_toe01_3_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd0_toe01_3_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "rtLegQd0_toe02_3_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd0_toe02_3_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "rtLegQd0_toe02_1_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd0_toe02_1_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "rtLegQd0_toe02_2_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd0_toe02_2_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "rtLegQd0_toe02_4_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd0_toe02_4_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "rtLegQd0_toe03_2_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd0_toe03_2_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "rtLegQd0_toe03_1_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd0_toe03_1_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "rtLegQd0_toe03_3_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd0_toe03_3_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "rtLegQd0_toe03_4_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd0_toe03_4_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "rtLegQd0_toe04_1_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd0_toe04_1_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "rtLegQd0_toe04_3_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd0_toe04_3_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "rtLegQd0_toe04_2_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd0_toe04_2_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "rtLegQd0_toe04_4_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "rtLegQd0_toe04_4_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "lfLegQd0_patella_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd0_patella_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "lfLegQd0_radius_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd0_radius_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd0_ulna_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd0_ulna_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd1_upr_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd1_upr_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd1_toe01_1_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd1_toe01_1_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "lfLegQd1_toe01_3_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd1_toe01_3_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "lfLegQd1_toe01_4_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd1_toe01_4_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "lfLegQd1_toe01_2_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd1_toe01_2_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "head0_st_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "head0_st_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "head0_jaw_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "head0_jaw_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd0_hip_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd0_hip_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd0_upr_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd0_upr_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd0_toe01_2_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd0_toe01_2_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "lfLegQd0_toe01_1_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd0_toe01_1_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "lfLegQd0_toe01_3_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd0_toe01_3_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "lfLegQd0_toe02_2_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd0_toe02_2_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "lfLegQd0_toe01_4_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd0_toe01_4_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "lfLegQd0_toe02_1_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd0_toe02_1_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "lfLegQd0_toe03_2_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd0_toe03_2_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "lfLegQd0_toe02_4_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd0_toe02_4_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "lfLegQd0_toe02_3_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd0_toe02_3_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "lfLegQd0_toe03_1_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd0_toe03_1_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "lfLegQd0_toe04_2_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd0_toe04_2_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "lfLegQd0_toe03_3_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd0_toe03_3_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "lfLegQd0_toe03_4_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd0_toe03_4_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "lfLegQd0_toe04_1_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd0_toe04_1_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "lfLegQd0_toe04_4_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd0_toe04_4_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "lfLegQd0_toe04_3_pxGeoShape.iog.og[0]" "proxy_grey_shdSG.dsm" -na;
connectAttr "lfLegQd0_toe04_3_pxGeoShape.ciog.cog[0]" "proxy_grey_shdSG.dsm" -na
		;
connectAttr "groupId1.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId2.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId4.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId5.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId7.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId8.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId10.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId11.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId13.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId14.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId16.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId17.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId19.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId20.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId22.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId23.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId25.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId26.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId28.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId29.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId31.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId32.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId34.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId35.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId37.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId38.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId40.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId41.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId43.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId44.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId46.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId47.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId49.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId50.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId52.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId53.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId55.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId56.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId58.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId59.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId61.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId62.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId64.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId65.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId67.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId68.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId70.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId71.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId73.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId74.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId76.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId77.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId79.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId80.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId82.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId83.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId85.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId86.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId88.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId89.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId91.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId92.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId94.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId95.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId97.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId98.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId100.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId101.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId103.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId104.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId106.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId107.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId109.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId110.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId112.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId113.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId115.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId116.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId118.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId119.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId121.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId122.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId124.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId125.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId127.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId128.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId130.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId131.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId133.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId134.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId136.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId137.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId139.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId140.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId142.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId143.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId145.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId146.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId148.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId149.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId151.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId152.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId154.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId155.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId157.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId158.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId160.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId161.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId163.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId164.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId166.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId167.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId169.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId170.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId172.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId173.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId175.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId176.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId178.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId179.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId181.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId182.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId184.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId185.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId187.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId188.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId190.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId191.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId193.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId194.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId196.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId197.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId199.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId200.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId202.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId203.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId205.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId206.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId208.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId209.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId211.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId212.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId214.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId215.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId217.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId218.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId220.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId221.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId223.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId224.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId226.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId227.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId229.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId230.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId232.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId233.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId235.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId236.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId238.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId239.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId241.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId242.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId244.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId245.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId247.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId248.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId250.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId251.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId253.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId254.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId256.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId257.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId259.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId260.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId262.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId263.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId265.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId266.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId268.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId269.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId271.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId272.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId274.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId275.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId277.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId278.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId280.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId281.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId283.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId284.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId286.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId287.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId289.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId290.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId292.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId293.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId295.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId296.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId298.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId299.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId301.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId302.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId304.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "groupId305.msg" "proxy_grey_shdSG.gn" -na;
connectAttr "proxy_grey_shdSG.msg" "materialInfo219.sg";
connectAttr "proxy_grey_shd.msg" "materialInfo219.m";
connectAttr "proxy_color_shd.oc" "proxy_color_shdSG.ss";
connectAttr "groupId3.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId6.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId9.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId12.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId15.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId18.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId21.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId24.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId27.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId30.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId33.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId36.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId39.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId42.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId45.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId48.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId51.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId54.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId57.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId60.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId63.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId66.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId69.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId72.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId75.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId78.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId81.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId84.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId87.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId90.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId93.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId96.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId99.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId102.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId105.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId108.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId111.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId114.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId117.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId120.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId123.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId126.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId129.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId132.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId135.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId138.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId141.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId144.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId147.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId150.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId153.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId156.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId159.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId162.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId165.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId168.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId171.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId174.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId177.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId180.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId183.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId186.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId189.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId192.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId195.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId198.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId201.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId204.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId207.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId210.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId213.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId216.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId219.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId222.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId225.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId228.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId231.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId234.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId237.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId240.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId243.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId246.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId249.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId252.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId255.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId258.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId261.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId264.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId267.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId270.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId273.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId276.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId279.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId282.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId285.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId288.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId291.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId294.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId297.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId300.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId303.msg" "proxy_color_shdSG.gn" -na;
connectAttr "groupId306.msg" "proxy_color_shdSG.gn" -na;
connectAttr "rtLegQd1_toe02_1_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd1_toe01_3_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd1_toe01_4_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd1_toe02_3_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd1_toe02_2_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd1_toe03_2_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd1_toe02_4_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd1_toe03_1_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd1_toe04_2_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd1_toe03_4_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd1_toe03_3_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd1_toe04_1_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd1_toe04_3_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd1_toe04_4_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd1_scapTip_end_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" 
		-na;
connectAttr "rtLegQd1_radius_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd1_ulna_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "spineQd0_0_rbj_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "spineQd0_4_rbj_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "spineQd0_6_rbj_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "spineQd0_3_rbj_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "spineQd0_2_rbj_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "spineQd0_5_rbj_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "spineQd0_end_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "spineQd0_7_rbj_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "tail0_1_rbj_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "tail0_4_rbj_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "tail0_2_rbj_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "tail0_0_rbj_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "tail0_3_rbj_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd0_radius_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd0_patella_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd0_ulna_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd1_upr_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "spineQd0_1_rbj_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd1_toe01_2_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd1_toe01_1_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd1_toe02_2_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd1_toe02_1_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd1_toe02_3_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd1_toe03_1_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd1_toe02_4_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd1_toe03_4_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd1_toe03_2_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd1_toe03_3_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd1_toe04_2_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd1_toe04_4_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd1_toe04_1_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd1_toe04_3_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd1_scapTip_end_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" 
		-na;
connectAttr "lfLegQd1_radius_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd1_ulna_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "neckQd0_0_rbj_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "neckQd0_1_rbj_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "neckQd0_2_rbj_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "neckQd0_3_rbj_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd0_hip_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd0_upr_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd0_toe01_1_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd0_toe01_4_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd0_toe01_2_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd0_toe01_3_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd0_toe02_3_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd0_toe02_1_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd0_toe02_2_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd0_toe02_4_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd0_toe03_2_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd0_toe03_1_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd0_toe03_3_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd0_toe03_4_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd0_toe04_1_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd0_toe04_3_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd0_toe04_2_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "rtLegQd0_toe04_4_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd0_patella_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd0_radius_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd0_ulna_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd1_upr_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd1_toe01_1_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd1_toe01_3_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd1_toe01_4_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd1_toe01_2_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "head0_st_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "head0_jaw_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd0_hip_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd0_upr_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd0_toe01_2_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd0_toe01_1_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd0_toe01_3_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd0_toe02_2_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd0_toe01_4_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd0_toe02_1_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd0_toe03_2_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd0_toe02_4_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd0_toe02_3_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd0_toe03_1_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd0_toe04_2_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd0_toe03_3_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd0_toe03_4_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd0_toe04_1_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd0_toe04_4_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "lfLegQd0_toe04_3_pxGeoShape.iog.og[1]" "proxy_color_shdSG.dsm" -na;
connectAttr "proxy_color_shdSG.msg" "materialInfo220.sg";
connectAttr "proxy_color_shd.msg" "materialInfo220.m";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "proxy_grey_shdSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "proxy_color_shdSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "proxy_grey_shdSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "proxy_color_shdSG.message" ":defaultLightSet.message";
connectAttr "proxy_grey_shdSG.pa" ":renderPartition.st" -na;
connectAttr "proxy_color_shdSG.pa" ":renderPartition.st" -na;
connectAttr "proxy_grey_shd.msg" ":defaultShaderList1.s" -na;
connectAttr "proxy_color_shd.msg" ":defaultShaderList1.s" -na;
// End of lion_prx2.ma
