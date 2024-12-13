//Maya ASCII 2023 scene
//Name: lfQHLeg.ma
//Last modified: Wed, Dec 04, 2024 11:47:00 PM
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
fileInfo "UUID" "E9E25ED4-47F2-9264-2E0B-A8862A83631E";
createNode transform -n "module_grp";
	rename -uid "B465DE7C-43D2-6ADE-81AB-29ACDCCE927F";
	setAttr -cb on ".ro";
createNode transform -n "master_guide" -p "module_grp";
	rename -uid "2E833DF0-43BF-5AB2-8FEF-989229427F58";
	addAttr -ci true -sn "wsMirrorAxis" -ln "wsMirrorAxis" -at "float";
	addAttr -ci true -sn "patellaBone" -ln "patellaBone" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "toeBones" -ln "toeBones" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "twistBones" -ln "twistBones" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 20 0 -75 ;
	setAttr -cb on ".ro";
	setAttr -l on ".wsMirrorAxis";
	setAttr -cb on ".patellaBone" yes;
	setAttr -cb on ".toeBones" yes;
	setAttr -cb on ".twistBones" yes;
createNode transform -n "palm_heelPos_guide" -p "master_guide";
	rename -uid "D187BB72-4037-1AC3-C86E-BBB0D2D9331E";
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
	rename -uid "8107185F-4EC5-BFB4-60AC-34865A955340";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 2 0 2 ;
createNode transform -n "palm_inPos_guide" -p "master_guide";
	rename -uid "FBEBEDCB-4572-B936-08C7-DAB71AAA2B16";
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
createNode locator -n "palm_inPos_guideShape" -p "palm_inPos_guide";
	rename -uid "2430C04C-4470-57E4-8DCC-0D830E5CED9F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 2 0 2 ;
createNode transform -n "palm_outPos_guide" -p "master_guide";
	rename -uid "70B64592-45EB-C589-C45C-CC9D590E88FA";
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
createNode locator -n "palm_outPos_guideShape" -p "palm_outPos_guide";
	rename -uid "0C0D0541-4E1E-98CD-B0F7-C1AFCA1C9250";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 2 0 2 ;
createNode transform -n "palm_toePos_guide" -p "master_guide";
	rename -uid "7496512C-4778-DF9F-0C1C-02B44898A13F";
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
	rename -uid "8B5BB309-41C0-F91E-4DA4-0F9363702931";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 2 0 2 ;
createNode transform -n "hip_guide_ofs" -p "master_guide";
	rename -uid "2A73FCB6-417B-7D7A-1ECE-A697519FF4D0";
	setAttr ".t" -type "double3" 1.7763568394002509e-15 145 30 ;
	setAttr ".r" -type "double3" 180 0 -90 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "hip_guide" -p "hip_guide_ofs";
	rename -uid "E7974861-4A5D-81ED-466D-6DB1165959E9";
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
	rename -uid "A9FB71D9-49FC-6D47-752B-94BACEE4D01F";
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
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 1 0 0 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 90.000000000000057 -32.626456980832721 -3.7764680296476529e-15 ;
	setAttr -k on ".w0";
createNode locator -n "hip_guideShape" -p "hip_guide";
	rename -uid "9D06506F-4DA8-861B-AD2A-49BD541B207B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 5 5 5 ;
createNode transform -n "upr_guide_ofs" -p "master_guide";
	rename -uid "82E9C0B4-4E6F-FA16-EE00-098604CB8A3B";
	setAttr ".t" -type "double3" 0 128 20 ;
	setAttr ".r" -type "double3" -180 0 -90 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "upr_guide" -p "upr_guide_ofs";
	rename -uid "94BF0EF2-494C-7FAF-4432-46853A48D4B4";
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
	rename -uid "CFD8CAF6-4254-E5A5-8FD3-A08BD34B1896";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 5 5 5 ;
createNode aimConstraint -n "upr_guide_aimConstraint1" -p "upr_guide";
	rename -uid "6AA7D09C-4249-9A92-93B6-C3988C6B5CC3";
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
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 1 0 0 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -90.000000000000142 23.585452907352742 -3.8175081910593569e-14 ;
	setAttr -k on ".w0";
createNode transform -n "patella_guide" -p "upr_guide";
	rename -uid "01B25A10-4977-6CF6-228E-E5B8FB0D73AB";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 38 1.4210854715202004e-14 -3 ;
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
	rename -uid "06040BFE-47FF-6427-D81F-41ADA4114DC3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 4 4 4 ;
createNode transform -n "plane_guide_ofs" -p "master_guide";
	rename -uid "7E47EB7C-4C6D-191E-36B1-128C6885295F";
	setAttr -cb on ".ro";
createNode transform -n "plane_guide" -p "plane_guide_ofs";
	rename -uid "41F255F0-4E58-D2E2-388D-4F8535800C88";
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
	rename -uid "62BA38D0-4D1C-FF59-2813-FA92A4B278B9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 5 5 5 ;
createNode aimConstraint -n "plane_guide_aimConstraint1" -p "plane_guide";
	rename -uid "68356591-4B9F-BCB9-207B-40AC3D947640";
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
	setAttr ".wut" 1;
	setAttr ".rsrr" -type "double3" 180 89.999999999999986 0 ;
	setAttr -k on ".w0";
createNode transform -n "palm_guide_ofs" -p "plane_guide";
	rename -uid "36E67564-439E-7EE3-CB25-2A91845C51A4";
	setAttr ".t" -type "double3" 30 20 1.2434497875801753e-13 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 90 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1 1 ;
createNode transform -n "palm_guide" -p "palm_guide_ofs";
	rename -uid "98FDF69F-4A0D-5901-B885-10803CCD46F6";
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
	rename -uid "7F256197-4149-1678-9021-2F8BA76A10E2";
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
	setAttr ".u" -type "double3" 0 0 -1 ;
	setAttr ".wu" -type "double3" 1 0 0 ;
	setAttr ".wut" 1;
	setAttr ".rsrr" -type "double3" 89.999999999999332 3.589057173363988e-13 -179.28425192030079 ;
	setAttr -k on ".w0";
createNode locator -n "palm_guideShape" -p "palm_guide";
	rename -uid "13908C13-4523-8F57-9C68-E2AFC358F8B6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 5 5 5 ;
createNode transform -n "radius_guide_ZRO" -p "palm_guide";
	rename -uid "7360E716-4B87-7DEC-CCF1-32A00B64DF30";
	setAttr ".t" -type "double3" 5 5 0 ;
	setAttr ".s" -type "double3" 0.99999999999999933 1.0000000000000009 1.0000000000000004 ;
createNode transform -n "radius_guide" -p "radius_guide_ZRO";
	rename -uid "5D24B814-486D-E6F0-9786-8D9EB5E9B8EF";
	setAttr ".ovc" 1;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999933 0.99999999999999956 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006202e-16 8.8817841970012444e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 5.9164567891575789e-31 -7.8886090522101093e-31 ;
createNode locator -n "radius_guideShape" -p "radius_guide";
	rename -uid "91BD3AA0-4658-BF98-9BCD-01A4DEBDD368";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 2 2 2 ;
createNode aimConstraint -n "radius_guide_aimConstraint1" -p "radius_guide";
	rename -uid "5BE50A4B-4882-049E-5209-A3B21B08E529";
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
	setAttr ".u" -type "double3" 0 0 -1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -1.4598536767542669e-17 -0.42278555086891534 3.956761279223722e-15 ;
	setAttr -k on ".w0";
createNode transform -n "ulna_guide_ZRO" -p "palm_guide";
	rename -uid "34C2F921-4494-0E76-A51A-0B8AFD69129A";
	setAttr ".t" -type "double3" 5 -5 0 ;
	setAttr ".s" -type "double3" 0.99999999999999933 1.0000000000000009 1.0000000000000004 ;
createNode transform -n "ulna_guide" -p "ulna_guide_ZRO";
	rename -uid "DD8F3B38-428C-1091-C395-EA8A5F5B32A6";
	setAttr ".ovc" 1;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999933 0.99999999999999956 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006202e-16 8.8817841970012444e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 5.9164567891575789e-31 -7.8886090522101093e-31 ;
createNode locator -n "ulna_guideShape" -p "ulna_guide";
	rename -uid "8AC0D145-4605-8580-1911-14BEF87FEEB4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 2 2 2 ;
createNode aimConstraint -n "ulna_guide_aimConstraint1" -p "ulna_guide";
	rename -uid "A491CFE2-4867-869A-20E8-FE9AD085C66D";
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
	setAttr ".u" -type "double3" 0 0 -1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -2.6277366181577177e-17 -0.42278555086891534 7.1221703026027971e-15 ;
	setAttr -k on ".w0";
createNode transform -n "lwr_guide_ofs" -p "plane_guide";
	rename -uid "24881C60-4815-351A-24CD-E19180612D45";
	setAttr ".t" -type "double3" 0 -10 -6.2172489379008766e-14 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 90 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
createNode transform -n "lwr_guide" -p "lwr_guide_ofs";
	rename -uid "63C30D63-4B33-E77A-E707-26A780423B2A";
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
	rename -uid "62812097-46C4-136A-8F9B-1EAE6D7A3470";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 5 5 5 ;
createNode aimConstraint -n "lwr_guide_aimConstraint1" -p "lwr_guide";
	rename -uid "C2B5CB70-4954-961B-2051-D188C4E0BC52";
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
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 1 0 0 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 179.99999914622614 -46.228620852326479 4.5177227746793557e-13 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "mid_guide_ofs_pointConstraint1" -p "plane_guide_ofs";
	rename -uid "B4851F43-43D7-3D5C-58C6-D2B6318B8000";
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
	rename -uid "57E6785E-448A-1301-86BA-5E84B022FB70";
	setAttr ".t" -type "double3" 0 20 0 ;
	setAttr ".r" -type "double3" 180 0 -90 ;
	setAttr -cb on ".ro";
createNode transform -n "fetlock_guide" -p "fetlock_guide_ofs";
	rename -uid "29761ABB-4AA0-27F5-F19A-2FBA15C930BD";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 1;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012504e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 0 -1.9721522630525286e-31 ;
createNode locator -n "fetlock_guideShape" -p "fetlock_guide";
	rename -uid "2E3F895E-4CAF-E01D-BCBF-84A1D8EC2399";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 5 5 5 ;
createNode transform -n "radiusEnd_guide_ZRO" -p "fetlock_guide";
	rename -uid "A9244AC4-47DF-86F7-1E66-A5970C514018";
	setAttr ".t" -type "double3" -5 5 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000013 1.0000000000000011 ;
createNode transform -n "radiusEnd_guide" -p "radiusEnd_guide_ZRO";
	rename -uid "F19DB6FC-4653-E0DD-A465-0FB8F4248F84";
	setAttr ".ovc" 1;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999933 0.99999999999999956 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006173e-16 8.8817841970012405e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 8.8746851837363635e-31 -1.1832913578315161e-30 ;
createNode aimConstraint -n "radiusEnd_guide_aimConstraint1" -p "radiusEnd_guide";
	rename -uid "4D0A2DB2-4E07-2225-07E2-678DDEE29E7D";
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
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".u" -type "double3" 0 0 -1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 2.1740083715106562e-17 -3.1426304823365627 -7.9252254098633058e-16 ;
	setAttr -k on ".w0";
createNode locator -n "radiusEnd_guideShape" -p "radiusEnd_guide";
	rename -uid "06CC6100-45A2-8692-6E47-37BBCF7F1EDB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 2 2 2 ;
createNode transform -n "ulnaEnd_guide_ZRO" -p "fetlock_guide";
	rename -uid "54EE0295-4327-AF28-60F1-65B2AC4FB8A7";
	setAttr ".t" -type "double3" -5 -5 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000013 1.0000000000000011 ;
createNode transform -n "ulnaEnd_guide" -p "ulnaEnd_guide_ZRO";
	rename -uid "2E25BAF7-4276-3100-3474-D685A747FA57";
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 0 4.4408920985006173e-16 -8.8817841970012523e-16 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999933 0.99999999999999956 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -4.4408920985006173e-16 8.8817841970012405e-16 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 8.8746851837363635e-31 -1.1832913578315161e-30 ;
createNode aimConstraint -n "ulnaEnd_guide_aimConstraint1" -p "ulnaEnd_guide";
	rename -uid "6776CE78-489F-710C-8B6E-79B50173E31A";
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
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".u" -type "double3" 0 0 -1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 0 -3.1426304823365632 0 ;
	setAttr -k on ".w0";
createNode locator -n "ulnaEnd_guideShape" -p "ulnaEnd_guide";
	rename -uid "BAC6268F-46C7-6741-F09A-F6B9BE42D70A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 2 2 2 ;
createNode transform -n "pastern_guide_ofs" -p "master_guide";
	rename -uid "5906F9E7-4AE2-FAA3-404A-FAAF9B2E62C5";
	setAttr -cb on ".ro";
createNode transform -n "pastern_guide" -p "pastern_guide_ofs";
	rename -uid "9E871231-431E-921E-D381-AEBFE9D190D5";
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
	rename -uid "BE47C975-4998-4CC1-4799-E69765606CD4";
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
	setAttr ".u" -type "double3" 0 0 -1 ;
	setAttr ".wut" 0;
	setAttr ".rsrr" -type "double3" 0 180 0 ;
	setAttr -k on ".w0";
createNode locator -n "pastern_guideShape" -p "pastern_guide";
	rename -uid "433C19DB-4E51-7231-B334-27A762B84502";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 2 2 2 ;
createNode pointConstraint -n "pastern_guide_ofs_pointConstraint1" -p "pastern_guide_ofs";
	rename -uid "6D480E28-4E23-5FB9-4AF7-92BB45672D64";
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
	rename -uid "5BAC587F-4C74-FE75-2763-0C90605C5A3C";
	addAttr -dcb 0 -ci true -sn "w0" -ln "lfQHLeg0_pasternTip_guideW0" -dv 1 -at "double";
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
	setAttr ".u" -type "double3" 0 0 -1 ;
	setAttr ".wut" 0;
	setAttr ".rsrr" -type "double3" 90 -26.565051177077994 -90 ;
	setAttr -k on ".w0";
createNode transform -n "pasternTip_guide_ofs" -p "master_guide";
	rename -uid "3C5B61F8-46BE-EA08-E6D6-0687D6E105DF";
	setAttr ".t" -type "double3" 0 0 8 ;
	setAttr ".r" -type "double3" 180 -90 -90 ;
	setAttr -cb on ".ro";
createNode transform -n "pasternTip_guide" -p "pasternTip_guide_ofs";
	rename -uid "1D6BF69E-429C-551C-924A-A7A9A709B790";
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
	rename -uid "781035DF-4B96-BD9F-A8F4-6CB54DD60602";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 5 5 5 ;
createNode nurbsCurve -n "master_guideShape" -p "master_guide";
	rename -uid "F98D79D2-4659-A6B6-2A3F-0DABFC028C8C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
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
	rename -uid "681F6DBF-40B6-B778-9EE7-FB8668751AAD";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "pv_loc" -p "pv_loc_ofs";
	rename -uid "DCF7E425-4790-98E6-896D-BEA3DBDB968E";
	setAttr -cb on ".ro";
createNode locator -n "pv_locShape" -p "pv_loc";
	rename -uid "38780C74-4A56-CDC1-96AA-76B111CDDE71";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovv" no;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 5 5 5 ;
createNode transform -n "pvc_guide_ofs" -p "pv_loc";
	rename -uid "5B64CBAB-4765-EF80-97D4-66B7A068FF04";
	setAttr ".t" -type "double3" 70 0 -8.2778228716051672e-13 ;
	setAttr ".r" -type "double3" 0 89.999999999999204 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "pvc_guide" -p "pvc_guide_ofs";
	rename -uid "45760E5A-4FEB-61EA-78CD-4488C039BD20";
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
	rename -uid "89EE6A93-4460-27FD-4114-2AA9E1B6E3E8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 5 5 5 ;
createNode aimConstraint -n "pv_loc_aimConstraint1" -p "pv_loc";
	rename -uid "27478DCA-41A6-9AF9-BC9C-908D2F74D4D2";
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
	rename -uid "C0571BDB-401D-5E89-4ACE-AE8A591B01B4";
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
	rename -uid "A53873A7-4D51-F86E-6EF3-04B878612FD4";
	setAttr ".t" -type "double3" 0 -4.4408920985006262e-16 0 ;
createNode transform -n "toesRoot_guide" -p "toesRoot_guide_ofs";
	rename -uid "AB9FEB5A-4B75-BBC6-7469-A09619596552";
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
	rename -uid "A6515B6C-4BB7-4DCD-1021-EE9E7263585B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 0 0 0 ;
createNode transform -n "toesRoot_guide_ofs1" -p "toesRoot_guide";
	rename -uid "BF7F60A8-4EEE-371D-1600-7891B58B6453";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode transform -n "toe00_2_guide_ZRO" -p "toesRoot_guide_ofs1";
	rename -uid "86B3C6AA-449B-C828-687A-F1A54936349E";
	setAttr -l on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -4 -1.7763568394002503e-16 0 ;
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
	rename -uid "D008B2C4-4A0C-4C67-6F5E-EA89F9BC83DD";
	setAttr ".ovc" 21;
	setAttr ".t" -type "double3" 7 0 -4 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe00_2_guideShape" -p "toe00_2_guide";
	rename -uid "72C20D35-46FF-420D-FF7D-CC9C6FA7CD91";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403858999 4.7982373409884731e-17 -2.0497810337741358
		9.6581433961014476e-16 6.7857323231109122e-17 -2.0570015123155359
		-0.11668853403858806 4.7982373409884719e-17 -2.0497810337741358
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403858999 4.7982373409884731e-17 -2.0497810337741358
		9.6581433961014476e-16 6.7857323231109122e-17 -2.0570015123155359
		-0.11668853403858806 4.7982373409884719e-17 -2.0497810337741358
		;
createNode joint -n "toe00_3_guide" -p "toe00_2_guide";
	rename -uid "76A9F2A5-4884-6810-996F-EAB54A1732A0";
	setAttr ".t" -type "double3" 5 -3.5527136788005009e-15 8.8817841970012523e-16 ;
	setAttr ".r" -type "double3" 0 -70 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe00_3_guideShape" -p "toe00_3_guide";
	rename -uid "FEAF3CAC-4F49-FE2D-6E1D-CE8819C09BA3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403858999 4.7982373409884731e-17 -1.0407361794658792
		9.6581433961014476e-16 6.7857323231109122e-17 -1.0479566580072792
		-0.11668853403858806 4.7982373409884719e-17 -1.0407361794658792
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403858999 4.7982373409884731e-17 -1.0407361794658792
		9.6581433961014476e-16 6.7857323231109122e-17 -1.0479566580072792
		-0.11668853403858806 4.7982373409884719e-17 -1.0407361794658792
		;
createNode joint -n "toe00_4_guide" -p "toe00_3_guide";
	rename -uid "6146FD54-4DA9-B794-16FB-EB911AB4EC0A";
	setAttr ".t" -type "double3" 3.9999999999999964 0 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 0 70 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "toe00_1_guide" -p "toe00_2_guide";
	rename -uid "C6BDACE5-429C-6427-E4CD-9186CBC319DF";
	setAttr ".t" -type "double3" -4 0 -10 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe00_1_guideShape" -p "toe00_1_guide";
	rename -uid "2B92D2E1-475B-FCCA-5779-F59A7D3D90E1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403858999 4.7982373409884731e-17 -2.0497810337741358
		9.6581433961014476e-16 6.7857323231109122e-17 -2.0570015123155359
		-0.11668853403858806 4.7982373409884719e-17 -2.0497810337741358
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403858999 4.7982373409884731e-17 -2.0497810337741358
		9.6581433961014476e-16 6.7857323231109122e-17 -2.0570015123155359
		-0.11668853403858806 4.7982373409884719e-17 -2.0497810337741358
		;
createNode transform -n "toe01_2_guide_ZRO" -p "toesRoot_guide_ofs1";
	rename -uid "E510ADDA-439B-8FA9-A5DD-35B0DCF81468";
	setAttr -l on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -2 -1.7763568394002503e-16 0 ;
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
	rename -uid "FE13F285-406D-2C83-8370-FF9F9E5CF867";
	setAttr ".ovc" 20;
	setAttr ".t" -type "double3" 7 0 -4 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe01_2_guideShape" -p "toe01_2_guide";
	rename -uid "D9D042C2-462C-C37D-5AEA-5993B9784E5B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403858999 4.7982373409884731e-17 -2.0497810337741358
		9.6581433961014476e-16 6.7857323231109122e-17 -2.0570015123155359
		-0.11668853403858806 4.7982373409884719e-17 -2.0497810337741358
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403858999 4.7982373409884731e-17 -2.0497810337741358
		9.6581433961014476e-16 6.7857323231109122e-17 -2.0570015123155359
		-0.11668853403858806 4.7982373409884719e-17 -2.0497810337741358
		;
createNode joint -n "toe01_3_guide" -p "toe01_2_guide";
	rename -uid "F3EF6119-4C8B-9EDF-F1D1-2F9A952FCEA2";
	setAttr ".t" -type "double3" 5 -7.1054273576010019e-15 8.8817841970012523e-16 ;
	setAttr ".r" -type "double3" 0 -70 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe01_3_guideShape" -p "toe01_3_guide";
	rename -uid "207618C3-4EED-3909-1F78-F0813031267B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403858999 4.7982373409884731e-17 -1.0407361794658792
		9.6581433961014476e-16 6.7857323231109122e-17 -1.0479566580072792
		-0.11668853403858806 4.7982373409884719e-17 -1.0407361794658792
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403858999 4.7982373409884731e-17 -1.0407361794658792
		9.6581433961014476e-16 6.7857323231109122e-17 -1.0479566580072792
		-0.11668853403858806 4.7982373409884719e-17 -1.0407361794658792
		;
createNode joint -n "toe01_4_guide" -p "toe01_3_guide";
	rename -uid "D56A9BF8-4D52-D97F-4490-08BDC2D82A9D";
	setAttr ".t" -type "double3" 3.9999999999999964 -7.1054273576010019e-15 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 0 70 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe01_4_guideShape" -p "toe01_4_guide";
	rename -uid "0698657F-42A9-1F79-3115-B4A66EE22206";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403858999 4.7982373409884731e-17 -1.0407361794658792
		9.6581433961014476e-16 6.7857323231109122e-17 -1.0479566580072792
		-0.11668853403858806 4.7982373409884719e-17 -1.0407361794658792
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403858999 4.7982373409884731e-17 -1.0407361794658792
		9.6581433961014476e-16 6.7857323231109122e-17 -1.0479566580072792
		-0.11668853403858806 4.7982373409884719e-17 -1.0407361794658792
		;
createNode joint -n "toe01_5_guide" -p "toe01_4_guide";
	rename -uid "F48D3C6C-4BE0-665F-BF7F-66BF7CDE8913";
	setAttr ".t" -type "double3" 3 -7.1054273576010019e-15 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "toe01_1_guide" -p "toe01_2_guide";
	rename -uid "3DE488D2-4245-DEB9-4679-DA8E48D0A9A1";
	setAttr ".t" -type "double3" -4 0 -10 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe01_1_guideShape" -p "toe01_1_guide";
	rename -uid "B5BBFB13-4CB3-7558-9631-9E8D45329AD6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403858999 4.7982373409884731e-17 -2.0497810337741358
		9.6581433961014476e-16 6.7857323231109122e-17 -2.0570015123155359
		-0.11668853403858806 4.7982373409884719e-17 -2.0497810337741358
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403858999 4.7982373409884731e-17 -2.0497810337741358
		9.6581433961014476e-16 6.7857323231109122e-17 -2.0570015123155359
		-0.11668853403858806 4.7982373409884719e-17 -2.0497810337741358
		;
createNode transform -n "toe02_2_guide_ZRO" -p "toesRoot_guide_ofs1";
	rename -uid "210780DE-4DC1-923B-3B71-249EA43F973C";
	setAttr -l on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 -1.7763568394002503e-16 0 ;
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
	rename -uid "677C980E-4E79-1274-4584-4580644B726D";
	setAttr ".ovc" 20;
	setAttr ".t" -type "double3" 7 0 -4 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe02_2_guideShape" -p "toe02_2_guide";
	rename -uid "7B863255-4F62-3A67-E977-BBA1B35AD54C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403858999 4.7982373409884731e-17 -2.0497810337741358
		9.6581433961014476e-16 6.7857323231109122e-17 -2.0570015123155359
		-0.11668853403858806 4.7982373409884719e-17 -2.0497810337741358
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403858999 4.7982373409884731e-17 -2.0497810337741358
		9.6581433961014476e-16 6.7857323231109122e-17 -2.0570015123155359
		-0.11668853403858806 4.7982373409884719e-17 -2.0497810337741358
		;
createNode joint -n "toe02_3_guide" -p "toe02_2_guide";
	rename -uid "DBB18700-4622-4E49-3FF8-268DB9A47BB0";
	setAttr ".t" -type "double3" 5 -3.5527136788005009e-15 8.8817841970012523e-16 ;
	setAttr ".r" -type "double3" 0 -70 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe02_3_guideShape" -p "toe02_3_guide";
	rename -uid "773B4A1E-4C60-A3A5-8819-12AD206C63E4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403858999 4.7982373409884731e-17 -1.0407361794658792
		9.6581433961014476e-16 6.7857323231109122e-17 -1.0479566580072792
		-0.11668853403858806 4.7982373409884719e-17 -1.0407361794658792
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403858999 4.7982373409884731e-17 -1.0407361794658792
		9.6581433961014476e-16 6.7857323231109122e-17 -1.0479566580072792
		-0.11668853403858806 4.7982373409884719e-17 -1.0407361794658792
		;
createNode joint -n "toe02_4_guide" -p "toe02_3_guide";
	rename -uid "99D5B72C-43B8-67DE-A483-A0915CCF7F2A";
	setAttr ".t" -type "double3" 3.9999999999999964 -3.5527136788005009e-15 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 0 70 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe02_4_guideShape" -p "toe02_4_guide";
	rename -uid "D1703EE1-43F5-49AB-14B9-D98D03532F0C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403858999 4.7982373409884731e-17 -1.0407361794658792
		9.6581433961014476e-16 6.7857323231109122e-17 -1.0479566580072792
		-0.11668853403858806 4.7982373409884719e-17 -1.0407361794658792
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403858999 4.7982373409884731e-17 -1.0407361794658792
		9.6581433961014476e-16 6.7857323231109122e-17 -1.0479566580072792
		-0.11668853403858806 4.7982373409884719e-17 -1.0407361794658792
		;
createNode joint -n "toe02_5_guide" -p "toe02_4_guide";
	rename -uid "95F4A96F-4C30-B30F-8CB1-CB9C921BB673";
	setAttr ".t" -type "double3" 3 -3.5527136788005009e-15 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "toe02_1_guide" -p "toe02_2_guide";
	rename -uid "E6F6BD94-44B2-78A1-E0AE-91BCEEFDE4A5";
	setAttr ".t" -type "double3" -4 0 -10 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe02_1_guideShape" -p "toe02_1_guide";
	rename -uid "AF01DDF4-49E6-EBB2-2F09-1095DC03A920";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403858999 4.7982373409884731e-17 -2.0497810337741358
		9.6581433961014476e-16 6.7857323231109122e-17 -2.0570015123155359
		-0.11668853403858806 4.7982373409884719e-17 -2.0497810337741358
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403858999 4.7982373409884731e-17 -2.0497810337741358
		9.6581433961014476e-16 6.7857323231109122e-17 -2.0570015123155359
		-0.11668853403858806 4.7982373409884719e-17 -2.0497810337741358
		;
createNode transform -n "toe03_2_guide_ZRO" -p "toesRoot_guide_ofs1";
	rename -uid "38EA5C54-42F6-059B-2FF5-D38AFE11F112";
	setAttr -l on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 2 -1.7763568394002503e-16 0 ;
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
	rename -uid "F55FDA5E-4E62-1FE0-58FB-DB95B580551F";
	setAttr ".ovc" 21;
	setAttr ".t" -type "double3" 7 0 -4 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe03_2_guideShape" -p "toe03_2_guide";
	rename -uid "B5EFA74E-4831-A208-34A6-DABB41E2E441";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403858999 4.7982373409884731e-17 -2.0497810337741358
		9.6581433961014476e-16 6.7857323231109122e-17 -2.0570015123155359
		-0.11668853403858806 4.7982373409884719e-17 -2.0497810337741358
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403858999 4.7982373409884731e-17 -2.0497810337741358
		9.6581433961014476e-16 6.7857323231109122e-17 -2.0570015123155359
		-0.11668853403858806 4.7982373409884719e-17 -2.0497810337741358
		;
createNode joint -n "toe03_1_guide" -p "toe03_2_guide";
	rename -uid "511DAE2C-4326-6630-3604-30934F5DEE3A";
	setAttr ".t" -type "double3" -4 0 -10 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe03_1_guideShape" -p "toe03_1_guide";
	rename -uid "E259C06F-4EB7-B575-E1EB-5A95852C0F39";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403858999 4.7982373409884731e-17 -2.0497810337741358
		9.6581433961014476e-16 6.7857323231109122e-17 -2.0570015123155359
		-0.11668853403858806 4.7982373409884719e-17 -2.0497810337741358
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403858999 4.7982373409884731e-17 -2.0497810337741358
		9.6581433961014476e-16 6.7857323231109122e-17 -2.0570015123155359
		-0.11668853403858806 4.7982373409884719e-17 -2.0497810337741358
		;
createNode joint -n "toe03_3_guide" -p "toe03_2_guide";
	rename -uid "CA82BA2A-4D67-B849-8111-FE8ECD0F0EB4";
	setAttr ".t" -type "double3" 5 0 8.8817841970012523e-16 ;
	setAttr ".r" -type "double3" 0 -70 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe03_3_guideShape" -p "toe03_3_guide";
	rename -uid "920F6230-4A5E-74A4-267A-D4B4E03A5A00";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403858999 4.7982373409884731e-17 -1.0407361794658792
		9.6581433961014476e-16 6.7857323231109122e-17 -1.0479566580072792
		-0.11668853403858806 4.7982373409884719e-17 -1.0407361794658792
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403858999 4.7982373409884731e-17 -1.0407361794658792
		9.6581433961014476e-16 6.7857323231109122e-17 -1.0479566580072792
		-0.11668853403858806 4.7982373409884719e-17 -1.0407361794658792
		;
createNode joint -n "toe03_4_guide" -p "toe03_3_guide";
	rename -uid "95028418-4935-5651-3282-6FAA1F72001B";
	setAttr ".t" -type "double3" 3.9999999999999964 3.5527136788005009e-15 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 0 70 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe03_4_guideShape" -p "toe03_4_guide";
	rename -uid "267A78DB-4D11-7810-D387-5DB27A647661";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403858999 4.7982373409884731e-17 -1.0407361794658792
		9.6581433961014476e-16 6.7857323231109122e-17 -1.0479566580072792
		-0.11668853403858806 4.7982373409884719e-17 -1.0407361794658792
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403858999 4.7982373409884731e-17 -1.0407361794658792
		9.6581433961014476e-16 6.7857323231109122e-17 -1.0479566580072792
		-0.11668853403858806 4.7982373409884719e-17 -1.0407361794658792
		;
createNode joint -n "toe03_5_guide" -p "toe03_4_guide";
	rename -uid "8DD7BCA8-4650-03B2-2863-D88AB4ECD9E3";
	setAttr ".t" -type "double3" 3 -1.0658141036401503e-14 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode transform -n "toe04_2_guide_ZRO" -p "toesRoot_guide_ofs1";
	rename -uid "38C2CF40-4BD2-FF3F-B6CE-D18985A5826A";
	setAttr -l on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 4 -1.7763568394002503e-16 0 ;
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
	rename -uid "9965BFD7-4502-4077-5B96-55BF2489A4CB";
	setAttr ".ovc" 20;
	setAttr ".t" -type "double3" 7 0 -4 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe04_2_guideShape" -p "toe04_2_guide";
	rename -uid "3021C60B-478A-A10E-4E46-95B79AACA9BF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403858999 4.7982373409884731e-17 -2.0497810337741358
		9.6581433961014476e-16 6.7857323231109122e-17 -2.0570015123155359
		-0.11668853403858806 4.7982373409884719e-17 -2.0497810337741358
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403858999 4.7982373409884731e-17 -2.0497810337741358
		9.6581433961014476e-16 6.7857323231109122e-17 -2.0570015123155359
		-0.11668853403858806 4.7982373409884719e-17 -2.0497810337741358
		;
createNode joint -n "toe04_3_guide" -p "toe04_2_guide";
	rename -uid "097C509A-451D-420D-263C-78A6DB53B915";
	setAttr ".t" -type "double3" 5 -7.1054273576010019e-15 8.8817841970012523e-16 ;
	setAttr ".r" -type "double3" 0 -70 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe04_3_guideShape" -p "toe04_3_guide";
	rename -uid "C35DCA8A-4F41-2DB4-F16C-2688D0942886";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403858999 4.7982373409884731e-17 -1.0407361794658792
		9.6581433961014476e-16 6.7857323231109122e-17 -1.0479566580072792
		-0.11668853403858806 4.7982373409884719e-17 -1.0407361794658792
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403858999 4.7982373409884731e-17 -1.0407361794658792
		9.6581433961014476e-16 6.7857323231109122e-17 -1.0479566580072792
		-0.11668853403858806 4.7982373409884719e-17 -1.0407361794658792
		;
createNode joint -n "toe04_4_guide" -p "toe04_3_guide";
	rename -uid "122C3528-4E7F-67DB-01BE-30927876DD86";
	setAttr ".t" -type "double3" 3.9999999999999964 -3.5527136788005009e-15 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 0 70 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe04_4_guideShape" -p "toe04_4_guide";
	rename -uid "EF53CC9D-477C-68AB-1498-E4B4C9C4229A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403858999 4.7982373409884731e-17 -1.0407361794658792
		9.6581433961014476e-16 6.7857323231109122e-17 -1.0479566580072792
		-0.11668853403858806 4.7982373409884719e-17 -1.0407361794658792
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403858999 4.7982373409884731e-17 -1.0407361794658792
		9.6581433961014476e-16 6.7857323231109122e-17 -1.0479566580072792
		-0.11668853403858806 4.7982373409884719e-17 -1.0407361794658792
		;
createNode joint -n "toe04_5_guide" -p "toe04_4_guide";
	rename -uid "B993EE91-420C-40C4-F707-869447622F2A";
	setAttr ".t" -type "double3" 3 -7.1054273576010019e-15 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "toe04_1_guide" -p "toe04_2_guide";
	rename -uid "B444CB69-4F24-01A2-993C-6DA6DC7475F2";
	setAttr ".t" -type "double3" -4 0 -10 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0;
createNode nurbsCurve -n "toe04_1_guideShape" -p "toe04_1_guide";
	rename -uid "C93224DD-4127-56FB-FE5B-EF865AAA527A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.11668853403858999 4.7982373409884731e-17 -2.0497810337741358
		9.6581433961014476e-16 6.7857323231109122e-17 -2.0570015123155359
		-0.11668853403858806 4.7982373409884719e-17 -2.0497810337741358
		-0.16502250741080718 3.5177356190060272e-33 -8.4700117423459641e-17
		-0.11668853403858907 -4.7982373409884725e-17 0.015976814526412558
		-1.6530417431401244e-17 -6.7857323231109171e-17 0.015976815175217918
		0.11668853403858907 -4.7982373409884719e-17 0.015976814526412558
		0.16502250741080718 -9.2536792101100989e-33 2.2281029633398663e-16
		0.11668853403858999 4.7982373409884731e-17 -2.0497810337741358
		9.6581433961014476e-16 6.7857323231109122e-17 -2.0570015123155359
		-0.11668853403858806 4.7982373409884719e-17 -2.0497810337741358
		;
createNode pointConstraint -n "toesRoot_guide_pointConstraint1" -p "toesRoot_guide";
	rename -uid "CC9E82A5-45F3-CD5E-EC23-E495BD38BC2F";
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
	setAttr ".rst" -type "double3" -1.2079226507921703e-13 54 -8.8817841970012523e-16 ;
	setAttr -k on ".w0";
createNode transform -n "line_grp" -p "module_grp";
	rename -uid "01DAF551-49EE-66C8-F775-ADAD9B07D42C";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -cb on ".ro";
createNode transform -n "line_1" -p "line_grp";
	rename -uid "B2C52583-4019-3D53-2626-60BA9F07FB68";
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
	rename -uid "0A37EF29-4411-30D0-383E-62A62DFCD8F1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		20.000000000000004 145 -45
		20 128 -55
		;
	setAttr ".adot" yes;
createNode transform -n "line_4" -p "line_grp";
	rename -uid "0D92F4FF-48FD-91BF-A1F0-2F98833A059D";
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
	rename -uid "F280F49A-4B3A-B822-E293-FDB95ADB0CB0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		19.999999999999879 54 -75
		20 20 -75
		;
	setAttr ".adot" yes;
createNode transform -n "line_5" -p "line_grp";
	rename -uid "A43AA325-4AC4-00C2-1179-6F8226C4F023";
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
	rename -uid "DC13F957-449E-AEEB-6D38-9D99F8BCF7DB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		20 20 -75
		20 10 -71
		;
	setAttr ".adot" yes;
createNode transform -n "line_6" -p "line_grp";
	rename -uid "33F9706D-49E3-96BE-3599-EE849FC290BC";
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
	rename -uid "04304FB4-4533-E9B1-77D2-F3B4FF570E9A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		20 10 -71
		20 1.9721522630525295e-31 -67
		;
	setAttr ".adot" yes;
createNode transform -n "line_8" -p "line_grp";
	rename -uid "8188F490-476C-B021-F358-55A3C71AAB2A";
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
	rename -uid "0EAAF54F-4223-6671-DB46-B491C029B07D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		20 128 -55
		20.00000000000006 84 -45
		;
	setAttr ".adot" yes;
createNode transform -n "line_9" -p "line_grp";
	rename -uid "3B11E911-47EF-3071-D4BC-969F2C7A8E71";
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
	rename -uid "21A4903E-4655-96D9-99B2-40BF22A8B288";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		20.00000000000006 84 -45
		19.999999999999879 54 -75
		;
	setAttr ".adot" yes;
createNode transform -n "line_10" -p "line_grp";
	rename -uid "E2FCACA8-452F-2809-EF77-41BA23B15FB8";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "line_10Shape" -p "line_10";
	rename -uid "837CBD1E-4779-F0CB-1E06-6C85566916C4";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		20 74 -45
		20.000000000000828 74 5
		;
	setAttr ".adot" yes;
createNode transform -n "line_grp1" -p "module_grp";
	rename -uid "93DF0408-4DBB-8F80-9D64-259CED6D576A";
createNode transform -n "line_11" -p "line_grp1";
	rename -uid "0C95956D-42C8-7B3F-B0AE-B8826C975F6B";
	setAttr ".it" no;
createNode nurbsCurve -n "line_11Shape" -p "line_11";
	rename -uid "B23BF046-4F3C-631C-30F0-BF9A209947AF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		14.999999999999881 48.999999999999993 -75
		15 25 -75
		;
createNode transform -n "line_12" -p "line_grp1";
	rename -uid "1695E5E5-42DC-9A04-7C2A-878151AC5665";
	setAttr ".it" no;
createNode nurbsCurve -n "line_12Shape" -p "line_12";
	rename -uid "D3F71BB6-4EDB-1F3B-92CD-CFA1B4D91AF9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		24.999999999999879 49 -75
		25 25 -75
		;
createNode transform -s -n "persp";
	rename -uid "12375561-4E9C-7FA8-04DB-9F9DE23B9DE3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 198.12039004013897 112.72087844751455 105.80134506338621 ;
	setAttr ".r" -type "double3" -8.138352729738946 59.799999999983889 2.3710948512842773e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "A4593232-435F-FFCD-DE21-3DA98CACD153";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 237.38768997506835;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 20 73.422385854302917 -41.979693050846244 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "A916A1AE-45C2-553B-1FC2-72BDB25A85B7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "F3F99333-4E51-46CB-AF6E-869AD1084330";
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
	rename -uid "07527B77-4192-D384-4975-23986BDC105A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "853B30C0-4317-C0AC-7803-7892B637FFD3";
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
	rename -uid "F09136D3-44EB-B071-BAE8-278A6E418FD9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1006.4047979798158 5.7228708277246785 -55.903012477347396 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "38A6FA59-48A2-1A50-7782-08BB4FACFB6E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 996.68892653083719;
	setAttr ".ow" 58.36375986781389;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 9.7158714489786142 74.922385854302917 -9.402099609375 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode script -n "RGN";
	rename -uid "09875E3C-46B7-3F91-16BB-669EE05610B4";
	addAttr -ci true -sn "rigID" -ln "rigID" -dt "string";
	addAttr -ci true -sn "rigClass" -ln "rigClass" -dt "string";
	addAttr -s false -ci true -sn "moduleG" -ln "moduleG" -at "message";
	addAttr -s false -ci true -k true -sn "master_guide" -ln "master_guide" -at "message";
	addAttr -s false -ci true -sn "pvcRota" -ln "pvcRota" -at "message";
	setAttr ".rigID" -type "string" "lfQHLeg0";
	setAttr ".rigClass" -type "string" "QuadLeg";
createNode decomposeMatrix -n "lfQHLeg0_DCM_1";
	rename -uid "3C61CC70-4623-E797-3FDA-E7B9E4F9DBFC";
createNode decomposeMatrix -n "lfQHLeg0_DCM_2";
	rename -uid "03C05049-485D-9942-05BF-E38975E9E8B9";
createNode decomposeMatrix -n "lfQHLeg0_DCM_4";
	rename -uid "318AEFFB-4784-A645-A827-368BD4260FF9";
createNode decomposeMatrix -n "lfQHLeg0_DCM_5";
	rename -uid "6509CED4-4186-7C16-A986-4A8EFA2A652C";
createNode decomposeMatrix -n "lfQHLeg0_DCM_6";
	rename -uid "176DB247-4C4E-D2D4-BB48-1CA4FA406530";
createNode decomposeMatrix -n "lfQHLeg0_DCM_7";
	rename -uid "8D49FEAC-456C-3449-AE60-8585F27B56A8";
createNode decomposeMatrix -n "lfQHLeg0_DCM_9";
	rename -uid "762C0690-4F42-35E7-D9D3-D8AF5751F6B3";
createNode decomposeMatrix -n "lfQHLeg0_DCM_10";
	rename -uid "116BFCE3-4842-7A95-3E4E-43AE25AC7687";
createNode decomposeMatrix -n "lfQHLeg0_DCM_11";
	rename -uid "5F3EA9E4-48BA-94C1-00E0-58A4A6DB7909";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "CA69260C-4248-A51A-E9BA-A08F1B3479B8";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "83786AD2-433F-4A3F-1E43-65881358EAF7";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "AE7D4A8D-44EE-DB4B-1857-0DBE5CCAD87D";
createNode displayLayerManager -n "layerManager";
	rename -uid "DE145AE8-428B-F955-CC20-D5AD2E280101";
	setAttr -s 2 ".dli[1]"  7;
createNode displayLayer -n "defaultLayer";
	rename -uid "CD3938DB-4E34-28B0-190F-DD916499B1E5";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "30774EE0-426E-D118-0339-EBA8EF44FBDB";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "A1BE390A-4C2A-AA56-CFEA-71AF59F78B03";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "323409F5-4157-BF11-9A5F-3ABCD685044B";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n"
		+ "            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n"
		+ "            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n"
		+ "            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n"
		+ "            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
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
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 821\n            -height 695\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 1\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -selectCommand \"{}\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 821\\n    -height 695\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 821\\n    -height 695\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 200 -divisions 10 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels yes -displayOrthographicLabels yes -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition axis;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"1 0.000000 0.000000 -1.000000 -0.000016 1.000000 0.000000\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "F60AB160-4CB9-B5D8-AC15-9A889EDD44A0";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode materialInfo -n "materialInfo218";
	rename -uid "3BDE63E4-45F5-E3DF-56C7-948E505A9D68";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo1";
	rename -uid "6026B530-45E3-1E95-53C5-259750ADE3DD";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -24783.333878562102 -23138.690993639226 ;
	setAttr ".tgi[0].vh" -type "double2" 24359.524362723518 23147.024326641418 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "E8CDF951-4813-C3CC-6F75-E29230270291";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323995 -617.85711830570688 ;
	setAttr ".tgi[0].vh" -type "double2" 604.76188073082676 44.047617297323995 ;
createNode multiplyDivide -n "multiplyDivide1";
	rename -uid "4C298363-4F54-9BB0-270D-11A652BC6486";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "6BAB1A68-4447-0F5C-49C6-688230EFC938";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 893.79191664053781 143.69953411252263 ;
	setAttr ".tgi[0].vh" -type "double2" 1967.0727631261325 858.74244785926726 ;
	setAttr -s 12 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1025.7142333984375;
	setAttr ".tgi[0].ni[0].y" -162.85714721679688;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 1025.7142333984375;
	setAttr ".tgi[0].ni[1].y" -32.857143402099609;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 1015.7142944335938;
	setAttr ".tgi[0].ni[2].y" 185.71427917480469;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 1171.39697265625;
	setAttr ".tgi[0].ni[3].y" 616.760009765625;
	setAttr ".tgi[0].ni[3].nvs" 18306;
	setAttr ".tgi[0].ni[4].x" 1193.6943359375;
	setAttr ".tgi[0].ni[4].y" 296.15487670898438;
	setAttr ".tgi[0].ni[4].nvs" 18306;
	setAttr ".tgi[0].ni[5].x" 1237.407470703125;
	setAttr ".tgi[0].ni[5].y" 466.06692504882812;
	setAttr ".tgi[0].ni[5].nvs" 18306;
	setAttr ".tgi[0].ni[6].x" 1539.781005859375;
	setAttr ".tgi[0].ni[6].y" 362.78521728515625;
	setAttr ".tgi[0].ni[6].nvs" 18306;
	setAttr ".tgi[0].ni[7].x" 1025.7142333984375;
	setAttr ".tgi[0].ni[7].y" 227.14285278320312;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 1025.7142333984375;
	setAttr ".tgi[0].ni[8].y" 357.14285278320312;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 1546.9456787109375;
	setAttr ".tgi[0].ni[9].y" 504.88455200195312;
	setAttr ".tgi[0].ni[9].nvs" 18306;
	setAttr ".tgi[0].ni[10].x" 1546.9456787109375;
	setAttr ".tgi[0].ni[10].y" 634.88458251953125;
	setAttr ".tgi[0].ni[10].nvs" 18306;
	setAttr ".tgi[0].ni[11].x" 1546.9456787109375;
	setAttr ".tgi[0].ni[11].y" 764.88458251953125;
	setAttr ".tgi[0].ni[11].nvs" 18306;
createNode decomposeMatrix -n "DCM_1";
	rename -uid "9B261185-496C-2A12-C829-898AAA666D14";
createNode decomposeMatrix -n "DCM_2";
	rename -uid "DD0C2308-4A10-EBBD-BA73-5A8E424FA34F";
createNode decomposeMatrix -n "DCM_3";
	rename -uid "A3E70A32-4A8B-2568-5746-EA9684A3E910";
createNode decomposeMatrix -n "DCM_4";
	rename -uid "4BD18F9A-4444-10B0-1D63-3F8B36FC215C";
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
	setAttr -av -k on ".aoon" yes;
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
	setAttr -av -k on ".msaa" yes;
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
	setAttr -s 17 ".hyp";
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
connectAttr "toe03_2_guide.s" "toe03_1_guide.is";
connectAttr "toe03_2_guide.s" "toe03_3_guide.is";
connectAttr "toe03_3_guide.s" "toe03_4_guide.is";
connectAttr "toe03_4_guide.s" "toe03_5_guide.is";
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
connectAttr "lfQHLeg0_DCM_1.ot" "line_1Shape.cp[0]";
connectAttr "lfQHLeg0_DCM_2.ot" "line_1Shape.cp[1]";
connectAttr "lfQHLeg0_DCM_4.ot" "line_4Shape.cp[0]";
connectAttr "lfQHLeg0_DCM_5.ot" "line_4Shape.cp[1]";
connectAttr "lfQHLeg0_DCM_5.ot" "line_5Shape.cp[0]";
connectAttr "lfQHLeg0_DCM_6.ot" "line_5Shape.cp[1]";
connectAttr "lfQHLeg0_DCM_6.ot" "line_6Shape.cp[0]";
connectAttr "lfQHLeg0_DCM_7.ot" "line_6Shape.cp[1]";
connectAttr "lfQHLeg0_DCM_2.ot" "line_8Shape.cp[0]";
connectAttr "lfQHLeg0_DCM_9.ot" "line_8Shape.cp[1]";
connectAttr "lfQHLeg0_DCM_9.ot" "line_9Shape.cp[0]";
connectAttr "lfQHLeg0_DCM_4.ot" "line_9Shape.cp[1]";
connectAttr "lfQHLeg0_DCM_10.ot" "line_10Shape.cp[0]";
connectAttr "lfQHLeg0_DCM_11.ot" "line_10Shape.cp[1]";
connectAttr "master_guide.twistBones" "line_grp1.v";
connectAttr "DCM_1.ot" "line_11Shape.cp[0]";
connectAttr "DCM_2.ot" "line_11Shape.cp[1]";
connectAttr "DCM_3.ot" "line_12Shape.cp[0]";
connectAttr "DCM_4.ot" "line_12Shape.cp[1]";
connectAttr "module_grp.msg" "RGN.moduleG";
connectAttr "master_guide.msg" "RGN.master_guide";
connectAttr "hip_guide.wm" "lfQHLeg0_DCM_1.imat";
connectAttr "upr_guide.wm" "lfQHLeg0_DCM_2.imat";
connectAttr "palm_guide.wm" "lfQHLeg0_DCM_4.imat";
connectAttr "fetlock_guide.wm" "lfQHLeg0_DCM_5.imat";
connectAttr "pastern_guide.wm" "lfQHLeg0_DCM_6.imat";
connectAttr "pasternTip_guide.wm" "lfQHLeg0_DCM_7.imat";
connectAttr "lwr_guide.wm" "lfQHLeg0_DCM_9.imat";
connectAttr "plane_guide.wm" "lfQHLeg0_DCM_10.imat";
connectAttr "pvc_guide.wm" "lfQHLeg0_DCM_11.imat";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "toesRoot_guide.tx" "multiplyDivide1.i1x";
connectAttr "toesRoot_guide.ty" "multiplyDivide1.i1y";
connectAttr "toesRoot_guide.tz" "multiplyDivide1.i1z";
connectAttr "radiusEnd_guideShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "ulnaEnd_guideShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "master_guideShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "master_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "ulna_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr "ulna_guideShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn";
connectAttr "radius_guideShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "radius_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn";
connectAttr "radiusEnd_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "ulnaEnd_guide.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn";
connectAttr "radius_guide.wm" "DCM_1.imat";
connectAttr "radiusEnd_guide.wm" "DCM_2.imat";
connectAttr "ulna_guide.wm" "DCM_3.imat";
connectAttr "ulnaEnd_guide.wm" "DCM_4.imat";
connectAttr "multiplyDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "toe01_2_guide_ZRO.msg" ":hyperGraphLayout.hyp[84932].dn";
connectAttr "toe00_2_guide_ZRO.msg" ":hyperGraphLayout.hyp[84936].dn";
connectAttr "toe02_2_guide_ZRO.msg" ":hyperGraphLayout.hyp[84940].dn";
connectAttr "toe03_2_guide_ZRO.msg" ":hyperGraphLayout.hyp[84944].dn";
connectAttr "toe04_2_guide_ZRO.msg" ":hyperGraphLayout.hyp[84948].dn";
connectAttr "palm_heelPos_guide.msg" ":hyperGraphLayout.hyp[84981].dn";
connectAttr "palm_inPos_guide.msg" ":hyperGraphLayout.hyp[84982].dn";
connectAttr "palm_outPos_guide.msg" ":hyperGraphLayout.hyp[84983].dn";
connectAttr "hip_guide_ofs.msg" ":hyperGraphLayout.hyp[84984].dn";
connectAttr "upr_guide_ofs.msg" ":hyperGraphLayout.hyp[84985].dn";
connectAttr "plane_guide_ofs.msg" ":hyperGraphLayout.hyp[84986].dn";
connectAttr "fetlock_guide_ofs.msg" ":hyperGraphLayout.hyp[84987].dn";
connectAttr "pastern_guide_ofs.msg" ":hyperGraphLayout.hyp[84988].dn";
connectAttr "pasternTip_guide_ofs.msg" ":hyperGraphLayout.hyp[84989].dn";
connectAttr "pv_loc_ofs.msg" ":hyperGraphLayout.hyp[84990].dn";
connectAttr "line_grp.msg" ":hyperGraphLayout.hyp[84991].dn";
connectAttr "palm_toePos_guide.msg" ":hyperGraphLayout.hyp[84994].dn";
// End of lfQHLeg.ma
