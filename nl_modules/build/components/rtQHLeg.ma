//Maya ASCII 2023 scene
//Name: rtQHLeg.ma
//Last modified: Wed, Dec 04, 2024 06:34:40 PM
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
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "197DB690-41B5-83EE-50B5-B2B9B8DB3B93";
createNode transform -n "module_grp";
	rename -uid "FFD7ED5C-461C-2E46-183E-4E998FC66BE7";
	setAttr -cb on ".ro";
createNode transform -n "master_guide" -p "module_grp";
	rename -uid "9FAFA929-4C19-C296-ABAB-C3B024C35266";
	addAttr -ci true -sn "wsMirrorAxis" -ln "wsMirrorAxis" -at "float";
	addAttr -ci true -sn "patellaBone" -ln "patellaBone" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "toeBones" -ln "toeBones" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "twistBones" -ln "twistBones" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -20 0 -75 ;
	setAttr -cb on ".ro";
	setAttr -l on ".wsMirrorAxis";
	setAttr -cb on ".patellaBone" yes;
	setAttr -cb on ".toeBones" yes;
	setAttr -cb on ".twistBones" yes;
createNode transform -n "palm_heelPos_guide" -p "master_guide";
	rename -uid "49460D50-4B57-FCC2-2C0B-12A4116F63AF";
	addAttr -ci true -sn "wsMirrorAxis" -ln "wsMirrorAxis" -at "float";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 0 -5 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".wsMirrorAxis";
createNode locator -n "palm_heelPos_guideShape" -p "palm_heelPos_guide";
	rename -uid "2530DEFB-4885-49D7-FEF9-BF9272D28E6B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 2 0 2 ;
createNode transform -n "palm_inPos_guide" -p "master_guide";
	rename -uid "FF5EA0C7-41A7-1A35-E340-0086B0A80E97";
	addAttr -ci true -sn "wsMirrorAxis" -ln "wsMirrorAxis" -at "float";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 10 0 5 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".wsMirrorAxis";
createNode locator -n "palm_inPos_guideShape" -p "palm_inPos_guide";
	rename -uid "0BB3FCA8-4D59-DA39-7316-48B5BAD04383";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 2 0 2 ;
createNode transform -n "palm_outPos_guide" -p "master_guide";
	rename -uid "77A36AE6-4B15-2DBC-F7CC-109C8891EA6D";
	addAttr -ci true -sn "wsMirrorAxis" -ln "wsMirrorAxis" -at "float";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -10 0 5 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".wsMirrorAxis";
createNode locator -n "palm_outPos_guideShape" -p "palm_outPos_guide";
	rename -uid "B9C8DC0F-4AAC-D493-C2AB-CBAA97CD4984";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 2 0 2 ;
createNode transform -n "palm_toePos_guide" -p "master_guide";
	rename -uid "B2B16330-45FF-D2FC-69C1-9E9E432122F6";
	addAttr -ci true -sn "wsMirrorAxis" -ln "wsMirrorAxis" -at "float";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 0 15 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".wsMirrorAxis";
createNode locator -n "palm_toePos_guideShape" -p "palm_toePos_guide";
	rename -uid "AA6507A0-48B4-3EE0-57A7-EE9264E38D41";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 2 0 2 ;
createNode transform -n "hip_guide_ofs" -p "master_guide";
	rename -uid "C2FA006D-46AB-0787-1465-EF860EF59200";
	setAttr ".t" -type "double3" 1.7763568394002509e-15 145 30 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "hip_guide" -p "hip_guide_ofs";
	rename -uid "554FD75F-4C32-F69D-B0F0-498FE13A6D51";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006252e-16 8.8817841970012504e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 9.8607613152626432e-32 -1.9721522630525286e-31 ;
createNode aimConstraint -n "hip_guide_aimConstraint1" -p "hip_guide";
	rename -uid "80595D50-4A96-CD24-A6D5-5B8952A8E706";
	addAttr -dcb 0 -ci true -sn "w0" -ln "upr_guideW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 1 0 0 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 90.000000000000057 -32.626456980832721 -3.7764680296476529e-15 ;
	setAttr -k on ".w0";
createNode locator -n "hip_guideShape" -p "hip_guide";
	rename -uid "EFB242D6-49F2-DB7D-6DF5-20A6E882C098";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 5 5 5 ;
createNode transform -n "upr_guide_ofs" -p "master_guide";
	rename -uid "1634EA5C-412E-9749-6608-BF96615502B0";
	setAttr ".t" -type "double3" 0 128 20 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "upr_guide" -p "upr_guide_ofs";
	rename -uid "E88FCE29-4313-6280-00B5-5ABF3CBEA428";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999956 0.99999999999999956 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006242e-16 8.8817841970012484e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 1.9721522630525278e-31 -3.9443045261050555e-31 ;
createNode locator -n "upr_guideShape" -p "upr_guide";
	rename -uid "77888D44-4609-1308-CDB6-E0809FCCF18C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 5 5 5 ;
createNode aimConstraint -n "upr_guide_aimConstraint1" -p "upr_guide";
	rename -uid "7EC55F06-4B66-C75B-E81D-3F8D250C03BB";
	addAttr -dcb 0 -ci true -sn "w0" -ln "lwr_guideW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 1 0 0 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -90.000000000000142 23.585452907352742 -3.8175081910593569e-14 ;
	setAttr -k on ".w0";
createNode transform -n "patella_guide" -p "upr_guide";
	rename -uid "775F3C59-4916-6346-14F6-15AC9B47A03E";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -38 1.4210854715202004e-14 3 ;
	setAttr -l on ".ty";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000004 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "patella_guideShape" -p "patella_guide";
	rename -uid "C48A6609-43E8-82F1-1EA1-E99304420F22";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 3 3 3 ;
createNode transform -n "plane_guide_ofs" -p "master_guide";
	rename -uid "F5010681-48EC-CEC6-1341-659FA3F42637";
	setAttr -cb on ".ro";
createNode transform -n "plane_guide" -p "plane_guide_ofs";
	rename -uid "4B879F61-492B-D229-A4D6-8482B7C5D70F";
	addAttr -ci true -sn "wsMirrorAxis" -ln "wsMirrorAxis" -at "float";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 0 0 20 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012504e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 0 -1.9721522630525286e-31 ;
	setAttr -l on ".wsMirrorAxis";
createNode locator -n "plane_guideShape" -p "plane_guide";
	rename -uid "9189950A-48A3-A60C-37C0-BDA649AC6D51";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 5 5 5 ;
createNode aimConstraint -n "plane_guide_aimConstraint1" -p "plane_guide";
	rename -uid "B5E6BBF9-475A-F7C8-9214-F9A9B774C6CB";
	addAttr -dcb 0 -ci true -sn "w0" -ln "pv_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".wut" 1;
	setAttr ".rsrr" -type "double3" 180 89.999999999999986 0 ;
	setAttr -k on ".w0";
createNode transform -n "palm_guide_ofs" -p "plane_guide";
	rename -uid "BA8EFF49-43BB-4BEC-8660-028DC5F78A01";
	setAttr ".t" -type "double3" -30 20 1.3913193614960591e-13 ;
	setAttr ".r" -type "double3" -90.000000000000014 0 269.99999999999977 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1 1 ;
createNode transform -n "palm_guide" -p "palm_guide_ofs";
	rename -uid "F8630CA9-4410-3A88-C665-01B5C9AA7DAE";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr -l on ".ty";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012504e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 0 -1.9721522630525286e-31 ;
createNode aimConstraint -n "palm_guide_aimConstraint1" -p "palm_guide";
	rename -uid "72074F9D-48FD-F101-0C1E-56B4DE01EBBC";
	addAttr -dcb 0 -ci true -sn "w0" -ln "fetlock_guideW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 1 0 0 ;
	setAttr ".wut" 1;
	setAttr ".rsrr" -type "double3" 89.999999999999332 3.589057173363988e-13 -179.28425192030079 ;
	setAttr -k on ".w0";
createNode locator -n "palm_guideShape" -p "palm_guide";
	rename -uid "30A72B01-4926-8C04-0A42-57B8E0A27CC2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 5 5 5 ;
createNode transform -n "ulna_guide_ZRO" -p "palm_guide";
	rename -uid "60CD4AAA-4287-05CB-439A-889D37E7FCA6";
	setAttr ".t" -type "double3" -5 5 0 ;
	setAttr ".s" -type "double3" 0.99999999999999922 1.0000000000000009 1.0000000000000004 ;
createNode transform -n "ulna_guide" -p "ulna_guide_ZRO";
	rename -uid "61520BCC-498A-C413-F46B-37A31534539A";
	setAttr ".ovc" 1;
	setAttr -cb on ".ro";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006202e-16 8.8817841970012444e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 5.9164567891575789e-31 -7.8886090522101093e-31 ;
createNode locator -n "ulna_guideShape" -p "ulna_guide";
	rename -uid "84BD9748-419A-139F-1960-57AD97DEFC4A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 2 2 2 ;
createNode aimConstraint -n "ulna_guide_aimConstraint1" -p "ulna_guide";
	rename -uid "98B3BC9F-494D-99D7-FBC6-1FB574DD63F3";
	addAttr -dcb 0 -ci true -sn "w0" -ln "ulnaEnd_guideW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode transform -n "radius_guide_ZRO" -p "palm_guide";
	rename -uid "AFA049B6-434C-B20A-C506-409A63886D03";
	setAttr ".t" -type "double3" -5 -5 0 ;
	setAttr ".s" -type "double3" 0.99999999999999922 1.0000000000000009 1.0000000000000004 ;
createNode transform -n "radius_guide" -p "radius_guide_ZRO";
	rename -uid "AAA2E373-46B1-4E3F-8837-8186057628CE";
	setAttr ".ovc" 1;
	setAttr -cb on ".ro";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006202e-16 8.8817841970012444e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 5.9164567891575789e-31 -7.8886090522101093e-31 ;
createNode locator -n "radius_guideShape" -p "radius_guide";
	rename -uid "B68DF362-4078-9CFD-F162-098CEC170631";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 2 2 2 ;
createNode aimConstraint -n "radius_guide_aimConstraint1" -p "radius_guide";
	rename -uid "DD637149-4A09-6DD3-19A1-E1AEC9C91694";
	addAttr -dcb 0 -ci true -sn "w0" -ln "radiusEnd_guideW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode transform -n "lwr_guide_ofs" -p "plane_guide";
	rename -uid "75C7C8CB-4C56-A9D8-4610-D9B2DB60E91D";
	setAttr ".t" -type "double3" 0 -10 -6.2172489379008766e-14 ;
	setAttr ".r" -type "double3" -89.999999999999986 6.3611093629270335e-15 -90.000000000000014 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
createNode transform -n "lwr_guide" -p "lwr_guide_ofs";
	rename -uid "CFE03177-4C70-F4D8-2A2F-AC9E4A79E029";
	setAttr -l on -k off ".v";
	setAttr -l on ".ty";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "lwr_guideShape" -p "lwr_guide";
	rename -uid "300670C4-4FBB-5C39-2DE9-73A5B0E9D919";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 5 5 5 ;
createNode aimConstraint -n "lwr_guide_aimConstraint1" -p "lwr_guide";
	rename -uid "D92C1AE9-4A09-ED0F-B1D3-B888ADC43F9D";
	addAttr -dcb 0 -ci true -sn "w0" -ln "foot_guideW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 1 0 0 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 179.99999914622614 -46.228620852326479 4.5177227746793557e-13 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "mid_guide_ofs_pointConstraint1" -p "plane_guide_ofs";
	rename -uid "E3FC0C64-455F-C831-502D-44AE0AC61007";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "upr_guideW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "fetlock_guideW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 6.3948846218409017e-14 74.454693794250474 10.210243225097656 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "fetlock_guide_ofs" -p "master_guide";
	rename -uid "46C2F2C9-4455-F154-2C95-79AFD9CA34AD";
	setAttr ".t" -type "double3" 0 20 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr -cb on ".ro";
createNode transform -n "fetlock_guide" -p "fetlock_guide_ofs";
	rename -uid "EC3CFF50-4025-6550-24DE-8E878F57D95C";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012504e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 0 -1.9721522630525286e-31 ;
createNode locator -n "fetlock_guideShape" -p "fetlock_guide";
	rename -uid "2951797B-45D3-4E9A-40EE-5BAFDAAFE573";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 3 3 3 ;
createNode transform -n "ulnaEnd_guide_ZRO" -p "fetlock_guide";
	rename -uid "77C030F4-463B-B211-3414-D0872B8194D6";
	setAttr ".t" -type "double3" 0 5 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000013 1.0000000000000009 ;
createNode transform -n "ulnaEnd_guide" -p "ulnaEnd_guide_ZRO";
	rename -uid "AC31050A-42AD-AF8E-3CA9-B4BBE07D77BC";
	setAttr ".ovc" 1;
	setAttr -cb on ".ro";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006173e-16 8.8817841970012405e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 8.8746851837363635e-31 -1.1832913578315161e-30 ;
createNode locator -n "ulnaEnd_guideShape" -p "ulnaEnd_guide";
	rename -uid "14830EFA-4967-7486-24A7-56A530675F28";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 2 2 2 ;
createNode aimConstraint -n "ulnaEnd_guide_aimConstraint1" -p "ulnaEnd_guide";
	rename -uid "A10BD966-40B4-E6CF-C470-4F88AD6AD9DA";
	addAttr -dcb 0 -ci true -sn "w0" -ln "ulna_guideW0" -dv 1 -at "double";
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
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode transform -n "radiusEnd_guide_ZRO" -p "fetlock_guide";
	rename -uid "4FBE01B3-44E2-9095-23D1-7AB7AF220AAF";
	setAttr ".t" -type "double3" 0 -5 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000013 1.0000000000000009 ;
createNode transform -n "radiusEnd_guide" -p "radiusEnd_guide_ZRO";
	rename -uid "80BE5D0A-4C98-D57D-D856-EEB6CE83E058";
	setAttr ".ovc" 1;
	setAttr -cb on ".ro";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006173e-16 8.8817841970012405e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 8.8746851837363635e-31 -1.1832913578315161e-30 ;
createNode locator -n "radiusEnd_guideShape" -p "radiusEnd_guide";
	rename -uid "D14186F9-42D3-60FD-793E-1D971D552D21";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 2 2 2 ;
createNode aimConstraint -n "radiusEnd_guide_aimConstraint1" -p "radiusEnd_guide";
	rename -uid "ACC2EBEB-42C1-4763-1491-93BC259EBAC4";
	addAttr -dcb 0 -ci true -sn "w0" -ln "radius_guideW0" -dv 1 -at "double";
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
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode transform -n "pastern_guide_ofs" -p "master_guide";
	rename -uid "0F393EE5-4480-CEF9-81A3-E795957E86A5";
	setAttr -cb on ".ro";
createNode transform -n "pastern_guide" -p "pastern_guide_ofs";
	rename -uid "124AD024-4272-099F-1FAD-CE9C93A48544";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012504e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 0 -1.9721522630525286e-31 ;
createNode aimConstraint -n "pastern_guide_aimConstraint1" -p "pastern_guide";
	rename -uid "C6B9A12B-4D6C-8EBF-9368-A196F9C54080";
	addAttr -dcb 0 -ci true -sn "w0" -ln "pasternTip_guideW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wut" 0;
	setAttr ".rsrr" -type "double3" 0 180 0 ;
	setAttr -k on ".w0";
createNode locator -n "pastern_guideShape" -p "pastern_guide";
	rename -uid "D249D1F6-4451-C935-3FFB-D1A8DDC914C8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 2 2 2 ;
createNode pointConstraint -n "pastern_guide_ofs_pointConstraint1" -p "pastern_guide_ofs";
	rename -uid "8E2AFB26-4074-A608-AAD8-56B4D2423F4F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fetlock_guideW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "pasternTip_guideW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 0 10.070820808410646 4.6176908500492573 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode aimConstraint -n "pastern_guide_ofs_aimConstraint1" -p "pastern_guide_ofs";
	rename -uid "EBEC83D2-49F2-177F-37BF-F5B9FCE0E068";
	addAttr -dcb 0 -ci true -sn "w0" -ln "rtQHLeg0_pasternTip_guideW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wut" 0;
	setAttr ".rsrr" -type "double3" 90 -26.565051177077994 -90 ;
	setAttr -k on ".w0";
createNode transform -n "pasternTip_guide_ofs" -p "master_guide";
	rename -uid "7CEEE1CE-4429-4888-0490-A0A10EA4C1C2";
	setAttr ".t" -type "double3" 0 0 8 ;
	setAttr ".r" -type "double3" -90 90 0 ;
	setAttr -cb on ".ro";
createNode transform -n "pasternTip_guide" -p "pasternTip_guide_ofs";
	rename -uid "4AE1C5DE-47E1-3C2A-CAA1-3B82D97AF71C";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006252e-16 8.8817841970012504e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 9.8607613152626432e-32 -1.9721522630525286e-31 ;
createNode locator -n "pasternTip_guideShape" -p "pasternTip_guide";
	rename -uid "664A2F62-4CDC-4B9F-4D81-56A907F739A4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 2 2 2 ;
createNode nurbsCurve -n "master_guideShape" -p "master_guide";
	rename -uid "69D6AA5B-4B92-BE8E-4E50-50BF9DD53909";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		16.82387396926379 8.208997608633863e-16 -16.823873969263818
		1.160927575161831e-15 1.160927575161831e-15 -18.959386101692566
		-16.82387396926379 8.2089976086338581e-16 -16.82387396926379
		-18.95938610169258 6.0182690500836575e-32 -9.828579234884393e-16
		-16.82387396926379 -8.208997608633863e-16 16.82387396926379
		-1.8991746727244349e-15 -1.1609275751618318e-15 18.95938610169258
		16.82387396926379 -8.2089976086338581e-16 16.82387396926379
		18.95938610169258 -1.5831528352703294e-31 2.5854847885489616e-15
		16.82387396926379 8.208997608633863e-16 -16.823873969263818
		1.160927575161831e-15 1.160927575161831e-15 -18.959386101692566
		-16.82387396926379 8.2089976086338581e-16 -16.82387396926379
		;
createNode transform -n "pv_loc_ofs" -p "master_guide";
	rename -uid "8DFA4B9C-4B1F-E066-22B5-D6821C430844";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "pv_loc" -p "pv_loc_ofs";
	rename -uid "E8522B6D-4507-CE14-7E9F-4D90C40010A6";
	setAttr -cb on ".ro";
createNode locator -n "pv_locShape" -p "pv_loc";
	rename -uid "70F3403B-4A9C-9405-497F-76A1DDF44EBD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovv" no;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 5 5 5 ;
createNode transform -n "pvc_guide_ofs" -p "pv_loc";
	rename -uid "4352F4B6-440A-CAFC-0D6D-93AF74B7A4C9";
	setAttr ".t" -type "double3" 70 0 -8.2778228716051672e-13 ;
	setAttr ".r" -type "double3" 0 89.999999999999204 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "pvc_guide" -p "pvc_guide_ofs";
	rename -uid "D345E09E-42AC-A4B2-3BA1-4D98ED5AB51C";
	addAttr -ci true -sn "wsMirrorAxis" -ln "wsMirrorAxis" -at "float";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 13;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 1.0097419586828951e-28 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 1.0097419586828951e-28 ;
	setAttr -l on ".wsMirrorAxis";
createNode locator -n "pvc_guideShape" -p "pvc_guide";
	rename -uid "5C1E3830-4E4C-FC3B-2F7F-069D54E8879C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 3 3 3 ;
createNode aimConstraint -n "pv_loc_aimConstraint1" -p "pv_loc";
	rename -uid "989EAFB5-411C-AE68-9AB6-12A33F1AB5CD";
	addAttr -dcb 0 -ci true -sn "w0" -ln "plane_guideW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rsrr" -type "double3" -4.071109992273302e-14 -89.999999999999957 0 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "null1_pointConstraint1" -p "pv_loc_ofs";
	rename -uid "DC440539-464E-33AB-572D-04B22B47A920";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "upr_guideW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "fetlock_guideW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 15.000000000000064 74.454693794250474 -61.789756774902344 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "toesRoot_guide_ofs" -p "master_guide";
	rename -uid "B2D22AC5-4791-5F8A-901D-14BA05AECA8A";
	setAttr ".t" -type "double3" 0 4.4408920985006281e-16 0 ;
	setAttr ".r" -type "double3" 180 0 0 ;
createNode transform -n "toesRoot_guide" -p "toesRoot_guide_ofs";
	rename -uid "214C2A23-40D5-4891-12AB-99B56D44FF22";
	setAttr ".ovc" 1;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -cb on ".ro";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
createNode locator -n "toesRoot_guideShape" -p "toesRoot_guide";
	rename -uid "D2C91384-45DC-ACD0-02BF-75BEBEE41B27";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".los" -type "double3" 0 0 0 ;
createNode transform -n "toesRoot_guide_ofs1" -p "toesRoot_guide";
	rename -uid "5D96B3F6-4A72-5466-E462-E3A0F2FC484B";
createNode transform -n "toe00_2_guide_ZRO" -p "toesRoot_guide_ofs1";
	rename -uid "A7FD58FA-4D03-8E83-0EBF-F2A04BA4C6A1";
	setAttr -l on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 4 0 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 90 -90 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode joint -n "toe00_2_guide" -p "toe00_2_guide_ZRO";
	rename -uid "2C77E1CD-41BD-4C41-2021-5FA041C88D3A";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 21;
	setAttr ".t" -type "double3" -7 0 4 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe00_2_guideShape" -p "toe00_2_guide";
	rename -uid "0AFE3458-4672-57B9-5E50-CF87D603FFAB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403858999 4.7982373409884731e-17 2.0415500045566963
		9.6581433961014476e-16 6.7857323231109122e-17 2.0343295260152963
		-0.11668853403858806 4.7982373409884719e-17 2.0415500045566963
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403858999 4.7982373409884731e-17 2.0415500045566963
		9.6581433961014476e-16 6.7857323231109122e-17 2.0343295260152963
		-0.11668853403858806 4.7982373409884719e-17 2.0415500045566963
		;
createNode joint -n "toe00_3_guide" -p "toe00_2_guide";
	rename -uid "FF86E62C-4EE4-83D2-86E4-D9ACB6A1F540";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -5 0 1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" 0 -70 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe00_3_guideShape" -p "toe00_3_guide";
	rename -uid "D66E5C75-4ED4-5D3C-F731-238DDE04A717";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403859354 -1.7283744659903657e-15 1.0413818790169078
		4.5185280184106457e-15 -1.7084995161691413e-15 1.0341614004755075
		-0.11668853403858451 -1.7283744659903657e-15 1.0413818790169078
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403859354 -1.7283744659903657e-15 1.0413818790169078
		4.5185280184106457e-15 -1.7084995161691413e-15 1.0341614004755075
		-0.11668853403858451 -1.7283744659903657e-15 1.0413818790169078
		;
createNode joint -n "toe00_4_guide" -p "toe00_3_guide";
	rename -uid "79721F6C-423A-A958-9BBA-22A6A166EB55";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -4 0 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 0 70 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "toe00_1_guide" -p "toe00_2_guide";
	rename -uid "A3B1CDEE-4644-DA8F-31E4-0C8E267F1652";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4 3.5527136788005009e-15 10 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe00_1_guideShape" -p "toe00_1_guide";
	rename -uid "F1D823E7-44FC-BBE0-8044-5D8393A500CA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403858999 4.7982373409884731e-17 2.0415500045566963
		9.6581433961014476e-16 6.7857323231109122e-17 2.0343295260152963
		-0.11668853403858806 4.7982373409884719e-17 2.0415500045566963
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403858999 4.7982373409884731e-17 2.0415500045566963
		9.6581433961014476e-16 6.7857323231109122e-17 2.0343295260152963
		-0.11668853403858806 4.7982373409884719e-17 2.0415500045566963
		;
createNode transform -n "toe01_2_guide_ZRO" -p "toesRoot_guide_ofs1";
	rename -uid "E9383CF9-4B47-3697-2E0D-A4BBF259AAB7";
	setAttr -l on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 90 -90 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode joint -n "toe01_2_guide" -p "toe01_2_guide_ZRO";
	rename -uid "812F1A2E-4B2D-16A1-7782-2884A2A6785A";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 20;
	setAttr ".t" -type "double3" -7 0 4 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe01_2_guideShape" -p "toe01_2_guide";
	rename -uid "60594744-4832-772D-3BE6-AAAB5E470E98";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403858999 4.7982373409884731e-17 2.0415500045566963
		9.6581433961014476e-16 6.7857323231109122e-17 2.0343295260152963
		-0.11668853403858806 4.7982373409884719e-17 2.0415500045566963
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403858999 4.7982373409884731e-17 2.0415500045566963
		9.6581433961014476e-16 6.7857323231109122e-17 2.0343295260152963
		-0.11668853403858806 4.7982373409884719e-17 2.0415500045566963
		;
createNode joint -n "toe01_3_guide" -p "toe01_2_guide";
	rename -uid "3245D51F-4135-200A-4F05-A0810DFE8B31";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -5 -7.1054273576010019e-15 1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" 0 -70 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe01_3_guideShape" -p "toe01_3_guide";
	rename -uid "3C9548B6-482F-7303-2184-35ADED6AFF17";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403859354 -1.7283744659903657e-15 1.0413818790169078
		4.5185280184106457e-15 -1.7084995161691413e-15 1.0341614004755075
		-0.11668853403858451 -1.7283744659903657e-15 1.0413818790169078
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403859354 -1.7283744659903657e-15 1.0413818790169078
		4.5185280184106457e-15 -1.7084995161691413e-15 1.0341614004755075
		-0.11668853403858451 -1.7283744659903657e-15 1.0413818790169078
		;
createNode joint -n "toe01_4_guide" -p "toe01_3_guide";
	rename -uid "814E4C6E-4D61-7171-DE2F-07B7ED29CE34";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -4 -7.1054273576010019e-15 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 0 70 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe01_4_guideShape" -p "toe01_4_guide";
	rename -uid "8D22E12B-419D-7974-6DE1-4687A89D348A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403859354 -1.7283744659903657e-15 1.0413818790169078
		4.5185280184106457e-15 -1.7084995161691413e-15 1.0341614004755075
		-0.11668853403858451 -1.7283744659903657e-15 1.0413818790169078
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403859354 -1.7283744659903657e-15 1.0413818790169078
		4.5185280184106457e-15 -1.7084995161691413e-15 1.0341614004755075
		-0.11668853403858451 -1.7283744659903657e-15 1.0413818790169078
		;
createNode joint -n "toe01_5_guide" -p "toe01_4_guide";
	rename -uid "ED6AC713-4001-EE11-701B-1C83271A8B1B";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3 -7.1054273576010019e-15 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "toe01_1_guide" -p "toe01_2_guide";
	rename -uid "7813E80E-4603-CB24-CFE8-199E19138BE9";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4 3.5527136788005009e-15 10 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe01_1_guideShape" -p "toe01_1_guide";
	rename -uid "DAC54526-4CF3-3DEA-0A8E-2BA94F497F55";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403858999 4.7982373409884731e-17 2.0415500045566963
		9.6581433961014476e-16 6.7857323231109122e-17 2.0343295260152963
		-0.11668853403858806 4.7982373409884719e-17 2.0415500045566963
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403858999 4.7982373409884731e-17 2.0415500045566963
		9.6581433961014476e-16 6.7857323231109122e-17 2.0343295260152963
		-0.11668853403858806 4.7982373409884719e-17 2.0415500045566963
		;
createNode transform -n "toe02_2_guide_ZRO" -p "toesRoot_guide_ofs1";
	rename -uid "7CA1287A-4C90-C323-AC5E-97A48824B183";
	setAttr -l on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 90 -90 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode joint -n "toe02_2_guide" -p "toe02_2_guide_ZRO";
	rename -uid "41647F59-4E5B-1B03-CF60-0595309A7EC2";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 20;
	setAttr ".t" -type "double3" -7 0 4 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe02_2_guideShape" -p "toe02_2_guide";
	rename -uid "3D2B1547-41B8-E2BF-4DBC-21BACCACB77B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403858999 4.7982373409884731e-17 2.0415500045566963
		9.6581433961014476e-16 6.7857323231109122e-17 2.0343295260152963
		-0.11668853403858806 4.7982373409884719e-17 2.0415500045566963
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403858999 4.7982373409884731e-17 2.0415500045566963
		9.6581433961014476e-16 6.7857323231109122e-17 2.0343295260152963
		-0.11668853403858806 4.7982373409884719e-17 2.0415500045566963
		;
createNode joint -n "toe02_3_guide" -p "toe02_2_guide";
	rename -uid "46823F3C-45F8-10B5-59BC-B08B84AF0EF3";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -5 -3.5527136788005009e-15 1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" 0 -70 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe02_3_guideShape" -p "toe02_3_guide";
	rename -uid "A462F0D9-4F85-F5B8-2546-1EB6DD61415E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403859354 -1.7283744659903657e-15 1.0413818790169078
		4.5185280184106457e-15 -1.7084995161691413e-15 1.0341614004755075
		-0.11668853403858451 -1.7283744659903657e-15 1.0413818790169078
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403859354 -1.7283744659903657e-15 1.0413818790169078
		4.5185280184106457e-15 -1.7084995161691413e-15 1.0341614004755075
		-0.11668853403858451 -1.7283744659903657e-15 1.0413818790169078
		;
createNode joint -n "toe02_4_guide" -p "toe02_3_guide";
	rename -uid "2404F53D-45AB-CDF5-5CB9-CB85B30610F1";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -4 0 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 0 70 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe02_4_guideShape" -p "toe02_4_guide";
	rename -uid "0099A5E1-4FF2-E98D-4D35-44B0F101B8EC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403859354 -1.7283744659903657e-15 1.0413818790169078
		4.5185280184106457e-15 -1.7084995161691413e-15 1.0341614004755075
		-0.11668853403858451 -1.7283744659903657e-15 1.0413818790169078
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403859354 -1.7283744659903657e-15 1.0413818790169078
		4.5185280184106457e-15 -1.7084995161691413e-15 1.0341614004755075
		-0.11668853403858451 -1.7283744659903657e-15 1.0413818790169078
		;
createNode joint -n "toe02_5_guide" -p "toe02_4_guide";
	rename -uid "EFDA27F8-4DAC-E900-1E28-2081698C8259";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3 3.5527136788005009e-15 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "toe02_1_guide" -p "toe02_2_guide";
	rename -uid "FAE761E1-4C1B-6D30-C6F2-34AFB5BFC916";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4 0 10 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe02_1_guideShape" -p "toe02_1_guide";
	rename -uid "A063EB45-49A0-BAB3-B4BA-B387A9719C6A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403858999 4.7982373409884731e-17 2.0415500045566963
		9.6581433961014476e-16 6.7857323231109122e-17 2.0343295260152963
		-0.11668853403858806 4.7982373409884719e-17 2.0415500045566963
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403858999 4.7982373409884731e-17 2.0415500045566963
		9.6581433961014476e-16 6.7857323231109122e-17 2.0343295260152963
		-0.11668853403858806 4.7982373409884719e-17 2.0415500045566963
		;
createNode transform -n "toe03_2_guide_ZRO" -p "toesRoot_guide_ofs1";
	rename -uid "C144C03F-43DC-CAF9-E9FC-61BF0301BCE3";
	setAttr -l on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -2 0 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 90 -90 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode joint -n "toe03_2_guide" -p "toe03_2_guide_ZRO";
	rename -uid "0893827E-4CBB-AC82-9BB0-23AEE664E81F";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 21;
	setAttr ".t" -type "double3" -7 0 4 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe03_2_guideShape" -p "toe03_2_guide";
	rename -uid "CD3D7DDB-43E8-8C0C-0FB4-1BBE65026247";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403858999 4.7982373409884731e-17 2.0415500045566963
		9.6581433961014476e-16 6.7857323231109122e-17 2.0343295260152963
		-0.11668853403858806 4.7982373409884719e-17 2.0415500045566963
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403858999 4.7982373409884731e-17 2.0415500045566963
		9.6581433961014476e-16 6.7857323231109122e-17 2.0343295260152963
		-0.11668853403858806 4.7982373409884719e-17 2.0415500045566963
		;
createNode joint -n "toe03_3_guide" -p "toe03_2_guide";
	rename -uid "E90C759F-47CD-F626-FE82-B786FE5AE2AC";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -5 0 1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" 0 -70 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe03_3_guideShape" -p "toe03_3_guide";
	rename -uid "76AA4744-4F9B-E77F-2AF5-718585090A35";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403859354 -1.7283744659903657e-15 1.0413818790169078
		4.5185280184106457e-15 -1.7084995161691413e-15 1.0341614004755075
		-0.11668853403858451 -1.7283744659903657e-15 1.0413818790169078
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403859354 -1.7283744659903657e-15 1.0413818790169078
		4.5185280184106457e-15 -1.7084995161691413e-15 1.0341614004755075
		-0.11668853403858451 -1.7283744659903657e-15 1.0413818790169078
		;
createNode joint -n "toe03_4_guide" -p "toe03_3_guide";
	rename -uid "2C67847F-450B-DFE9-3370-5190758434AE";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -4 0 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 0 70 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe03_4_guideShape" -p "toe03_4_guide";
	rename -uid "20808E41-4822-8AA8-1711-2DA30E7E0DAC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403859354 -1.7283744659903657e-15 1.0413818790169078
		4.5185280184106457e-15 -1.7084995161691413e-15 1.0341614004755075
		-0.11668853403858451 -1.7283744659903657e-15 1.0413818790169078
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403859354 -1.7283744659903657e-15 1.0413818790169078
		4.5185280184106457e-15 -1.7084995161691413e-15 1.0341614004755075
		-0.11668853403858451 -1.7283744659903657e-15 1.0413818790169078
		;
createNode joint -n "toe03_5_guide" -p "toe03_4_guide";
	rename -uid "CF60616C-4001-EAAF-D4D2-E28CBEDF36CF";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3 -7.1054273576010019e-15 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "toe03_1_guide" -p "toe03_2_guide";
	rename -uid "1265905E-4957-1F92-F42B-EC93AE76DB8A";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4 0 10 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe03_1_guideShape" -p "toe03_1_guide";
	rename -uid "D8AD6359-4C9C-70C1-785B-A58DF67CB404";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403858999 4.7982373409884731e-17 2.0415500045566963
		9.6581433961014476e-16 6.7857323231109122e-17 2.0343295260152963
		-0.11668853403858806 4.7982373409884719e-17 2.0415500045566963
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403858999 4.7982373409884731e-17 2.0415500045566963
		9.6581433961014476e-16 6.7857323231109122e-17 2.0343295260152963
		-0.11668853403858806 4.7982373409884719e-17 2.0415500045566963
		;
createNode transform -n "toe04_2_guide_ZRO" -p "toesRoot_guide_ofs1";
	rename -uid "6F10ED24-482B-309E-E316-D59B4AA15B9D";
	setAttr -l on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -4 0 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 90 -90 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode joint -n "toe04_2_guide" -p "toe04_2_guide_ZRO";
	rename -uid "BEA623B2-4395-DC2A-A616-15B81C0C721C";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 20;
	setAttr ".t" -type "double3" -7 0 4 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe04_2_guideShape" -p "toe04_2_guide";
	rename -uid "6204FEC9-47B3-E843-868F-E5A7388958BF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403858999 4.7982373409884731e-17 2.0415500045566963
		9.6581433961014476e-16 6.7857323231109122e-17 2.0343295260152963
		-0.11668853403858806 4.7982373409884719e-17 2.0415500045566963
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403858999 4.7982373409884731e-17 2.0415500045566963
		9.6581433961014476e-16 6.7857323231109122e-17 2.0343295260152963
		-0.11668853403858806 4.7982373409884719e-17 2.0415500045566963
		;
createNode joint -n "toe04_3_guide" -p "toe04_2_guide";
	rename -uid "546E6079-445A-423F-5546-7289423BF8AF";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -5 -7.1054273576010019e-15 1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" 0 -70 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe04_3_guideShape" -p "toe04_3_guide";
	rename -uid "B4E5B0DA-484F-E75F-0084-D192C6F942B1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403859354 -1.7283744659903657e-15 1.0413818790169078
		4.5185280184106457e-15 -1.7084995161691413e-15 1.0341614004755075
		-0.11668853403858451 -1.7283744659903657e-15 1.0413818790169078
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403859354 -1.7283744659903657e-15 1.0413818790169078
		4.5185280184106457e-15 -1.7084995161691413e-15 1.0341614004755075
		-0.11668853403858451 -1.7283744659903657e-15 1.0413818790169078
		;
createNode joint -n "toe04_4_guide" -p "toe04_3_guide";
	rename -uid "2C2ECC7A-45DF-2372-D07A-55B97963B9D3";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -4 -7.1054273576010019e-15 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 0 70 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe04_4_guideShape" -p "toe04_4_guide";
	rename -uid "7F633AB8-4AFB-1253-E683-D681D998F4D1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403859354 -1.7283744659903657e-15 1.0413818790169078
		4.5185280184106457e-15 -1.7084995161691413e-15 1.0341614004755075
		-0.11668853403858451 -1.7283744659903657e-15 1.0413818790169078
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403859354 -1.7283744659903657e-15 1.0413818790169078
		4.5185280184106457e-15 -1.7084995161691413e-15 1.0341614004755075
		-0.11668853403858451 -1.7283744659903657e-15 1.0413818790169078
		;
createNode joint -n "toe04_5_guide" -p "toe04_4_guide";
	rename -uid "8224AF7E-45AD-1426-C8E8-A88CD1BBCE7E";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3 -1.0658141036401503e-14 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "toe04_1_guide" -p "toe04_2_guide";
	rename -uid "20B3C508-4B9E-67F9-38FD-A9B8F721E1BB";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4 7.1054273576010019e-15 10 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe04_1_guideShape" -p "toe04_1_guide";
	rename -uid "7CED6349-47EE-5D07-ADD8-D7B072452B52";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403858999 4.7982373409884731e-17 2.0415500045566963
		9.6581433961014476e-16 6.7857323231109122e-17 2.0343295260152963
		-0.11668853403858806 4.7982373409884719e-17 2.0415500045566963
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403858999 4.7982373409884731e-17 2.0415500045566963
		9.6581433961014476e-16 6.7857323231109122e-17 2.0343295260152963
		-0.11668853403858806 4.7982373409884719e-17 2.0415500045566963
		;
createNode pointConstraint -n "toesRoot_guide_pointConstraint1" -p "toesRoot_guide";
	rename -uid "519DD4CD-4160-0A0B-7441-1B849F7A21A1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "palm_guideW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 1.4210854715202004e-13 -54 -8.8817841970012523e-16 ;
	setAttr -k on ".w0";
createNode transform -n "line_grp" -p "module_grp";
	rename -uid "392DAB56-4F62-BEA0-3587-85B6AE0417E7";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -cb on ".ro";
createNode transform -n "line_1" -p "line_grp";
	rename -uid "9D5A051D-457B-22EE-E15C-0186667BD558";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -cb on ".ro";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "line_1Shape" -p "line_1";
	rename -uid "8A7ECA05-4390-C3D8-F8AF-489D25DF2166";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -s 2 ".cp";
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-19.999999999999996 145 -45
		-20 128 -55
		;
	setAttr ".adot" yes;
createNode transform -n "line_4" -p "line_grp";
	rename -uid "7F41B5C3-47B1-F1B1-1003-3284F794FF50";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -cb on ".ro";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "line_4Shape" -p "line_4";
	rename -uid "EAA206BE-4D1A-E111-6359-189A9877719B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -s 2 ".cp";
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-19.999999999999858 54 -75
		-20 20 -75
		;
	setAttr ".adot" yes;
createNode transform -n "line_5" -p "line_grp";
	rename -uid "A330A1BF-42C2-16A8-A446-858D5307E430";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -cb on ".ro";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "line_5Shape" -p "line_5";
	rename -uid "E0D4F510-48FD-A2CB-41AF-97A85B490655";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -s 2 ".cp";
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-20 20 -75
		-20 10 -71
		;
	setAttr ".adot" yes;
createNode transform -n "line_6" -p "line_grp";
	rename -uid "96C07C8B-48A4-B9E8-F0FD-A3B4DD1C2E22";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -cb on ".ro";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "line_6Shape" -p "line_6";
	rename -uid "71D69955-40C7-81AA-7971-A19D4452EE31";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -s 2 ".cp";
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-20 10 -71
		-20 -1.9721522630525295e-31 -67
		;
	setAttr ".adot" yes;
createNode transform -n "line_8" -p "line_grp";
	rename -uid "4434B5F5-4319-DA40-E9FC-8CB6C978DD59";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -cb on ".ro";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "line_8Shape" -p "line_8";
	rename -uid "7E5D2F7E-4DBF-8610-C2DE-1DB098429107";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -s 2 ".cp";
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-20 128 -55
		-20.000000000000064 84 -45
		;
	setAttr ".adot" yes;
createNode transform -n "line_9" -p "line_grp";
	rename -uid "08E0C9C1-4C58-5A89-59BA-C78D8988199C";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -cb on ".ro";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "line_9Shape" -p "line_9";
	rename -uid "F2368E5B-47D3-58DC-5F9A-F9A26BC20974";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -s 2 ".cp";
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-20.000000000000064 84 -45
		-19.999999999999858 54 -75
		;
	setAttr ".adot" yes;
createNode transform -n "line_10" -p "line_grp";
	rename -uid "B43C8A7E-4AA7-C051-2875-60B4110F75FD";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "line_10Shape" -p "line_10";
	rename -uid "69CE736C-4D49-A478-C576-37B6456DC60C";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -s 2 ".cp";
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-20 74 -45
		-19.999999999999172 74 5
		;
	setAttr ".adot" yes;
createNode transform -n "line_grp1" -p "module_grp";
	rename -uid "08332F78-4B26-6096-AA2D-A5AE5EE6A03C";
createNode transform -n "line_11" -p "line_grp1";
	rename -uid "0CABCEAA-43D9-6292-B927-91817C628642";
	setAttr ".it" no;
createNode nurbsCurve -n "line_11Shape" -p "line_11";
	rename -uid "527A32DE-4F97-37C1-2C73-B0AB651710B9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-24.999999999999858 48.999999999999993 -74.999999999999986
		-25 20 -75
		;
createNode transform -n "line_12" -p "line_grp1";
	rename -uid "A7E8C824-4D2D-254E-C2DF-CBAA4F1B37EF";
	setAttr ".it" no;
createNode nurbsCurve -n "line_12Shape" -p "line_12";
	rename -uid "6DB7A858-4109-ED37-3AA4-6B81A2E2497B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-14.999999999999858 49 -74.999999999999986
		-15 20 -75
		;
createNode transform -s -n "persp";
	rename -uid "145681EE-4F24-E441-D7CF-1E9DE102D7F3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 176.37806083413585 118.86330801304136 101.95454560528465 ;
	setAttr ".r" -type "double3" -8.1383527295602374 50.200000000000337 6.2109562705085433e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "84C12346-4E12-DDC4-180C-5DA852569A94";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 275.44170221622045;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -19.999999999999929 34.5 -75 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "1B59D5C9-4ABC-6A4D-03D6-3DA7459711F3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "5459F290-4360-F428-6218-5087E749C4AF";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "FF091AF2-4513-4764-E58E-33A293ADA65D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "4549C01A-480C-0A97-3B44-3BA9D8ABFCE5";
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
	rename -uid "A917B4BB-4876-F583-95EB-7DA09F410130";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "9CA3E971-49B2-20C8-E2BE-2386848B5FA2";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode script -n "RGN";
	rename -uid "BA77F85D-404F-DF54-5583-E9836738C6A9";
	addAttr -ci true -sn "rigID" -ln "rigID" -dt "string";
	addAttr -ci true -sn "rigClass" -ln "rigClass" -dt "string";
	addAttr -s false -ci true -sn "moduleG" -ln "moduleG" -at "message";
	addAttr -s false -ci true -k true -sn "master_guide" -ln "master_guide" -at "message";
	addAttr -s false -ci true -sn "pvcRota" -ln "pvcRota" -at "message";
	setAttr ".rigID" -type "string" "rtQHLeg0";
	setAttr ".rigClass" -type "string" "QuadLeg";
createNode decomposeMatrix -n "rtQHLeg0_DCM_1";
	rename -uid "F290524D-41C0-65A7-D772-E0BA381652AB";
createNode decomposeMatrix -n "rtQHLeg0_DCM_2";
	rename -uid "8994F38C-4D55-24F3-BA46-C0851824DD81";
createNode decomposeMatrix -n "rtQHLeg0_DCM_4";
	rename -uid "3A10DDA8-4D97-81D3-D6F3-3D92F2383047";
createNode decomposeMatrix -n "rtQHLeg0_DCM_5";
	rename -uid "CF9EA494-4464-7B3B-0DD6-4891DAA1A156";
createNode decomposeMatrix -n "rtQHLeg0_DCM_6";
	rename -uid "183E3599-4D24-7880-EE3E-1D80E37EF820";
createNode decomposeMatrix -n "rtQHLeg0_DCM_7";
	rename -uid "2B1FDA72-4BEE-3019-2C2E-05B5EF1986F4";
createNode decomposeMatrix -n "rtQHLeg0_DCM_9";
	rename -uid "085A7D10-429F-6F7A-8ACB-ADAB816E43A8";
createNode decomposeMatrix -n "rtQHLeg0_DCM_10";
	rename -uid "961A733B-4856-7A7F-2D97-3FB613EF8475";
createNode decomposeMatrix -n "rtQHLeg0_DCM_11";
	rename -uid "0958AED3-4E82-8FF7-4879-F28BEFDA3427";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "0F8F77FB-4D3E-AD8B-0459-7288CD3B138D";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "1AEAD5F9-484D-704E-19DE-12BFB1A2BE12";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "01B4039A-491F-3D62-68BE-51828F23E74F";
createNode displayLayerManager -n "layerManager";
	rename -uid "5A43AA98-4034-B2B4-5A74-78B1A4EE96C1";
createNode displayLayer -n "defaultLayer";
	rename -uid "8B4EE4E4-4910-C279-FCE7-BF8D08289234";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "793D0F0D-43AB-4B72-77CC-17857B9D82DB";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "EA2AA5AA-4907-123C-464B-3085FB537D5C";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "CBFD6A7F-4837-F444-23B1-B5B47765F636";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n"
		+ "            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n"
		+ "            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n"
		+ "            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n"
		+ "            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"ModelPanel\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"ModelPanel\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 684\n            -height 695\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n"
		+ "            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 1\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n"
		+ "            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n"
		+ "            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n"
		+ "            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 1\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -image \"C:/Documents and Settings/bwilliams/My Documents/maya/projects/Tests/images/Cubes_01_large.tif\" \n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n"
		+ "                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"|persp\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererOverrideName \"stereoOverrideVP2\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n"
		+ "                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n"
		+ "                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 684\n            -height 695\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -selectCommand \"{}\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 684\\n    -height 695\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 684\\n    -height 695\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 200 -divisions 10 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels yes -displayOrthographicLabels yes -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition axis;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"1 0.000000 0.000000 -1.000000 -0.000016 1.000000 0.000000\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "8B3419AC-4D56-2F87-3F94-B4A54E3E9888";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 80 -ast 1 -aet 80 ";
	setAttr ".st" 6;
createNode multiplyDivide -n "multiplyDivide1";
	rename -uid "4255B7A1-4B05-36EA-02E7-30B33300ECB2";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "3084FCB7-4B93-C73D-0C82-55AD1E92B7A6";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 392.90321502422148 -15.649926470621105 ;
	setAttr ".tgi[0].vh" -type "double2" 1315.1701151860511 598.78422997898224 ;
	setAttr -s 12 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 317.14285278320312;
	setAttr ".tgi[0].ni[0].y" -362.85714721679688;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 317.14285278320312;
	setAttr ".tgi[0].ni[1].y" -232.85714721679688;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 965.17401123046875;
	setAttr ".tgi[0].ni[2].y" 170.05429077148438;
	setAttr ".tgi[0].ni[2].nvs" 18306;
	setAttr ".tgi[0].ni[3].x" 984.3961181640625;
	setAttr ".tgi[0].ni[3].y" 302.71539306640625;
	setAttr ".tgi[0].ni[3].nvs" 18306;
	setAttr ".tgi[0].ni[4].x" 528.2125244140625;
	setAttr ".tgi[0].ni[4].y" 159.23202514648438;
	setAttr ".tgi[0].ni[4].nvs" 18306;
	setAttr ".tgi[0].ni[5].x" 317.14285278320312;
	setAttr ".tgi[0].ni[5].y" 157.14285278320312;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 941.052490234375;
	setAttr ".tgi[0].ni[6].y" 416.91036987304688;
	setAttr ".tgi[0].ni[6].nvs" 18306;
	setAttr ".tgi[0].ni[7].x" 352.85714721679688;
	setAttr ".tgi[0].ni[7].y" -27.142856597900391;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 640.5615234375;
	setAttr ".tgi[0].ni[8].y" 423.44454956054688;
	setAttr ".tgi[0].ni[8].nvs" 18306;
	setAttr ".tgi[0].ni[9].x" 528.2125244140625;
	setAttr ".tgi[0].ni[9].y" 289.23202514648438;
	setAttr ".tgi[0].ni[9].nvs" 18306;
	setAttr ".tgi[0].ni[10].x" 317.14285278320312;
	setAttr ".tgi[0].ni[10].y" 417.14285278320312;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 864.50494384765625;
	setAttr ".tgi[0].ni[11].y" 533.37884521484375;
	setAttr ".tgi[0].ni[11].nvs" 18306;
createNode decomposeMatrix -n "DCM_1";
	rename -uid "6386D1C9-42E8-6FFF-8EAB-C88E33FCFFD3";
createNode decomposeMatrix -n "DCM_2";
	rename -uid "AB038F21-4F93-F378-49B8-FE9ABCAB7660";
createNode decomposeMatrix -n "DCM_3";
	rename -uid "7805BF70-4F8E-6A14-9DDD-7D90672AF420";
createNode decomposeMatrix -n "DCM_4";
	rename -uid "C91806FE-419A-7443-0FAB-07B7A32E8F58";
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
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
	setAttr -k on ".fzn";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".rm";
	setAttr -k on ".lm";
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr -k on ".hom";
	setAttr -k on ".hodm";
	setAttr -k on ".xry";
	setAttr -k on ".jxr";
	setAttr -k on ".sslt";
	setAttr -k on ".cbr";
	setAttr -k on ".bbr";
	setAttr -k on ".mhl";
	setAttr -k on ".cons";
	setAttr -k on ".vac";
	setAttr -k on ".hwi";
	setAttr -k on ".csvd";
	setAttr -av -k on ".ta";
	setAttr -av -k on ".tq";
	setAttr -k on ".ts";
	setAttr -av -k on ".etmr";
	setAttr -av -k on ".tmr";
	setAttr -av -k on ".aoon";
	setAttr -av -k on ".aoam";
	setAttr -av -k on ".aora";
	setAttr -k on ".aofr";
	setAttr -av -k on ".aosm";
	setAttr -k on ".hff";
	setAttr -av -k on ".hfd";
	setAttr -av -k on ".hfs";
	setAttr -av -k on ".hfe";
	setAttr -av ".hfc";
	setAttr -av -k on ".hfcr";
	setAttr -av -k on ".hfcg";
	setAttr -av -k on ".hfcb";
	setAttr -av -k on ".hfa";
	setAttr -av -k on ".mbe";
	setAttr -k on ".mbt";
	setAttr -av -k on ".mbsof";
	setAttr -k on ".mbsc";
	setAttr -k on ".mbc";
	setAttr -k on ".mbfa";
	setAttr -k on ".mbftb";
	setAttr -k on ".mbftg";
	setAttr -k on ".mbftr";
	setAttr -k on ".mbfta";
	setAttr -k on ".mbfe";
	setAttr -k on ".mbme";
	setAttr -k on ".mbcsx";
	setAttr -k on ".mbcsy";
	setAttr -k on ".mbasx";
	setAttr -k on ".mbasy";
	setAttr -k on ".blen";
	setAttr -k on ".blth";
	setAttr -k on ".blfr";
	setAttr -k on ".blfa";
	setAttr -k on ".blat";
	setAttr -av -k on ".msaa";
	setAttr -av -k on ".aasc";
	setAttr -k on ".aasq";
	setAttr -k on ".laa";
	setAttr -k on ".fprt" yes;
	setAttr -k on ".rtfm";
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
select -ne :initialShadingGroup;
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
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
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
	setAttr -k on ".rv";
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
	setAttr -av -k on ".pram";
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
select -ne :hyperGraphLayout;
	setAttr -k on ".nds";
	setAttr -s 12 ".hyp";
connectAttr "hip_guide_aimConstraint1.crx" "hip_guide.rx" -l on;
connectAttr "hip_guide_aimConstraint1.cry" "hip_guide.ry" -l on;
connectAttr "hip_guide_aimConstraint1.crz" "hip_guide.rz" -l on;
connectAttr "hip_guide.pim" "hip_guide_aimConstraint1.cpim";
connectAttr "hip_guide.t" "hip_guide_aimConstraint1.ct";
connectAttr "hip_guide.rp" "hip_guide_aimConstraint1.crp";
connectAttr "hip_guide.rpt" "hip_guide_aimConstraint1.crt";
connectAttr "hip_guide.ro" "hip_guide_aimConstraint1.cro";
connectAttr "upr_guide.t" "hip_guide_aimConstraint1.tg[0].tt";
connectAttr "upr_guide.rp" "hip_guide_aimConstraint1.tg[0].trp";
connectAttr "upr_guide.rpt" "hip_guide_aimConstraint1.tg[0].trt";
connectAttr "upr_guide.pm" "hip_guide_aimConstraint1.tg[0].tpm";
connectAttr "hip_guide_aimConstraint1.w0" "hip_guide_aimConstraint1.tg[0].tw";
connectAttr "plane_guide.wm" "hip_guide_aimConstraint1.wum";
connectAttr "upr_guide_aimConstraint1.crx" "upr_guide.rx" -l on;
connectAttr "upr_guide_aimConstraint1.cry" "upr_guide.ry" -l on;
connectAttr "upr_guide_aimConstraint1.crz" "upr_guide.rz" -l on;
connectAttr "upr_guide.pim" "upr_guide_aimConstraint1.cpim";
connectAttr "upr_guide.t" "upr_guide_aimConstraint1.ct";
connectAttr "upr_guide.rp" "upr_guide_aimConstraint1.crp";
connectAttr "upr_guide.rpt" "upr_guide_aimConstraint1.crt";
connectAttr "upr_guide.ro" "upr_guide_aimConstraint1.cro";
connectAttr "lwr_guide.t" "upr_guide_aimConstraint1.tg[0].tt";
connectAttr "lwr_guide.rp" "upr_guide_aimConstraint1.tg[0].trp";
connectAttr "lwr_guide.rpt" "upr_guide_aimConstraint1.tg[0].trt";
connectAttr "lwr_guide.pm" "upr_guide_aimConstraint1.tg[0].tpm";
connectAttr "upr_guide_aimConstraint1.w0" "upr_guide_aimConstraint1.tg[0].tw";
connectAttr "plane_guide.wm" "upr_guide_aimConstraint1.wum";
connectAttr "master_guide.patellaBone" "patella_guide.v" -l on;
connectAttr "mid_guide_ofs_pointConstraint1.ctx" "plane_guide_ofs.tx";
connectAttr "mid_guide_ofs_pointConstraint1.cty" "plane_guide_ofs.ty";
connectAttr "mid_guide_ofs_pointConstraint1.ctz" "plane_guide_ofs.tz";
connectAttr "plane_guide_aimConstraint1.crx" "plane_guide.rx" -l on;
connectAttr "plane_guide_aimConstraint1.cry" "plane_guide.ry" -l on;
connectAttr "plane_guide_aimConstraint1.crz" "plane_guide.rz" -l on;
connectAttr "plane_guide.pim" "plane_guide_aimConstraint1.cpim";
connectAttr "plane_guide.t" "plane_guide_aimConstraint1.ct";
connectAttr "plane_guide.rp" "plane_guide_aimConstraint1.crp";
connectAttr "plane_guide.rpt" "plane_guide_aimConstraint1.crt";
connectAttr "plane_guide.ro" "plane_guide_aimConstraint1.cro";
connectAttr "pv_loc.t" "plane_guide_aimConstraint1.tg[0].tt";
connectAttr "pv_loc.rp" "plane_guide_aimConstraint1.tg[0].trp";
connectAttr "pv_loc.rpt" "plane_guide_aimConstraint1.tg[0].trt";
connectAttr "pv_loc.pm" "plane_guide_aimConstraint1.tg[0].tpm";
connectAttr "plane_guide_aimConstraint1.w0" "plane_guide_aimConstraint1.tg[0].tw"
		;
connectAttr "fetlock_guide.wm" "plane_guide_aimConstraint1.wum";
connectAttr "palm_guide_aimConstraint1.crx" "palm_guide.rx" -l on;
connectAttr "palm_guide_aimConstraint1.cry" "palm_guide.ry" -l on;
connectAttr "palm_guide_aimConstraint1.crz" "palm_guide.rz" -l on;
connectAttr "palm_guide.pim" "palm_guide_aimConstraint1.cpim";
connectAttr "palm_guide.t" "palm_guide_aimConstraint1.ct";
connectAttr "palm_guide.rp" "palm_guide_aimConstraint1.crp";
connectAttr "palm_guide.rpt" "palm_guide_aimConstraint1.crt";
connectAttr "palm_guide.ro" "palm_guide_aimConstraint1.cro";
connectAttr "fetlock_guide.t" "palm_guide_aimConstraint1.tg[0].tt";
connectAttr "fetlock_guide.rp" "palm_guide_aimConstraint1.tg[0].trp";
connectAttr "fetlock_guide.rpt" "palm_guide_aimConstraint1.tg[0].trt";
connectAttr "fetlock_guide.pm" "palm_guide_aimConstraint1.tg[0].tpm";
connectAttr "palm_guide_aimConstraint1.w0" "palm_guide_aimConstraint1.tg[0].tw";
connectAttr "pvc_guide.wm" "palm_guide_aimConstraint1.wum";
connectAttr "ulna_guide_aimConstraint1.crx" "ulna_guide.rx" -l on;
connectAttr "ulna_guide_aimConstraint1.cry" "ulna_guide.ry" -l on;
connectAttr "ulna_guide_aimConstraint1.crz" "ulna_guide.rz" -l on;
connectAttr "master_guide.twistBones" "ulna_guide.v";
connectAttr "ulna_guide.pim" "ulna_guide_aimConstraint1.cpim";
connectAttr "ulna_guide.t" "ulna_guide_aimConstraint1.ct";
connectAttr "ulna_guide.rp" "ulna_guide_aimConstraint1.crp";
connectAttr "ulna_guide.rpt" "ulna_guide_aimConstraint1.crt";
connectAttr "ulna_guide.ro" "ulna_guide_aimConstraint1.cro";
connectAttr "ulnaEnd_guide.t" "ulna_guide_aimConstraint1.tg[0].tt";
connectAttr "ulnaEnd_guide.rp" "ulna_guide_aimConstraint1.tg[0].trp";
connectAttr "ulnaEnd_guide.rpt" "ulna_guide_aimConstraint1.tg[0].trt";
connectAttr "ulnaEnd_guide.pm" "ulna_guide_aimConstraint1.tg[0].tpm";
connectAttr "ulna_guide_aimConstraint1.w0" "ulna_guide_aimConstraint1.tg[0].tw";
connectAttr "master_guide.wm" "ulna_guide_aimConstraint1.wum";
connectAttr "radius_guide_aimConstraint1.crx" "radius_guide.rx" -l on;
connectAttr "radius_guide_aimConstraint1.cry" "radius_guide.ry" -l on;
connectAttr "radius_guide_aimConstraint1.crz" "radius_guide.rz" -l on;
connectAttr "master_guide.twistBones" "radius_guide.v";
connectAttr "radius_guide.pim" "radius_guide_aimConstraint1.cpim";
connectAttr "radius_guide.t" "radius_guide_aimConstraint1.ct";
connectAttr "radius_guide.rp" "radius_guide_aimConstraint1.crp";
connectAttr "radius_guide.rpt" "radius_guide_aimConstraint1.crt";
connectAttr "radius_guide.ro" "radius_guide_aimConstraint1.cro";
connectAttr "radiusEnd_guide.t" "radius_guide_aimConstraint1.tg[0].tt";
connectAttr "radiusEnd_guide.rp" "radius_guide_aimConstraint1.tg[0].trp";
connectAttr "radiusEnd_guide.rpt" "radius_guide_aimConstraint1.tg[0].trt";
connectAttr "radiusEnd_guide.pm" "radius_guide_aimConstraint1.tg[0].tpm";
connectAttr "radius_guide_aimConstraint1.w0" "radius_guide_aimConstraint1.tg[0].tw"
		;
connectAttr "master_guide.wm" "radius_guide_aimConstraint1.wum";
connectAttr "lwr_guide_aimConstraint1.crx" "lwr_guide.rx" -l on;
connectAttr "lwr_guide_aimConstraint1.cry" "lwr_guide.ry" -l on;
connectAttr "lwr_guide_aimConstraint1.crz" "lwr_guide.rz" -l on;
connectAttr "lwr_guide.pim" "lwr_guide_aimConstraint1.cpim";
connectAttr "lwr_guide.t" "lwr_guide_aimConstraint1.ct";
connectAttr "lwr_guide.rp" "lwr_guide_aimConstraint1.crp";
connectAttr "lwr_guide.rpt" "lwr_guide_aimConstraint1.crt";
connectAttr "lwr_guide.ro" "lwr_guide_aimConstraint1.cro";
connectAttr "palm_guide.t" "lwr_guide_aimConstraint1.tg[0].tt";
connectAttr "palm_guide.rp" "lwr_guide_aimConstraint1.tg[0].trp";
connectAttr "palm_guide.rpt" "lwr_guide_aimConstraint1.tg[0].trt";
connectAttr "palm_guide.pm" "lwr_guide_aimConstraint1.tg[0].tpm";
connectAttr "lwr_guide_aimConstraint1.w0" "lwr_guide_aimConstraint1.tg[0].tw";
connectAttr "plane_guide.wm" "lwr_guide_aimConstraint1.wum";
connectAttr "plane_guide_ofs.pim" "mid_guide_ofs_pointConstraint1.cpim";
connectAttr "plane_guide_ofs.rp" "mid_guide_ofs_pointConstraint1.crp";
connectAttr "plane_guide_ofs.rpt" "mid_guide_ofs_pointConstraint1.crt";
connectAttr "upr_guide.t" "mid_guide_ofs_pointConstraint1.tg[0].tt";
connectAttr "upr_guide.rp" "mid_guide_ofs_pointConstraint1.tg[0].trp";
connectAttr "upr_guide.rpt" "mid_guide_ofs_pointConstraint1.tg[0].trt";
connectAttr "upr_guide.pm" "mid_guide_ofs_pointConstraint1.tg[0].tpm";
connectAttr "mid_guide_ofs_pointConstraint1.w0" "mid_guide_ofs_pointConstraint1.tg[0].tw"
		;
connectAttr "fetlock_guide.t" "mid_guide_ofs_pointConstraint1.tg[1].tt";
connectAttr "fetlock_guide.rp" "mid_guide_ofs_pointConstraint1.tg[1].trp";
connectAttr "fetlock_guide.rpt" "mid_guide_ofs_pointConstraint1.tg[1].trt";
connectAttr "fetlock_guide.pm" "mid_guide_ofs_pointConstraint1.tg[1].tpm";
connectAttr "mid_guide_ofs_pointConstraint1.w1" "mid_guide_ofs_pointConstraint1.tg[1].tw"
		;
connectAttr "ulnaEnd_guide_aimConstraint1.crx" "ulnaEnd_guide.rx" -l on;
connectAttr "ulnaEnd_guide_aimConstraint1.cry" "ulnaEnd_guide.ry" -l on;
connectAttr "ulnaEnd_guide_aimConstraint1.crz" "ulnaEnd_guide.rz" -l on;
connectAttr "master_guide.twistBones" "ulnaEnd_guide.v";
connectAttr "ulnaEnd_guide.pim" "ulnaEnd_guide_aimConstraint1.cpim";
connectAttr "ulnaEnd_guide.t" "ulnaEnd_guide_aimConstraint1.ct";
connectAttr "ulnaEnd_guide.rp" "ulnaEnd_guide_aimConstraint1.crp";
connectAttr "ulnaEnd_guide.rpt" "ulnaEnd_guide_aimConstraint1.crt";
connectAttr "ulnaEnd_guide.ro" "ulnaEnd_guide_aimConstraint1.cro";
connectAttr "ulna_guide.t" "ulnaEnd_guide_aimConstraint1.tg[0].tt";
connectAttr "ulna_guide.rp" "ulnaEnd_guide_aimConstraint1.tg[0].trp";
connectAttr "ulna_guide.rpt" "ulnaEnd_guide_aimConstraint1.tg[0].trt";
connectAttr "ulna_guide.pm" "ulnaEnd_guide_aimConstraint1.tg[0].tpm";
connectAttr "ulnaEnd_guide_aimConstraint1.w0" "ulnaEnd_guide_aimConstraint1.tg[0].tw"
		;
connectAttr "master_guide.wm" "ulnaEnd_guide_aimConstraint1.wum";
connectAttr "radiusEnd_guide_aimConstraint1.crx" "radiusEnd_guide.rx" -l on;
connectAttr "radiusEnd_guide_aimConstraint1.cry" "radiusEnd_guide.ry" -l on;
connectAttr "radiusEnd_guide_aimConstraint1.crz" "radiusEnd_guide.rz" -l on;
connectAttr "master_guide.twistBones" "radiusEnd_guide.v";
connectAttr "radiusEnd_guide.pim" "radiusEnd_guide_aimConstraint1.cpim";
connectAttr "radiusEnd_guide.t" "radiusEnd_guide_aimConstraint1.ct";
connectAttr "radiusEnd_guide.rp" "radiusEnd_guide_aimConstraint1.crp";
connectAttr "radiusEnd_guide.rpt" "radiusEnd_guide_aimConstraint1.crt";
connectAttr "radiusEnd_guide.ro" "radiusEnd_guide_aimConstraint1.cro";
connectAttr "radius_guide.t" "radiusEnd_guide_aimConstraint1.tg[0].tt";
connectAttr "radius_guide.rp" "radiusEnd_guide_aimConstraint1.tg[0].trp";
connectAttr "radius_guide.rpt" "radiusEnd_guide_aimConstraint1.tg[0].trt";
connectAttr "radius_guide.pm" "radiusEnd_guide_aimConstraint1.tg[0].tpm";
connectAttr "radiusEnd_guide_aimConstraint1.w0" "radiusEnd_guide_aimConstraint1.tg[0].tw"
		;
connectAttr "master_guide.wm" "radiusEnd_guide_aimConstraint1.wum";
connectAttr "pastern_guide_ofs_pointConstraint1.ctx" "pastern_guide_ofs.tx";
connectAttr "pastern_guide_ofs_pointConstraint1.cty" "pastern_guide_ofs.ty";
connectAttr "pastern_guide_ofs_pointConstraint1.ctz" "pastern_guide_ofs.tz";
connectAttr "pastern_guide_ofs_aimConstraint1.crx" "pastern_guide_ofs.rx";
connectAttr "pastern_guide_ofs_aimConstraint1.cry" "pastern_guide_ofs.ry";
connectAttr "pastern_guide_ofs_aimConstraint1.crz" "pastern_guide_ofs.rz";
connectAttr "pastern_guide_aimConstraint1.crx" "pastern_guide.rx" -l on;
connectAttr "pastern_guide_aimConstraint1.cry" "pastern_guide.ry" -l on;
connectAttr "pastern_guide_aimConstraint1.crz" "pastern_guide.rz" -l on;
connectAttr "pastern_guide.pim" "pastern_guide_aimConstraint1.cpim";
connectAttr "pastern_guide.t" "pastern_guide_aimConstraint1.ct";
connectAttr "pastern_guide.rp" "pastern_guide_aimConstraint1.crp";
connectAttr "pastern_guide.rpt" "pastern_guide_aimConstraint1.crt";
connectAttr "pastern_guide.ro" "pastern_guide_aimConstraint1.cro";
connectAttr "pasternTip_guide.t" "pastern_guide_aimConstraint1.tg[0].tt";
connectAttr "pasternTip_guide.rp" "pastern_guide_aimConstraint1.tg[0].trp";
connectAttr "pasternTip_guide.rpt" "pastern_guide_aimConstraint1.tg[0].trt";
connectAttr "pasternTip_guide.pm" "pastern_guide_aimConstraint1.tg[0].tpm";
connectAttr "pastern_guide_aimConstraint1.w0" "pastern_guide_aimConstraint1.tg[0].tw"
		;
connectAttr "pasternTip_guide.wm" "pastern_guide_aimConstraint1.wum";
connectAttr "pastern_guide_ofs.pim" "pastern_guide_ofs_pointConstraint1.cpim";
connectAttr "pastern_guide_ofs.rp" "pastern_guide_ofs_pointConstraint1.crp";
connectAttr "pastern_guide_ofs.rpt" "pastern_guide_ofs_pointConstraint1.crt";
connectAttr "fetlock_guide.t" "pastern_guide_ofs_pointConstraint1.tg[0].tt";
connectAttr "fetlock_guide.rp" "pastern_guide_ofs_pointConstraint1.tg[0].trp";
connectAttr "fetlock_guide.rpt" "pastern_guide_ofs_pointConstraint1.tg[0].trt";
connectAttr "fetlock_guide.pm" "pastern_guide_ofs_pointConstraint1.tg[0].tpm";
connectAttr "pastern_guide_ofs_pointConstraint1.w0" "pastern_guide_ofs_pointConstraint1.tg[0].tw"
		;
connectAttr "pasternTip_guide.t" "pastern_guide_ofs_pointConstraint1.tg[1].tt";
connectAttr "pasternTip_guide.rp" "pastern_guide_ofs_pointConstraint1.tg[1].trp"
		;
connectAttr "pasternTip_guide.rpt" "pastern_guide_ofs_pointConstraint1.tg[1].trt"
		;
connectAttr "pasternTip_guide.pm" "pastern_guide_ofs_pointConstraint1.tg[1].tpm"
		;
connectAttr "pastern_guide_ofs_pointConstraint1.w1" "pastern_guide_ofs_pointConstraint1.tg[1].tw"
		;
connectAttr "pastern_guide_ofs.pim" "pastern_guide_ofs_aimConstraint1.cpim";
connectAttr "pastern_guide_ofs.t" "pastern_guide_ofs_aimConstraint1.ct";
connectAttr "pastern_guide_ofs.rp" "pastern_guide_ofs_aimConstraint1.crp";
connectAttr "pastern_guide_ofs.rpt" "pastern_guide_ofs_aimConstraint1.crt";
connectAttr "pastern_guide_ofs.ro" "pastern_guide_ofs_aimConstraint1.cro";
connectAttr "pasternTip_guide.t" "pastern_guide_ofs_aimConstraint1.tg[0].tt";
connectAttr "pasternTip_guide.rp" "pastern_guide_ofs_aimConstraint1.tg[0].trp";
connectAttr "pasternTip_guide.rpt" "pastern_guide_ofs_aimConstraint1.tg[0].trt";
connectAttr "pasternTip_guide.pm" "pastern_guide_ofs_aimConstraint1.tg[0].tpm";
connectAttr "pastern_guide_ofs_aimConstraint1.w0" "pastern_guide_ofs_aimConstraint1.tg[0].tw"
		;
connectAttr "null1_pointConstraint1.ctx" "pv_loc_ofs.tx";
connectAttr "null1_pointConstraint1.cty" "pv_loc_ofs.ty";
connectAttr "null1_pointConstraint1.ctz" "pv_loc_ofs.tz";
connectAttr "pv_loc_aimConstraint1.crx" "pv_loc.rx";
connectAttr "pv_loc_aimConstraint1.cry" "pv_loc.ry";
connectAttr "pv_loc_aimConstraint1.crz" "pv_loc.rz";
connectAttr "pv_loc.pim" "pv_loc_aimConstraint1.cpim";
connectAttr "pv_loc.t" "pv_loc_aimConstraint1.ct";
connectAttr "pv_loc.rp" "pv_loc_aimConstraint1.crp";
connectAttr "pv_loc.rpt" "pv_loc_aimConstraint1.crt";
connectAttr "pv_loc.ro" "pv_loc_aimConstraint1.cro";
connectAttr "plane_guide.t" "pv_loc_aimConstraint1.tg[0].tt";
connectAttr "plane_guide.rp" "pv_loc_aimConstraint1.tg[0].trp";
connectAttr "plane_guide.rpt" "pv_loc_aimConstraint1.tg[0].trt";
connectAttr "plane_guide.pm" "pv_loc_aimConstraint1.tg[0].tpm";
connectAttr "pv_loc_aimConstraint1.w0" "pv_loc_aimConstraint1.tg[0].tw";
connectAttr "pv_loc_ofs.pim" "null1_pointConstraint1.cpim";
connectAttr "pv_loc_ofs.rp" "null1_pointConstraint1.crp";
connectAttr "pv_loc_ofs.rpt" "null1_pointConstraint1.crt";
connectAttr "upr_guide.t" "null1_pointConstraint1.tg[0].tt";
connectAttr "upr_guide.rp" "null1_pointConstraint1.tg[0].trp";
connectAttr "upr_guide.rpt" "null1_pointConstraint1.tg[0].trt";
connectAttr "upr_guide.pm" "null1_pointConstraint1.tg[0].tpm";
connectAttr "null1_pointConstraint1.w0" "null1_pointConstraint1.tg[0].tw";
connectAttr "fetlock_guide.t" "null1_pointConstraint1.tg[1].tt";
connectAttr "fetlock_guide.rp" "null1_pointConstraint1.tg[1].trp";
connectAttr "fetlock_guide.rpt" "null1_pointConstraint1.tg[1].trt";
connectAttr "fetlock_guide.pm" "null1_pointConstraint1.tg[1].tpm";
connectAttr "null1_pointConstraint1.w1" "null1_pointConstraint1.tg[1].tw";
connectAttr "master_guide.toeBones" "toesRoot_guide.v";
connectAttr "toesRoot_guide_pointConstraint1.ctx" "toesRoot_guide.tx" -l on;
connectAttr "toesRoot_guide_pointConstraint1.cty" "toesRoot_guide.ty" -l on;
connectAttr "toesRoot_guide_pointConstraint1.ctz" "toesRoot_guide.tz" -l on;
connectAttr "multiplyDivide1.ox" "toesRoot_guide_ofs1.tx";
connectAttr "multiplyDivide1.oy" "toesRoot_guide_ofs1.ty";
connectAttr "multiplyDivide1.oz" "toesRoot_guide_ofs1.tz";
connectAttr "toe00_2_guide.s" "toe00_3_guide.is";
connectAttr "toe00_3_guide.s" "toe00_4_guide.is";
connectAttr "toe00_2_guide.s" "toe00_1_guide.is";
connectAttr "toe01_2_guide.s" "toe01_3_guide.is";
connectAttr "toe01_3_guide.s" "toe01_4_guide.is";
connectAttr "toe01_4_guide.s" "toe01_5_guide.is";
connectAttr "toe01_2_guide.s" "toe01_1_guide.is";
connectAttr "toe02_2_guide.s" "toe02_3_guide.is";
connectAttr "toe02_3_guide.s" "toe02_4_guide.is";
connectAttr "toe02_4_guide.s" "toe02_5_guide.is";
connectAttr "toe02_2_guide.s" "toe02_1_guide.is";
connectAttr "toe03_2_guide.s" "toe03_3_guide.is";
connectAttr "toe03_3_guide.s" "toe03_4_guide.is";
connectAttr "toe03_4_guide.s" "toe03_5_guide.is";
connectAttr "toe03_2_guide.s" "toe03_1_guide.is";
connectAttr "toe04_2_guide.s" "toe04_3_guide.is";
connectAttr "toe04_3_guide.s" "toe04_4_guide.is";
connectAttr "toe04_4_guide.s" "toe04_5_guide.is";
connectAttr "toe04_2_guide.s" "toe04_1_guide.is";
connectAttr "toesRoot_guide.pim" "toesRoot_guide_pointConstraint1.cpim";
connectAttr "toesRoot_guide.rp" "toesRoot_guide_pointConstraint1.crp";
connectAttr "toesRoot_guide.rpt" "toesRoot_guide_pointConstraint1.crt";
connectAttr "palm_guide.t" "toesRoot_guide_pointConstraint1.tg[0].tt";
connectAttr "palm_guide.rp" "toesRoot_guide_pointConstraint1.tg[0].trp";
connectAttr "palm_guide.rpt" "toesRoot_guide_pointConstraint1.tg[0].trt";
connectAttr "palm_guide.pm" "toesRoot_guide_pointConstraint1.tg[0].tpm";
connectAttr "toesRoot_guide_pointConstraint1.w0" "toesRoot_guide_pointConstraint1.tg[0].tw"
		;
connectAttr "rtQHLeg0_DCM_1.ot" "line_1Shape.cp[0]";
connectAttr "rtQHLeg0_DCM_2.ot" "line_1Shape.cp[1]";
connectAttr "rtQHLeg0_DCM_4.ot" "line_4Shape.cp[0]";
connectAttr "rtQHLeg0_DCM_5.ot" "line_4Shape.cp[1]";
connectAttr "rtQHLeg0_DCM_5.ot" "line_5Shape.cp[0]";
connectAttr "rtQHLeg0_DCM_6.ot" "line_5Shape.cp[1]";
connectAttr "rtQHLeg0_DCM_6.ot" "line_6Shape.cp[0]";
connectAttr "rtQHLeg0_DCM_7.ot" "line_6Shape.cp[1]";
connectAttr "rtQHLeg0_DCM_2.ot" "line_8Shape.cp[0]";
connectAttr "rtQHLeg0_DCM_9.ot" "line_8Shape.cp[1]";
connectAttr "rtQHLeg0_DCM_9.ot" "line_9Shape.cp[0]";
connectAttr "rtQHLeg0_DCM_4.ot" "line_9Shape.cp[1]";
connectAttr "rtQHLeg0_DCM_10.ot" "line_10Shape.cp[0]";
connectAttr "rtQHLeg0_DCM_11.ot" "line_10Shape.cp[1]";
connectAttr "master_guide.twistBones" "line_grp1.v";
connectAttr "DCM_1.ot" "line_11Shape.cp[0]";
connectAttr "DCM_2.ot" "line_11Shape.cp[1]";
connectAttr "DCM_3.ot" "line_12Shape.cp[0]";
connectAttr "DCM_4.ot" "line_12Shape.cp[1]";
connectAttr "module_grp.msg" "RGN.moduleG";
connectAttr "master_guide.msg" "RGN.master_guide";
connectAttr "hip_guide.wm" "rtQHLeg0_DCM_1.imat";
connectAttr "upr_guide.wm" "rtQHLeg0_DCM_2.imat";
connectAttr "palm_guide.wm" "rtQHLeg0_DCM_4.imat";
connectAttr "fetlock_guide.wm" "rtQHLeg0_DCM_5.imat";
connectAttr "pastern_guide.wm" "rtQHLeg0_DCM_6.imat";
connectAttr "pasternTip_guide.wm" "rtQHLeg0_DCM_7.imat";
connectAttr "lwr_guide.wm" "rtQHLeg0_DCM_9.imat";
connectAttr "plane_guide.wm" "rtQHLeg0_DCM_10.imat";
connectAttr "pvc_guide.wm" "rtQHLeg0_DCM_11.imat";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "toesRoot_guide.tx" "multiplyDivide1.i1x";
connectAttr "toesRoot_guide.ty" "multiplyDivide1.i1y";
connectAttr "toesRoot_guide.tz" "multiplyDivide1.i1z";
connectAttr "ulna_guideShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "radius_guideShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "ulna_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "radius_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "radiusEnd_guideShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "ulnaEnd_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr "master_guideShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "master_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn";
connectAttr "ulnaEnd_guideShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "radiusEnd_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "ulna_guide.wm" "DCM_1.imat";
connectAttr "ulnaEnd_guide.wm" "DCM_2.imat";
connectAttr "radius_guide.wm" "DCM_3.imat";
connectAttr "radiusEnd_guide.wm" "DCM_4.imat";
connectAttr "multiplyDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "palm_heelPos_guide.msg" ":hyperGraphLayout.hyp[84996].dn";
connectAttr "palm_inPos_guide.msg" ":hyperGraphLayout.hyp[84997].dn";
connectAttr "palm_outPos_guide.msg" ":hyperGraphLayout.hyp[84998].dn";
connectAttr "hip_guide_ofs.msg" ":hyperGraphLayout.hyp[84999].dn";
connectAttr "upr_guide_ofs.msg" ":hyperGraphLayout.hyp[85000].dn";
connectAttr "plane_guide_ofs.msg" ":hyperGraphLayout.hyp[85001].dn";
connectAttr "fetlock_guide_ofs.msg" ":hyperGraphLayout.hyp[85002].dn";
connectAttr "pastern_guide_ofs.msg" ":hyperGraphLayout.hyp[85003].dn";
connectAttr "pasternTip_guide_ofs.msg" ":hyperGraphLayout.hyp[85004].dn";
connectAttr "pv_loc_ofs.msg" ":hyperGraphLayout.hyp[85005].dn";
connectAttr "line_grp.msg" ":hyperGraphLayout.hyp[85006].dn";
connectAttr "palm_toePos_guide.msg" ":hyperGraphLayout.hyp[85009].dn";
// End of rtQHLeg.ma
