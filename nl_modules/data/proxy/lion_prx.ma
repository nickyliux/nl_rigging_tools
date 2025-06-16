//Maya ASCII 2023 scene
//Name: AAA.ma
//Last modified: Tue, Jun 17, 2025 01:15:00 AM
//Codeset: 1252
requires maya "2023";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 26100)";
fileInfo "UUID" "F749395D-430F-63C7-645D-C48A07672244";
createNode transform -n "CHR";
	rename -uid "A3B24758-4DC9-C968-1ED0-C7BB3F33FE4C";
	setAttr -cb on ".ro";
createNode transform -n "MDL" -p "CHR";
	rename -uid "0C9EE4BA-4BAF-19AE-C566-44856F76C486";
	setAttr -cb on ".ro";
createNode transform -n "PRX" -p "MDL";
	rename -uid "D0C240F9-4068-3027-5378-619984D59FE9";
	setAttr ".ove" yes;
	setAttr -cb on ".ro";
createNode transform -n "lfLegQd0_PRX" -p "PRX";
	rename -uid "7CAEBC3F-4A31-6864-C641-4795CF504100";
createNode transform -n "lfLegQd0_radius_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "8EB2CDBE-4D0B-E200-1ECF-8AA6EC3A9ACD";
	setAttr ".t" -type "double3" 11.070648070094455 36.75487243915947 -42.696165946500024 ;
	setAttr ".r" -type "double3" -9.2656793952940131 153.84847078326186 86.105122199847912 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "lfLegQd0_radius_pxGeo" -p "lfLegQd0_radius_pxGeo_ofs";
	rename -uid "7FB23AA2-4DE0-D78F-4E80-20BA50ED324E";
	setAttr ".t" -type "double3" 1.2434497875801753e-14 0 1.7049012651393411 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.7378058012951951 ;
createNode mesh -n "lfLegQd0_radius_pxGeoShape" -p "lfLegQd0_radius_pxGeo";
	rename -uid "73C53777-4C8F-1710-2DEF-01ADF1F5F881";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "lfLegQd0_patella_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "A3018E41-447F-2D54-28BC-069575D47C9F";
	setAttr ".t" -type "double3" 12.657991582109675 53.99784620943241 -35.483614028680257 ;
	setAttr ".r" -type "double3" -9.4619846652440334 152.1039017659422 85.676314812942877 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999967 ;
createNode transform -n "lfLegQd0_ulna_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "7E63C445-4107-6974-81C6-8CADBFE54001";
	setAttr ".t" -type "double3" 13.026544479411358 35.500465393979482 -45.088960153812693 ;
	setAttr ".r" -type "double3" -9.553805544300916 157.45306777448707 85.566803434795304 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "lfLegQd0_ulna_pxGeo" -p "lfLegQd0_ulna_pxGeo_ofs";
	rename -uid "849F5D20-4EBE-B332-8D77-3182318D5EE3";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -1.0658141036401503e-14 1.7049012651393056 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1.7378058012951949 ;
createNode mesh -n "lfLegQd0_ulna_pxGeoShape" -p "lfLegQd0_ulna_pxGeo";
	rename -uid "423C9A70-4394-E997-3A5D-0AAF2E40D93E";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
	rename -uid "FAD34384-486A-8AE0-0E38-26AF137D9320";
	setAttr ".t" -type "double3" 10.493951323749441 88.91011575148589 -37.624494233150848 ;
	setAttr ".r" -type "double3" 2.453373909237639 132.27714362201669 95.542950963022165 ;
createNode transform -n "lfLegQd0_hip_pxGeo" -p "lfLegQd0_hip_pxGeo_ofs";
	rename -uid "877B446E-4B1F-01EA-8154-2080E43FE4B7";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -1.7763568394002505e-15 -4.2632564145606011e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999978 ;
createNode mesh -n "lfLegQd0_hip_pxGeoShape" -p "lfLegQd0_hip_pxGeo";
	rename -uid "69D67C75-466C-F696-9510-E8925D5338E4";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
	setAttr -s 24 ".vt[0:23]"  -6.8175087 -4.15588045 -4.2207942 -7.45775938 -3.39300609 -6.6712904
		 -8.023679733 -3.4904108 -5.6895318 -8.49359703 3.35842061 5.23817444 -7.29897022 3.5102253 5.69143105
		 -6.35757542 0.91617322 4.5759697 -5.95558977 -2.082066536 2.31847882 -6.12915468 -3.92765546 -0.96453655
		 -0.067830667 -5.52437782 -4.52120972 -0.26191467 -4.95555592 -7.079627514 -0.49459171 -5.11694336 -6.28409052
		 -1.43830633 3.077021122 6.80749178 -0.57944059 3.064376831 6.98352957 0.058291148 0.32286161 5.51552105
		 0.11111908 -2.8617208 2.85949636 -0.012569202 -4.95022583 -0.49142599 6.90515852 -5.31178617 -4.12182951
		 7.16466904 -5.43780231 -5.39238977 8.27711296 -4.91293287 -2.7979846 6.65240097 1.54456007 6.76762486
		 6.75759506 2.26474476 7.24445295 6.830791 0.16945972 5.81183386 6.7065444 -2.95720673 2.90021849
		 6.56310511 -4.70376301 -0.53265899;
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
	rename -uid "E7AEE7BD-4317-8FAB-BB40-63A7DA8185FD";
	setAttr ".t" -type "double3" 11.699584689978787 67.856362112408732 -38.658690681397189 ;
	setAttr ".r" -type "double3" -8.694499584157489 -163.97288476982274 92.552601435283989 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999967 ;
createNode transform -n "lfLegQd0_upr_pxGeo" -p "lfLegQd0_upr_pxGeo_ofs";
	rename -uid "53B3D19D-415A-E83B-0F1C-0586069DF737";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 -7.1054273576010019e-15 3.0240974084330148 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1.9809539480787937 ;
createNode mesh -n "lfLegQd0_upr_pxGeoShape" -p "lfLegQd0_upr_pxGeo";
	rename -uid "F2F1AC81-4FE6-86B2-90C5-C3A199B33897";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "lfLegQd0_toe01_1_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "E1B1390F-4384-B78C-A704-BCB2DA341213";
	setAttr ".t" -type "double3" 8.2089775661892581 9.7458585818489922 -46.4149292800452 ;
	setAttr ".r" -type "double3" -174.72457368829234 -33.099321025095215 -92.886592146372692 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999967 ;
createNode transform -n "lfLegQd0_toe01_1_pxGeo" -p "lfLegQd0_toe01_1_pxGeo_ofs";
	rename -uid "384CDB91-4791-6498-42BB-59A4884D5F14";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 0.88060252076370915 ;
	setAttr ".r" -type "double3" -0.63192061498445073 -7.8266431738393276 1.8104022185932149 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1.7114218070448233 1.7114218070448233 ;
createNode mesh -n "lfLegQd0_toe01_1_pxGeoShape" -p "lfLegQd0_toe01_1_pxGeo";
	rename -uid "8803D093-4F54-D0F1-B715-D8AE3E2C5268";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
	rename -uid "E9711228-4F4F-05E4-AF2E-94BC117DCBC5";
	setAttr ".t" -type "double3" 8.0896263466767948 3.4413534542474382 -37.286699352378292 ;
	setAttr ".r" -type "double3" -168.31327125969815 -11.698557885134001 -92.401643259488367 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 0.99999999999999967 ;
createNode transform -n "lfLegQd0_toe01_3_pxGeo" -p "lfLegQd0_toe01_3_pxGeo_ofs";
	rename -uid "2697EE00-421D-0D3B-89B8-258665EC7F2F";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 4.4408920985006262e-16 -2.1316282072803006e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000004 ;
createNode mesh -n "lfLegQd0_toe01_3_pxGeoShape" -p "lfLegQd0_toe01_3_pxGeo";
	rename -uid "F88E2413-4854-0DB6-8AEC-41BD8DD8BE91";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "lfLegQd0_toe01_4_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "32430275-477C-9332-37DA-089B56557938";
	setAttr ".t" -type "double3" 8.2876934432824996 1.4976302133497763 -35.210252678101327 ;
	setAttr ".r" -type "double3" 90.000000000000313 -80.515937204026983 9.6513072837560608e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999956 0.99999999999999956 ;
createNode transform -n "lfLegQd0_toe01_4_pxGeo" -p "lfLegQd0_toe01_4_pxGeo_ofs";
	rename -uid "0ED2BA17-488A-3346-0EBF-BE81684834AF";
	setAttr ".t" -type "double3" 0 0 2.2204460492503131e-16 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode mesh -n "lfLegQd0_toe01_4_pxGeoShape" -p "lfLegQd0_toe01_4_pxGeo";
	rename -uid "AB6EE6EA-4714-8C92-1A5D-1D904C0BC831";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "lfLegQd0_toe02_2_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "723A019B-4840-88C1-852B-249AB8DC0E2E";
	setAttr ".t" -type "double3" 11.081776968531258 5.4929097210420927 -40.556481210092628 ;
	setAttr ".r" -type "double3" 45.706633873676118 -73.239486059405536 45.536875916391864 ;
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999978 0.99999999999999956 ;
createNode transform -n "lfLegQd0_toe02_2_pxGeo" -p "lfLegQd0_toe02_2_pxGeo_ofs";
	rename -uid "A419FD67-470C-8CD4-E6A5-A8AF924BECFE";
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode mesh -n "lfLegQd0_toe02_2_pxGeoShape" -p "lfLegQd0_toe02_2_pxGeo";
	rename -uid "EFB3AA18-49A0-7CDD-068F-20AEF9FEE1BA";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "lfLegQd0_toe01_2_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "CFCE3A1E-48E7-092C-26BD-7EAC08338C0B";
	setAttr ".t" -type "double3" 8.0739003186552729 5.2617142692244805 -40.548561663443493 ;
	setAttr ".r" -type "double3" 38.29110671584673 -86.855152602050083 51.750882645846083 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "lfLegQd0_toe01_2_pxGeo" -p "lfLegQd0_toe01_2_pxGeo_ofs";
	rename -uid "344E5DE7-4165-3753-1399-109399C96BC8";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -1.7763568394002505e-15 0 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000004 ;
createNode mesh -n "lfLegQd0_toe01_2_pxGeoShape" -p "lfLegQd0_toe01_2_pxGeo";
	rename -uid "6F3038DF-4BF5-1CC9-17A9-8DBCE90732F1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "lfLegQd0_toe02_1_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "9083A7A3-4996-E245-C20C-539023CB4D9D";
	setAttr ".t" -type "double3" 10.160911451668584 9.6342922809140799 -45.978998466148241 ;
	setAttr ".r" -type "double3" 172.78332532311728 -25.536331040985495 -86.875555971382482 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999967 ;
createNode transform -n "lfLegQd0_toe02_1_pxGeo" -p "lfLegQd0_toe02_1_pxGeo_ofs";
	rename -uid "CDC25DB0-4C57-B3D3-864D-FC81470CBE96";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -3.5527136788005009e-15 0.88060252076371626 ;
	setAttr ".r" -type "double3" 0.35634956428071601 -8.0276621342803711 0.42445520690467237 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1.7114218070448235 1.7114218070448233 ;
createNode mesh -n "lfLegQd0_toe02_1_pxGeoShape" -p "lfLegQd0_toe02_1_pxGeo";
	rename -uid "23B45846-4099-9C5A-804E-D58E6D80F081";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "lfLegQd0_toe03_1_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "C9E03530-4BF7-10FD-983E-4EBD2EFCA1F5";
	setAttr ".t" -type "double3" 12.166608421801937 9.8200984305831547 -46.365028630370617 ;
	setAttr ".r" -type "double3" 154.2897440248698 -24.801452689734141 -78.581455276123364 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999967 ;
createNode transform -n "lfLegQd0_toe03_1_pxGeo" -p "lfLegQd0_toe03_1_pxGeo_ofs";
	rename -uid "35AB6D24-4BE4-86C2-B732-F29291264612";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 0.88060252076371981 ;
	setAttr ".r" -type "double3" 1.5479396422673715 -7.7345191005622063 -1.7080566734717455 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.7114218070448242 1.7114218070448244 ;
createNode mesh -n "lfLegQd0_toe03_1_pxGeoShape" -p "lfLegQd0_toe03_1_pxGeo";
	rename -uid "E6935521-4546-C539-64AE-7687C0DE813D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "lfLegQd0_toe02_3_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "63F9DDD0-4019-6E28-7459-37951515645A";
	setAttr ".t" -type "double3" 11.85108608993839 3.792885322503146 -36.846595448414256 ;
	setAttr ".r" -type "double3" 169.00182751839242 -13.955319442954004 -87.316523488465094 ;
	setAttr ".s" -type "double3" 0.99999999999999944 1 0.99999999999999944 ;
createNode transform -n "lfLegQd0_toe02_3_pxGeo" -p "lfLegQd0_toe02_3_pxGeo_ofs";
	rename -uid "16574A9F-4975-CCF6-836E-9D9108008D1C";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 1.0000000000000002 ;
createNode mesh -n "lfLegQd0_toe02_3_pxGeoShape" -p "lfLegQd0_toe02_3_pxGeo";
	rename -uid "D4BEF0BC-44D4-556B-056F-F48849640920";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "lfLegQd0_toe02_4_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "4480E2EF-472F-243A-84C1-C39A22DEF90C";
	setAttr ".t" -type "double3" 12.24178806612648 1.4222127244355858 -34.583218783191114 ;
	setAttr ".r" -type "double3" 89.999999999999687 -80.515937204026955 1.9302614567512086e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999956 ;
createNode transform -n "lfLegQd0_toe02_4_pxGeo" -p "lfLegQd0_toe02_4_pxGeo_ofs";
	rename -uid "0767889C-4174-56B1-CBE0-11A286C97421";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 0 4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode mesh -n "lfLegQd0_toe02_4_pxGeoShape" -p "lfLegQd0_toe02_4_pxGeo";
	rename -uid "4E6D72AC-4BDD-282D-8000-FB8A6E296839";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "lfLegQd0_toe03_2_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "102F6FCF-49A6-536D-23E2-8AACC72E5FDE";
	setAttr ".t" -type "double3" 14.069078663775068 5.6094830175268973 -41.127989434816087 ;
	setAttr ".r" -type "double3" 64.240794083635421 -70.48279582286375 27.110505824219491 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999956 ;
createNode transform -n "lfLegQd0_toe03_2_pxGeo" -p "lfLegQd0_toe03_2_pxGeo_ofs";
	rename -uid "77E46E04-475E-251C-82DA-22B62506ED60";
	setAttr ".t" -type "double3" 0 -1.0658141036401503e-14 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1 ;
createNode mesh -n "lfLegQd0_toe03_2_pxGeoShape" -p "lfLegQd0_toe03_2_pxGeo";
	rename -uid "88C26A07-4E45-E60A-5320-749C61D2D67D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "lfLegQd0_toe04_1_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "6C41EB37-474D-63D2-BA2B-62ADE5902479";
	setAttr ".t" -type "double3" 13.380723976862743 9.7825468988071549 -47.829924016951921 ;
	setAttr ".r" -type "double3" 144.94558749019023 -28.663837633236803 -71.399457177588943 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999967 ;
createNode transform -n "lfLegQd0_toe04_1_pxGeo" -p "lfLegQd0_toe04_1_pxGeo_ofs";
	rename -uid "86E1490A-4067-3C08-4A0F-6885F4F8F7F4";
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 0.88060252076370205 ;
	setAttr ".r" -type "double3" 2.281490051706264 -7.39698879174348 -2.358139387474377 ;
	setAttr ".s" -type "double3" 0.99999999999999944 1.7114218070448235 1.7114218070448233 ;
createNode mesh -n "lfLegQd0_toe04_1_pxGeoShape" -p "lfLegQd0_toe04_1_pxGeo";
	rename -uid "9CAB983C-4FFB-AAD1-6A5A-53A1F673326F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "lfLegQd0_toe03_3_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "434837F8-42F6-643D-069A-0E937C3B5F51";
	setAttr ".t" -type "double3" 14.977359671151374 3.7599118737687176 -37.437617981288255 ;
	setAttr ".r" -type "double3" -175.97867631472877 -15.954587860095655 -91.10704368303125 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "lfLegQd0_toe03_3_pxGeo" -p "lfLegQd0_toe03_3_pxGeo_ofs";
	rename -uid "1886AAB4-4AE4-C97F-9D7B-E7B74C113E8A";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 0 0 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999989 ;
createNode mesh -n "lfLegQd0_toe03_3_pxGeoShape" -p "lfLegQd0_toe03_3_pxGeo";
	rename -uid "25C71983-48A1-6B4D-727E-19AAD143E2A6";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
	rename -uid "8DAC2C7C-4511-B813-F64F-C690C8D932E4";
	setAttr ".t" -type "double3" 15.211775143834524 1.422212724435588 -35.095555369356589 ;
	setAttr ".r" -type "double3" 89.999999999999574 -80.515937204026883 1.3511830197258379e-13 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
createNode transform -n "lfLegQd0_toe03_4_pxGeo" -p "lfLegQd0_toe03_4_pxGeo_ofs";
	rename -uid "53F750A3-498C-BA4A-B78D-45883C795AC8";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999967 ;
createNode mesh -n "lfLegQd0_toe03_4_pxGeoShape" -p "lfLegQd0_toe03_4_pxGeo";
	rename -uid "EC98AF82-4267-DBD9-6A26-2E9728276955";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "lfLegQd0_toe04_4_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "67229A77-4678-39C7-F701-ADA80A6D8F01";
	setAttr ".t" -type "double3" 17.653339210189944 1.4222127244356182 -38.43519227528666 ;
	setAttr ".r" -type "double3" 90.000000000000526 -71.571425688675021 -2.3140656906053676e-13 ;
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999967 0.99999999999999922 ;
createNode transform -n "lfLegQd0_toe04_4_pxGeo" -p "lfLegQd0_toe04_4_pxGeo_ofs";
	rename -uid "DFF153B3-42AA-6BE8-8121-2B9B250F1F9B";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 3.5527136788005009e-15 4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 1 ;
createNode mesh -n "lfLegQd0_toe04_4_pxGeoShape" -p "lfLegQd0_toe04_4_pxGeo";
	rename -uid "8324515F-4F6F-01E6-8D5B-B08FBAA469AD";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
	rename -uid "0AE02EFD-4BF5-F61B-12A1-BAB54B0D457C";
	setAttr ".t" -type "double3" 17.124933564652885 3.2973893459127188 -40.431103713136274 ;
	setAttr ".r" -type "double3" -178.78904844745708 -11.634987487320284 -90.244254826269355 ;
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999956 0.99999999999999956 ;
createNode transform -n "lfLegQd0_toe04_3_pxGeo" -p "lfLegQd0_toe04_3_pxGeo_ofs";
	rename -uid "6B47F9CF-4695-1BEA-FD7E-69A05322D010";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -3.5527136788005009e-15 -1.4210854715202004e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode mesh -n "lfLegQd0_toe04_3_pxGeoShape" -p "lfLegQd0_toe04_3_pxGeo";
	rename -uid "22E0E6A3-425A-162E-F356-9788BF14130F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "lfLegQd0_toe04_2_pxGeo_ofs" -p "lfLegQd0_PRX";
	rename -uid "B50C7D90-4BB3-EC94-A421-6185D7065958";
	setAttr ".t" -type "double3" 16.044943438547282 5.1357855913758419 -42.972855758979975 ;
	setAttr ".r" -type "double3" 88.271547204935246 -63.20602969439058 1.9362029063677071 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999956 ;
createNode transform -n "lfLegQd0_toe04_2_pxGeo" -p "lfLegQd0_toe04_2_pxGeo_ofs";
	rename -uid "D8533C28-4144-0569-88F5-83A8E46F0091";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 0 8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1.0000000000000002 ;
createNode mesh -n "lfLegQd0_toe04_2_pxGeoShape" -p "lfLegQd0_toe04_2_pxGeo";
	rename -uid "497997B5-4728-67D9-62B6-458C8B7DEF5E";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "lfLegQd1_PRX" -p "PRX";
	rename -uid "85706E77-40DA-24B5-933A-FC84B55B1466";
createNode transform -n "lfLegQd1_upr_pxGeo_ofs" -p "lfLegQd1_PRX";
	rename -uid "51357E39-48DF-514B-693D-B881020BE219";
	setAttr ".t" -type "double3" 14.112337018814696 61.262709277875445 58.378914141756134 ;
	setAttr ".r" -type "double3" 13.967066537180759 24.443160919227655 -88.838635641928164 ;
createNode transform -n "lfLegQd1_upr_pxGeo" -p "lfLegQd1_upr_pxGeo_ofs";
	rename -uid "4823C4D4-495A-0BC7-1276-AB88941E617C";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 -1.136326927501635 -3.907985046680551e-14 ;
	setAttr ".r" -type "double3" -15.021207306508234 0 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 1.5740184682745419 ;
createNode mesh -n "lfLegQd1_upr_pxGeoShape" -p "lfLegQd1_upr_pxGeo";
	rename -uid "97B07323-4AF6-112D-528D-3FB7CD33988C";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
	setAttr -s 24 ".vt[0:23]"  -15.43012238 6.77019739 -4.36982393 -11.92770481 3.62051892 -10.27453136
		 -12.73048973 7.30805159 -4.43943834 -12.44369698 6.35825729 -0.0020351808 -12.44447041 4.48551035 4.50009251
		 -12.44867325 0.012178374 6.40067768 -12.56922817 -4.97839499 6.86099815 -12.31929779 -9.6521616 6.21657753
		 3.019507647 2.76418757 -8.40799713 1.67943811 2.892277 -8.73045731 0.60657322 7.22487545 -4.75774479
		 -0.04478443 7.13712978 0.025247147 -0.023959536 4.11713791 4.34457684 0.013629567 0.11480944 6.57958698
		 0.38980287 -5.080289841 6.65682793 2.63359594 -11.46936703 2.66633654 12.12523651 -3.91826606 -4.25322247
		 12.41646194 0.053247046 -6.2684412 12.48364449 5.020271301 -4.56486082 12.46713638 6.0070209503 0.039677147
		 12.22667313 5.27707481 4.78257942 12.378479 -0.041603323 6.45958996 12.45746517 -4.87741184 4.7139101
		 12.47661686 -6.95805311 -0.14539792;
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
	rename -uid "E31A9780-4AF6-9F52-CEE3-37829E1CE1C7";
	setAttr ".t" -type "double3" 8.387601468306503 3.6153991377512389 66.064229199556081 ;
	setAttr ".r" -type "double3" -184.48346440628893 -13.006053633741191 -88.989018776305087 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1 0.99999999999999967 ;
createNode transform -n "lfLegQd1_toe01_3_pxGeo" -p "lfLegQd1_toe01_3_pxGeo_ofs";
	rename -uid "D5998D8E-4A5C-5BB0-3ED2-28859913563C";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 6.2172489379008766e-15 1.1174925622691347 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1.8722324255933744 1.8722324255933749 ;
createNode mesh -n "lfLegQd1_toe01_3_pxGeoShape" -p "lfLegQd1_toe01_3_pxGeo";
	rename -uid "532A1B92-4036-2133-2456-9EAC99D1AF20";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "lfLegQd1_toe01_2_pxGeo_ofs" -p "lfLegQd1_PRX";
	rename -uid "64382C7A-48BE-2931-C5F0-0092566C4993";
	setAttr ".t" -type "double3" 8.1322020638902011 5.3670564274664301 62.983379116628932 ;
	setAttr ".r" -type "double3" 49.336474828347143 -83.663865257199205 40.837127947498253 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 1 ;
createNode transform -n "lfLegQd1_toe01_2_pxGeo" -p "lfLegQd1_toe01_2_pxGeo_ofs";
	rename -uid "4A2AA666-4935-D754-1AFB-C0B8F12656D9";
	setAttr ".t" -type "double3" -2.2663034645034514 1.2878587085651816e-14 1.1174925622691261 ;
	setAttr ".s" -type "double3" 1.2629066749147633 2.2167059481185674 2.2167059481185665 ;
createNode mesh -n "lfLegQd1_toe01_2_pxGeoShape" -p "lfLegQd1_toe01_2_pxGeo";
	rename -uid "3DF585D0-437D-C0D6-C95A-218F00DFEE77";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "lfLegQd1_toe01_1_pxGeo_ofs" -p "lfLegQd1_PRX";
	rename -uid "0FC92B03-4076-7322-968C-21833F85A234";
	setAttr ".t" -type "double3" 8.3208451335095273 8.9708957856128428 59.369251472569935 ;
	setAttr ".r" -type "double3" -156.57167633810235 -14.428807242668105 -96.16262094534882 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999978 ;
createNode transform -n "lfLegQd1_toe01_1_pxGeo" -p "lfLegQd1_toe01_1_pxGeo_ofs";
	rename -uid "73434E43-4947-2848-CE4A-F9B6E612A2E1";
	setAttr ".t" -type "double3" 4.4408920985006262e-15 1.4047762980405984 0.96253555142500602 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.6625875637263894 2.5812989157972415 ;
createNode mesh -n "lfLegQd1_toe01_1_pxGeoShape" -p "lfLegQd1_toe01_1_pxGeo";
	rename -uid "CD3B0481-4808-353E-2E15-9188644D42B5";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "lfLegQd1_toe01_4_pxGeo_ofs" -p "lfLegQd1_PRX";
	rename -uid "C56216D5-452C-3AC3-1DA1-CE8AF5941102";
	setAttr ".t" -type "double3" 8.9419765238751747 1.6726296505254068 68.128177525540139 ;
	setAttr ".r" -type "double3" 90.000000000000298 -72.150901321360891 -1.3489629015143452e-13 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999956 ;
createNode transform -n "lfLegQd1_toe01_4_pxGeo" -p "lfLegQd1_toe01_4_pxGeo_ofs";
	rename -uid "357DFF30-4645-2498-26BB-3AAD5C2CD087";
	setAttr ".t" -type "double3" -0.77845932919366589 -1.7763568394002505e-15 1.1102230246251565e-15 ;
	setAttr ".s" -type "double3" 0.72891128392800675 1.5637168322432524 1.5637168322432518 ;
createNode mesh -n "lfLegQd1_toe01_4_pxGeoShape" -p "lfLegQd1_toe01_4_pxGeo";
	rename -uid "909501C5-43E3-71FC-0F82-75A2718F13A3";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "lfLegQd1_toe02_3_pxGeo_ofs" -p "lfLegQd1_PRX";
	rename -uid "B4DE6573-47B9-0BD4-419B-4D9F82673BB5";
	setAttr ".t" -type "double3" 12.395556973392239 4.229290152040841 66.935221986033369 ;
	setAttr ".r" -type "double3" -183.05522908971312 -18.212934903749648 -89.044272611222908 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999956 ;
createNode transform -n "lfLegQd1_toe02_3_pxGeo" -p "lfLegQd1_toe02_3_pxGeo_ofs";
	rename -uid "BBC33375-4E5B-820B-27A3-DF803E1ABC5B";
	setAttr ".t" -type "double3" 0 5.3290705182007514e-15 1.1174925622691489 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.872232425593372 1.8722324255933749 ;
createNode mesh -n "lfLegQd1_toe02_3_pxGeoShape" -p "lfLegQd1_toe02_3_pxGeo";
	rename -uid "2312F622-44BE-ECF9-DEEA-0CBF5C145F87";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "lfLegQd1_toe02_4_pxGeo_ofs" -p "lfLegQd1_PRX";
	rename -uid "954D1649-449A-C500-4DD7-1D8ED46A10CB";
	setAttr ".t" -type "double3" 12.709544174878237 2.1673174681635126 69.287392499387096 ;
	setAttr ".r" -type "double3" 89.999999999999318 -80.515936908285667 6.17683647075412e-13 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999967 1 ;
createNode transform -n "lfLegQd1_toe02_4_pxGeo" -p "lfLegQd1_toe02_4_pxGeo_ofs";
	rename -uid "09494CBB-469A-0ED7-5A5E-04AE06D7289F";
	setAttr ".t" -type "double3" -0.77845932919368011 -8.659739592076221e-15 1.3322676295501878e-15 ;
	setAttr ".s" -type "double3" 0.72891128392800664 1.5637168322432526 1.563716832243252 ;
createNode mesh -n "lfLegQd1_toe02_4_pxGeoShape" -p "lfLegQd1_toe02_4_pxGeo";
	rename -uid "23F5255C-4D15-36A5-8097-F3A7AED98C93";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "lfLegQd1_toe02_2_pxGeo_ofs" -p "lfLegQd1_PRX";
	rename -uid "CE873AA0-44C2-A8C5-3326-D694BAD727C1";
	setAttr ".t" -type "double3" 11.451431909287406 5.6189175273177483 62.964196076444587 ;
	setAttr ".r" -type "double3" 55.048029447956331 -71.038479485421973 36.46672656469088 ;
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "lfLegQd1_toe02_2_pxGeo" -p "lfLegQd1_toe02_2_pxGeo_ofs";
	rename -uid "3FDBEBEC-4B2F-7B8E-ABBC-5C9EB9D32DD8";
	setAttr ".t" -type "double3" -2.2663034645034728 1.9539925233402755e-14 1.1174925622691214 ;
	setAttr ".s" -type "double3" 1.262906674914763 2.2167059481185709 2.2167059481185709 ;
createNode mesh -n "lfLegQd1_toe02_2_pxGeoShape" -p "lfLegQd1_toe02_2_pxGeo";
	rename -uid "221E4EB6-4FA7-01D7-37E2-DEB63607FC4B";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
	rename -uid "8438F23A-459D-843A-372A-01BD4E24D19A";
	setAttr ".t" -type "double3" 10.722512440680811 8.9839467401200572 59.04062926467099 ;
	setAttr ".r" -type "double3" -163.81401974961329 -8.875417216569975 -92.564188360412331 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999978 ;
createNode transform -n "lfLegQd1_toe02_1_pxGeo" -p "lfLegQd1_toe02_1_pxGeo_ofs";
	rename -uid "C8556146-427E-9EEF-103B-05B70066EDFC";
	setAttr ".t" -type "double3" 7.049916206369744e-15 0.89184025772499353 0.96253555142504865 ;
	setAttr ".s" -type "double3" 1 1.6625875637263885 2.5812989157972392 ;
createNode mesh -n "lfLegQd1_toe02_1_pxGeoShape" -p "lfLegQd1_toe02_1_pxGeo";
	rename -uid "65A8A06E-491C-26FC-53C6-9F8A7E02F9C6";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "lfLegQd1_toe03_2_pxGeo_ofs" -p "lfLegQd1_PRX";
	rename -uid "5261E579-4003-745F-C3E2-D984488D66AD";
	setAttr ".t" -type "double3" 14.756498349808535 5.5459854934198498 61.656058838344315 ;
	setAttr ".r" -type "double3" 56.858390907516409 -64.466936184910494 35.889344170067325 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegQd1_toe03_2_pxGeo" -p "lfLegQd1_toe03_2_pxGeo_ofs";
	rename -uid "7E0B5CAD-42DD-DEBB-B387-E3A41EECBB44";
	setAttr ".t" -type "double3" -2.2663034645034728 1.4210854715202004e-14 1.1174925622691223 ;
	setAttr ".s" -type "double3" 1.2629066749147635 2.2167059481185705 2.2167059481185722 ;
createNode mesh -n "lfLegQd1_toe03_2_pxGeoShape" -p "lfLegQd1_toe03_2_pxGeo";
	rename -uid "EB02B94C-4F0D-43BB-981D-208349967858";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
	rename -uid "542FC217-4EAB-9DA4-E944-42B4F357AEE4";
	setAttr ".t" -type "double3" 15.887570986027052 4.2955069027043509 65.225619571397573 ;
	setAttr ".r" -type "double3" -182.75905855210991 -19.712110545773214 -89.068747439121722 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999978 ;
createNode transform -n "lfLegQd1_toe03_3_pxGeo" -p "lfLegQd1_toe03_3_pxGeo_ofs";
	rename -uid "3AB82651-42B5-2570-71F1-B28C95914B5C";
	setAttr ".t" -type "double3" 1.4210854715202004e-14 1.7763568394002505e-15 1.1174925622691134 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.872232425593374 1.872232425593374 ;
createNode mesh -n "lfLegQd1_toe03_3_pxGeoShape" -p "lfLegQd1_toe03_3_pxGeo";
	rename -uid "1F2A162E-4DDF-D428-0C77-95B87E94EF8C";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "lfLegQd1_toe03_1_pxGeo_ofs" -p "lfLegQd1_PRX";
	rename -uid "32519BD0-4EBF-E65F-C234-6FAA687992CA";
	setAttr ".t" -type "double3" 13.182690799556724 8.8993316012133334 58.282335277806375 ;
	setAttr ".r" -type "double3" 138.02343860491752 -7.3282367679446052 -83.453648633100329 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999978 ;
createNode transform -n "lfLegQd1_toe03_1_pxGeo" -p "lfLegQd1_toe03_1_pxGeo_ofs";
	rename -uid "0A743716-4011-256F-54EC-4C8ABACA17ED";
	setAttr ".t" -type "double3" 4.3853809472693683e-15 -3.5527136788005009e-15 0.96253555142499891 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.6625875637263892 2.5812989157972392 ;
createNode mesh -n "lfLegQd1_toe03_1_pxGeoShape" -p "lfLegQd1_toe03_1_pxGeo";
	rename -uid "8B7424EB-49B0-0282-FEA2-23828B91F130";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "lfLegQd1_toe04_2_pxGeo_ofs" -p "lfLegQd1_PRX";
	rename -uid "DD4CB2A8-464D-2226-8D7C-56AA69274C60";
	setAttr ".t" -type "double3" 16.730485558221503 4.9182684901087717 58.973936965559531 ;
	setAttr ".r" -type "double3" 84.722304452221096 -48.090860985908968 7.0756580460281002 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
createNode transform -n "lfLegQd1_toe04_2_pxGeo" -p "lfLegQd1_toe04_2_pxGeo_ofs";
	rename -uid "6F24DC48-41E6-F8E3-9B6E-228E4E9A6D2A";
	setAttr ".t" -type "double3" -2.2663034645034585 2.8421709430404007e-14 1.1174925622691254 ;
	setAttr ".s" -type "double3" 1.2629066749147633 2.2167059481185705 2.21670594811857 ;
createNode mesh -n "lfLegQd1_toe04_2_pxGeoShape" -p "lfLegQd1_toe04_2_pxGeo";
	rename -uid "C71E1246-4C4D-051C-5E63-18866A6E2A05";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "lfLegQd1_toe04_1_pxGeo_ofs" -p "lfLegQd1_PRX";
	rename -uid "1B26318A-433D-D8A4-2FF1-5C8A04CF8C6B";
	setAttr ".t" -type "double3" 14.445858510309167 8.8535652473462392 56.399030882016312 ;
	setAttr ".r" -type "double3" 137.81364688395465 -10.485645121893185 -80.634031933905376 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999978 ;
createNode transform -n "lfLegQd1_toe04_1_pxGeo" -p "lfLegQd1_toe04_1_pxGeo_ofs";
	rename -uid "BBB53D95-4B23-931B-1108-9293056AC726";
	setAttr ".t" -type "double3" 5.3290705182007514e-15 -1.0658141036401503e-14 0.96253555142501313 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1.6625875637263881 2.5812989157972375 ;
createNode mesh -n "lfLegQd1_toe04_1_pxGeoShape" -p "lfLegQd1_toe04_1_pxGeo";
	rename -uid "DEC43085-4FC3-DEAB-E756-D89006F3C8FE";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "lfLegQd1_toe03_4_pxGeo_ofs" -p "lfLegQd1_PRX";
	rename -uid "3E705103-4E0E-2655-C2B4-F19BF26BE7DA";
	setAttr ".t" -type "double3" 16.20039908450827 2.2506404191544327 67.631990355445538 ;
	setAttr ".r" -type "double3" 90.000000000001478 -80.515936908285539 -6.3698626104650993e-13 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "lfLegQd1_toe03_4_pxGeo" -p "lfLegQd1_toe03_4_pxGeo_ofs";
	rename -uid "EAA384AC-48DE-C4DA-395F-D7BA3930EF4F";
	setAttr ".t" -type "double3" -0.77845932919365168 -2.6645352591003757e-15 1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 0.72891128392800708 1.5637168322432533 1.5637168322432524 ;
createNode mesh -n "lfLegQd1_toe03_4_pxGeoShape" -p "lfLegQd1_toe03_4_pxGeo";
	rename -uid "B4B49A2C-41E2-2641-A0C4-D8AB50E0A111";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "lfLegQd1_toe04_4_pxGeo_ofs" -p "lfLegQd1_PRX";
	rename -uid "33ED6DC0-4420-6BEA-446D-B9954AC3C273";
	setAttr ".t" -type "double3" 19.12111200333851 2.621326443085557 63.259601194992683 ;
	setAttr ".r" -type "double3" 90.000000000000654 -71.571425392933875 -2.5152887551726505e-13 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "lfLegQd1_toe04_4_pxGeo" -p "lfLegQd1_toe04_4_pxGeo_ofs";
	rename -uid "A34E9122-418A-EC91-D8A5-DDACBA7291A7";
	setAttr ".t" -type "double3" -0.77845932919363747 0 8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 0.72891128392800664 1.5637168322432529 1.563716832243252 ;
createNode mesh -n "lfLegQd1_toe04_4_pxGeoShape" -p "lfLegQd1_toe04_4_pxGeo";
	rename -uid "DA15C986-422E-F798-1339-C79E233C074E";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "lfLegQd1_toe04_3_pxGeo_ofs" -p "lfLegQd1_PRX";
	rename -uid "5078836C-4C92-3B75-0AFC-1CA878B12B93";
	setAttr ".t" -type "double3" 18.458964624788976 3.869267117049997 61.211572998836104 ;
	setAttr ".r" -type "double3" 163.0124745450982 -19.259159787690876 -84.246060090764772 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999956 0.99999999999999978 ;
createNode transform -n "lfLegQd1_toe04_3_pxGeo" -p "lfLegQd1_toe04_3_pxGeo_ofs";
	rename -uid "DD7ED1B4-460F-E1F3-A8EA-96AEE7F366B6";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 6.3282712403633923e-15 1.1174925622691205 ;
	setAttr ".s" -type "double3" 1 1.8722324255933736 1.8722324255933738 ;
createNode mesh -n "lfLegQd1_toe04_3_pxGeoShape" -p "lfLegQd1_toe04_3_pxGeo";
	rename -uid "4EE93CDF-4B15-158D-A400-76AAE2114955";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
	rename -uid "348E6824-4351-1038-14BF-CC885B45757A";
	setAttr ".t" -type "double3" 8.5725586674959775 100.75212583922331 55.851647784140148 ;
	setAttr ".r" -type "double3" 90.000000000000028 16.744161296497722 101.11288760335776 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999956 1 ;
createNode transform -n "lfLegQd1_scapTip_end_pxGeo" -p "lfLegQd1_scapTip_end_pxGeo_ofs";
	rename -uid "BE48B224-4D5D-FE0B-8926-2281EBED8A0D";
	setAttr ".t" -type "double3" 0 4.2632564145606011e-14 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 0 -34.710029300437093 0 ;
	setAttr ".s" -type "double3" 1.0000000000000007 1 1.0000000000000004 ;
createNode mesh -n "lfLegQd1_scapTip_end_pxGeoShape" -p "lfLegQd1_scapTip_end_pxGeo";
	rename -uid "B2CB40A1-4101-5B0A-C6C1-DFB042F9E390";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
	setAttr -s 24 ".vt[0:23]"  0.44517544 -5.17779684 -6.23141956 -0.24306764 -0.42425486 -8.19621944
		 0.34265679 4.69323635 -7.8085947 0.12670492 7.39393139 1.89124596 -1.70828307 4.59734249 5.056156158
		 -2.36882091 -0.0047894358 6.30853796 -1.42798173 -4.65663242 5.32854128 0.85842741 -7.070649624 1.62126076
		 1.16082478 -4.82654238 -5.31654501 0.81750381 -0.27403042 -7.32444906 2.26816821 4.88298178 -5.81342316
		 1.15161812 6.85265112 0.84153485 -0.68038416 4.40820837 3.93616056 -1.28656816 -0.087296203 5.16337824
		 -0.38863584 -4.44650126 4.21066952 1.41754949 -6.77019024 0.5320133 1.99482369 -4.41215706 -4.29738426
		 2.001598835 0.021847714 -6.20616007 2.87463641 4.60819626 -4.83683443 2.024910688 6.28856134 -0.17086059
		 0.2896691 4.21120071 2.81937814 -0.38847443 -0.17620745 4.17611933 0.48704714 -4.21697426 3.11940527
		 1.78880119 -6.23770714 -0.10094482;
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
	rename -uid "C65630D7-467B-0538-9F7E-5F98C53A0308";
	setAttr ".t" -type "double3" 12.900712044398894 31.979188644372385 56.25856218403586 ;
	setAttr ".r" -type "double3" -166.86530433222617 -172.14200270129086 79.505308737713605 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999956 ;
createNode transform -n "lfLegQd1_radius_pxGeo" -p "lfLegQd1_radius_pxGeo_ofs";
	rename -uid "BBCA14A1-4461-B759-BDC2-5AAEF6A86C6F";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -1.5042698458567649 -1.4210854715202004e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1.2698155434078946 1.0000000000000002 ;
createNode mesh -n "lfLegQd1_radius_pxGeoShape" -p "lfLegQd1_radius_pxGeo";
	rename -uid "654D624C-4AFC-08A2-F0AE-5E9CC292FCE8";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
	rename -uid "C425A865-4EAE-B551-F870-3A9F0F138261";
	setAttr ".t" -type "double3" 13.983410178519621 35.190971748213961 51.651701162174689 ;
	setAttr ".r" -type "double3" -167.65054374423923 -167.53381140792047 89.001913374975047 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999956 ;
createNode transform -n "lfLegQd1_ulna_pxGeo" -p "lfLegQd1_ulna_pxGeo_ofs";
	rename -uid "13289760-47F7-DBF6-FC31-26975C3A63D6";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -1.504269845856772 -2.1316282072803006e-14 ;
	setAttr ".s" -type "double3" 1 1.2698155434078957 1.0000000000000007 ;
createNode mesh -n "lfLegQd1_ulna_pxGeoShape" -p "lfLegQd1_ulna_pxGeo";
	rename -uid "9F6E8C47-4D3C-6856-68EB-11BB5C356E8D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "head0_PRX" -p "PRX";
	rename -uid "26506EBA-4496-35AD-F532-DCA107E0E72E";
createNode transform -n "head0_st_pxGeo_ofs" -p "head0_PRX";
	rename -uid "C2E8B9B2-4C00-E6CF-039E-42BF75480B0B";
	setAttr ".t" -type "double3" 0 109.29330520575802 98.611642971070737 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999986 ;
createNode transform -n "head0_st_pxGeo" -p "head0_st_pxGeo_ofs";
	rename -uid "45797969-457A-2F33-215C-629A58AD0106";
	setAttr ".t" -type "double3" -15.245571534462638 -1.9118317485523031e-14 6.7130119883199635 ;
	setAttr ".r" -type "double3" 0 32.924213437992314 0 ;
	setAttr ".s" -type "double3" 4.3013693243867284 4.3013693243867284 4.3013693243867284 ;
createNode mesh -n "head0_st_pxGeoShape" -p "head0_st_pxGeo";
	rename -uid "27118C9F-4EBD-4A49-8B1B-9981A3744CE9";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 11 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:15]" "f[18:19]" "f[22:25]" "f[6:7]" "f[10:11]" "f[14:15]" "f[18:19]" "f[22:25]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 11 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[16:17]" "f[20:21]" "f[4:5]" "f[8:9]" "f[12:13]" "f[16:17]" "f[20:21]";
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
	setAttr ".pv" -type "double2" 0.5 0.85669419169425964 ;
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
	setAttr -s 3 ".pt[24:26]" -type "float3"  -0.67682004 0 1.7108428 -1.3557689 
		3.7470027e-16 2.8236797 -0.67682004 0 1.7108428;
	setAttr -s 32 ".vt[0:31]"  -3.62771583 -1.77295172 -0.61358917 -3.7445333 0.012265969 -1.82868981
		 -3.63075304 1.80124223 -0.58769679 -3.91707301 1.78249788 -0.028843265 -4.076559067 1.42934346 1.15690577
		 -4.10492754 -0.0070110578 2.49065018 -3.97836351 -1.23523533 1.42024338 -3.94103336 -1.7872417 0.041921668
		 -1.26521921 -1.79798687 -1.90143371 -1.37571275 0.014815109 -2.82482147 -1.26789892 1.79849029 -1.90496075
		 -1.040302396 2.38221288 -0.085779279 -1.30611038 1.6004703 1.428563 -1.45924044 -0.013119404 2.6101191
		 -1.32130051 -1.53378201 1.47573614 -1.033387542 -2.38948298 -0.081436977 1.61868703 -2.60084629 -2.55929732
		 1.26522148 -0.045455962 -3.30628657 1.67902064 2.64035082 -2.47819805 1.46423197 3.20084929 0.11217584
		 1.44554174 1.95685101 1.98624492 1.39018548 -0.041637588 2.64605284 1.44978392 -1.9606539 1.98022878
		 1.47102416 -3.21877432 0.07090997 4.41291285 -2.13092351 -2.057971478 6.17163801 -0.028872518 -2.35969973
		 4.41645241 2.14037585 -2.054519415 4.30227137 2.89987516 0.022770569 3.92792296 2.2806828 1.8288753
		 3.83049226 -0.16678376 1.81384432 3.93857813 -2.28164554 1.80376565 4.30967855 -2.91212177 0.019991715;
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
	rename -uid "71692CC5-428A-C299-929F-FC853A52F59E";
	setAttr ".t" -type "double3" -3.2576285432997249e-14 85.986931637078783 105.14792469900235 ;
	setAttr ".r" -type "double3" 89.999999999999659 -21.314335398363923 -89.999999999999886 ;
createNode transform -n "head0_jaw_pxGeo" -p "head0_jaw_pxGeo_ofs";
	rename -uid "B75DC937-4D06-928D-1454-D4BD392BC99E";
	setAttr ".s" -type "double3" 1 1 2.2387948908842707 ;
createNode mesh -n "head0_jaw_pxGeoShape" -p "head0_jaw_pxGeo";
	rename -uid "6626FC26-44D5-C3F8-349A-0AB441827766";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 11 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:15]" "f[18:19]" "f[22:25]" "f[6:7]" "f[10:11]" "f[14:15]" "f[18:19]" "f[22:25]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 11 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[16:17]" "f[20:21]" "f[4:5]" "f[8:9]" "f[12:13]" "f[16:17]" "f[20:21]";
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
	setAttr -s 32 ".vt[0:31]"  -10.5249176 -4.39090633 -1.27919888 -9.3258276 -3.43088365 -1.75293648
		 -20.027328491 2.31241632 -2.40436983 -8.80013466 -1.5373137 -0.020689217 -19.91574478 2.34667253 2.36193204
		 -9.3893404 -3.24030519 1.5095737 -10.36931896 -4.51798487 1.48938 -11.1632452 -4.62546682 0.013971408
		 -4.95401812 -1.8071847 -1.93068099 -4.27129126 0.29560795 -2.008285284 -3.75173855 1.23587692 -1.79481852
		 -4.11594296 2.45065546 0.035117224 -3.95057917 1.3887701 1.77500784 -4.12201214 -0.20153137 1.99073923
		 -4.74981403 -2.039545536 1.91378379 -4.47096872 -3.030342102 0.00037120352 4.68585348 -2.45848989 -2.22474718
		 4.45870733 -0.25726908 -3.35963988 4.59333515 1.90667403 -2.085311651 4.12451601 4.141922 0.02172377
		 4.539217 2.07626605 2.12378573 4.62324142 -0.5069263 3.26410508 4.70077229 -2.49562764 2.24185467
		 5.0095534325 -3.74662447 -0.0038420265 11.92920971 -0.090728365 -1.52107549 12.39330959 1.18211782 -1.9937129
		 13.15377998 2.10361648 -1.92763674 14.90865707 2.61240959 0.0025975923 13.21217728 2.11500669 1.65275669
		 12.52019215 0.51005769 1.76890588 12.2017374 0.34418672 1.78832531 12.19596863 -0.35332742 -0.023915043;
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
createNode transform -n "rtLegQd1_PRX" -p "PRX";
	rename -uid "1464405C-4B81-0424-C50F-5DA55E55364A";
createNode transform -n "rtLegQd1_scapTip_end_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "3A69C5EA-4987-C390-BE1F-D8B513CA0C30";
	setAttr ".t" -type "double3" -8.5725586752426892 100.75212582910304 55.85164774616954 ;
	setAttr ".r" -type "double3" 90.000000023490188 -16.74416137584501 -101.11288759154917 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "rtLegQd1_scapTip_end_pxGeo" -p "rtLegQd1_scapTip_end_pxGeo_ofs";
	rename -uid "0529D9E7-403B-545A-79D1-B593C6D169B2";
	setAttr ".t" -type "double3" 0 3.965180894738296e-08 -5.650854006944428e-09 ;
	setAttr ".r" -type "double3" -179.99999996728616 -34.710029289129146 179.99999990202474 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 -1.0000000000000002 ;
createNode mesh -n "rtLegQd1_scapTip_end_pxGeoShape" -p "rtLegQd1_scapTip_end_pxGeo";
	rename -uid "8D2F06A5-40E9-75EE-C51E-29B200E0BFC4";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
	setAttr -s 24 ".vt[0:23]"  0.44517544 -5.17779684 -6.23141956 -0.24306764 -0.42425486 -8.19621944
		 0.34265679 4.69323635 -7.8085947 0.12670492 7.39393139 1.89124596 -1.70828307 4.59734249 5.056156158
		 -2.36882091 -0.0047894358 6.30853796 -1.42798173 -4.65663242 5.32854128 0.85842741 -7.070649624 1.62126076
		 1.16082478 -4.82654238 -5.31654501 0.81750381 -0.27403042 -7.32444906 2.26816821 4.88298178 -5.81342316
		 1.15161812 6.85265112 0.84153485 -0.68038416 4.40820837 3.93616056 -1.28656816 -0.087296203 5.16337824
		 -0.38863584 -4.44650126 4.21066952 1.41754949 -6.77019024 0.5320133 1.99482369 -4.41215706 -4.29738426
		 2.001598835 0.021847714 -6.20616007 2.87463641 4.60819626 -4.83683443 2.024910688 6.28856134 -0.17086059
		 0.2896691 4.21120071 2.81937814 -0.38847443 -0.17620745 4.17611933 0.48704714 -4.21697426 3.11940527
		 1.78880119 -6.23770714 -0.10094482;
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
	rename -uid "2DA58A6D-4974-3853-9D4F-24828F70BFD0";
	setAttr ".t" -type "double3" -12.900711998909477 31.979188290224435 56.258562277955463 ;
	setAttr ".r" -type "double3" -13.13469568539927 -7.8579975746191248 -79.505308569259526 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "rtLegQd1_radius_pxGeo" -p "rtLegQd1_radius_pxGeo_ofs";
	rename -uid "D30BDD81-4C33-5E58-E04C-509BA2200F58";
	setAttr ".t" -type "double3" -3.6338180819939225e-07 1.5042698751829064 -3.8774324195856025e-08 ;
	setAttr ".r" -type "double3" 179.99999999500517 0 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1.2698155434078939 -0.99999999999999989 ;
createNode mesh -n "rtLegQd1_radius_pxGeoShape" -p "rtLegQd1_radius_pxGeo";
	rename -uid "E031D644-4855-F1B2-3F33-1C8917D249A2";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "rtLegQd1_ulna_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "5ACD0541-45D0-5707-F2A3-6EB64E25C6D2";
	setAttr ".t" -type "double3" -13.983410133526455 35.190971399779919 51.651701248531566 ;
	setAttr ".r" -type "double3" -12.349456257815252 -12.466188919269767 -89.001913433269053 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "rtLegQd1_ulna_pxGeo" -p "rtLegQd1_ulna_pxGeo_ofs";
	rename -uid "C1ABB6F1-4197-3202-1C7D-0FB0C9E0CD3E";
	setAttr ".t" -type "double3" -3.6287114824062883e-07 1.5042698097542271 -1.6673325831106922e-08 ;
	setAttr ".r" -type "double3" -179.9999999850738 0 0 ;
	setAttr ".s" -type "double3" 1 1.2698155434078948 -1.0000000000000004 ;
createNode mesh -n "rtLegQd1_ulna_pxGeoShape" -p "rtLegQd1_ulna_pxGeo";
	rename -uid "3D6A60A2-4265-2537-0C11-4987AC73CDB1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "rtLegQd1_upr_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "2EC4B10E-4F9B-BC1E-776E-DAB7AD6B33D7";
	setAttr ".t" -type "double3" -14.112337018814681 61.262709277875487 58.378914141756063 ;
	setAttr ".r" -type "double3" -13.967066537180761 24.443160919227768 -91.161364358071935 ;
createNode transform -n "rtLegQd1_upr_pxGeo" -p "rtLegQd1_upr_pxGeo_ofs";
	rename -uid "8ED7BC90-4127-3840-B261-A5B15C1082B5";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 1.1363269275016101 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -164.97879269349181 0 0 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999944 -1.5740184682745413 ;
createNode mesh -n "rtLegQd1_upr_pxGeoShape" -p "rtLegQd1_upr_pxGeo";
	rename -uid "A9F02965-469C-9874-3738-A8B26D55F129";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
	setAttr -s 24 ".vt[0:23]"  -15.43012238 6.77019739 -4.36982393 -11.92770481 3.62051892 -10.27453136
		 -12.73048973 7.30805159 -4.43943834 -12.44369698 6.35825729 -0.0020351808 -12.44447041 4.48551035 4.50009251
		 -12.44867325 0.012178374 6.40067768 -12.56922817 -4.97839499 6.86099815 -12.31929779 -9.6521616 6.21657753
		 3.019507647 2.76418757 -8.40799713 1.67943811 2.892277 -8.73045731 0.60657322 7.22487545 -4.75774479
		 -0.04478443 7.13712978 0.025247147 -0.023959536 4.11713791 4.34457684 0.013629567 0.11480944 6.57958698
		 0.38980287 -5.080289841 6.65682793 2.63359594 -11.46936703 2.66633654 12.12523651 -3.91826606 -4.25322247
		 12.41646194 0.053247046 -6.2684412 12.48364449 5.020271301 -4.56486082 12.46713638 6.0070209503 0.039677147
		 12.22667313 5.27707481 4.78257942 12.378479 -0.041603323 6.45958996 12.45746517 -4.87741184 4.7139101
		 12.47661686 -6.95805311 -0.14539792;
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
	rename -uid "28F05401-4F83-11A2-A2B4-B4AD2238BC00";
	setAttr ".t" -type "double3" -8.1322020525925769 5.3670564098859375 62.983379140935313 ;
	setAttr ".r" -type "double3" 130.66352647570864 -96.336135213253613 -40.837129259075901 ;
	setAttr ".s" -type "double3" 1 1.0000000000000007 1.0000000000000004 ;
createNode transform -n "rtLegQd1_toe01_2_pxGeo" -p "rtLegQd1_toe01_2_pxGeo_ofs";
	rename -uid "0CF151A6-4448-AF5E-C2B1-61B9AAB8C0BC";
	setAttr ".t" -type "double3" -2.2663034723755402 2.1863065580163266e-08 1.1174925181162065 ;
	setAttr ".r" -type "double3" 179.99999999951061 0 0 ;
	setAttr ".s" -type "double3" 1.2629066749147628 2.2167059481185678 -2.216705948118566 ;
createNode mesh -n "rtLegQd1_toe01_2_pxGeoShape" -p "rtLegQd1_toe01_2_pxGeo";
	rename -uid "D414EB64-4E2E-0D89-BF2A-7AB62587C727";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "rtLegQd1_toe01_4_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "9E17006F-475A-1B0F-76B3-D697B8452950";
	setAttr ".t" -type "double3" -8.9419765242566402 1.672629652138562 68.128177547516373 ;
	setAttr ".r" -type "double3" 89.999999999999574 -107.84909867186038 1.7811106216195694e-13 ;
	setAttr ".s" -type "double3" 1 1.0000000000000009 1.0000000000000007 ;
createNode transform -n "rtLegQd1_toe01_4_pxGeo" -p "rtLegQd1_toe01_4_pxGeo_ofs";
	rename -uid "A38A3076-445B-768A-82BB-C688F6AF7BDE";
	setAttr ".t" -type "double3" -0.77845932679274199 8.4981799375327682e-10 -1.2751377731490265e-10 ;
	setAttr ".r" -type "double3" 179.99999999999918 0 0 ;
	setAttr ".s" -type "double3" 0.72891128392800675 1.5637168322432522 -1.5637168322432522 ;
createNode mesh -n "rtLegQd1_toe01_4_pxGeoShape" -p "rtLegQd1_toe01_4_pxGeo";
	rename -uid "FDEC6948-439A-3380-07DE-7C897DE887B3";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "rtLegQd1_toe01_1_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "A72220CB-4391-AB86-A915-409010B245B1";
	setAttr ".t" -type "double3" -8.3208451114664186 8.9708957541453316 59.369251520295222 ;
	setAttr ".r" -type "double3" -203.42832335739251 -14.428807079465649 -83.837379114705058 ;
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999978 1.0000000000000004 ;
createNode transform -n "rtLegQd1_toe01_1_pxGeo" -p "rtLegQd1_toe01_1_pxGeo_ofs";
	rename -uid "B6576FF2-4ECB-9A43-264F-C7AEF5916FDA";
	setAttr ".t" -type "double3" -4.2689281443131222e-08 -1.4047762852577499 0.96253558540259831 ;
	setAttr ".r" -type "double3" 179.99999969694048 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.6625875637263892 -2.5812989157972419 ;
createNode mesh -n "rtLegQd1_toe01_1_pxGeoShape" -p "rtLegQd1_toe01_1_pxGeo";
	rename -uid "9C435444-467B-B685-38ED-F5974B33C122";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "rtLegQd1_toe01_3_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "8948ABF0-4102-3485-836E-3481A3B3EB1A";
	setAttr ".t" -type "double3" -8.3876014689319032 3.6153991393644107 66.064229221466775 ;
	setAttr ".r" -type "double3" -175.5165356006342 -13.006053633860207 -91.010981222136976 ;
	setAttr ".s" -type "double3" 1.0000000000000009 1.0000000000000009 1 ;
createNode transform -n "rtLegQd1_toe01_3_pxGeo" -p "rtLegQd1_toe01_3_pxGeo_ofs";
	rename -uid "F155B823-44EC-A9AE-7D72-EA8561AEE9C8";
	setAttr ".t" -type "double3" 3.6376057721554389e-10 1.099259794301588e-09 1.1174925601341812 ;
	setAttr ".r" -type "double3" -179.99999999342756 0 0 ;
	setAttr ".s" -type "double3" 1 1.8722324255933747 -1.8722324255933755 ;
createNode mesh -n "rtLegQd1_toe01_3_pxGeoShape" -p "rtLegQd1_toe01_3_pxGeo";
	rename -uid "C6C19403-4104-3880-FAA5-4483A9E49BD5";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "rtLegQd1_toe02_3_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "C76FCE2A-46DF-D44D-061E-7DBAD0F2E81E";
	setAttr ".t" -type "double3" -12.395556975076722 4.2292901542791421 66.935221997162373 ;
	setAttr ".r" -type "double3" -176.94477091739859 -18.21293490386266 -90.955727386554344 ;
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000009 0.99999999999999967 ;
createNode transform -n "rtLegQd1_toe02_3_pxGeo" -p "rtLegQd1_toe02_3_pxGeo_ofs";
	rename -uid "DCBF87F2-4C90-3DEF-52CC-4FB5CBFF0C4C";
	setAttr ".t" -type "double3" 1.4697825179155188e-09 3.9758987213645014e-09 1.1174925498440729 ;
	setAttr ".r" -type "double3" -179.9999999935828 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.872232425593372 -1.8722324255933755 ;
createNode mesh -n "rtLegQd1_toe02_3_pxGeoShape" -p "rtLegQd1_toe02_3_pxGeo";
	rename -uid "9D2982FB-447F-F20F-F6C4-9B9381D77271";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "rtLegQd1_toe02_1_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "48C2FAA1-49A9-FE3B-91D2-20A240696083";
	setAttr ".t" -type "double3" -10.722512418641934 8.9839467096940275 59.040629312468539 ;
	setAttr ".r" -type "double3" -196.18597996294426 -8.8754170368617178 -87.435811666769141 ;
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999978 1.0000000000000004 ;
createNode transform -n "rtLegQd1_toe02_1_pxGeo" -p "rtLegQd1_toe02_1_pxGeo_ofs";
	rename -uid "E8839852-4336-DE13-9892-7E8FAC0AD2F4";
	setAttr ".t" -type "double3" -3.7805795827239308e-08 -0.89184024076086743 0.9625355870414154 ;
	setAttr ".r" -type "double3" 179.9999997110036 0 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1.6625875637263881 -2.5812989157972388 ;
createNode mesh -n "rtLegQd1_toe02_1_pxGeoShape" -p "rtLegQd1_toe02_1_pxGeo";
	rename -uid "A0005ACA-4DA1-4CCE-02CB-9DA14327C810";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "rtLegQd1_toe02_2_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "3B3AD12B-4229-D698-19C0-288A3B78C16B";
	setAttr ".t" -type "double3" -11.451431898495727 5.6189175115054688 62.964196094724898 ;
	setAttr ".r" -type "double3" 124.9519708912235 -108.96152087699596 -36.466726921947284 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1.0000000000000007 1.0000000000000004 ;
createNode transform -n "rtLegQd1_toe02_2_pxGeo" -p "rtLegQd1_toe02_2_pxGeo_ofs";
	rename -uid "3D5EEED6-4F95-28D9-F065-62BFA0D891A5";
	setAttr ".t" -type "double3" -2.2663034580754058 1.913837444078581e-08 1.1174925280842034 ;
	setAttr ".r" -type "double3" 179.99999999869067 0 0 ;
	setAttr ".s" -type "double3" 1.2629066749147635 2.2167059481185714 -2.2167059481185718 ;
createNode mesh -n "rtLegQd1_toe02_2_pxGeoShape" -p "rtLegQd1_toe02_2_pxGeo";
	rename -uid "918BB991-4D66-1E3A-EEF4-C6BA585EA799";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "rtLegQd1_toe03_1_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "03251675-4614-32E2-472D-F18143D0350B";
	setAttr ".t" -type "double3" -13.182690777490423 8.8993315741896595 58.2823353251353 ;
	setAttr ".r" -type "double3" 221.97656165074577 -7.328236559582014 -96.546351389108764 ;
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999978 1.0000000000000004 ;
createNode transform -n "rtLegQd1_toe03_1_pxGeo" -p "rtLegQd1_toe03_1_pxGeo_ofs";
	rename -uid "E9051DDE-4F2E-BAF8-032C-C581C42D7F44";
	setAttr ".t" -type "double3" -3.032299394911675e-08 4.1937788353152428e-08 0.9625355551612742 ;
	setAttr ".r" -type "double3" 179.99999976187266 0 0 ;
	setAttr ".s" -type "double3" 1 1.6625875637263889 -2.5812989157972388 ;
createNode mesh -n "rtLegQd1_toe03_1_pxGeoShape" -p "rtLegQd1_toe03_1_pxGeo";
	rename -uid "3F58CFDE-44C1-6AAB-B74B-46AF02880A5B";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "rtLegQd1_toe03_2_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "03041FBF-4367-1473-047A-C79F51B84BE1";
	setAttr ".t" -type "double3" -14.756498338628306 5.5459854791058758 61.656058853531789 ;
	setAttr ".r" -type "double3" 123.14160931017915 -115.53306420274168 -35.88934440942645 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000007 1.0000000000000007 ;
createNode transform -n "rtLegQd1_toe03_2_pxGeo" -p "rtLegQd1_toe03_2_pxGeo_ofs";
	rename -uid "8FFE68A1-4CE6-55EE-FDDC-4980B180F1DC";
	setAttr ".t" -type "double3" -2.2663034528297956 1.8958441927452441e-08 1.1174925328826415 ;
	setAttr ".r" -type "double3" 179.99999999828702 0 0 ;
	setAttr ".s" -type "double3" 1.262906674914763 2.2167059481185696 -2.2167059481185714 ;
createNode mesh -n "rtLegQd1_toe03_2_pxGeoShape" -p "rtLegQd1_toe03_2_pxGeo";
	rename -uid "95741544-472B-D32F-A775-59BAAE9546C3";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
	rename -uid "05C9DA84-4CF9-0F9D-5A32-D5A598691BDA";
	setAttr ".t" -type "double3" -12.709544176284691 2.1673174704018026 69.287392510553246 ;
	setAttr ".r" -type "double3" 89.999999999999375 -99.484063084935443 4.5799987413074647e-13 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000009 1.0000000000000009 ;
createNode transform -n "rtLegQd1_toe02_4_pxGeo" -p "rtLegQd1_toe02_4_pxGeo_ofs";
	rename -uid "56B1F6D6-4213-4134-F60C-8B8921D3C98E";
	setAttr ".t" -type "double3" -0.77845931653430966 2.8568720722432772e-09 -2.4924688979410803e-09 ;
	setAttr ".r" -type "double3" 179.99999999999963 0 0 ;
	setAttr ".s" -type "double3" 0.72891128392800641 1.5637168322432522 -1.563716832243252 ;
createNode mesh -n "rtLegQd1_toe02_4_pxGeoShape" -p "rtLegQd1_toe02_4_pxGeo";
	rename -uid "D7F8C4DC-4DEA-7FBC-3BB5-069195F44D8C";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "rtLegQd1_toe03_3_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "F2FCABB7-4671-329F-189F-B6A013D007FB";
	setAttr ".t" -type "double3" -15.887570986991204 4.2955069042282128 65.225619577420659 ;
	setAttr ".r" -type "double3" -177.24094145506891 -19.712110545883693 -90.931252558456947 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 0.99999999999999944 ;
createNode transform -n "rtLegQd1_toe03_3_pxGeo" -p "rtLegQd1_toe03_3_pxGeo_ofs";
	rename -uid "C090B356-498E-0C82-3810-10A072622B58";
	setAttr ".t" -type "double3" 1.1067129435105016e-09 6.5514687008771944e-09 1.1174925457971341 ;
	setAttr ".r" -type "double3" -179.99999999363791 0 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.8722324255933738 -1.872232425593374 ;
createNode mesh -n "rtLegQd1_toe03_3_pxGeoShape" -p "rtLegQd1_toe03_3_pxGeo";
	rename -uid "6C49FC93-4F05-19B3-E92E-6CA052930E9B";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "rtLegQd1_toe04_3_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "24A50D0D-4CE7-4429-1380-9393FCB1B178";
	setAttr ".t" -type "double3" -18.458964624424862 3.8692671170875705 61.211573000061605 ;
	setAttr ".r" -type "double3" 196.98752544778912 -19.259159788370003 -95.753939906890025 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 0.99999999999999978 ;
createNode transform -n "rtLegQd1_toe04_3_pxGeo" -p "rtLegQd1_toe04_3_pxGeo_ofs";
	rename -uid "1B313BF3-4AEC-974E-A9C1-1B8E23E3F8DB";
	setAttr ".t" -type "double3" 3.9479850499901659e-09 8.5737988930745246e-09 1.1174925471254156 ;
	setAttr ".r" -type "double3" -179.99999999366091 0 0 ;
	setAttr ".s" -type "double3" 1 1.8722324255933736 -1.8722324255933733 ;
createNode mesh -n "rtLegQd1_toe04_3_pxGeoShape" -p "rtLegQd1_toe04_3_pxGeo";
	rename -uid "BE624004-40D1-F613-6AB6-03A71D21CA8F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "rtLegQd1_toe03_4_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "B51C3915-4B94-037C-E756-9CA31A017F2C";
	setAttr ".t" -type "double3" -16.200399085187978 2.2506404206782959 67.631990361505643 ;
	setAttr ".r" -type "double3" 90.000000000001151 -99.484063084935499 -5.597776239375789e-13 ;
	setAttr ".s" -type "double3" 0.99999999999999944 1.0000000000000004 1 ;
createNode transform -n "rtLegQd1_toe03_4_pxGeo" -p "rtLegQd1_toe03_4_pxGeo_ofs";
	rename -uid "C135D57E-415C-BCC5-D5BC-E891913AF485";
	setAttr ".t" -type "double3" -0.77845931261909129 4.9180037819951394e-09 -4.5198911280408538e-09 ;
	setAttr ".r" -type "double3" 179.99999999999679 0 0 ;
	setAttr ".s" -type "double3" 0.72891128392800675 1.5637168322432524 -1.563716832243252 ;
createNode mesh -n "rtLegQd1_toe03_4_pxGeoShape" -p "rtLegQd1_toe03_4_pxGeo";
	rename -uid "1BF40258-4C69-66ED-7311-03A32708596A";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "rtLegQd1_toe04_1_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "C6F85EED-4364-2DA4-89A0-018C1667A915";
	setAttr ".t" -type "double3" -14.445858488228009 8.8535652303440955 56.399030929091737 ;
	setAttr ".r" -type "double3" 222.1863533631892 -10.485644901299993 -99.365968100595737 ;
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999978 1.0000000000000004 ;
createNode transform -n "rtLegQd1_toe04_1_pxGeo" -p "rtLegQd1_toe04_1_pxGeo_ofs";
	rename -uid "A267B107-4314-C7B3-AD75-EEA51BD5971D";
	setAttr ".t" -type "double3" -1.6590749218892142e-08 4.1370544323626746e-08 0.96253555597556328 ;
	setAttr ".r" -type "double3" 179.99999977994247 0 0 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1.6625875637263874 -2.5812989157972366 ;
createNode mesh -n "rtLegQd1_toe04_1_pxGeoShape" -p "rtLegQd1_toe04_1_pxGeo";
	rename -uid "16CDC494-4942-E24D-259E-8281509DE4EE";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "rtLegQd1_toe04_2_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "398B4EC0-4571-49B2-4C28-FF8822FD7461";
	setAttr ".t" -type "double3" -16.730485546354469 4.9182684793683098 58.973936978253391 ;
	setAttr ".r" -type "double3" 95.27769579315158 -131.90913942147657 -7.0756583749913649 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "rtLegQd1_toe04_2_pxGeo" -p "rtLegQd1_toe04_2_pxGeo_ofs";
	rename -uid "A6AB5FF0-4214-701E-5E82-10B400495130";
	setAttr ".t" -type "double3" -2.2663034521428216 1.6765714150324129e-08 1.1174925392473753 ;
	setAttr ".r" -type "double3" 179.99999999944347 0 0 ;
	setAttr ".s" -type "double3" 1.2629066749147637 2.2167059481185705 -2.2167059481185705 ;
createNode mesh -n "rtLegQd1_toe04_2_pxGeoShape" -p "rtLegQd1_toe04_2_pxGeo";
	rename -uid "6DA800C0-4E45-E4D7-BF37-FEB30ED7152B";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "rtLegQd1_toe04_4_pxGeo_ofs" -p "rtLegQd1_PRX";
	rename -uid "9CCAE215-4B6A-2B0F-C4C7-7DA2E142490F";
	setAttr ".t" -type "double3" -19.121112002732346 2.621326443123114 63.259601196296515 ;
	setAttr ".r" -type "double3" 89.999999999999716 -108.42857460028723 -1.0177774980683254e-13 ;
	setAttr ".s" -type "double3" 1 1.0000000000000009 1.0000000000000002 ;
createNode transform -n "rtLegQd1_toe04_4_pxGeo" -p "rtLegQd1_toe04_4_pxGeo_ofs";
	rename -uid "58415681-49D8-B5E0-BE11-B99826572E34";
	setAttr ".t" -type "double3" -0.77845931325938977 8.1947004737514817e-09 -1.4882890475576005e-09 ;
	setAttr ".r" -type "double3" 179.99999999999869 0 0 ;
	setAttr ".s" -type "double3" 0.72891128392800675 1.5637168322432526 -1.5637168322432524 ;
createNode mesh -n "rtLegQd1_toe04_4_pxGeoShape" -p "rtLegQd1_toe04_4_pxGeo";
	rename -uid "46742576-43E3-F546-5A99-84BE503A368C";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "spineQd0_PRX" -p "PRX";
	rename -uid "07764400-4BF4-A41C-0402-ED8726ECE12A";
createNode transform -n "spineQd0_1_rbj_pxGeo_ofs" -p "spineQd0_PRX";
	rename -uid "446DF1D6-4491-F061-31B5-498834EE6B79";
	setAttr ".t" -type "double3" 5.1328778766723884e-14 94.119671670045648 -17.696803404352284 ;
	setAttr ".r" -type "double3" -5.0888874903416268e-13 -90.358275123663432 89.999999999993889 ;
createNode transform -n "spineQd0_1_rbj_pxGeo" -p "spineQd0_1_rbj_pxGeo_ofs";
	rename -uid "8E50299D-4866-C46E-720F-258AFF3AFF05";
	setAttr ".t" -type "double3" 2.3314683517128287e-15 -2.8897837257005368e-15 13.13841222197118 ;
	setAttr ".s" -type "double3" 1 0.78696964241148282 1.2080232643796207 ;
createNode mesh -n "spineQd0_1_rbj_pxGeoShape" -p "spineQd0_1_rbj_pxGeo";
	rename -uid "4C98B2CE-4342-4A24-EFC4-C3AB9B5A7545";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
	setAttr -s 24 ".vt[0:23]"  -3.034569979 -13.056018829 -12.54326248 -3.11723089 0.0068686814 -17.10174561
		 -3.054165602 13.086526871 -12.48028183 -3.20845103 14.6105051 -0.13054007 -3.065406561 13.11096191 12.12586975
		 -4.065974236 0.78747439 18.17694092 -3.11119723 -13.14612103 12.077885628 -3.23552537 -14.65754318 -0.09708447
		 -0.0024164917 -12.79558659 -12.45676327 -0.0046256245 0.017504919 -16.86068916 0.025008209 12.86945724 -12.43298721
		 0.14287072 14.65462399 -0.031968884 -0.039025426 13.19838905 12.12366867 -0.7413528 2.87613702 18.7307148
		 -0.29084098 -13.33907986 12.15843964 0.081442147 -14.73052025 0.0085234251 3.097920895 -12.8102293 -12.46550465
		 3.093619585 0.01121926 -16.82670593 3.092616796 12.88584805 -12.43756104 3.47344375 15.30669594 0.075684354
		 2.69494605 13.93968868 12.3107357 1.86973834 3.40371799 19.30742645 2.84023619 -14.042942047 12.084115028
		 3.47226954 -15.31594753 0.048128605;
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
	rename -uid "25C2198F-47A6-21A0-C8F3-9FAE003975FB";
	setAttr ".t" -type "double3" 4.4013732863912283e-14 94.216610996987527 -4.5605407663298427 ;
	setAttr ".r" -type "double3" 0 -89.322583147263003 90.000000000003226 ;
createNode transform -n "spineQd0_2_rbj_pxGeo" -p "spineQd0_2_rbj_pxGeo_ofs";
	rename -uid "23B4AE6E-47C7-DCCD-BDB8-BB9133917AC5";
	setAttr ".t" -type "double3" -1.8318679906315083e-15 -2.7090888062513458e-15 17.149350631457914 ;
	setAttr ".s" -type "double3" 1 1 1.3774381129235902 ;
createNode mesh -n "spineQd0_2_rbj_pxGeoShape" -p "spineQd0_2_rbj_pxGeo";
	rename -uid "049BF812-4D7B-AFCE-3D79-06B22C1B171F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
	setAttr -s 24 ".vt[0:23]"  -3.075438499 -11.46058846 -11.99644089 -3.099322557 0.009234854 -17.61790276
		 -3.092723608 11.53891563 -12.025364876 -2.34366345 14.14819717 0.10361215 -2.97765517 11.48023319 11.91497803
		 -3.74787021 1.71825886 18.29898453 -2.86280012 -11.54563618 11.91065693 -2.30308533 -14.15470028 0.076369636
		 0.022210369 -11.53850174 -12.023919106 0.014920399 0.0079066465 -17.57381058 0.00070746947 11.57966328 -11.96451855
		 0.73737139 14.91675949 0.11757386 -0.077120923 12.36146355 12.24467087 -0.62865478 -1.91281748 18.86734772
		 -0.1117352 -12.41509819 12.28303719 0.60165995 -14.90779877 0.056746043 3.10195184 -11.64855957 -12.018271446
		 3.1129384 0.0058817985 -17.50444412 3.11068773 11.60078049 -11.98882771 3.49387431 15.80251026 0.19767432
		 2.57268977 13.3243494 12.60451889 2.33858395 -2.32056999 19.21655655 2.57892561 -13.42584801 12.57077217
		 3.49799204 -15.80822754 0.20001951;
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
createNode transform -n "spineQd0_0_rbj_pxGeo_ofs" -p "spineQd0_PRX";
	rename -uid "C2BFAF20-4105-837A-3229-8D86C11DBD50";
	setAttr ".t" -type "double3" 5.4178883601707639e-14 94.623592201811178 -30.817548829712099 ;
	setAttr ".r" -type "double3" -1.0177774980683254e-13 -94.5740346502335 90.000000000000156 ;
createNode transform -n "spineQd0_0_rbj_pxGeo" -p "spineQd0_0_rbj_pxGeo_ofs";
	rename -uid "41985799-4ACD-2200-6BB6-4F978E1AFE62";
	setAttr ".t" -type "double3" 9.4368957093138306e-15 1.1953983093071119e-15 10.151617780863653 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode mesh -n "spineQd0_0_rbj_pxGeoShape" -p "spineQd0_0_rbj_pxGeo";
	rename -uid "F2398653-4A6B-7A82-24B7-7BB68920A1C3";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
	setAttr -s 24 ".vt[0:23]"  -2.80065179 -11.20555782 -11.33951664 -2.72811151 0.054741997 -16.39664841
		 -2.82720947 11.34563351 -11.20733929 -3.044610977 16.38624763 0.085328706 -2.43011928 17.75881767 10.89970875
		 -3.13536596 0.011497523 17.41331673 -3.20887113 -17.59570885 10.90559387 -3.33049607 -16.18122673 -0.04594687
		 0.14107746 -11.72417927 -11.78705406 -0.012242145 -0.0086128479 -17.32740021 0.043026276 11.63147926 -11.76831055
		 -0.52924216 15.85894012 0.18146615 2.85709167 16.035190582 11.31705952 -0.13663504 0.046046492 17.96670341
		 1.88062143 -16.43742943 11.13631344 -0.37062299 -15.53496361 -0.07427685 2.99642563 -11.52270889 -11.73608685
		 3.045784235 -0.033698376 -17.69619942 3.042622328 11.64552975 -11.79709339 1.83854449 14.87626266 0.081358001
		 5.27961254 14.19723988 11.89182949 2.63243413 0.056297261 18.69577789 5.10132027 -14.12330914 11.66782379
		 1.8562479 -14.8883276 0.096596301;
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
	rename -uid "20CE851F-418C-6775-9B3B-EEA074FE5AB9";
	setAttr ".t" -type "double3" 1.3451394169193676e-14 91.726097822546862 34.599642208099375 ;
	setAttr ".r" -type "double3" 3.3077768687220577e-13 -97.617692675717919 89.999999999999702 ;
createNode transform -n "spineQd0_5_rbj_pxGeo" -p "spineQd0_5_rbj_pxGeo_ofs";
	rename -uid "02C28614-4973-E671-00D3-52B76453B6BC";
	setAttr ".t" -type "double3" 5.2735593669694936e-15 -2.7090888062512448e-15 17.149350631457903 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.3774381129235906 ;
createNode mesh -n "spineQd0_5_rbj_pxGeoShape" -p "spineQd0_5_rbj_pxGeo";
	rename -uid "45B6CDD2-4382-027E-265B-A690121E2453";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
	setAttr -s 24 ".vt[0:23]"  -3.024101019 -11.27211475 -11.91389847 -3.14399648 -0.021584012 -17.51791954
		 -3.015295506 11.23344707 -11.88035774 -3.16676259 16.85728836 0.025108898 -2.45201612 14.11580372 12.9639101
		 -2.33641028 -0.48419565 20.28628922 -2.44898343 -14.11177921 13.027596474 -3.15069699 -16.88063622 0.062386613
		 0.037704293 -11.47205067 -11.98339558 -0.11409967 -0.025381511 -17.78042984 0.078619421 11.48727798 -11.964468
		 -0.15809737 16.33177948 0.060592264 0.36311397 13.37613869 12.72402763 0.64391428 -0.67287022 19.90954781
		 0.41237408 -13.4023571 12.7169199 -0.18971917 -16.33145714 0.10592016 3.1580267 -11.76929379 -12.067297935
		 3.27869797 -0.037558354 -18.02980423 3.13210654 11.73474789 -12.079181671 2.71948385 15.65403461 0.11451995
		 3.27220798 12.64353371 12.38390064 3.74960709 -0.30941138 19.547369 3.26605225 -12.66538429 12.385396
		 2.78220773 -15.7195406 0.17812513;
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
	rename -uid "CD8396B7-4FEE-5E86-CAE7-00B24E9962A5";
	setAttr ".t" -type "double3" 6.3048789325692058e-15 90.145586539915826 47.616207384761033 ;
	setAttr ".r" -type "double3" 0 -95.617336822738054 89.99999999999973 ;
createNode transform -n "spineQd0_6_rbj_pxGeo" -p "spineQd0_6_rbj_pxGeo_ofs";
	rename -uid "3DE4D6F1-4E96-B4EC-356B-2BBE63FED058";
	setAttr ".t" -type "double3" -4.6629367034256575e-15 -7.7661194946901985e-16 15.77981004064763 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1.4728624240130417 ;
createNode mesh -n "spineQd0_6_rbj_pxGeoShape" -p "spineQd0_6_rbj_pxGeo";
	rename -uid "AA0FACED-4E3E-5370-9EEF-DAAF144D91E9";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
	setAttr -s 24 ".vt[0:23]"  -3.20722985 -12.48713017 -12.26465607 -3.010639191 -0.025398633 -17.0442276
		 -3.20696306 12.52961254 -12.24709702 -3.57596445 14.31768322 0.19698459 -3.40998697 10.85713577 11.68676949
		 -2.85484934 -0.016997762 18.22093582 -3.41706753 -10.92032909 11.65599155 -3.43093657 -14.32501411 0.14733599
		 -0.40034595 -13.33227158 -12.49185848 -0.42751157 0.11142364 -17.76412964 -0.35260436 13.33948231 -12.39713001
		 0.77370775 16.62483978 0.12196704 0.10394599 12.21043396 12.1628046 0.17562747 -0.0060140924 17.5819416
		 0.23672201 -12.19267273 12.05879879 0.76974493 -16.77927971 0.097284235 2.75620317 -14.096262932 -12.55542183
		 1.89587307 -0.20419069 -18.65030479 2.70977664 14.030637741 -12.55523586 2.0029714108 18.10761261 -0.19423652
		 0.56512755 11.41052723 12.70939541 2.85317612 0.0058406796 16.91591263 0.90282488 -11.51371479 12.6491785
		 1.93255556 -18.13267326 -0.11989687;
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
	rename -uid "DB5510CE-4B26-0535-18D3-BEAA51AB7A74";
	setAttr ".t" -type "double3" 3.4059534153979007e-14 94.188787658831131 8.5528326603053308 ;
	setAttr ".r" -type "double3" 1.7556661841678612e-12 -91.452627621855626 89.999999999998479 ;
createNode transform -n "spineQd0_3_rbj_pxGeo" -p "spineQd0_3_rbj_pxGeo_ofs";
	rename -uid "DF97918F-43C5-DB82-69CC-CD9F76DCB3B7";
	setAttr ".t" -type "double3" -2.7200464103316339e-15 -2.7090888062517497e-15 17.149350631457903 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.3774381129235904 ;
createNode mesh -n "spineQd0_3_rbj_pxGeoShape" -p "spineQd0_3_rbj_pxGeo";
	rename -uid "CD89AD21-422C-9624-AC04-1C89EB852CF1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
	setAttr -s 24 ".vt[0:23]"  -3.060757637 -11.75553131 -11.99586582 -3.091031313 0.0042751296 -17.55052948
		 -3.081457138 11.70622635 -12.01540947 -3.11218071 17.27402878 -0.0049011698 -4.15677166 14.93750572 13.16179562
		 -3.78919268 -2.86983752 19.70754433 -3.96269202 -15.028752327 13.10875607 -3.11755395 -17.29499435 -0.0069630854
		 -0.0058562327 -11.91594028 -12.071061134 0.0078957016 0.0023855495 -17.50234795 0.0039229458 11.93126774 -12.074122429
		 -0.071517244 17.90668488 -0.053759951 -0.97275996 15.71094131 13.40925789 -1.092737675 2.46934342 20.37373352
		 -1.052634358 -15.73834991 13.37991142 -0.099397399 -17.85651588 -0.05452656 3.10715675 -11.90035152 -12.049578667
		 3.11086702 -0.0031292161 -17.35525703 3.10461378 11.96696186 -12.089551926 2.99595594 18.22665405 -0.079154707
		 2.72471619 16.63248062 13.12442207 2.58010793 2.13511992 20.98686028 2.5051527 -16.33598518 13.56708145
		 3.059737682 -18.26203346 -0.061169494;
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
	rename -uid "843A3E31-43C2-5CC4-F718-6ABA431D8914";
	setAttr ".t" -type "double3" 2.3276529327338293e-14 93.341514324431003 21.606445934766196 ;
	setAttr ".r" -type "double3" -2.5444437451708134e-14 -95.941886806653258 89.999999999999503 ;
createNode transform -n "spineQd0_4_rbj_pxGeo" -p "spineQd0_4_rbj_pxGeo_ofs";
	rename -uid "55623DCF-4A91-70B3-AB31-EE9B294E4F90";
	setAttr ".t" -type "double3" -1.8318679906315083e-15 -2.7090888062513458e-15 17.149350631457903 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.3774381129235904 ;
createNode mesh -n "spineQd0_4_rbj_pxGeoShape" -p "spineQd0_4_rbj_pxGeo";
	rename -uid "1E0DFD89-488C-928E-AC7B-27BB06B97261";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
	setAttr -s 24 ".vt[0:23]"  -3.19260526 -11.36047268 -11.75216961 -3.10514402 1.685301e-05 -17.070501328
		 -3.20978451 11.49872971 -11.74800396 -3.099755764 18.37093544 -0.093716793 -2.29474282 16.26521683 13.8943882
		 -2.87170339 2.10996842 21.11465454 -2.55852771 -16.28100586 13.72955704 -3.054615736 -18.30759048 -0.10658327
		 -0.15333118 -11.10657406 -11.64694023 0.005416072 -8.0562662e-05 -17.040184021 0.018943494 11.22177601 -11.57550716
		 0.075888425 18.15251923 -0.088085867 0.66602612 15.86030102 13.67076778 0.54626286 -0.59968203 21.32592583
		 0.51268995 -15.94724083 13.61814117 0.15106529 -18.13903618 -0.092051037 3.089872122 -11.0019664764 -11.61519527
		 3.10401249 0.002508763 -17.076154709 3.049540997 11.10890293 -11.57262707 3.19240093 17.8217659 -0.085042574
		 3.89115191 15.37497997 13.45239162 3.77477121 1.49487913 20.92043877 3.86635065 -15.3755064 13.48221779
		 3.16578746 -17.73469734 -0.066102684;
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
	rename -uid "A5EBE640-41F8-0F6B-4593-D890472C8B4A";
	setAttr ".t" -type "double3" 3.5527136788005072e-15 89.436078547765675 60.709740632658644 ;
	setAttr ".r" -type "double3" 90 -89.999999999999957 0 ;
createNode transform -n "spineQd0_7_rbj_pxGeo" -p "spineQd0_7_rbj_pxGeo_ofs";
	rename -uid "BF65DA7B-4909-C5E5-F95A-EBB2B80A09B0";
	setAttr ".t" -type "double3" 4.2038953929744512e-45 -6.3108872417680944e-30 8.1400719259215037 ;
	setAttr ".s" -type "double3" 1.2229719943053707 1.2229719943053707 1.3873713255519611 ;
createNode mesh -n "spineQd0_7_rbj_pxGeoShape" -p "spineQd0_7_rbj_pxGeo";
	rename -uid "D9E1EB83-46DA-3F8C-6698-55A2F9E9F3D4";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
	setAttr -s 24 ".vt[0:23]"  -3.079108953 -10.54623985 -11.55929279 -2.95711398 0.082921371 -16.88855743
		 -3.089583397 10.55009842 -11.47433662 -3.21731162 15.54218102 0.43013528 -2.43487835 16.29166222 12.33454132
		 -2.14780879 -0.13173021 18.35471153 -2.58154941 -16.38174057 12.31563473 -3.30122113 -15.42821312 0.4159804
		 -0.077790566 -10.54828072 -11.51981449 -0.031461053 -0.06437555 -17.54124832 0.047280096 10.60160923 -11.50710583
		 -0.27591294 15.29850578 0.51658779 1.37242019 15.17494678 12.17128181 -0.084334649 0.0083241155 17.12034416
		 1.023050904 -15.42545891 12.46841812 -0.10614412 -15.26394176 0.38025779 2.80613971 -10.32153702 -11.43929005
		 2.76527834 0.064317152 -17.97118568 2.57201862 10.33845425 -11.45564461 2.52959442 14.70145893 0.57273984
		 3.71445155 14.65261459 12.43210125 2.66345811 -1.46634829 16.53216743 3.78694797 -14.61368847 12.36046982
		 2.55687189 -14.78205681 0.5275476;
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
	rename -uid "79FEE073-4EEE-F48A-4CD1-F5BA5DB0D96F";
	setAttr ".t" -type "double3" -6.3108872417680944e-30 93.334321369926982 -35.2137506563231 ;
	setAttr ".r" -type "double3" -7.6333312355124402e-14 265.4259653497665 90 ;
createNode transform -n "spineQd0_end_pxGeo" -p "spineQd0_end_pxGeo_ofs";
	rename -uid "E4983473-42E2-4D32-D5A7-7D94BAF49482";
	setAttr ".t" -type "double3" -7.9167786444340784 -9.8299750922119634e-16 12.069261773553041 ;
	setAttr ".s" -type "double3" 3.2355171315377023 1.1751774018340413 1.3305314194568929 ;
createNode mesh -n "spineQd0_end_pxGeoShape" -p "spineQd0_end_pxGeo";
	rename -uid "C07A3B98-4585-8A82-B916-76A62B38CBD0";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
	setAttr -s 24 ".vt[0:23]"  -1.31035709 -6.24337864 -6.13751125 -1.2957319 -0.45444369 -8.86918831
		 -1.27507663 6.27739191 -6.17160702 -1.84456956 10.587924 0.12338351 -2.59536791 9.80428028 8.22055244
		 -1.83059704 1.96457255 11.20241928 -2.59290624 -9.7271843 8.25806236 -1.80032754 -10.78066254 0.34313014
		 0.071227096 -7.92557478 -7.89755917 0.08704304 -0.045294035 -11.17772484 0.090418756 7.90986395 -7.85955906
		 -0.2452123 12.84579754 -0.24915849 -0.86452246 12.5761652 8.15181351 0.055325627 0.7722134 11.42830944
		 -0.82684886 -12.61310482 8.10165787 -0.19860348 -12.77590942 -0.21916132 1.59870803 -9.31964302 -9.78888988
		 1.66999519 -0.074318804 -13.58118153 1.72547758 9.74543285 -9.54374027 2.0045938492 14.063566208 -0.23047258
		 1.62686157 15.0077810287 6.88971758 2.0059120655 0.94114512 11.54203987 1.40346158 -14.92947769 7.6218009
		 1.9750371 -14.071511269 -0.22886424;
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
	rename -uid "CF6A729A-4F74-34FF-50A9-D983174B6355";
createNode transform -n "tail0_0_rbj_pxGeo_ofs" -p "tail0_PRX";
	rename -uid "FA254259-40AF-E7B8-B521-D7B855359322";
	setAttr ".t" -type "double3" 9.4368620524908288e-16 87.335498187088518 -50.600474581131081 ;
	setAttr ".r" -type "double3" 3.2266717442400363 78.92994799814295 -86.71228474349914 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "tail0_0_rbj_pxGeo" -p "tail0_0_rbj_pxGeo_ofs";
	rename -uid "AC9567C9-47D6-C468-FF51-3E87B2C1007D";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
createNode mesh -n "tail0_0_rbj_pxGeoShape" -p "tail0_0_rbj_pxGeo";
	rename -uid "DD726D4A-4BE5-9544-D2D5-64BC574EDF2E";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
	rename -uid "FCF87A0E-4EE3-3544-EBCD-D5A42B93E7B7";
	setAttr ".t" -type "double3" 0.034666775857918615 84.259537999279587 -93.038670881093182 ;
	setAttr ".r" -type "double3" -16.624523188962367 89.107377820617842 -106.62642950187254 ;
createNode transform -n "tail0_2_rbj_pxGeo" -p "tail0_2_rbj_pxGeo_ofs";
	rename -uid "175D0F59-43EF-0644-52B7-D888318925A4";
	setAttr ".s" -type "double3" 1.4953807281370621 0.71681380375764125 0.71681380375764148 ;
createNode mesh -n "tail0_2_rbj_pxGeoShape" -p "tail0_2_rbj_pxGeo";
	rename -uid "2CD1CEF1-4797-98D1-F803-7B9D2DE4CB03";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
	setAttr -s 24 ".vt[0:23]"  -4.62287664 -3.33908868 -3.39770818 -4.60950994 0.014773136 -4.71461391
		 -4.59701109 3.23467398 -3.18455696 -4.61877918 4.30768299 -0.027870404 -4.61124516 3.13177991 2.89626575
		 -4.60804272 -0.12664051 4.20336676 -4.62143612 -3.048375607 2.9909761 -4.60186148 -4.56884813 0.077980116
		 -0.0023230077 -2.9709444 -3.17840695 -0.02501926 0.082331955 -4.4671216 -0.021038439 2.98039365 -2.96142006
		 -0.015214396 4.17536736 -0.048182283 0.010710474 2.99521613 2.71798921 -0.0079758884 -0.20195951 4.012143135
		 -0.0089640496 -2.88280344 2.88823271 0.018281648 -4.19044352 0.13883705 4.59319353 -2.83619189 -2.94590926
		 4.5767746 0.19186932 -3.99033093 4.55443954 2.80943418 -2.72406268 4.63434172 4.03017664 -0.033584762
		 4.54834366 3.010927439 2.73746681 4.57246637 -0.086130567 3.83097005 4.619802 -2.80408144 2.84388471
		 4.56179619 -4.084512711 0.11723934;
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
createNode transform -n "tail0_1_rbj_pxGeo_ofs" -p "tail0_PRX";
	rename -uid "28EB286D-4BE9-EB68-28A9-F687A2414BC3";
	setAttr ".t" -type "double3" 0.12735238949267555 84.501329045385759 -71.715280629971573 ;
	setAttr ".r" -type "double3" -1.5155434252938587 87.394076900085267 -91.517111576325831 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "tail0_1_rbj_pxGeo" -p "tail0_1_rbj_pxGeo_ofs";
	rename -uid "4C42F0AD-4153-C61C-FF42-ACA9D75D15FC";
	setAttr ".s" -type "double3" 1.4953807281370617 0.71681380375764125 0.71681380375764125 ;
createNode mesh -n "tail0_1_rbj_pxGeoShape" -p "tail0_1_rbj_pxGeo";
	rename -uid "4606A6CA-4FB0-DB39-07AC-5A94A2AF7A51";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
	setAttr -s 24 ".vt[0:23]"  -4.58053303 -4.18585634 -4.017405987 -4.58312368 -0.084400035 -5.88213348
		 -4.5946722 3.8521471 -3.91561651 -4.59382677 5.31474257 -0.0098082107 -4.60152817 3.52407289 3.47681904
		 -4.60075903 -0.030074561 4.83669901 -4.59587622 -3.75352073 3.74130678 -4.57819986 -5.71150732 0.17659712
		 0.005840064 -3.88885045 -3.79617238 0.0083939238 -0.14758059 -5.72867346 0.0014009723 3.63230848 -3.63164687
		 0.0044227066 4.72077274 0.0024775465 -0.001373954 3.27369642 3.14011979 -0.018170079 -0.074598245 4.52950621
		 -0.0054769292 -3.37446904 3.39947915 0.0014000817 -5.19418335 -0.012280072 4.60453749 -3.84207129 -3.76841927
		 4.58641005 -0.12315568 -5.6873107 4.60010004 3.66522622 -3.66482639 4.60535192 4.52744389 -0.016869137
		 4.57116318 3.11171913 2.82930636 4.58106709 -0.093524821 3.97071385 4.57424784 -3.071443319 3.20995188
		 4.59632587 -4.89503622 -0.088021524;
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
	rename -uid "431D06C5-44F2-4D0B-AA0D-02850968CBCA";
	setAttr ".t" -type "double3" 7.7271522513910782e-14 82.968526548673822 -135.6637415678357 ;
	setAttr ".r" -type "double3" 89.999999999999972 89.999999999999574 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "tail0_4_rbj_pxGeo" -p "tail0_4_rbj_pxGeo_ofs";
	rename -uid "14E841B0-4EAD-D4E2-1314-C79B98939E69";
	setAttr ".s" -type "double3" 1.4953807281370617 0.71681380375764125 0.71681380375764125 ;
createNode mesh -n "tail0_4_rbj_pxGeoShape" -p "tail0_4_rbj_pxGeo";
	rename -uid "A3AF5281-4B7D-25B7-3657-7DBA001AEEF0";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
	setAttr -s 24 ".vt[0:23]"  -4.64177608 -2.72575879 -2.18754721 -4.65544939 0.23547338 -2.82659245
		 -4.6208477 2.4766078 -2.19467831 -4.60927677 3.5292623 -0.2982015 -4.62549067 2.43097186 1.52349424
		 -4.52274704 -0.20764349 2.044577837 -4.64195967 -1.9208566 1.7339797 -4.55763435 -3.50080538 -0.071686916
		 -0.10715134 -2.50384998 -1.79174805 -0.064641684 0.11538965 -2.38890052 -0.10273303 2.37162971 -1.6771071
		 0.0042247679 3.48652744 -0.32195774 0.032969292 2.3514502 1.72409189 0.00067379343 -0.39957538 2.26697326
		 -0.033448212 -2.38604283 1.52625096 -0.062672324 -3.50244117 0.22740556 4.3724947 -1.97982848 -1.2538904
		 4.36363745 0.0033235119 -1.8230505 4.46583033 2.13201404 -1.17707634 4.48389101 2.68503237 -0.12245633
		 4.3917799 1.87819684 1.78450429 4.35956621 -0.034629773 2.12827826 4.42734098 -1.73353541 1.76281297
		 4.38540268 -2.75648141 0.36044908;
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
	rename -uid "B7A93AA6-4ADA-F6F0-6F80-BFB236B1C323";
	setAttr ".t" -type "double3" -0.00040400749311060694 83.35718522545136 -114.34376535492616 ;
	setAttr ".r" -type "double3" 0.47180805678080684 87.095220800359613 -89.527584980496584 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "tail0_3_rbj_pxGeo" -p "tail0_3_rbj_pxGeo_ofs";
	rename -uid "71A479AA-48B8-0963-23A3-85960655755E";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 1.3877787807814457e-17 1.4210854715202004e-14 ;
	setAttr ".s" -type "double3" 1.4953807281370617 0.71681380375764125 0.71681380375764114 ;
createNode mesh -n "tail0_3_rbj_pxGeoShape" -p "tail0_3_rbj_pxGeo";
	rename -uid "7C7C3882-4572-22F2-3221-BEB8B609F73D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
	setAttr -s 24 ".vt[0:23]"  -4.62868357 -2.72324443 -3.014922857 -4.60342884 0.051828671 -4.020185471
		 -4.58820772 2.90772414 -2.78505635 -4.5992589 3.92458177 -0.21361057 -4.63289928 2.82135463 2.1963594
		 -4.68373775 -0.26100761 3.16760945 -4.63542032 -2.54708409 2.29108405 -4.5804925 -4.054975986 0.089966834
		 0.0034308215 -2.85624981 -2.98701167 -0.062522762 0.016951405 -3.72678161 -0.044543821 2.79045868 -2.75858855
		 -0.04292015 3.90031815 -0.33218369 -0.0094335461 2.77610731 1.7574873 -0.087968834 -0.11082961 2.53164887
		 -0.046564937 -2.42013931 1.944888 -0.0094461888 -3.92545772 -0.10274586 4.57390928 -2.82583427 -2.81601143
		 4.5894742 0.16343291 -3.6955018 4.5680089 2.77221179 -2.70016026 4.59718418 3.72323179 -0.3179822
		 4.55569029 2.56727076 1.29003429 4.52337027 -0.11048417 1.91831398 4.57158041 -1.977265 1.64764786
		 4.54819965 -3.66899157 -0.41604075;
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
	rename -uid "DC207353-44DD-DBDD-FA74-48886E9DFD68";
createNode transform -n "neckQd0_0_rbj_pxGeo_ofs" -p "neckQd0_PRX";
	rename -uid "D1C73C2B-45FF-2AF4-E39F-28A33F44A375";
	setAttr ".t" -type "double3" 1.4432899320127073e-14 89.19503967441986 64.830668500115692 ;
	setAttr ".r" -type "double3" -1.7671633006061347e-14 -79.631358420106395 89.999999999999929 ;
createNode transform -n "neckQd0_0_rbj_pxGeo" -p "neckQd0_0_rbj_pxGeo_ofs";
	rename -uid "9DF66ABF-4D9B-750F-6A08-8AAE08CF8470";
	setAttr ".t" -type "double3" 1.5099033134902129e-14 -9.4663308626521431e-30 3.3635928033003513 ;
	setAttr ".s" -type "double3" 1 3.6621229211405213 4.1063524881049416 ;
createNode mesh -n "neckQd0_0_rbj_pxGeoShape" -p "neckQd0_0_rbj_pxGeo";
	rename -uid "CD5859AA-4690-A7D5-8905-2FB987479018";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
	setAttr -s 24 ".vt[0:23]"  -1.91390514 -3.35001969 -3.23150587 -2.11886668 -0.10003179 -4.91569948
		 -1.96305799 3.36152458 -3.24313617 -1.91254306 4.57256126 -0.021949545 2.01894784 4.75489187 3.32174611
		 0.62361127 0.040054899 5.046488762 1.65079391 -4.80796957 3.31042862 -1.95769203 -4.53944683 -0.01552214
		 0.084837072 -3.2823472 -3.19963408 0.090753965 -0.075479425 -4.9119463 0.13923042 3.25743723 -3.20023799
		 -0.0015881972 4.45824528 0.00036895153 4.030965328 4.2892561 3.45938683 1.58524489 0.055735789 4.77478647
		 3.92104816 -4.31345415 3.46884036 -0.0044678571 -4.45295811 0.0014041377 1.92326343 -3.10276556 -3.13189197
		 1.774405 -0.032186087 -4.90768147 1.95159423 3.11249733 -3.13528538 1.90937042 4.34393072 0.022687614
		 5.54789352 3.75844693 3.4433341 2.40203381 0.040365942 4.53927755 5.57215738 -3.74093866 3.45642042
		 1.94351971 -4.36770582 0.02353492;
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
	rename -uid "D519F3F9-4272-E270-BDE6-AF88177F0609";
	setAttr ".t" -type "double3" 2.3354126408929631e-15 96.650589287123125 83.10468749783071 ;
	setAttr ".r" -type "double3" -5.4152409639483638e-15 -54.031957829440465 90.000000000000057 ;
createNode transform -n "neckQd0_2_rbj_pxGeo" -p "neckQd0_2_rbj_pxGeo_ofs";
	rename -uid "B6EBAC88-4D47-8DB5-303F-7A95855A621F";
	setAttr ".t" -type "double3" -0.33056482354513395 2.9435284856419749e-16 0.86396478119521392 ;
	setAttr ".r" -type "double3" 0 -20.937538971107038 0 ;
	setAttr ".s" -type "double3" 1 2.4907726850661009 3.0943796044126546 ;
createNode mesh -n "neckQd0_2_rbj_pxGeoShape" -p "neckQd0_2_rbj_pxGeo";
	rename -uid "E077B67D-40EC-5050-F75C-139B413EF610";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
	setAttr -s 24 ".vt[0:23]"  -2.012092829 -3.17742014 -3.16121173 -1.97767484 -0.02780165 -4.81942129
		 -2.013313055 3.17845154 -3.16223407 -2.021978378 3.98792267 0.014418668 -1.91955316 3.35615706 3.22212529
		 -1.86631489 -0.075907938 5.072237968 -1.93676674 -3.33892703 3.22909451 -2.21593046 -3.95709229 0.0088183926
		 -0.029008616 -3.23413467 -3.18565679 0.027986687 -0.026481424 -4.8023572 -0.023721667 3.24731731 -3.18582082
		 0.10791229 3.95060635 -0.017013187 0.037730541 3.22614765 3.17786741 0.2553058 -0.12166519 4.96004963
		 0.046312369 -3.22387981 3.18189502 0.050662797 -3.97682142 -0.020206837 1.97488785 -3.30307508 -3.20802498
		 2.0041520596 -0.0061451802 -4.78012276 1.98303151 3.31516528 -3.2191 2.0059709549 3.96386862 -0.041703522
		 1.99872005 3.12760377 3.14248824 2.1819911 -0.076873153 4.87776613 2.0047793388 -3.10314918 3.12777066
		 1.91642678 -3.94720626 -0.041720692;
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
	rename -uid "DC1357EC-4671-C8C7-AEA1-FFBBD80FE5D9";
	setAttr ".t" -type "double3" -1.7763568394002503e-15 102.88318489164752 90.661383768901018 ;
	setAttr ".r" -type "double3" 0 -48.724430538921574 90 ;
createNode transform -n "neckQd0_3_rbj_pxGeo" -p "neckQd0_3_rbj_pxGeo_ofs";
	rename -uid "D7222520-4B38-3045-FA59-08AB2E60CCC6";
	setAttr ".t" -type "double3" -3.3610034355483966 0 5.9521859196995051 ;
	setAttr ".r" -type "double3" 0 -29.451986980500553 0 ;
	setAttr ".s" -type "double3" 1 2.4907726850661009 3.0943796044126546 ;
createNode mesh -n "neckQd0_3_rbj_pxGeoShape" -p "neckQd0_3_rbj_pxGeo";
	rename -uid "434F9480-449F-7BBC-3D9A-83A6E2C5C1C9";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
	setAttr -s 24 ".vt[0:23]"  -1.92649257 -3.58651328 -3.29006505 -1.72972119 0.0017811315 -5.23902702
		 -1.90532136 3.59520864 -3.29712939 -1.63846612 4.17282343 -0.0093449121 -1.79726887 2.95134902 3.015349865
		 -2.020183802 0.028539078 4.29014635 -1.76175463 -2.94791889 3.019956589 -1.7280072 -4.16660452 0.011656681
		 -0.057714775 -3.57706141 -3.29477596 0.021235621 -0.052718274 -5.18051147 0.048147991 3.54406452 -3.28179526
		 -0.011050916 4.47008801 -0.0010279065 -0.021499483 3.17094517 3.16396642 0.042219657 0.0064677037 4.38914347
		 0.0011352776 -3.1528585 3.15317464 -0.012297681 -4.46792555 -0.00079989509 1.63006318 -3.62843895 -3.34229255
		 2.028118849 -0.052267563 -5.17435265 1.44958508 3.51395583 -3.31221294 1.43469608 4.82241249 -0.049454067
		 1.76147175 3.34772158 3.32573581 1.88217759 -0.0082922587 4.56640053 1.76785457 -3.33841968 3.31588244
		 1.42633414 -4.82806683 -0.03778493;
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
	rename -uid "15607B42-499B-D07F-9F39-2BAB82C4B3FC";
	setAttr ".t" -type "double3" 1.0201081673862165e-14 91.838977340153377 74.394750170138224 ;
	setAttr ".r" -type "double3" -8.7217858055785909e-15 -68.612858326536241 90.000000000000142 ;
createNode transform -n "neckQd0_1_rbj_pxGeo" -p "neckQd0_1_rbj_pxGeo_ofs";
	rename -uid "F68BAD19-47BF-D35F-8497-128308131E23";
	setAttr ".t" -type "double3" 0 5.0487097934144756e-29 0 ;
	setAttr ".s" -type "double3" 1 2.4907726850661009 3.0943796044126546 ;
createNode mesh -n "neckQd0_1_rbj_pxGeoShape" -p "neckQd0_1_rbj_pxGeo";
	rename -uid "9DF8BBDB-48BA-0692-76B0-2D94D2620A2F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
	setAttr -s 24 ".vt[0:23]"  -1.75803792 -3.54780841 -3.25571918 -1.79253602 0.024849324 -5.50689459
		 -1.60684931 3.56115794 -3.26851797 -1.83779407 4.62991667 -0.031298168 -0.76604229 3.90383124 3.57996726
		 -0.97146863 0.032845508 5.10971594 -0.77919954 -3.90308356 3.57928967 -1.77877128 -4.66187 -0.024979856
		 0.13835377 -3.37270117 -3.21042085 0.14481744 0.00070962275 -5.47395706 0.049309444 3.36360884 -3.20876098
		 -0.015361422 4.42752314 0.0047402726 0.48311892 3.69557858 3.47537804 0.44741899 0.014918483 4.9795599
		 0.58577991 -3.6719234 3.47048712 -0.013879461 -4.42368889 0.0042340839 2.03051281 -3.27979088 -3.18415117
		 2.35084319 -0.044048753 -5.39683151 2.046882391 3.26086521 -3.17712522 1.94695425 4.28055286 0.021846423
		 2.39858556 3.53056526 3.33853149 2.068141699 0.0027573376 4.86608887 2.38670135 -3.5398953 3.34168506
		 1.9242425 -4.2944231 0.01567265;
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
	rename -uid "E6C585DA-4405-FAE8-2FC2-E08C41312A44";
createNode transform -n "rtLegQd0_hip_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "3192364A-4984-2EB2-A142-BEB4B3C4C1A7";
	setAttr ".t" -type "double3" -10.493951323749435 88.910115751485861 -37.624494233150855 ;
	setAttr ".r" -type "double3" -2.4533739092377149 132.27714362201661 84.457049036977722 ;
createNode transform -n "rtLegQd0_hip_pxGeo" -p "rtLegQd0_hip_pxGeo_ofs";
	rename -uid "CDA640AC-4A6A-8F36-D210-8D8E1B65E451";
	setAttr ".t" -type "double3" -2.8421709430404007e-14 8.8817841970012523e-15 0 ;
	setAttr ".r" -type "double3" 179.99999999999997 0 0 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999956 -0.99999999999999978 ;
createNode mesh -n "rtLegQd0_hip_pxGeoShape" -p "rtLegQd0_hip_pxGeo";
	rename -uid "FFDE4B98-4EA8-F2A0-B1E4-DF836A7B71EF";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
	setAttr -s 24 ".vt[0:23]"  -6.8175087 -4.15588045 -4.2207942 -7.45775938 -3.39300609 -6.6712904
		 -8.023679733 -3.4904108 -5.6895318 -8.49359703 3.35842061 5.23817444 -7.29897022 3.5102253 5.69143105
		 -6.35757542 0.91617322 4.5759697 -5.95558977 -2.082066536 2.31847882 -6.12915468 -3.92765546 -0.96453655
		 -0.067830667 -5.52437782 -4.52120972 -0.26191467 -4.95555592 -7.079627514 -0.49459171 -5.11694336 -6.28409052
		 -1.43830633 3.077021122 6.80749178 -0.57944059 3.064376831 6.98352957 0.058291148 0.32286161 5.51552105
		 0.11111908 -2.8617208 2.85949636 -0.012569202 -4.95022583 -0.49142599 6.90515852 -5.31178617 -4.12182951
		 7.16466904 -5.43780231 -5.39238977 8.27711296 -4.91293287 -2.7979846 6.65240097 1.54456007 6.76762486
		 6.75759506 2.26474476 7.24445295 6.830791 0.16945972 5.81183386 6.7065444 -2.95720673 2.90021849
		 6.56310511 -4.70376301 -0.53265899;
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
	rename -uid "913CEE67-4C5D-4C6D-0A9F-80BC424F28BA";
	setAttr ".t" -type "double3" -11.699584689978774 67.856362112408661 -38.658690681397225 ;
	setAttr ".r" -type "double3" 8.6944995841574642 -163.9728847698228 87.447398564715911 ;
createNode transform -n "rtLegQd0_upr_pxGeo" -p "rtLegQd0_upr_pxGeo_ofs";
	rename -uid "DE0F517A-437B-58FC-8906-1AA856834D9C";
	setAttr ".t" -type "double3" -4.0468250972480746e-09 1.0658141036401503e-14 3.0240974306814081 ;
	setAttr ".r" -type "double3" -179.99999999999994 0 0 ;
	setAttr ".s" -type "double3" 1 1 -1.9809539480787939 ;
createNode mesh -n "rtLegQd0_upr_pxGeoShape" -p "rtLegQd0_upr_pxGeo";
	rename -uid "4EE87530-4AD8-0E11-6CEC-F1904082F3A2";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "rtLegQd0_toe01_2_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "E54C50E1-4EF6-3020-3B3F-A3BD7BE84BBF";
	setAttr ".t" -type "double3" -8.0739003091991712 5.261714267371274 -40.548561767698025 ;
	setAttr ".r" -type "double3" -38.291108990681614 -86.85515257096101 128.24911963242778 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "rtLegQd0_toe01_2_pxGeo" -p "rtLegQd0_toe01_2_pxGeo_ofs";
	rename -uid "D56A57A4-49A6-7456-5DFB-AB8F94BBB8EC";
	setAttr ".t" -type "double3" 7.0343730840249918e-12 3.2397196036981768e-11 3.0730973321624333e-13 ;
	setAttr ".r" -type "double3" 179.99999999999221 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 -1.0000000000000004 ;
createNode mesh -n "rtLegQd0_toe01_2_pxGeoShape" -p "rtLegQd0_toe01_2_pxGeo";
	rename -uid "CF182CDF-4B5A-E96E-C9A7-13993DDDEA9C";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "rtLegQd0_toe01_1_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "09D0F7F4-4A43-9A45-9829-98A30259AA92";
	setAttr ".t" -type "double3" -8.2089775517632724 9.7458585865808409 -46.414929378114323 ;
	setAttr ".r" -type "double3" -185.27542633128195 -33.099320948314094 -87.113407842937974 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "rtLegQd0_toe01_1_pxGeo" -p "rtLegQd0_toe01_1_pxGeo_ofs";
	rename -uid "1D3984ED-4818-ECB6-5073-BD8DAADC371B";
	setAttr ".t" -type "double3" 2.4016344468691386e-12 -2.4562751832490903e-10 0.88060252075999301 ;
	setAttr ".r" -type "double3" -179.36807936792775 -7.826643173304233 -1.8104022098323211 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1.7114218070448231 -1.7114218070448233 ;
createNode mesh -n "rtLegQd0_toe01_1_pxGeoShape" -p "rtLegQd0_toe01_1_pxGeo";
	rename -uid "280A9A44-402E-EA31-B7A8-69A1C0F65BF5";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "rtLegQd0_toe02_2_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "B603874F-4F5F-5AF4-0A46-79991E6BC460";
	setAttr ".t" -type "double3" -11.081776950404894 5.4929097107694398 -40.55648131174847 ;
	setAttr ".r" -type "double3" -45.706634207074956 -73.239486238178586 134.46312443183709 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "rtLegQd0_toe02_2_pxGeo" -p "rtLegQd0_toe02_2_pxGeo_ofs";
	rename -uid "D847AFA5-4A8C-6B44-E21E-94B60CFEB791";
	setAttr ".t" -type "double3" 3.2827074392116629e-12 3.2603253430352197e-11 6.9100281052669743e-13 ;
	setAttr ".r" -type "double3" 179.99999999996325 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1 ;
createNode mesh -n "rtLegQd0_toe02_2_pxGeoShape" -p "rtLegQd0_toe02_2_pxGeo";
	rename -uid "254A423F-4F14-81EE-6A4F-BFAE1EC6B350";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "rtLegQd0_toe01_3_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "0889D17C-4086-9D4F-5E09-0BA58A7A69C8";
	setAttr ".t" -type "double3" -8.0896263430854098 3.4413534497456091 -37.286699456718331 ;
	setAttr ".r" -type "double3" -191.68672874044751 -11.698557885126721 -87.598356740482458 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 0.99999999999999978 ;
createNode transform -n "rtLegQd0_toe01_3_pxGeo" -p "rtLegQd0_toe01_3_pxGeo_ofs";
	rename -uid "75FCB977-4FFA-FDFD-FCB3-709DDB05D424";
	setAttr ".t" -type "double3" -5.4001247917767614e-13 4.2862158267098494e-11 2.5721647034515627e-12 ;
	setAttr ".r" -type "double3" -179.99999999986019 0 0 ;
	setAttr ".s" -type "double3" 1 1 -1.0000000000000004 ;
createNode mesh -n "rtLegQd0_toe01_3_pxGeoShape" -p "rtLegQd0_toe01_3_pxGeo";
	rename -uid "9AD2536F-489B-6F96-11E8-3FA6A3A6631F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "rtLegQd0_toe01_4_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "3006DD63-4D3A-118A-87F3-CB956D176F42";
	setAttr ".t" -type "double3" -8.2876934396848885 1.4976302088479392 -35.210252782440755 ;
	setAttr ".r" -type "double3" 90.000000000000455 -99.484062795794216 -5.0888874903416268e-13 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "rtLegQd0_toe01_4_pxGeo" -p "rtLegQd0_toe01_4_pxGeo_ofs";
	rename -uid "1F14ABDF-404E-D25E-E9AB-5C8F86127FC1";
	setAttr ".t" -type "double3" 1.3251622021925868e-11 4.7217341148098058e-11 -4.8849813083506888e-15 ;
	setAttr ".r" -type "double3" -179.99999999999986 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 -1 ;
createNode mesh -n "rtLegQd0_toe01_4_pxGeoShape" -p "rtLegQd0_toe01_4_pxGeo";
	rename -uid "B1BA232E-45F3-23AE-AC30-7890C2A88D65";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "rtLegQd0_toe02_1_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "D3D8CB3E-4F86-B0C5-60BB-7D9FFC3D3625";
	setAttr ".t" -type "double3" -10.160911437220898 9.6342922846892662 -45.978998564365064 ;
	setAttr ".r" -type "double3" 187.21667464989855 -25.536330966343737 -93.124444016985066 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "rtLegQd0_toe02_1_pxGeo" -p "rtLegQd0_toe02_1_pxGeo_ofs";
	rename -uid "37AAD489-41D7-E272-64AA-01AD35B4659B";
	setAttr ".t" -type "double3" 5.1514348342607263e-13 -2.6468782721167372e-10 0.88060252076260781 ;
	setAttr ".r" -type "double3" 179.6436504541382 -8.0276621341452437 -0.42445520069360798 ;
	setAttr ".s" -type "double3" 1 1.7114218070448237 -1.7114218070448235 ;
createNode mesh -n "rtLegQd0_toe02_1_pxGeoShape" -p "rtLegQd0_toe02_1_pxGeo";
	rename -uid "682D8F77-4B66-0B06-DC9B-6DBFC524C150";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "rtLegQd0_toe02_4_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "668B6F4B-4D20-38B8-C78B-31B35BCD4DBC";
	setAttr ".t" -type "double3" -12.241788045248644 1.4222127032144467 -34.583218881913453 ;
	setAttr ".r" -type "double3" 89.999999999999147 -99.484062795794372 8.1422199845466029e-13 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd0_toe02_4_pxGeo" -p "rtLegQd0_toe02_4_pxGeo_ofs";
	rename -uid "5A016A15-4B9B-C6C5-4724-889271AA4317";
	setAttr ".t" -type "double3" 1.4210854715202004e-12 5.1176840543121216e-11 9.3258734068513149e-15 ;
	setAttr ".r" -type "double3" -179.99999999999915 0 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 -1 ;
createNode mesh -n "rtLegQd0_toe02_4_pxGeoShape" -p "rtLegQd0_toe02_4_pxGeo";
	rename -uid "A682321D-43C5-B651-BDDC-EF9047C62A17";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
	rename -uid "2524F0EF-4C82-CE19-4279-919F2F45F5A2";
	setAttr ".t" -type "double3" -14.069078640829686 5.6094830101025783 -41.127989535278509 ;
	setAttr ".r" -type "double3" 115.75920572332247 -109.51720397765077 -27.110505619380437 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegQd0_toe03_2_pxGeo" -p "rtLegQd0_toe03_2_pxGeo_ofs";
	rename -uid "A75BFCFE-4E86-AD3B-BE87-4BA96B39DBC0";
	setAttr ".t" -type "double3" -2.8776980798284058e-12 3.3232083751499886e-11 -4.5297099404706387e-13 ;
	setAttr ".r" -type "double3" 179.99999999997272 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 -1.0000000000000002 ;
createNode mesh -n "rtLegQd0_toe03_2_pxGeoShape" -p "rtLegQd0_toe03_2_pxGeo";
	rename -uid "521E72FA-4673-C680-57B0-B7ACF8F9253F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "rtLegQd0_toe02_3_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "14403658-4DBD-03CB-3685-98B291C7E373";
	setAttr ".t" -type "double3" -11.851086069067348 3.7928853012820114 -36.846595547137788 ;
	setAttr ".r" -type "double3" 190.99817248144888 -13.955319442962304 -92.683476511496892 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "rtLegQd0_toe02_3_pxGeo" -p "rtLegQd0_toe02_3_pxGeo_ofs";
	rename -uid "C08A8144-4E08-F555-A414-D29B461F87FF";
	setAttr ".t" -type "double3" 5.9507954119908391e-13 4.4234838014745037e-11 -2.3021584638627246e-12 ;
	setAttr ".r" -type "double3" -179.99999999985053 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000007 -1.0000000000000002 ;
createNode mesh -n "rtLegQd0_toe02_3_pxGeoShape" -p "rtLegQd0_toe02_3_pxGeo";
	rename -uid "863278B5-4910-9EED-4655-7694D23085CF";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "rtLegQd0_toe03_1_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "A3E5904A-4D8B-2451-3626-49AAC1032444";
	setAttr ".t" -type "double3" -12.166608407390394 9.8200984344794762 -46.36502872834145 ;
	setAttr ".r" -type "double3" 205.71025593672735 -24.801452619385419 -101.41854470776757 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "rtLegQd0_toe03_1_pxGeo" -p "rtLegQd0_toe03_1_pxGeo_ofs";
	rename -uid "F3EB9345-482F-AE98-EE60-90B25340BC42";
	setAttr ".t" -type "double3" -2.8066438062523957e-13 -2.6087221272064198e-10 0.88060252076422785 ;
	setAttr ".r" -type "double3" 178.45206037590268 -7.7345191010990995 1.7080566802645596 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.7114218070448242 -1.7114218070448248 ;
createNode mesh -n "rtLegQd0_toe03_1_pxGeoShape" -p "rtLegQd0_toe03_1_pxGeo";
	rename -uid "6F34E335-41B6-940C-991C-068E8D70FE49";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
	rename -uid "0DC73E6C-403B-2E46-B1D0-4F9A686AB21E";
	setAttr ".t" -type "double3" -14.977359640583893 3.7599118581410131 -37.437618078021451 ;
	setAttr ".r" -type "double3" -184.02132368543474 -15.95458786009215 -88.892956316923886 ;
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000002 1 ;
createNode transform -n "rtLegQd0_toe03_3_pxGeo" -p "rtLegQd0_toe03_3_pxGeo_ofs";
	rename -uid "39C60126-4DE7-7789-E040-329ED1E39067";
	setAttr ".t" -type "double3" -5.0661697059695143e-12 4.092548522294237e-11 1.7699619547784096e-11 ;
	setAttr ".r" -type "double3" -179.99999999984871 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 -1.0000000000000002 ;
createNode mesh -n "rtLegQd0_toe03_3_pxGeoShape" -p "rtLegQd0_toe03_3_pxGeo";
	rename -uid "30BBFD7C-43E9-A1A1-E76B-BEA3ED70A9BA";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "rtLegQd0_toe04_1_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "5CEAABBF-43ED-AAAB-741A-92ABBF0B0675";
	setAttr ".t" -type "double3" -13.380723962443902 9.7825469044068907 -47.829924114972464 ;
	setAttr ".r" -type "double3" 215.05441246036816 -28.663837567798396 -108.6005427986954 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "rtLegQd0_toe04_1_pxGeo" -p "rtLegQd0_toe04_1_pxGeo_ofs";
	rename -uid "DFE435F0-4AA6-FC56-6C6E-9EAD29A86BD7";
	setAttr ".t" -type "double3" -2.3518964553659316e-12 -2.4486013217028813e-10 0.88060252076715884 ;
	setAttr ".r" -type "double3" 177.71850996525563 -7.3969887924361606 2.3581393965329593 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1.7114218070448235 -1.7114218070448237 ;
createNode mesh -n "rtLegQd0_toe04_1_pxGeoShape" -p "rtLegQd0_toe04_1_pxGeo";
	rename -uid "A644AC32-445C-99E6-FBBB-FD9812955DA7";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "rtLegQd0_toe03_4_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "56732305-4A0E-1B35-6A9C-B6B2F0781BF4";
	setAttr ".t" -type "double3" -15.211775113259995 1.4222127088078793 -35.09555546608906 ;
	setAttr ".r" -type "double3" 89.999999999999773 -99.484062795794216 1.7811106216195694e-13 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "rtLegQd0_toe03_4_pxGeo" -p "rtLegQd0_toe03_4_pxGeo_ofs";
	rename -uid "A0873538-466E-738B-AE65-48883D3E5810";
	setAttr ".t" -type "double3" -8.0220274867315311e-12 5.1155524261048413e-11 4.6629367034256575e-15 ;
	setAttr ".r" -type "double3" 179.99999999999957 0 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 -0.99999999999999978 ;
createNode mesh -n "rtLegQd0_toe03_4_pxGeoShape" -p "rtLegQd0_toe03_4_pxGeo";
	rename -uid "59468DDE-4068-AC0E-5F42-A8A8BD2BC924";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "rtLegQd0_toe04_4_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "B551AD27-4BDF-7562-2F12-109C8392AA8A";
	setAttr ".t" -type "double3" -17.653339165135936 1.4222127229137933 -38.435192364452192 ;
	setAttr ".r" -type "double3" 89.999999999999829 -108.42857431114597 2.2899993706537323e-13 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "rtLegQd0_toe04_4_pxGeo" -p "rtLegQd0_toe04_4_pxGeo_ofs";
	rename -uid "5815D3D5-499F-813D-F923-C3B03CFFD587";
	setAttr ".t" -type "double3" -1.049826892085548e-11 4.4238390728423838e-11 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 179.99999999999909 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 -1.0000000000000004 ;
createNode mesh -n "rtLegQd0_toe04_4_pxGeoShape" -p "rtLegQd0_toe04_4_pxGeo";
	rename -uid "6F7CBD84-4815-33B0-92BF-5AA290F2943C";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "rtLegQd0_toe04_2_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "512BDD0E-461E-E7EB-4E1B-8DB452E4D2C7";
	setAttr ".t" -type "double3" -16.044943408359011 5.1357855914732715 -42.972855855674247 ;
	setAttr ".r" -type "double3" 91.728452742622736 -116.79396990944034 -1.9362028476151525 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "rtLegQd0_toe04_2_pxGeo" -p "rtLegQd0_toe04_2_pxGeo_ofs";
	rename -uid "BFA5AFBF-4BC4-A1F5-72AC-F3B3E3E6362E";
	setAttr ".t" -type "double3" -5.609734898825991e-12 3.0865976441418752e-11 -1.0835776720341528e-13 ;
	setAttr ".r" -type "double3" 179.99999999999761 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 -1.0000000000000004 ;
createNode mesh -n "rtLegQd0_toe04_2_pxGeoShape" -p "rtLegQd0_toe04_2_pxGeo";
	rename -uid "DA0561A8-4001-9151-5BD5-14A8F2D89C24";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "rtLegQd0_toe04_3_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "89C0654F-47F7-776A-C0FA-F8901AE0C911";
	setAttr ".t" -type "double3" -17.124933519604831 3.297389344390905 -40.431103802303447 ;
	setAttr ".r" -type "double3" -181.21095155268679 -11.634987487319762 -89.755745173701598 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "rtLegQd0_toe04_3_pxGeo" -p "rtLegQd0_toe04_3_pxGeo_ofs";
	rename -uid "9A2FFF8A-46DF-D964-0AE7-B5BF8DE82C7D";
	setAttr ".t" -type "double3" -4.6505022055498557e-12 3.2230218494078144e-11 2.248157215944957e-11 ;
	setAttr ".r" -type "double3" -179.99999999986193 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 -1 ;
createNode mesh -n "rtLegQd0_toe04_3_pxGeoShape" -p "rtLegQd0_toe04_3_pxGeo";
	rename -uid "16D8DE86-4437-57DD-52CD-C2A662912BD7";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "rtLegQd0_radius_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "F593B21C-473F-8B25-E8D7-9F808074D3F8";
	setAttr ".t" -type "double3" -11.070648040463704 36.754872138239477 -42.696166153103945 ;
	setAttr ".r" -type "double3" 9.2656794011891588 153.84847069425501 93.894877813692446 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "rtLegQd0_radius_pxGeo" -p "rtLegQd0_radius_pxGeo_ofs";
	rename -uid "4000B65F-4EB9-2146-B034-828458804208";
	setAttr ".t" -type "double3" -3.3327513726533198e-07 5.4315307806973578e-10 1.7049012681794906 ;
	setAttr ".r" -type "double3" 179.99999999994813 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 -1.7378058012951949 ;
createNode mesh -n "rtLegQd0_radius_pxGeoShape" -p "rtLegQd0_radius_pxGeo";
	rename -uid "EF75A9A7-413D-40D8-4EF3-01999271839A";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
createNode transform -n "rtLegQd0_patella_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "BA64E9CE-45BC-10AC-D161-5C8192CEFBAE";
	setAttr ".t" -type "double3" -12.657991576335712 53.997846198826551 -35.483614068169466 ;
	setAttr ".r" -type "double3" -9.4619846719165679 -27.896098309686462 94.32368520131854 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000002 ;
createNode transform -n "rtLegQd0_ulna_pxGeo_ofs" -p "rtLegQd0_PRX";
	rename -uid "3D8B05EE-4507-E9DA-7275-96B180B579EA";
	setAttr ".t" -type "double3" -13.026544449529263 35.500465095847211 -45.088960362083526 ;
	setAttr ".r" -type "double3" -170.44619444325269 22.546932224192261 -85.566803408202361 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "rtLegQd0_ulna_pxGeo" -p "rtLegQd0_ulna_pxGeo_ofs";
	rename -uid "A5350D3C-4709-BC0F-BF59-F6A8F0E2FEA0";
	setAttr ".t" -type "double3" -3.3538658783527353e-07 -5.6862496933263174e-09 1.7049012479481647 ;
	setAttr ".r" -type "double3" 179.99999999905884 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 -1.7378058012951942 ;
createNode mesh -n "rtLegQd0_ulna_pxGeoShape" -p "rtLegQd0_ulna_pxGeo";
	rename -uid "3649E468-40F9-98C4-E90C-DF8FC5F802EC";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[2:3]" "f[6:7]" "f[10:11]" "f[14:17]" "f[6:7]" "f[10:11]" "f[14:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[4:5]" "f[8:9]" "f[12:13]";
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
select -ne :ikSystem;
	setAttr -s 3 ".sol";
select -ne :hyperGraphLayout;
	setAttr -s 68 ".hyp";
// End of AAA.ma
