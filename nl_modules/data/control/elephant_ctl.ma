//Maya ASCII 2023 scene
//Name: elephant_ctl.ma
//Last modified: Wed, Jun 11, 2025 12:24:34 PM
//Codeset: 1252
requires maya "2023";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 26100)";
fileInfo "UUID" "4F13F62F-4FFE-BA49-3CCD-1B82DE5DA670";
createNode transform -n "CHR";
	rename -uid "D8595CBA-498E-361D-DCD1-85A5BC29CAC3";
	setAttr -cb on ".ro";
createNode transform -n "CTL" -p "CHR";
	rename -uid "E50C77E1-42F9-A74E-3254-B49984A44774";
	setAttr -cb on ".ro";
createNode transform -n "master2_ctl" -p "CTL";
	rename -uid "7EFE87B3-4012-AC5B-6DA5-7692C64F7247";
	addAttr -ci true -sn "proxy" -ln "proxy" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "debug" -ln "debug" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".ovc" 17;
	setAttr -cb on ".ro";
	setAttr -cb on ".proxy";
	setAttr -cb on ".debug";
createNode transform -n "master1_ctl" -p "master2_ctl";
	rename -uid "91867236-4EE7-FD3D-A7F1-71B2CBEE6D16";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 18;
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "master_ctl" -p "master1_ctl";
	rename -uid "287EC557-4A34-4B45-CCDE-D2A82BAB7253";
	addAttr -ci true -sn "globalScale" -ln "globalScale" -dv 1 -min 0 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 18;
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".globalScale";
createNode nurbsCurve -n "master_ctlShape" -p "master_ctl";
	rename -uid "B14679BF-435A-0578-054E-23964361DB74";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 43.238409873383546 4.7397815638735567e-15 
		-69.645059743933302 4.9440358595873078e-14 6.7030633703159655e-15 -98.492988042154948 
		-43.238409873383546 4.7397815638735567e-15 -69.645059743933274 -61.148345658385892 
		1.9961903992734708e-30 4.1153955289544694e-14 -43.238409873383546 -4.7397815638735559e-15 
		69.64505974393316 3.9570830700819116e-14 -6.7030633703159687e-15 98.492988042155019 
		43.238409873383546 -4.7397815638735559e-15 69.64505974393316 61.148345658385892 7.3460802537706763e-31 
		5.9691303185826796e-14 0 0 0 0 0 0 0 0 0;
createNode nurbsCurve -n "master_ctlShapeOrig" -p "master_ctl";
	rename -uid "A15A367A-4CFB-F702-7B35-83B2CB0A1EC3";
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
	rename -uid "A75FB2F7-4E84-BB28-5BFA-96B5DA14BC18";
	setAttr -cb on ".ro";
createNode transform -n "head0_head_fkc_ofs" -p "head0_ctl_data";
	rename -uid "E8196C8F-4862-D18F-4CD5-BB8A054E3AB7";
	setAttr ".t" -type "double3" 0 276.48603373272095 157.71066417865995 ;
	setAttr -cb on ".ro";
createNode transform -n "head0_head_fkc_ofs1" -p "head0_head_fkc_ofs";
	rename -uid "5D7C95B8-44A5-0D96-3345-2EB8F9D278FA";
createNode transform -n "head0_head_fkc" -p "head0_head_fkc_ofs1";
	rename -uid "B3218A7E-46F7-2C77-14F3-4793727DF43A";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -dv 1 -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "neck:COG:master" -at "enum";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -k on ".space";
createNode nurbsCurve -n "head0_head_fkcShape1" -p "head0_head_fkc";
	rename -uid "7D147A41-40AE-E786-D3AD-29B1B84FFEDB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		16.476674814300534 75.916090497486721 -16.476674814300566
		9.1225666004715235e-16 75.916090497486721 -14.898281866776614
		-16.476674814300534 75.916090497486721 -16.476674814300537
		-14.898281866776653 75.916090497486721 0
		-16.476674814300534 75.916090497486721 16.476674814300537
		-1.4923710839965415e-15 75.916090497486721 14.898281866776614
		16.476674814300534 75.916090497486721 16.476674814300537
		14.898281866776653 75.916090497486721 0
		16.476674814300534 75.916090497486721 -16.476674814300566
		9.1225666004715235e-16 75.916090497486721 -14.898281866776614
		-16.476674814300534 75.916090497486721 -16.476674814300537
		;
createNode transform -n "head0_jaw_fkc_ofs" -p "head0_head_fkc";
	rename -uid "51A86D1E-4C6F-5B15-263C-0288FC8AE13C";
	setAttr ".t" -type "double3" -2.5104504077574043e-13 -22.982878085535162 -10.657049634660638 ;
	setAttr -cb on ".ro";
createNode transform -n "head0_jaw_fkc" -p "head0_jaw_fkc_ofs";
	rename -uid "BBF4F12E-49B4-5B7D-7821-9DB169C99339";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "head0_jaw_fkcShape1" -p "head0_jaw_fkc";
	rename -uid "C7D7517E-4E8D-DDF3-185E-51A1A90D1B4F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		12.472033536651615 -39.876496611155517 1.7841514992246061
		2.521249285479324e-13 -39.876496611155517 -3.3819339420284678
		-12.472033536651114 -76.145211492585048 24.694372890369209
		-17.638118977904188 -76.145211492585048 37.166406427020576
		-12.472033536651114 -76.145211492585048 49.638439963671942
		2.4927808280919025e-13 -76.145211492585048 54.804525404925016
		12.472033536651615 -76.145211492585048 49.638439963671942
		17.638118977904693 -76.145211492585048 37.166406427020576
		12.472033536651615 -39.876496611155517 1.7841514992246061
		2.521249285479324e-13 -39.876496611155517 -3.3819339420284678
		-12.472033536651114 -76.145211492585048 24.694372890369209
		;
createNode transform -n "head0_anchorF1" -p "master_ctl";
	rename -uid "381A12C2-4215-4894-6EB8-71B2AAFF8283";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "head0_anchorF1Shape" -p "head0_anchorF1";
	rename -uid "F77806B4-4411-1B4F-9591-27ADCB4700C3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 23.874135746230117 23.874135746230117 23.874135746230117 ;
createNode transform -n "lfLegBp0_ctl_data" -p "master_ctl";
	rename -uid "A44B3529-470D-D470-A9DB-FBB55DB04F7F";
	setAttr ".t" -type "double3" 49.798005037915352 288.14915777849779 -145.84493377973951 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_FK" -p "lfLegBp0_ctl_data";
	rename -uid "6312A7AF-459B-ED97-A5C0-9E9275B856E7";
	setAttr ".t" -type "double3" -49.798005037915352 -288.14915777849779 145.84493377973951 ;
	setAttr -cb on ".ro";
createNode joint -n "lfLegBp0_hip_fk" -p "lfLegBp0_FK";
	rename -uid "28C41870-408B-2B12-60F6-E1AACF297780";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 178.94017205186231 35.594453847837116 -93.300707540508867 ;
	setAttr ".radi" 5.7564606713400499;
createNode joint -n "lfLegBp0_upr_fk" -p "lfLegBp0_hip_fk";
	rename -uid "A3146A41-4879-3A20-849D-DFBEF7ABE9F5";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 6.2004800051615607 46.29529023978963 0.86798655213109166 ;
	setAttr ".radi" 5.7564606713400499;
createNode joint -n "lfLegBp0_lwr_fk" -p "lfLegBp0_upr_fk";
	rename -uid "774F07D6-47DD-A1A6-A231-909D3B32178D";
	setAttr ".v" no;
	setAttr -cb on ".ro" 2;
	setAttr ".jo" -type "double3" 0 -21.881586780209876 0 ;
	setAttr ".pa" -type "double3" 0 -45 0 ;
	setAttr ".radi" 5.7564606713400499;
createNode joint -n "lfLegBp0_palm_fk" -p "lfLegBp0_lwr_fk";
	rename -uid "E09BCC3A-4971-A8BB-AD94-3A9008A45F01";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -5.1600553556571978 10.945139381756817 -2.2694244448964951 ;
	setAttr ".radi" 5.7564606713400499;
createNode joint -n "lfLegBp0_ball_fk" -p "lfLegBp0_palm_fk";
	rename -uid "1B9067B5-4649-A2D0-A544-2688EA735B15";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 21.594906720408943 0.7213341317167945 -12.780706265119903 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 5.2737082196488592 66.953192350909163 4.8548873711700429 ;
	setAttr ".radi" 5.7564606713400499;
createNode joint -n "lfLegBp0_tip_fk" -p "lfLegBp0_ball_fk";
	rename -uid "120E7C14-479A-8D28-48B0-C291512732D3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 18.753331714771832 7.1054273576010019e-15 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -0.87332782129875441 22.943663525084819 -2.2393350963028302 ;
	setAttr ".radi" 5.7564606713400499;
createNode transform -n "lfLegBp0_upr_fkc_ofs" -p "lfLegBp0_FK";
	rename -uid "FDB9DAFC-4B93-FBBE-AC01-C7AFEAEEFC60";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_upr_fkc" -p "lfLegBp0_upr_fkc_ofs";
	rename -uid "ADE52843-41EE-AAE1-5521-71BE87BE2086";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1.0000000000000004 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegBp0_upr_fkcShape1" -p "lfLegBp0_upr_fkc";
	rename -uid "BADDB880-4B45-C145-F78E-F89ED543E346";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 20 0 no 3
		25 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 20 20
		23
		6.7879183984578144e-16 25.571293009878737 -15.000898391436685
		5.6901063708223044e-16 26.700767106188373 -12.966363982059603
		3.4944823155512569e-16 28.959715298807467 -8.8972951633053583
		-3.1415502613860747e-19 29.057238218584608 0.86018996115148683
		-3.4819161162145808e-16 28.618365837291606 5.4565353225546431
		-6.8319000973203368e-16 26.936690849908238 11.221740461796728
		-9.917993885247577e-16 24.211634784004925 16.169577658252187
		-1.262330561156326e-15 20.732048268534669 20.661966821378982
		-1.4843413620845661e-15 14.179811349002081 26.269099608798157
		-1.6493123819359668e-15 8.6489306610058492 28.608590193184874
		-1.7509005016743236e-15 -2.2523981562238808 32.752721146178978
		-1.7852027379881954e-15 -1.0588773965140557e-14 39.886413216171221
		-1.7509005016743143e-15 2.2523981562240061 32.752721146178871
		-1.6493123819360283e-15 -8.648930661006391 28.608590193185936
		-1.4843413620844844e-15 -14.179811349000772 26.269099608796466
		-1.2623305611566052e-15 -20.732048268539419 20.661966821384993
		-9.9179938852372568e-16 -24.211634783987467 16.169577658230029
		-6.8319000973580916e-16 -26.93669084997174 11.221740461878198
		-3.4819161160740443e-16 -28.618365837055421 5.4565353222511312
		-3.1415505090238948e-19 -29.057238218421006 0.8601899616726828
		3.4944823157755498e-16 -28.95971529916649 -8.8972951638245572
		5.6901063708967058e-16 -26.700767106306646 -12.966363982231867
		6.7879183984572838e-16 -25.571293009876722 -15.000898391435522
		;
createNode transform -n "lfLegBp0_lwr_fkc_ofs" -p "lfLegBp0_FK";
	rename -uid "F234B646-44C4-9A11-97B7-6EAF4012DDB1";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_lwr_fkc" -p "lfLegBp0_lwr_fkc_ofs";
	rename -uid "564A6D21-4948-F283-6044-3E8265D8DBB5";
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
	rename -uid "3F5E1059-420D-E039-4926-B296A7C0586B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 20 0 no 3
		25 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 20 20
		23
		6.7879183984578144e-16 25.571293009878737 -15.000898391436685
		5.6901063708223044e-16 26.700767106188373 -12.966363982059603
		3.4944823155512569e-16 28.959715298807467 -8.8972951633053583
		-3.1415502613860747e-19 29.057238218584608 0.86018996115148683
		-3.4819161162145808e-16 28.618365837291606 5.4565353225546431
		-6.8319000973203368e-16 26.936690849908238 11.221740461796728
		-9.917993885247577e-16 24.211634784004925 16.169577658252187
		-1.262330561156326e-15 20.732048268534669 20.661966821378982
		-1.4843413620845661e-15 14.179811349002081 26.269099608798157
		-1.6493123819359668e-15 8.6489306610058492 28.608590193184874
		-1.7509005016743236e-15 -2.2523981562238808 32.752721146178978
		-1.7852027379881954e-15 -1.0588773965140557e-14 39.886413216171221
		-1.7509005016743143e-15 2.2523981562240061 32.752721146178871
		-1.6493123819360283e-15 -8.648930661006391 28.608590193185936
		-1.4843413620844844e-15 -14.179811349000772 26.269099608796466
		-1.2623305611566052e-15 -20.732048268539419 20.661966821384993
		-9.9179938852372568e-16 -24.211634783987467 16.169577658230029
		-6.8319000973580916e-16 -26.93669084997174 11.221740461878198
		-3.4819161160740443e-16 -28.618365837055421 5.4565353222511312
		-3.1415505090238948e-19 -29.057238218421006 0.8601899616726828
		3.4944823157755498e-16 -28.95971529916649 -8.8972951638245572
		5.6901063708967058e-16 -26.700767106306646 -12.966363982231867
		6.7879183984572838e-16 -25.571293009876722 -15.000898391435522
		;
createNode transform -n "lfLegBp0_palm_fkc_ofs" -p "lfLegBp0_FK";
	rename -uid "47715626-4BAC-3A5A-5B4A-5280DBC238F8";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_palm_fkc" -p "lfLegBp0_palm_fkc_ofs";
	rename -uid "A3DFF52B-4D9D-E2C4-AA67-42A56FF75911";
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
	rename -uid "90AB2E97-4E6D-F2A7-E499-CA835F469549";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 20 0 no 3
		25 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 20 20
		23
		6.7879183984578144e-16 25.571293009878737 -15.000898391436685
		5.6901063708223044e-16 26.700767106188373 -12.966363982059603
		3.4944823155512569e-16 28.959715298807467 -8.8972951633053583
		-3.1415502613860747e-19 29.057238218584608 0.86018996115148683
		-3.4819161162145808e-16 28.618365837291606 5.4565353225546431
		-6.8319000973203368e-16 26.936690849908238 11.221740461796728
		-9.917993885247577e-16 24.211634784004925 16.169577658252187
		-1.262330561156326e-15 20.732048268534669 20.661966821378982
		-1.4843413620845661e-15 14.179811349002081 26.269099608798157
		-1.6493123819359668e-15 8.6489306610058492 28.608590193184874
		-1.7509005016743236e-15 -2.2523981562238808 32.752721146178978
		-1.7852027379881954e-15 -1.0588773965140557e-14 39.886413216171221
		-1.7509005016743143e-15 2.2523981562240061 32.752721146178871
		-1.6493123819360283e-15 -8.648930661006391 28.608590193185936
		-1.4843413620844844e-15 -14.179811349000772 26.269099608796466
		-1.2623305611566052e-15 -20.732048268539419 20.661966821384993
		-9.9179938852372568e-16 -24.211634783987467 16.169577658230029
		-6.8319000973580916e-16 -26.93669084997174 11.221740461878198
		-3.4819161160740443e-16 -28.618365837055421 5.4565353222511312
		-3.1415505090238948e-19 -29.057238218421006 0.8601899616726828
		3.4944823157755498e-16 -28.95971529916649 -8.8972951638245572
		5.6901063708967058e-16 -26.700767106306646 -12.966363982231867
		6.7879183984572838e-16 -25.571293009876722 -15.000898391435522
		;
createNode transform -n "lfLegBp0_ikc_matcher" -p "lfLegBp0_palm_fkc";
	rename -uid "E8CB8269-41A7-3DD3-12C2-6D92D3B6BA8A";
	setAttr ".t" -type "double3" 0 4.2632564145606011e-14 8.5265128291212022e-14 ;
	setAttr ".r" -type "double3" 0 180 89.999999999999801 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_ball_fkc_ofs" -p "lfLegBp0_FK";
	rename -uid "6EB5DA5B-4CE9-FA8F-DA34-819DA8504B51";
	setAttr ".t" -type "double3" 37.635904315951819 10.835240791816375 -169.06783774746839 ;
	setAttr ".r" -type "double3" 5.2736997728846324 -113.04688167860864 85.145126695397849 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_ball_fkc" -p "lfLegBp0_ball_fkc_ofs";
	rename -uid "BFC8EFD4-4909-120B-0650-AAA549AD35E9";
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
	rename -uid "A488BB18-40BB-F88D-4B09-A780522FE024";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.0578231194298915e-16 -14.898025771146058 -14.898025771146076
		4.3244149268357618e-16 -8.2485230694037089e-16 -13.470860455678558
		3.0578231194298895e-16 14.898025771146058 -14.898025771146065
		-1.7649348764581291e-31 13.470860455678597 -5.2306985822481793e-15
		-3.0578231194298905e-16 14.898025771146058 14.898025771146058
		-4.3244149268357657e-16 1.349385304988645e-15 13.470860455678572
		-3.0578231194298895e-16 -14.898025771146058 14.898025771146065
		-2.5788322466173174e-31 -13.470860455678597 -2.6953503133713413e-15
		3.0578231194298915e-16 -14.898025771146058 -14.898025771146076
		4.3244149268357618e-16 -8.2485230694037089e-16 -13.470860455678558
		3.0578231194298895e-16 14.898025771146058 -14.898025771146065
		;
createNode transform -n "lfLegBp0_toe00_2_ikc_ofs" -p "lfLegBp0_ball_fkc_ofs";
	rename -uid "6AC998ED-40AD-1029-117D-5BB0E5ED9AA4";
	setAttr ".t" -type "double3" -12.96177093550412 16.093610107296119 6.3730089644081005 ;
	setAttr ".r" -type "double3" 20.500986304043771 -19.652609970116107 48.389967695651634 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
createNode transform -n "lfLegBp0_toe00_2_ikc_ofs1" -p "lfLegBp0_toe00_2_ikc_ofs";
	rename -uid "747C0A36-4B69-237F-2B85-B783669CC26B";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "lfLegBp0_toe00_2_ikc" -p "lfLegBp0_toe00_2_ikc_ofs1";
	rename -uid "C52005EF-4219-2F77-2064-92BEF60A6EDF";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe00_2_ikcShape1" -p "lfLegBp0_toe00_2_ikc";
	rename -uid "643A9B1A-4D27-7494-C6C6-D78AB115D3F6";
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
		-1.2442512349506297e-14 -5.6843418860808015e-14 -7.0733694627828253e-15
		-1.2442512349506297e-14 -5.6843418860808015e-14 -3.3463501680519974
		0.38642908216193522 -5.6843418860808015e-14 -3.3463501680519974
		0.38642908216193522 -5.6843418860808015e-14 -4.1192083323758952
		-0.38642908216196009 -5.6843418860808015e-14 -4.1192083323758952
		-0.38642908216196009 -5.6843418860808015e-14 -3.3463501680519974
		-1.2442512349506297e-14 -5.6843418860808015e-14 -3.3463501680519974
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegBp0_toe00_2_1_ikj_ikh" -p "lfLegBp0_toe00_2_ikc";
	rename -uid "410169A0-4C3C-AD32-0077-FDB198043353";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.295383894752561 -0.57373620293702743 0.12273148144999624 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.41901906612010364 -0.86419131010661843 -0.2785613070116566 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegBp0_toe01_2_ikc_ofs" -p "lfLegBp0_ball_fkc_ofs";
	rename -uid "2A5FDE7A-4550-1756-64CC-C5AB58679E05";
	setAttr ".t" -type "double3" -2.3521317554659902 11.002860815304551 2.3897644936761608 ;
	setAttr ".r" -type "double3" 7.4735052196490512 -16.30781577373515 15.167638045160619 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "lfLegBp0_toe01_2_ikc_ofs1" -p "lfLegBp0_toe01_2_ikc_ofs";
	rename -uid "46ABC0FB-4DF7-A77A-98C8-76AEE8DF33E1";
	setAttr ".t" -type "double3" -5.6843418860808015e-14 1.4210854715202004e-14 4.2632564145606011e-14 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_toe01_2_ikc" -p "lfLegBp0_toe01_2_ikc_ofs1";
	rename -uid "C9F77E19-44C2-B8DB-72E9-9F9AB03EA61A";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe01_2_ikcShape1" -p "lfLegBp0_toe01_2_ikc";
	rename -uid "4C73CCA6-4894-F0D6-FA14-1B81DC896FFA";
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
		-2.4885024699012594e-14 1.7683423656957063e-15 1.4210854715202004e-14
		-2.4885024699012594e-14 1.7683423656957063e-15 -3.346350168051976
		0.38642908216192279 1.7683423656957063e-15 -3.346350168051976
		0.38642908216192279 1.7683423656957063e-15 -4.1192083323758739
		-0.38642908216197253 1.7683423656957063e-15 -4.1192083323758739
		-0.38642908216197253 1.7683423656957063e-15 -3.346350168051976
		-2.4885024699012594e-14 1.7683423656957063e-15 -3.346350168051976
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegBp0_toe01_2_1_ikj_ikh" -p "lfLegBp0_toe01_2_ikc";
	rename -uid "ADF00EBF-4C31-149C-37E5-B688A9E05DCE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 15.732662915185344 -0.61905997750189101 -3.8769177816851652 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999956 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.7338991608171479 -0.35390685242067965 -0.57977751039650827 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegBp0_toe02_2_ikc_ofs" -p "lfLegBp0_ball_fkc_ofs";
	rename -uid "87EB085D-4884-F35E-A2AB-D0AA018733AA";
	setAttr ".t" -type "double3" 1.8814045549133311 0.081155887969668328 0.59627172757654279 ;
	setAttr ".r" -type "double3" 0.57417959756803827 -8.3573428195221471 1.25767298116587 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999967 1 ;
createNode transform -n "lfLegBp0_toe02_2_ikc_ofs1" -p "lfLegBp0_toe02_2_ikc_ofs";
	rename -uid "1A74DF4E-4F8E-87CE-933D-698EF87EDA88";
	setAttr ".t" -type "double3" 2.8421709430404007e-14 -1.0658141036401503e-14 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000007 1 ;
createNode transform -n "lfLegBp0_toe02_2_ikc" -p "lfLegBp0_toe02_2_ikc_ofs1";
	rename -uid "D747AA6A-49B7-007F-F920-F7ACEBA3F8C4";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe02_2_ikcShape1" -p "lfLegBp0_toe02_2_ikc";
	rename -uid "D432ABFE-480E-20D9-2909-FC8667CB43A0";
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
		0 -5.321056044496207e-15 -1.465294030662593e-14
		0 -5.321056044496207e-15 -3.3463501680520049
		0.38642908216194766 -5.321056044496207e-15 -3.3463501680520049
		0.38642908216194766 -5.321056044496207e-15 -4.1192083323759023
		-0.38642908216194766 -5.321056044496207e-15 -4.1192083323759023
		-0.38642908216194766 -5.321056044496207e-15 -3.3463501680520049
		0 -5.321056044496207e-15 -3.3463501680520049
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegBp0_toe02_2_1_ikj_ikh" -p "lfLegBp0_toe02_2_ikc";
	rename -uid "2D729AB9-4C51-9B1D-2024-1B9F52FE6AB0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 18.682093410996856 -0.60636861924087526 -3.5092486617543557 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.85275253112864058 -0.061371972325999002 -0.51869702299754294 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegBp0_toe03_2_ikc_ofs" -p "lfLegBp0_ball_fkc_ofs";
	rename -uid "2E1D6763-4841-F294-2C39-E3AADF66B984";
	setAttr ".t" -type "double3" -3.0973082548513844 -10.504928298139813 2.7054524923191252 ;
	setAttr ".r" -type "double3" -11.558348035771569 -6.8594045504061159 -27.230922267964463 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "lfLegBp0_toe03_2_ikc_ofs1" -p "lfLegBp0_toe03_2_ikc_ofs";
	rename -uid "091995AD-4491-7871-3E46-51AC8E3DB60A";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 0 2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "lfLegBp0_toe03_2_ikc" -p "lfLegBp0_toe03_2_ikc_ofs1";
	rename -uid "2921CCEC-48F7-24B2-336F-6ABAD950D345";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe03_2_ikcShape1" -p "lfLegBp0_toe03_2_ikc";
	rename -uid "1E45D496-420A-7E02-A473-EDBA219624E2";
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
		0 1.3326683532354149e-14 -5.337084991905295e-15
		0 1.3326683532354149e-14 -3.3463501680519956
		0.38642908216194766 1.3326683532354149e-14 -3.3463501680519956
		0.38642908216194766 1.3326683532354149e-14 -4.1192083323758935
		-0.38642908216194766 1.3326683532354149e-14 -4.1192083323758935
		-0.38642908216194766 1.3326683532354149e-14 -3.3463501680519956
		0 1.3326683532354149e-14 -3.3463501680519956
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegBp0_toe03_2_1_ikj_ikh" -p "lfLegBp0_toe03_2_ikc";
	rename -uid "5266B234-4366-659E-EC69-CB9CD3A6560E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 15.160201299604807 -0.26733761267229283 -2.0401303420644439 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000007 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.78213248557058579 0.47869454772073478 -0.39889886562588683 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegBp0_toe04_2_ikc_ofs" -p "lfLegBp0_ball_fkc_ofs";
	rename -uid "926B6B21-4053-CEB3-860B-D9AC824CB391";
	setAttr ".t" -type "double3" -10.741280621478381 -14.709356773868048 5.2440057078358251 ;
	setAttr ".r" -type "double3" -29.606131501490196 -41.250443207126835 -50.251641500725157 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_toe04_2_ikc_ofs1" -p "lfLegBp0_toe04_2_ikc_ofs";
	rename -uid "93AFB02B-4FC2-8E10-C088-F88338BEC2EF";
	setAttr ".t" -type "double3" 2.1316282072803006e-14 -5.6843418860808015e-14 2.708944180085382e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "lfLegBp0_toe04_2_ikc" -p "lfLegBp0_toe04_2_ikc_ofs1";
	rename -uid "84D900A1-4A71-E94B-77D4-34AFBAF80682";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe04_2_ikcShape1" -p "lfLegBp0_toe04_2_ikc";
	rename -uid "DD6C0415-4285-A442-4879-369E43D5991F";
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
		-3.1106280873765742e-15 -2.8642752226115967e-14 -5.3130415707916635e-15
		-3.1106280873765742e-15 -2.8642752226115967e-14 -3.3463501680519956
		0.38642908216194455 -2.8642752226115967e-14 -3.3463501680519956
		0.38642908216194455 -2.8642752226115967e-14 -4.1192083323758935
		-0.38642908216195077 -2.8642752226115967e-14 -4.1192083323758935
		-0.38642908216195077 -2.8642752226115967e-14 -3.3463501680519956
		-3.1106280873765742e-15 -2.8642752226115967e-14 -3.3463501680519956
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegBp0_toe04_2_1_ikj_ikh" -p "lfLegBp0_toe04_2_ikc";
	rename -uid "843EAB66-4B20-B8ED-C7D9-7BB6DD045D37";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.896903183986364 0.76174408833131224 -3.3443950872127117 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1 0.99999999999999933 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.20613276753548365 0.94058793966117904 -0.26982144079390868 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegBp0_quadScap_ofs" -p "lfLegBp0_FK";
	rename -uid "440A4901-4FD3-253C-72BB-0EA390B09D58";
	setAttr ".t" -type "double3" 49.79800503791536 288.14915777849779 -145.84493377973948 ;
	setAttr ".r" -type "double3" -1.0598279481376891 144.40554615216288 86.699292459491062 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_quadScap" -p "lfLegBp0_quadScap_ofs";
	rename -uid "E8392D1E-47E6-DE00-1D1C-F58E03DC42EB";
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-14 -5.6843418860808015e-14 ;
	setAttr ".r" -type "double3" -1.1927080055488125e-16 -7.633331235512438e-15 -9.3826363103173734e-15 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "lfLegBp0_hip_fkc_ofs" -p "lfLegBp0_quadScap";
	rename -uid "C77AC230-473B-D37D-7F37-698891465DA6";
	setAttr ".t" -type "double3" 0 2.1316282072803006e-14 5.6843418860808015e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "lfLegBp0_hip_fkc" -p "lfLegBp0_hip_fkc_ofs";
	rename -uid "465F2AD3-462F-1129-476B-0EAC0180F008";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "autoAim" -ln "autoAim" -dv 0.3 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -k on ".autoAim";
createNode nurbsCurve -n "lfLegBp0_hip_fkcShape1" -p "lfLegBp0_hip_fkc";
	rename -uid "1231615C-4891-5BB3-3B88-97B533308508";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		29.796051542292115 -43.173455035050374 -29.796051542292151
		1.6497046138807418e-15 -43.173455035050374 -26.941720911357116
		-29.796051542292115 -43.173455035050374 -29.79605154229213
		-26.941720911357194 -43.173455035050374 -1.0461397164496359e-14
		-29.796051542292115 -43.173455035050374 29.796051542292115
		-2.69877060997729e-15 -43.173455035050374 26.941720911357145
		29.796051542292115 -43.173455035050374 29.79605154229213
		26.941720911357194 -43.173455035050374 -5.3907006267426826e-15
		29.796051542292115 -43.173455035050374 -29.796051542292151
		1.6497046138807418e-15 -43.173455035050374 -26.941720911357116
		-29.796051542292115 -43.173455035050374 -29.79605154229213
		;
createNode joint -n "lfLegBp0_autoAim" -p "lfLegBp0_quadScap_ofs";
	rename -uid "FEA37E35-4C2A-ACEF-6509-14BC5614BEFD";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -2.8421709430404007e-14 -2.8421709430404007e-14 -1.1368683772161603e-13 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 72.902585878582599 27.595214084333314 -0.27186213436068507 ;
	setAttr ".radi" 8.6346910070100744;
createNode joint -n "lfLegBp0_autoAim_end" -p "lfLegBp0_autoAim";
	rename -uid "89B84E43-4A61-5349-B98B-7F8C61D983DF";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 258.49443929558686 2.2737367544323206e-13 -4.2632564145606011e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.2722218725854064e-14 -2.4848083448933718e-15 6.957463365701438e-16 ;
	setAttr ".radi" 8.6346910070100744;
createNode ikEffector -n "effector5" -p "lfLegBp0_autoAim";
	rename -uid "230FC1E8-418D-DA71-771F-3EB5587D2FD8";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegBp0_IK" -p "lfLegBp0_ctl_data";
	rename -uid "F7A01C15-4641-DB7E-3D44-CA815F3A4EE6";
	setAttr ".t" -type "double3" -49.798005037915352 -288.14915777849779 145.84493377973951 ;
	setAttr -cb on ".ro";
createNode joint -n "lfLegBp0_hip_ik" -p "lfLegBp0_IK";
	rename -uid "A2693B0D-4BE9-BE2D-E542-0996FBF98C80";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 178.94017205186231 35.594453847837116 -93.300707540508867 ;
	setAttr ".radi" 8.6346910070100744;
createNode joint -n "lfLegBp0_upr_ik" -p "lfLegBp0_hip_ik";
	rename -uid "F00A0868-4312-5F94-93BB-13849F3448B1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 70.103075191881544 -6.3948846218409017e-14 -5.6843418860808015e-14 ;
	setAttr ".r" -type "double3" -1.4603923471513414e-13 5.6671537021532501e-05 8.8625201645626344e-13 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 6.2004800051615607 46.29529023978963 0.86798655213109166 ;
	setAttr ".radi" 8.6346910070100744;
createNode joint -n "lfLegBp0_lwr_ik" -p "lfLegBp0_upr_ik";
	rename -uid "4552B5C7-4461-9EB4-699A-0289D0CDC105";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 115.80994707977716 -1.1013412404281553e-13 5.6843418860808015e-14 ;
	setAttr ".r" -type "double3" 1.3636399843122756e-13 -0.00013307367877798113 -3.5160911388346124e-13 ;
	setAttr -cb on ".ro" 2;
	setAttr ".jo" -type "double3" 0 -21.881586780209876 0 ;
	setAttr ".pa" -type "double3" 0 -45 0 ;
	setAttr ".radi" 8.6346910070100744;
createNode joint -n "lfLegBp0_palm_ik" -p "lfLegBp0_lwr_ik";
	rename -uid "AF3C5BDC-453F-7E20-5D09-CEB5CE25F5DF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 86.831287737658741 -2.7355895326763857e-13 2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -7.6096772750515915e-08 2.0407137090727638e-06 5.2859714735836443e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -5.1600553556571978 10.945139381756817 -2.2694244448964951 ;
	setAttr ".radi" 8.6346910070100744;
createNode joint -n "lfLegBp0_ball_ik" -p "lfLegBp0_palm_ik";
	rename -uid "325734A6-4D77-74DA-8354-0FB1299A6D24";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 21.594906720408943 0.7213341317167945 -12.780706265119903 ;
	setAttr ".r" -type "double3" -4.0966394141460985e-07 -1.5521708045454261e-22 -3.1043415813458594e-22 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 5.2737082196488592 66.953192350909163 4.8548873711700429 ;
	setAttr ".radi" 8.6346910070100744;
createNode joint -n "lfLegBp0_tip_ik" -p "lfLegBp0_ball_ik";
	rename -uid "51153A68-4924-C474-80E0-0AB7313CFD9E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 18.753331714771832 7.1054273576010019e-15 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -0.87332782129875441 22.943663525084819 -2.2393350963028302 ;
	setAttr ".radi" 8.6346910070100744;
createNode ikEffector -n "effector3" -p "lfLegBp0_ball_ik";
	rename -uid "396DAB3C-415B-27A1-6980-89BC03D4876B";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector2" -p "lfLegBp0_palm_ik";
	rename -uid "DD358124-4A3D-1932-1DD5-4ABA5139C75E";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector1" -p "lfLegBp0_lwr_ik";
	rename -uid "614DE865-491C-5EBA-2147-28A2C785F072";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "lfLegBp0_softJ" -p "lfLegBp0_hip_ik";
	rename -uid "C1739B5C-4549-3ECA-6312-74B5E4BD6BEC";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 70.103075191881373 -7.1054273576010019e-14 -1.1368683772161603e-13 ;
	setAttr ".r" -type "double3" -5.0888874903416262e-14 2.9067372219478423e-29 -5.0867901384087285e-29 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -29.804896464224278 36.985101171381878 -0.39173572620172714 ;
createNode joint -n "lfLegBp0_softJ_end" -p "lfLegBp0_softJ";
	rename -uid "B2552910-4A85-1164-6BDD-0380B42CFAF9";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 199.03399658203125 -1.1368683772161603e-13 1.9895196601282805e-13 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 9.5416640443905456e-15 2.6835930124848414e-15 9.9392333795734899e-17 ;
createNode ikEffector -n "effector4" -p "lfLegBp0_softJ";
	rename -uid "4D85F438-4D96-8FEF-9F34-328CA59E61C1";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "lfLegBp0_pvChainJ" -p "lfLegBp0_hip_ik";
	rename -uid "621B771A-467E-FB9F-A7ED-CA913475D55A";
	setAttr ".ove" yes;
	setAttr ".ovc" 5;
	setAttr ".t" -type "double3" 70.103075191881459 -7.815970093361102e-14 -5.6843418860808015e-14 ;
	setAttr ".r" -type "double3" -2.5444437451708134e-14 5.4501333961039675e-30 -1.2101727167266246e-45 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -29.80489636432619 36.985101165565254 -0.39173572688501668 ;
createNode joint -n "lfLegBp0_pvChainJ_end" -p "lfLegBp0_pvChainJ";
	rename -uid "938D784B-42A8-42F5-5A87-F889AF303A70";
	setAttr ".ove" yes;
	setAttr ".ovc" 5;
	setAttr ".t" -type "double3" 199.03395623018139 -4.2632564145606011e-14 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 9.5416640443905456e-15 2.6835930124848414e-15 9.9392333795734899e-17 ;
createNode ikEffector -n "effector11" -p "lfLegBp0_pvChainJ";
	rename -uid "59CDF18B-4C90-9D66-30ED-429B2A8C5163";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegBp0_pvc_SPACE_1_ofs" -p "lfLegBp0_pvChainJ";
	rename -uid "1F03EB65-4741-34BB-BDE7-47ACE4494ABD";
	setAttr ".t" -type "double3" 102.8538528820641 54.901180562644171 -77.926775161593369 ;
	setAttr ".r" -type "double3" 169.94947578180088 34.80100408999499 -92.725909557320918 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "lfLegBp0_pvc_SPACE_1" -p "lfLegBp0_pvc_SPACE_1_ofs";
	rename -uid "987926CB-48A1-849E-0E92-0880C7FE5933";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 0 -1.4210854715202004e-14 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "lfLegBp0_ikCstG" -p "lfLegBp0_IK";
	rename -uid "F1F7EE71-4D70-E4E3-561A-08AA690ADDC0";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_heelRollG" -p "lfLegBp0_ikCstG";
	rename -uid "CA4C5705-4305-8154-3EB8-E288EC178837";
	setAttr ".t" -type "double3" -1.3426723332779957 32.430120424377833 10.894160576977811 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_heelRollG_ctl" -p "lfLegBp0_heelRollG";
	rename -uid "7BAF4CCC-457E-3AF9-4156-E1893A19D704";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegBp0_toeRollG" -p "lfLegBp0_heelRollG_ctl";
	rename -uid "723D0FD7-4030-FE0C-B214-928ED7DB9654";
	setAttr ".t" -type "double3" 0 5.358638453323972e-15 -43.756603594235202 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_toeRollG_ctl" -p "lfLegBp0_toeRollG";
	rename -uid "46457B3A-48FD-5E3B-CA60-87858DD77938";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegBp0_footRollG" -p "lfLegBp0_toeRollG_ctl";
	rename -uid "48611B29-4B1F-00CB-7A30-879D1C97BFD0";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_outRollG" -p "lfLegBp0_footRollG";
	rename -uid "C793CB26-428D-61CC-B172-528BBBBA86ED";
	setAttr ".t" -type "double3" 22.847792250031226 -3.5951470625517802e-15 29.356603594235168 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_outRollG_ctl" -p "lfLegBp0_outRollG";
	rename -uid "387599F3-4769-4BB3-7829-32905F897BCC";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegBp0_inRollG" -p "lfLegBp0_outRollG_ctl";
	rename -uid "222BC38B-40B1-7661-40E3-B88B8787CAC7";
	setAttr ".t" -type "double3" -45.476177876224213 6.3108872417680944e-30 -2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_inRollG_ctl" -p "lfLegBp0_inRollG";
	rename -uid "662717FC-4E27-C48F-3841-FC99A8221247";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegBp0_ballRollG" -p "lfLegBp0_inRollG_ctl";
	rename -uid "B39F1A16-442F-559B-8666-1CA403542D2C";
	setAttr ".t" -type "double3" 23.249723827754153 -10.835213703968909 -9.2748668420976514 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_ballG_ikc" -p "lfLegBp0_ballRollG";
	rename -uid "05709E08-4074-2A00-8F17-AFB403E2EC07";
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
	rename -uid "188AF872-4C65-965A-9919-EAA262757D25";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.72133413171683713 -21.594906720408794 12.78070626511979 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "lfLegBp0_dist_loc1Shape" -p "lfLegBp0_dist_loc1";
	rename -uid "1BBC79D7-477A-CCD7-6779-A482A76E0BE9";
	setAttr -k off ".v";
createNode transform -n "lfLegBp0_softJ_posGrp" -p "lfLegBp0_ballG_ikc";
	rename -uid "1C6989A9-49A3-84CC-3F1C-CAB9DDB60DC7";
	setAttr ".t" -type "double3" 0.72133578840075074 -21.594947025953815 12.780707270063914 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_1_ikh_ofs" -p "lfLegBp0_ballG_ikc";
	rename -uid "DBF37125-4064-A3C3-784F-2DA9A0490BB5";
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegBp0_1_ikh" -p "lfLegBp0_1_ikh_ofs";
	rename -uid "88FED756-44DE-A403-71C6-AA96A84CF23D";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode nurbsCurve -n "stickCShape1" -p "lfLegBp0_ballG_ikc";
	rename -uid "74A133CA-431B-C0AA-2028-65AEF8EF3566";
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
		2.6739830080501656e-16 -38.806509290680054 -2.3605182158486773e-15
		2.582869167019618e-16 -38.955310013275906 -1.1302486762398072
		2.3157371938527788e-16 -39.391569796448245 -2.1834727006292645
		1.8907913816210199e-16 -40.085558689515715 -3.0878966886464529
		1.3369915040250828e-16 -40.989982162865211 -3.7818859248257177
		6.9207769016594497e-17 -42.043206358810565 -4.2181453648862606
		-8.1884220720639787e-32 -43.173455035050374 -4.3669454012585289
		-6.9207769016594497e-17 -44.303703711290183 -4.2181453648862606
		-1.3369915040250828e-16 -45.356927907235537 -3.7818859248257177
		-1.8907913816210199e-16 -46.261351380585033 -3.0878966886464529
		-2.3157371938527788e-16 -46.955343018546856 -2.1834727006292645
		-2.582869167019618e-16 -47.391600056824842 -1.1302486762398072
		-2.6739830080501656e-16 -47.5404007794207 -1.2903969666126756e-15
		-2.582869167019618e-16 -47.391600056824842 1.1302486762398072
		-2.3157371938527788e-16 -46.955343018546856 2.1834727006292645
		-1.8907913816210199e-16 -46.261351380585033 3.0878966886464529
		-1.3369915040250828e-16 -45.356927907235537 3.7818859248257177
		-6.9207769016594497e-17 -44.303703711290183 4.2181453648862606
		2.0005874207337196e-31 -43.173455035050374 4.3669454012585289
		6.9207769016594497e-17 -42.043206358810565 4.2181453648862606
		1.3369915040250828e-16 -40.989982162865211 3.7818859248257177
		1.8907913816210199e-16 -40.085558689515715 3.0878966886464529
		2.3157371938527788e-16 -39.391569796448245 2.1834727006292645
		2.582869167019618e-16 -38.955310013275906 1.1302486762398072
		2.6739830080501656e-16 -38.806509290680054 -2.3605182158486773e-15
		0 0 0
		;
createNode transform -n "lfLegBp0_toe_wiggle_grp" -p "lfLegBp0_inRollG_ctl";
	rename -uid "59F0436E-4A12-EEF4-2B77-8DB9241C0847";
	setAttr ".t" -type "double3" 23.249723827754153 -10.835213703968909 -9.2748668420976514 ;
	setAttr ".r" -type "double3" -174.72629178035115 66.953192350909148 94.85488737117025 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999967 ;
createNode ikHandle -n "lfLegBp0_2_ikh" -p "lfLegBp0_toe_wiggle_grp";
	rename -uid "A0B53B1C-4D1A-9826-AF23-7B9B57FF053A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.499827914765774e-05 2.2426228341032584e-06 1.1858555041044383e-05 ;
	setAttr ".r" -type "double3" 177.93791214545095 67.040689135560683 8.4031593690808058e-06 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.92018533945950221 0.035982636130089507 0.38982584693800149 ;
	setAttr ".roc" yes;
createNode ikHandle -n "lfLegBp0_3_ikh" -p "lfLegBp0_toe_wiggle_grp";
	rename -uid "47ED3DB1-4FF2-973E-3683-F6A7A1331694";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 18.75329671647853 1.8350487813734162e-06 -1.1174930897084323e-05 ;
	setAttr ".r" -type "double3" -179.99999591258276 7.0372643706719977e-05 -1.2452332635121382e-06 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.92018533945950221 0.035982636130089507 0.38982584693800149 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "diamondShape2" -p "lfLegBp0_inRollG_ctl";
	rename -uid "C00A5A1A-41E3-D43E-E69A-F586684CE618";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.7809050201958281
		-1.7809050201958281 0 0
		0 0 -1.7809050201958281
		1.7809050201958281 0 0
		0 0 1.7809050201958281
		0 1.7809050201958281 0
		1.7809050201958281 0 0
		0 0 -1.7809050201958281
		0 1.7809050201958281 0
		-1.7809050201958281 0 0
		0 -1.7809050201958281 0
		1.7809050201958281 0 0
		0 0 1.7809050201958281
		0 -1.7809050201958281 0
		0 0 -1.7809050201958281
		;
createNode nurbsCurve -n "diamondShape3" -p "lfLegBp0_outRollG_ctl";
	rename -uid "A5C574E6-463F-3E6E-5D78-AC9FC2F2E9AC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.7809050201958281
		-1.7809050201958281 0 0
		0 0 -1.7809050201958281
		1.7809050201958281 0 0
		0 0 1.7809050201958281
		0 1.7809050201958281 0
		1.7809050201958281 0 0
		0 0 -1.7809050201958281
		0 1.7809050201958281 0
		-1.7809050201958281 0 0
		0 -1.7809050201958281 0
		1.7809050201958281 0 0
		0 0 1.7809050201958281
		0 -1.7809050201958281 0
		0 0 -1.7809050201958281
		;
createNode nurbsCurve -n "diamondShape1" -p "lfLegBp0_toeRollG_ctl";
	rename -uid "5D2E208B-4FBF-18BC-97AC-48AAC929AD01";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.7809050201958281
		-1.7809050201958281 0 0
		0 0 -1.7809050201958281
		1.7809050201958281 0 0
		0 0 1.7809050201958281
		0 1.7809050201958281 0
		1.7809050201958281 0 0
		0 0 -1.7809050201958281
		0 1.7809050201958281 0
		-1.7809050201958281 0 0
		0 -1.7809050201958281 0
		1.7809050201958281 0 0
		0 0 1.7809050201958281
		0 -1.7809050201958281 0
		0 0 -1.7809050201958281
		;
createNode nurbsCurve -n "diamondShape4" -p "lfLegBp0_heelRollG_ctl";
	rename -uid "D05DA44D-48A6-08A3-F2DF-838BA6143504";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.7809050201958281
		-1.7809050201958281 0 0
		0 0 -1.7809050201958281
		1.7809050201958281 0 0
		0 0 1.7809050201958281
		0 1.7809050201958281 0
		1.7809050201958281 0 0
		0 0 -1.7809050201958281
		0 1.7809050201958281 0
		-1.7809050201958281 0 0
		0 -1.7809050201958281 0
		1.7809050201958281 0 0
		0 0 1.7809050201958281
		0 -1.7809050201958281 0
		0 0 -1.7809050201958281
		;
createNode transform -n "lfLegBp0_line_28" -p "lfLegBp0_IK";
	rename -uid "3B136910-4574-A9C8-B35C-95B3A5B2B267";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape1" -p "lfLegBp0_line_28";
	rename -uid "EAF014F3-413C-5310-90B5-A1A7D21A7CAF";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		40.300076474106817 117.61505386508884 -165.13228260994399
		34.545244628845914 131.11242826363832 -89.195325928131652
		;
createNode transform -n "lfLegBp0_ikc_ofs" -p "lfLegBp0_IK";
	rename -uid "3CF27EA6-49C5-B355-56A6-4C8614913C36";
	setAttr ".t" -type "double3" 38.357234944738131 32.430120424377833 -181.84851500573805 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_ikc_ofs1" -p "lfLegBp0_ikc_ofs";
	rename -uid "684AFCE7-4F23-7E73-B08B-1DAEFD1E0A07";
createNode transform -n "lfLegBp0_ikc" -p "lfLegBp0_ikc_ofs1";
	rename -uid "6E580C28-4650-390C-67AF-69B5C8D4BD92";
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
	rename -uid "695C4D09-4EFE-1A82-316A-B185E5202DFB";
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
		28.782303356700226 -32.430120424377826 28.782303356700254
		28.229259468352069 -32.430120424377826 34.397452186924795
		26.59138096978624 -32.430120424377826 39.796813996615541
		23.931610613169784 -32.430120424377826 44.772894339423082
		20.35216188169106 -32.430120424377826 49.134465238391307
		15.990590982722823 -32.430120424377826 52.713913969870042
		11.014510639915285 -32.430120424377826 55.373684326486497
		5.615148830224534 -32.430120424377826 57.011562825052337
		-3.3601465783112801e-15 -32.430120424377826 57.56460671340048
		-5.6151488302245403 -32.430120424377826 57.011562825052337
		-11.014510639915294 -32.430120424377826 55.373684326486497
		-15.990590982722834 -32.430120424377826 52.713913969870042
		-20.352161881691075 -32.430120424377826 49.134465238391314
		-23.931610613169799 -32.430120424377826 44.772894339423082
		-26.591380969786258 -32.430120424377826 39.796813996615541
		-28.22925946835209 -32.430120424377826 34.397452186924788
		-28.782303356700243 -32.430120424377826 28.782303356700243
		-28.229259298605147 -23.810948511422339 28.78230335670025
		-26.591380841255077 -15.418251682996196 28.78230335670025
		-23.931611156940136 -8.1506893814209391 28.78230335670025
		-20.352161876490456 -2.3677599179538653 28.78230335670025
		-15.990590635253183 1.9869756655302453 28.78230335670025
		-11.014510289237027 4.6467453498451903 28.78230335670025
		-5.6151487067486618 6.2846238071952598 28.78230335670025
		1.7624077846106011e-15 6.8376678652903564 28.78230335670025
		5.6151487067486618 6.2846238071952598 28.78230335670025
		11.014510289237027 4.6467453498451903 28.78230335670025
		15.990590635253183 1.9869756655302453 28.78230335670025
		20.352161876490456 -2.3677599179538653 28.78230335670025
		23.931611156940136 -8.1506893814209391 28.78230335670025
		26.591380841255077 -15.418251682996196 28.78230335670025
		28.229259298605147 -23.810948511422339 28.78230335670025
		28.78230335670025 -32.430120424377826 28.78230335670025
		28.78230335670025 -32.430120424377833 -27.055365155298229
		28.78230335670025 -30.703182222975812 -28.78230335670025
		28.229259298605147 -23.810948511422339 -28.78230335670025
		26.591380841255077 -15.418251682996196 -28.78230335670025
		23.931611156940136 -8.1506893814209391 -28.78230335670025
		20.352161876490456 -2.3677599179538653 -28.78230335670025
		15.990590635253183 1.9869756655302453 -28.78230335670025
		11.014510289237027 4.6467453498451903 -28.78230335670025
		5.6151487067486618 6.2846238071952598 -28.78230335670025
		1.7624077846106011e-15 6.8376678652903564 -28.78230335670025
		-5.6151487067486618 6.2846238071952598 -28.78230335670025
		-11.014510289237027 4.6467453498451903 -28.78230335670025
		-15.990590635253183 1.9869756655302453 -28.78230335670025
		-20.352161876490456 -2.3677599179538653 -28.78230335670025
		-23.931611156940136 -8.1506893814209391 -28.78230335670025
		-26.591380841255077 -15.418251682996196 -28.78230335670025
		-28.229259298605147 -23.810948511422339 -28.78230335670025
		-28.78230335670025 -30.703182222975812 -28.78230335670025
		-28.78230335670025 -32.430120424377826 -27.055365155298229
		-28.78230335670025 -32.430120424377826 28.78230335670025
		;
createNode transform -n "lfLegBp0_ikc_gmb" -p "lfLegBp0_ikc";
	rename -uid "212A932A-4B1B-7300-CFD2-EF89A836E6D2";
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
	rename -uid "22AF4089-40F8-44C8-97C7-BCA2801C47C6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".tw" yes;
	setAttr -s 53 ".cp[0:52]" -type "double3" -5.7564606713400437 3.9267790230011741 
		-2.8782303856955203 -5.645851893670411 3.9267790230011741 -4.0012601517404285 -5.3182761939572458 
		3.9267790230011741 -5.0811325136785754 -4.7863221226339547 3.9267790230011741 -6.0763485822400796 
		-4.0704323763382106 3.9267790230011741 -6.9486627620337273 -3.1981181965445629 3.9267790230011741 
		-7.6645525083294714 -2.2029021279830552 3.9267790230011741 -8.1965065796527625 -1.1230297660449047 
		3.9267790230011741 -8.5240822793659277 2.093114787182456e-15 3.9267790230011741 -8.6346910570355675 
		1.12302976604491 3.9267790230011741 -8.5240822793659277 2.2029021279830605 3.9267790230011741 
		-8.1965065796527625 3.1981181965445682 3.9267790230011741 -7.6645525083294714 4.0704323763382142 
		3.9267790230011741 -6.9486627620337345 4.7863221226339583 3.9267790230011741 -6.0763485822400796 
		5.3182761939572494 3.9267790230011741 -5.0811325136785754 5.6458518936704181 3.9267790230011741 
		-4.0012601517404249 5.7564606713400472 3.9267790230011741 -2.8782303856955167 5.6458518597210272 
		2.2029446404100774 -2.8782303856955167 5.318276168251014 0.52440527472484888 -2.8782303856955167 
		4.7863222313880271 -0.92910718559020111 -2.8782303856955167 4.0704323752980898 -2.0856930782836161 
		-2.8782303856955167 3.1981181270506376 -2.9566401949804382 -2.8782303856955167 2.2029020578474068 
		-3.4885941318434268 -2.8782303856955167 1.1230297413497343 -3.8161698233134409 -2.8782303856955167 
		1.0686039145980798e-15 -3.92677863493246 -2.8782303856955167 -1.1230297413497308 
		-3.8161698233134409 -2.8782303856955167 -2.2029020578474032 -3.4885941318434268 -2.8782303856955167 
		-3.198118127050634 -2.9566401949804382 -2.8782303856955167 -4.0704323752980898 -2.0856930782836161 
		-2.8782303856955167 -4.7863222313880271 -0.92910718559020111 -2.8782303856955167 
		-5.318276168251014 0.52440527472484888 -2.8782303856955167 -5.6458518597210272 2.2029446404100774 
		-2.8782303856955167 -5.7564606713400472 3.9267790230011741 -2.8782303856955167 -5.7564606713400472 
		3.9267790230011776 8.2893033167041743 -5.7564606713400472 3.5813913827207706 8.6346909569845778 
		-5.6458518597210272 2.2029446404100774 8.6346909569845778 -5.318276168251014 0.52440527472484888 
		8.6346909569845778 -4.7863222313880271 -0.92910718559020111 8.6346909569845778 -4.0704323752980898 
		-2.0856930782836161 8.6346909569845778 -3.198118127050634 -2.9566401949804382 8.6346909569845778 
		-2.2029020578474032 -3.4885941318434268 8.6346909569845778 -1.1230297413497308 -3.8161698233134409 
		8.6346909569845778 1.0686039145980798e-15 -3.92677863493246 8.6346909569845778 1.1230297413497343 
		-3.8161698233134409 8.6346909569845778 2.2029020578474068 -3.4885941318434268 8.6346909569845778 
		3.1981181270506376 -2.9566401949804382 8.6346909569845778 4.0704323752980898 -2.0856930782836161 
		8.6346909569845778 4.7863222313880271 -0.92910718559020111 8.6346909569845778 5.318276168251014 
		0.52440527472484888 8.6346909569845778 5.6458518597210272 2.2029446404100774 8.6346909569845778 
		5.7564606713400472 3.5813913827207706 8.6346909569845778 5.7564606713400472 3.9267790230011741 
		8.2893033167041743 5.7564606713400472 3.9267790230011741 -2.8782303856955167;
createNode nurbsCurve -n "lfLegBp0_ikc_gmbShapeOrig" -p "lfLegBp0_ikc_gmb";
	rename -uid "70A8083C-40F1-F424-E2E3-2289ABE65275";
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
		28.782303356700226 -32.430120424377826 28.782303356700254
		28.229259468352069 -32.430120424377826 34.397452186924795
		26.59138096978624 -32.430120424377826 39.796813996615541
		23.931610613169784 -32.430120424377826 44.772894339423082
		20.35216188169106 -32.430120424377826 49.134465238391307
		15.990590982722823 -32.430120424377826 52.713913969870042
		11.014510639915285 -32.430120424377826 55.373684326486497
		5.615148830224534 -32.430120424377826 57.011562825052337
		-3.3601465783112801e-15 -32.430120424377826 57.56460671340048
		-5.6151488302245403 -32.430120424377826 57.011562825052337
		-11.014510639915294 -32.430120424377826 55.373684326486497
		-15.990590982722834 -32.430120424377826 52.713913969870042
		-20.352161881691075 -32.430120424377826 49.134465238391314
		-23.931610613169799 -32.430120424377826 44.772894339423082
		-26.591380969786258 -32.430120424377826 39.796813996615541
		-28.22925946835209 -32.430120424377826 34.397452186924788
		-28.782303356700243 -32.430120424377826 28.782303356700243
		-28.229259298605147 -23.810948511422339 28.78230335670025
		-26.591380841255077 -15.418251682996196 28.78230335670025
		-23.931611156940136 -8.1506893814209391 28.78230335670025
		-20.352161876490456 -2.3677599179538653 28.78230335670025
		-15.990590635253183 1.9869756655302453 28.78230335670025
		-11.014510289237027 4.6467453498451903 28.78230335670025
		-5.6151487067486618 6.2846238071952598 28.78230335670025
		1.7624077846106011e-15 6.8376678652903564 28.78230335670025
		5.6151487067486618 6.2846238071952598 28.78230335670025
		11.014510289237027 4.6467453498451903 28.78230335670025
		15.990590635253183 1.9869756655302453 28.78230335670025
		20.352161876490456 -2.3677599179538653 28.78230335670025
		23.931611156940136 -8.1506893814209391 28.78230335670025
		26.591380841255077 -15.418251682996196 28.78230335670025
		28.229259298605147 -23.810948511422339 28.78230335670025
		28.78230335670025 -32.430120424377826 28.78230335670025
		28.78230335670025 -32.430120424377833 -27.055365155298229
		28.78230335670025 -30.703182222975812 -28.78230335670025
		28.229259298605147 -23.810948511422339 -28.78230335670025
		26.591380841255077 -15.418251682996196 -28.78230335670025
		23.931611156940136 -8.1506893814209391 -28.78230335670025
		20.352161876490456 -2.3677599179538653 -28.78230335670025
		15.990590635253183 1.9869756655302453 -28.78230335670025
		11.014510289237027 4.6467453498451903 -28.78230335670025
		5.6151487067486618 6.2846238071952598 -28.78230335670025
		1.7624077846106011e-15 6.8376678652903564 -28.78230335670025
		-5.6151487067486618 6.2846238071952598 -28.78230335670025
		-11.014510289237027 4.6467453498451903 -28.78230335670025
		-15.990590635253183 1.9869756655302453 -28.78230335670025
		-20.352161876490456 -2.3677599179538653 -28.78230335670025
		-23.931611156940136 -8.1506893814209391 -28.78230335670025
		-26.591380841255077 -15.418251682996196 -28.78230335670025
		-28.229259298605147 -23.810948511422339 -28.78230335670025
		-28.78230335670025 -30.703182222975812 -28.78230335670025
		-28.78230335670025 -32.430120424377826 -27.055365155298229
		-28.78230335670025 -32.430120424377826 28.78230335670025
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode transform -n "lfLegBp0_smart_ctl_ofs" -p "lfLegBp0_ikc_gmb";
	rename -uid "EFDC99FD-400F-0110-356E-809B73331143";
	setAttr ".t" -type "double3" -1.3426723332779886 -32.430120424377826 32.862443017257391 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_smart_ctl" -p "lfLegBp0_smart_ctl_ofs";
	rename -uid "F720ECFB-40AC-3E56-1BCE-4497321F933D";
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
	rename -uid "E7FAB6B3-4BDE-EC00-C145-F8970D585945";
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
		7.4490128855730289 1.5289115597149457e-16 -7.4490128855730378
		4.1242615347018545e-16 2.1622074634178809e-16 -6.735430227839279
		-7.4490128855730289 1.5289115597149448e-16 -7.4490128855730324
		-6.7354302278392986 -8.8246743822906456e-32 -2.6153492911240896e-15
		-7.4490128855730289 -1.5289115597149453e-16 7.4490128855730289
		-6.7469265249432251e-16 -2.1622074634178829e-16 6.7354302278392861
		7.4490128855730289 -1.5289115597149448e-16 7.4490128855730324
		6.7354302278392986 -1.2894161233086587e-31 -1.3476751566856706e-15
		7.4490128855730289 1.5289115597149457e-16 -7.4490128855730378
		4.1242615347018545e-16 2.1622074634178809e-16 -6.735430227839279
		-7.4490128855730289 1.5289115597149448e-16 -7.4490128855730324
		;
createNode ikHandle -n "lfLegBp0_autoAimJ_ikh" -p "lfLegBp0_ikc";
	rename -uid "2E3E18CA-41D7-0E82-2250-2885FFF3DC39";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.8421709430404007e-14 -5.6843418860808015e-14 2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -107.80786969682683 8.0062915856248029 -92.561682579542747 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegBp0_pvc_ofs" -p "lfLegBp0_IK";
	rename -uid "A56ACC38-4995-BCBF-0797-9BB8CF561AFC";
	setAttr ".t" -type "double3" 34.545244628845914 131.11242826363832 -89.195325928131652 ;
	setAttr ".r" -type "double3" -10.050520019357229 -4.3338372301968242 6.7998637515374774e-06 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_pvc_ofs1" -p "lfLegBp0_pvc_ofs";
	rename -uid "BC4904C5-4B5A-35AA-608E-40823EF01581";
createNode transform -n "lfLegBp0_pvc" -p "lfLegBp0_pvc_ofs1";
	rename -uid "0599071B-45D9-95E4-8916-1DBD1CC2477F";
	addAttr -ci true -sn "fkPin" -ln "fkPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -5.6843418860808015e-14 0 4.2632564145606011e-14 ;
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".fkPin";
	setAttr -k on ".pvPin";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -k on ".space";
createNode nurbsCurve -n "lfLegBp0_pvcShape1" -p "lfLegBp0_pvc";
	rename -uid "C261A487-4233-5115-BF6F-EC920A933B33";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 7.1236200807833123
		-7.1236200807833123 0 0
		0 0 -7.1236200807833123
		7.1236200807833123 0 0
		0 0 7.1236200807833123
		0 7.1236200807833123 0
		7.1236200807833123 0 0
		0 0 -7.1236200807833123
		0 7.1236200807833123 0
		-7.1236200807833123 0 0
		0 -7.1236200807833123 0
		7.1236200807833123 0 0
		0 0 7.1236200807833123
		0 -7.1236200807833123 0
		0 0 -7.1236200807833123
		;
createNode transform -n "lfLegBp0_pin_fkc_ofs" -p "lfLegBp0_pvc";
	rename -uid "678B2259-40EF-C20E-7DDC-7B8C829E7067";
	setAttr ".t" -type "double3" -3.2005022725501071 -80.994411107036882 -108.47582565497908 ;
	setAttr ".r" -type "double3" 175.66616156806663 10.050519505507587 -90.000006886093203 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_pin_fkc" -p "lfLegBp0_pin_fkc_ofs";
	rename -uid "790B8255-4036-CC2B-C702-A58885F9814E";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfLegBp0_pin_fkcShape1" -p "lfLegBp0_pin_fkc";
	rename -uid "AB9F69D5-4521-AA8B-022E-E7BABB044BB8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.1062621192432892e-14 -29.796051542292119 -29.796051542292204
		2.1315939553914064e-14 -8.7551319714817423e-15 -26.941720911357169
		2.1062621192432885e-14 29.796051542292108 -29.796051542292183
		2.045105656854691e-14 26.941720911357187 -6.3843914008279996e-14
		1.9839491944660932e-14 29.796051542292108 29.796051542292062
		1.9586173583179756e-14 -4.4066567476237122e-15 26.941720911357091
		1.9839491944660932e-14 -29.796051542292119 29.796051542292076
		2.045105656854691e-14 -26.941720911357201 -5.8773217470526317e-14
		2.1062621192432892e-14 -29.796051542292119 -29.796051542292204
		2.1315939553914064e-14 -8.7551319714817423e-15 -26.941720911357169
		2.1062621192432885e-14 29.796051542292108 -29.796051542292183
		;
createNode transform -n "lfLegBp0_BF" -p "lfLegBp0_ctl_data";
	rename -uid "E3711DC9-4C3D-E541-BF63-9EA5555AA8A6";
	setAttr ".t" -type "double3" -49.798005037915352 -288.14915777849779 145.84493377973951 ;
	setAttr -cb on ".ro";
createNode joint -n "lfLegBp0_hip_bf" -p "lfLegBp0_BF";
	rename -uid "F5176076-4ADA-12E1-F2DD-A69CFCCDE9CC";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 3;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 178.94017205186231 35.594453847837116 -93.300707540508867 ;
	setAttr ".radi" 11.5129213426801;
createNode joint -n "lfLegBp0_upr_bf" -p "lfLegBp0_hip_bf";
	rename -uid "9755760B-4012-B63C-EE73-76AD8D726CDB";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 6.2004800051615607 46.29529023978963 0.86798655213109166 ;
	setAttr ".radi" 11.5129213426801;
createNode joint -n "lfLegBp0_lwr_bf" -p "lfLegBp0_upr_bf";
	rename -uid "9657FFF4-4C75-5333-FF45-8099D24159AD";
	setAttr ".v" no;
	setAttr -cb on ".ro" 2;
	setAttr ".jo" -type "double3" 0 -21.881586780209876 0 ;
	setAttr ".pa" -type "double3" 0 -45 0 ;
	setAttr ".radi" 11.5129213426801;
createNode joint -n "lfLegBp0_palm_bf" -p "lfLegBp0_lwr_bf";
	rename -uid "A7F55CFE-46E7-56FA-7779-AA94C1D1BA30";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -5.1600553556571978 10.945139381756817 -2.2694244448964951 ;
	setAttr ".radi" 11.5129213426801;
createNode joint -n "lfLegBp0_ball_bf" -p "lfLegBp0_palm_bf";
	rename -uid "747D1670-4E57-F32E-7E34-588DD9334A23";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 5.2737082196488592 66.953192350909163 4.8548873711700429 ;
	setAttr ".radi" 11.5129213426801;
createNode joint -n "lfLegBp0_tip_bf" -p "lfLegBp0_ball_bf";
	rename -uid "15662560-4470-601A-66C0-AC8B4775D636";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 18.753331714771832 7.1054273576010019e-15 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -0.87332782129875441 22.943663525084819 -2.2393350963028302 ;
	setAttr ".radi" 11.5129213426801;
createNode transform -n "lfLegBp0_setting" -p "lfLegBp0_ctl_data";
	rename -uid "493746DA-42EA-B171-EE6E-1B854C0FEE97";
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
	rename -uid "1DAF9421-4573-DC80-B012-F499D72D17A7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		14.391151678350125 14.391151678350125 -3.5826745105621343e-16
		14.114629649302573 14.391151678350125 2.8075743533743305
		13.295690420627539 14.391151678350125 5.5072554877303066
		11.965805578470068 14.391151678350125 7.9952953176265913
		10.176080938245228 14.391151678350125 10.176080938245228
		7.9952953176265913 14.391151678350125 11.965805578470068
		5.5072554877303066 14.391151678350125 13.295690420627539
		2.8075743533743305 14.391151678350125 14.114629649302573
		-8.8120389230530054e-16 14.391151678350125 14.391151678350125
		-2.8075743533743305 14.391151678350125 14.114629649302573
		-5.5072554877303066 14.391151678350125 13.295690420627539
		-7.9952953176265913 14.391151678350125 11.965805578470068
		-10.176080938245228 14.391151678350125 10.176080938245228
		-11.965805578470068 14.391151678350125 7.9952953176265913
		-13.295690420627539 14.391151678350125 5.5072554877303066
		-14.114629649302573 14.391151678350125 2.8075743533743305
		-14.391151678350125 14.391151678350125 1.5565714706833864e-15
		-13.843421735712418 14.391151678350125 2.7536275723092567
		-12.283616308297676 14.391151678350125 5.088040469122614
		-9.9492030683725261 14.391151678350125 6.6478452103137693
		-7.1955758391750626 14.391151678350125 7.1955758391750626
		-4.4419482668658059 14.391151678350125 6.6478452103137693
		-2.1075353700524486 14.391151678350125 5.088040469122614
		-0.54773062886129287 14.391151678350125 2.7536275723092567
		0 14.391151678350125 1.5565714706833864e-15
		0.54773062886129287 14.391151678350125 -2.7536275723092567
		2.1075353700524486 14.391151678350125 -5.088040469122614
		4.4419482668658059 14.391151678350125 -6.6478452103137693
		7.1955758391750626 14.391151678350125 -7.1955758391750626
		9.9492030683725261 14.391151678350125 -6.6478452103137693
		12.283616308297676 14.391151678350125 -5.088040469122614
		13.843421735712418 14.391151678350125 -2.7536275723092567
		14.391151678350125 14.391151678350125 -3.5826745105621343e-16
		14.114629649302573 14.391151678350125 -2.8075743533743305
		13.295690420627539 14.391151678350125 -5.5072554877303066
		11.965805578470068 14.391151678350125 -7.9952953176265913
		10.176080938245228 14.391151678350125 -10.176080938245228
		7.9952953176265913 14.391151678350125 -11.965805578470068
		5.5072554877303066 14.391151678350125 -13.295690420627539
		2.8075743533743305 14.391151678350125 -14.114629649302573
		1.6800732895141641e-15 14.391151678350125 -14.391151678350125
		-2.8075743533743305 14.391151678350125 -14.114629649302573
		-5.5072554877303066 14.391151678350125 -13.295690420627539
		-7.9952953176265913 14.391151678350125 -11.965805578470068
		-10.176080938245228 14.391151678350125 -10.176080938245228
		-11.965805578470068 14.391151678350125 -7.9952953176265913
		-13.295690420627539 14.391151678350125 -5.5072554877303066
		-14.114629649302573 14.391151678350125 -2.8075743533743305
		-14.391151678350125 14.391151678350125 1.5565714706833864e-15
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp0_toe00_3_ctl_ofs" -p "lfLegBp0_ctl_data";
	rename -uid "716462DA-4DF3-8FEB-AAF1-789B731FD64F";
	setAttr ".t" -type "double3" -31.897263460577356 -281.33446068413832 -35.785155427177216 ;
	setAttr ".r" -type "double3" -114.89059774484787 -31.146538099386973 -138.10599192181189 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "lfLegBp0_toe00_3_ctl" -p "lfLegBp0_toe00_3_ctl_ofs";
	rename -uid "23452C98-4540-3FAD-81A4-0AA930E135B6";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe00_3_ctlShape1" -p "lfLegBp0_toe00_3_ctl";
	rename -uid "C5388F0E-4200-EC94-BCCD-11B3AF043F39";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4237294807188292e-14 -1.2881882189334648 -1.2881882189334681
		1.4248246651879405e-14 1.6970198266906649e-15 -1.1647854557689437
		1.4237294807188292e-14 1.2881882189334684 -1.2881882189334672
		1.4210854715202004e-14 1.1647854557689488 -4.5228303360128697e-16
		1.4184414623215715e-14 1.2881882189334684 1.2881882189334666
		1.4173462778524602e-14 1.8850197214333315e-15 1.1647854557689448
		1.4184414623215715e-14 -1.2881882189334648 1.2881882189334672
		1.4210854715202004e-14 -1.1647854557689452 -2.3305896854523234e-16
		1.4237294807188292e-14 -1.2881882189334648 -1.2881882189334681
		1.4248246651879405e-14 1.6970198266906649e-15 -1.1647854557689437
		1.4237294807188292e-14 1.2881882189334684 -1.2881882189334672
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp0_toe01_3_ctl_ofs" -p "lfLegBp0_ctl_data";
	rename -uid "2CD2956A-4D9C-1768-3D9B-4AA72B41A658";
	setAttr ".t" -type "double3" -25.2054212113894 -283.4163333552608 -21.008993863935729 ;
	setAttr ".r" -type "double3" -172.15883473708084 -26.376575313707985 -93.501134215163404 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_toe01_3_ctl" -p "lfLegBp0_toe01_3_ctl_ofs";
	rename -uid "2BC35FB1-4C2C-DBE3-8CA6-EAB28A128D89";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe01_3_ctlShape1" -p "lfLegBp0_toe01_3_ctl";
	rename -uid "57B219C7-42DD-50F4-5EEF-39B2D6DD8362";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.3696148984227004e-16 -1.2881882189334677 -1.2881882189334433
		1.4791333453338292e-16 -9.5950095870516661e-16 -1.1647854557689188
		1.3696148984227004e-16 1.2881882189334655 -1.2881882189334424
		1.1052139785598163e-16 1.1647854557689459 2.4432741665411307e-14
		8.4081305869693265e-17 1.2881882189334655 1.2881882189334914
		7.3129461178580333e-17 -7.7150106396250012e-16 1.1647854557689696
		8.4081305869693265e-17 -1.2881882189334677 1.2881882189334921
		1.1052139785598162e-16 -1.1647854557689481 2.4651965730467361e-14
		1.3696148984227004e-16 -1.2881882189334677 -1.2881882189334433
		1.4791333453338292e-16 -9.5950095870516661e-16 -1.1647854557689188
		1.3696148984227004e-16 1.2881882189334655 -1.2881882189334424
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp0_toe01_4_ctl_ofs" -p "lfLegBp0_ctl_data";
	rename -uid "4E898B38-4491-5878-0391-F5914CE4E7A7";
	setAttr ".t" -type "double3" -25.32111671616153 -285.30732381249862 -20.069508003240998 ;
	setAttr ".r" -type "double3" -269.99999996582778 -107.80217288001724 -360.000000033596 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_toe01_4_ctl" -p "lfLegBp0_toe01_4_ctl_ofs";
	rename -uid "2A3E4169-4DBA-4B6D-F3E8-6FAC1E6E816E";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe01_4_ctlShape1" -p "lfLegBp0_toe01_4_ctl";
	rename -uid "ABBD5542-4F47-8979-0DF8-63A88A8638FA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.8448149522390293e-14 -1.288188218933463 -1.2881882189334672
		2.8459101367081406e-14 3.4653621923863709e-15 -1.1647854557689428
		2.8448149522390293e-14 1.2881882189334701 -1.2881882189334664
		2.8421709430404007e-14 1.1647854557689505 3.2537398824285658e-16
		2.8395269338417719e-14 1.2881882189334701 1.2881882189334675
		2.8384317493726606e-14 3.653362087129038e-15 1.1647854557689457
		2.8395269338417719e-14 -1.288188218933463 1.2881882189334681
		2.8421709430404007e-14 -1.1647854557689434 5.4459805329891116e-16
		2.8448149522390293e-14 -1.288188218933463 -1.2881882189334672
		2.8459101367081406e-14 3.4653621923863709e-15 -1.1647854557689428
		2.8448149522390293e-14 1.2881882189334701 -1.2881882189334664
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp0_toe02_3_ctl_ofs" -p "lfLegBp0_ctl_data";
	rename -uid "AD273D90-4428-FACC-A7F5-6683C4D112AE";
	setAttr ".t" -type "double3" -12.783442430409039 -283.41633501191694 -13.818594264106252 ;
	setAttr ".r" -type "double3" -180.00000000175723 -73.470716787318636 -89.999999999375021 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_toe02_3_ctl" -p "lfLegBp0_toe02_3_ctl_ofs";
	rename -uid "B4131791-4216-B811-2278-C0B843760A3A";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe02_3_ctlShape1" -p "lfLegBp0_toe02_3_ctl";
	rename -uid "08E0BCCD-43EA-6600-4957-6C8D7A2C1CBC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.6440091986288395e-17 -1.2881882189334666 -1.2881882189334681
		3.7391936677401281e-17 -7.1322539005041459e-17 -1.1647854557689437
		2.644009198628838e-17 1.2881882189334666 -1.2881882189334672
		-1.5260869795523634e-32 1.164785455768947 -4.5228303360128697e-16
		-2.6440091986288389e-17 1.2881882189334666 1.2881882189334666
		-3.7391936677401318e-17 1.1667735573762512e-16 1.1647854557689448
		-2.644009198628838e-17 -1.2881882189334666 1.2881882189334672
		-2.2298399598234822e-32 -1.164785455768947 -2.3305896854523234e-16
		2.6440091986288395e-17 -1.2881882189334666 -1.2881882189334681
		3.7391936677401281e-17 -7.1322539005041459e-17 -1.1647854557689437
		2.644009198628838e-17 1.2881882189334666 -1.2881882189334672
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp0_toe02_4_ctl_ofs" -p "lfLegBp0_ctl_data";
	rename -uid "2E714C39-4B94-62B6-0208-24BD1A472E47";
	setAttr ".t" -type "double3" -12.783442430388405 -285.30732541013577 -7.4466782721937648 ;
	setAttr ".r" -type "double3" -270.00000000105985 -449.99999998954041 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "lfLegBp0_toe02_4_ctl" -p "lfLegBp0_toe02_4_ctl_ofs";
	rename -uid "8CE39E4D-4795-45A4-3026-DA8B58B419C2";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe02_4_ctlShape1" -p "lfLegBp0_toe02_4_ctl";
	rename -uid "6904C5F0-4D34-52B6-8BC6-E7989C7F54F0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.6440091986288395e-17 -1.2881882189334666 -1.2881882189334681
		3.7391936677401281e-17 -7.1322539005041459e-17 -1.1647854557689437
		2.644009198628838e-17 1.2881882189334666 -1.2881882189334672
		-1.5260869795523634e-32 1.164785455768947 -4.5228303360128697e-16
		-2.6440091986288389e-17 1.2881882189334666 1.2881882189334666
		-3.7391936677401318e-17 1.1667735573762512e-16 1.1647854557689448
		-2.644009198628838e-17 -1.2881882189334666 1.2881882189334672
		-2.2298399598234822e-32 -1.164785455768947 -2.3305896854523234e-16
		2.6440091986288395e-17 -1.2881882189334666 -1.2881882189334681
		3.7391936677401281e-17 -7.1322539005041459e-17 -1.1647854557689437
		2.644009198628838e-17 1.2881882189334666 -1.2881882189334672
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp0_toe03_3_ctl_ofs" -p "lfLegBp0_ctl_data";
	rename -uid "7F9FF9E0-41C0-CD6D-149C-FE8BC7ABA816";
	setAttr ".t" -type "double3" 1.8018522815095679 -282.13964427391312 -20.65079897451588 ;
	setAttr ".r" -type "double3" 123.17292659328409 -54.998740847885095 -38.591308931952796 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "lfLegBp0_toe03_3_ctl" -p "lfLegBp0_toe03_3_ctl_ofs";
	rename -uid "10225951-4E20-E5DD-93DE-B5BD36275596";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe03_3_ctlShape1" -p "lfLegBp0_toe03_3_ctl";
	rename -uid "3B133252-4601-D586-AA52-8B8BAE8AB0C5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-4.0837781687924021e-14 -1.2881882189334861 -1.2881882189334743
		-4.0826829843232907e-14 -1.9587204351294163e-14 -1.1647854557689499
		-4.0837781687924021e-14 1.288188218933447 -1.2881882189334735
		-4.0864221779910306e-14 1.1647854557689274 -6.6735392083544355e-15
		-4.0890661871896597e-14 1.288188218933447 1.2881882189334604
		-4.0901613716587711e-14 -1.9399204456551497e-14 1.1647854557689385
		-4.0890661871896597e-14 -1.2881882189334861 1.288188218933461
		-4.0864221779910306e-14 -1.1647854557689665 -6.4543151432983809e-15
		-4.0837781687924021e-14 -1.2881882189334861 -1.2881882189334743
		-4.0826829843232907e-14 -1.9587204351294163e-14 -1.1647854557689499
		-4.0837781687924021e-14 1.288188218933447 -1.2881882189334735
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp0_toe03_4_ctl_ofs" -p "lfLegBp0_ctl_data";
	rename -uid "ED78539B-4794-BDBB-8FBC-D9A67F5ED031";
	setAttr ".t" -type "double3" 3.716069981200512 -283.66726884308503 -17.153350763170835 ;
	setAttr ".r" -type "double3" 89.999999980748015 -57.135018205630608 1.5111411357549949e-08 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp0_toe03_4_ctl" -p "lfLegBp0_toe03_4_ctl_ofs";
	rename -uid "E8B0A1FD-4041-6332-C6B4-93B98E2932BD";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe03_4_ctlShape1" -p "lfLegBp0_toe03_4_ctl";
	rename -uid "728275EE-44F1-D4AA-DD17-CAA0119B5E7A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.0647729891824302e-14 -1.2881882189334968 -1.2881882189334681
		-1.0636778047133188e-14 -3.0261374335104756e-14 -1.1647854557689437
		-1.0647729891824302e-14 1.2881882189334364 -1.2881882189334672
		-1.067416998381059e-14 1.1647854557689168 -4.5228303360128697e-16
		-1.0700610075796878e-14 1.2881882189334364 1.2881882189334666
		-1.0711561920487991e-14 -3.007337444036209e-14 1.1647854557689448
		-1.0700610075796878e-14 -1.2881882189334968 1.2881882189334672
		-1.067416998381059e-14 -1.1647854557689772 -2.3305896854523234e-16
		-1.0647729891824302e-14 -1.2881882189334968 -1.2881882189334681
		-1.0636778047133188e-14 -3.0261374335104756e-14 -1.1647854557689437
		-1.0647729891824302e-14 1.2881882189334364 -1.2881882189334672
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp0_toe04_3_ctl_ofs" -p "lfLegBp0_ctl_data";
	rename -uid "B11635DD-4D3C-E618-7D0A-B09F829AB193";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "lfLegBp0_toe04_3_ctl" -p "lfLegBp0_toe04_3_ctl_ofs";
	rename -uid "014B5086-44EB-0F15-FB65-EDA886BD5C23";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe04_3_ctlShape1" -p "lfLegBp0_toe04_3_ctl";
	rename -uid "897020A2-4B49-893F-DE3E-37A91E0588D0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-3.5262735868142126e-15 -1.288188218933467 -1.2881882189334712
		-3.5153217421230994e-15 -5.13408130428968e-16 -1.1647854557689468
		-3.5262735868142126e-15 1.2881882189334661 -1.2881882189334704
		-3.5527136788005009e-15 1.1647854557689465 -3.5629111209778609e-15
		-3.5791537707867893e-15 1.2881882189334661 1.2881882189334635
		-3.5901056154779025e-15 -3.2540823568630146e-16 1.1647854557689417
		-3.5791537707867893e-15 -1.288188218933467 1.2881882189334641
		-3.5527136788005009e-15 -1.1647854557689474 -3.3436870559218067e-15
		-3.5262735868142126e-15 -1.288188218933467 -1.2881882189334712
		-3.5153217421230994e-15 -5.13408130428968e-16 -1.1647854557689468
		-3.5262735868142126e-15 1.2881882189334661 -1.2881882189334704
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp0_toe04_4_ctl_ofs" -p "lfLegBp0_ctl_data";
	rename -uid "2590DA8E-4024-A15A-9773-2F829D542B9F";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "lfLegBp0_toe04_4_ctl" -p "lfLegBp0_toe04_4_ctl_ofs";
	rename -uid "DAEDD38A-414C-DB7F-226E-FD93CB29C22A";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp0_toe04_4_ctlShape1" -p "lfLegBp0_toe04_4_ctl";
	rename -uid "EB78936A-4007-94CC-1861-7F9122D98694";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.7753157249425307e-14 -1.2881882189334977 -1.2881882189334681
		-1.7742205404734193e-14 -3.1145545517952608e-14 -1.1647854557689437
		-1.7753157249425307e-14 1.2881882189334355 -1.2881882189334672
		-1.7779597341411595e-14 1.1647854557689159 -4.5228303360128697e-16
		-1.7806037433397883e-14 1.2881882189334355 1.2881882189334666
		-1.7816989278088996e-14 -3.0957545623209943e-14 1.1647854557689448
		-1.7806037433397883e-14 -1.2881882189334977 1.2881882189334672
		-1.7779597341411595e-14 -1.1647854557689781 -2.3305896854523234e-16
		-1.7753157249425307e-14 -1.2881882189334977 -1.2881882189334681
		-1.7742205404734193e-14 -3.1145545517952608e-14 -1.1647854557689437
		-1.7753157249425307e-14 1.2881882189334355 -1.2881882189334672
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp0_anchorF1" -p "master_ctl";
	rename -uid "812132BB-426C-F5D7-0542-0FA8A9CC5AC3";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "lfLegBp0_anchorF1Shape" -p "lfLegBp0_anchorF1";
	rename -uid "8079B8CF-442F-B9AD-2F0F-A88A201510B0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 9.332702366262474 9.332702366262474 9.332702366262474 ;
createNode transform -n "lfLegBp1_ctl_data" -p "master_ctl";
	rename -uid "CB8F0011-4DB9-CA68-2A56-C9A3EDD1147E";
	setAttr ".t" -type "double3" 34.387288993065852 320.60922383140547 47.601245693640564 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp1_FK" -p "lfLegBp1_ctl_data";
	rename -uid "BA358B15-4980-278E-E400-489BEBE53681";
	setAttr ".t" -type "double3" -34.387288993065852 -320.60922383140547 -47.601245693640564 ;
	setAttr -cb on ".ro";
createNode joint -n "lfLegBp1_hip_fk" -p "lfLegBp1_FK";
	rename -uid "5C74A3F0-4114-48D3-8E11-A8A186855019";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 178.97330242843387 -12.845909388717383 -80.898713085560644 ;
	setAttr ".radi" 6.4645685550054726;
createNode joint -n "lfLegBp1_upr_fk" -p "lfLegBp1_hip_fk";
	rename -uid "DD65D9F2-4247-91D9-BB20-7AA73261145E";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 179.48854489652854 -19.863561351678964 10.785156761924807 ;
	setAttr ".radi" 6.4645685550054726;
createNode joint -n "lfLegBp1_lwr_fk" -p "lfLegBp1_upr_fk";
	rename -uid "946B5018-4FC4-E8F4-3CCA-9ABEF3B1FBD5";
	setAttr ".v" no;
	setAttr -cb on ".ro" 2;
	setAttr ".jo" -type "double3" 0 -13.029425657780328 0 ;
	setAttr ".pa" -type "double3" 0 -45 0 ;
	setAttr ".radi" 6.4645685550054726;
createNode joint -n "lfLegBp1_palm_fk" -p "lfLegBp1_lwr_fk";
	rename -uid "D08E2016-46D2-0F9C-0F27-A48AA1505C9C";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 179.27268781587955 6.0005786893652653 1.5879129121126598 ;
	setAttr ".radi" 6.4645685550054726;
createNode joint -n "lfLegBp1_ball_fk" -p "lfLegBp1_palm_fk";
	rename -uid "51783E3D-408A-7F37-57C4-A3B5B298C56D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 26.310713149415811 2.5579538487363607e-13 -15.314095378522623 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 71.782107589002308 0 ;
	setAttr ".radi" 6.4645685550054726;
createNode joint -n "lfLegBp1_tip_fk" -p "lfLegBp1_ball_fk";
	rename -uid "34194FCE-40E3-C6EE-4A87-A2B7AE08551A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 18.46741077057554 1.6342482922482304e-13 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 18.217892410997671 0 ;
	setAttr ".radi" 6.4645685550054726;
createNode transform -n "lfLegBp1_upr_fkc_ofs" -p "lfLegBp1_FK";
	rename -uid "C9AD8AFE-4441-CA12-D4F7-C28A9C375482";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp1_upr_fkc" -p "lfLegBp1_upr_fkc_ofs";
	rename -uid "D736056A-4C3E-E1F5-959A-1F98C9898691";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegBp1_upr_fkcShape1" -p "lfLegBp1_upr_fkc";
	rename -uid "CEB70A1E-4F02-F966-6DFB-E184CB2D4186";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 20 0 no 3
		25 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 20 20
		23
		7.6229069106796175e-16 28.716842890201022 -16.846173642933802
		6.3900519467791646e-16 29.985254704955377 -14.561369156660128
		3.9243420189782262e-16 32.522078334463885 -9.9917601841126888
		-3.5279954460277679e-19 32.631597644431977 0.96600277352312536
		-3.9102300391131929e-16 32.138739140265969 6.1277490943496531
		-7.6722988415370545e-16 30.250199660216502 12.602137782846386
		-1.1138016058812497e-15 27.189931769918459 18.158613294742214
		-1.4176110838908811e-15 23.282317898026292 23.203615663191695
		-1.666931651596276e-15 15.924083876582712 29.500487364540792
		-1.8521959187054417e-15 9.7128441203343456 32.1277609845718
		-1.9662804928765761e-15 -2.5294678667000414 36.781665558250417
		-2.0048022809859007e-15 -1.1891309455463248e-14 44.792880099568279
		-1.9662804928765655e-15 2.5294678667001818 36.781665558250296
		-1.8521959187055108e-15 -9.7128441203349549 32.127760984572994
		-1.6669316515961847e-15 -15.924083876581241 29.500487364538891
		-1.4176110838911948e-15 -23.282317898031621 23.203615663198441
		-1.1138016058800907e-15 -27.189931769898852 18.158613294717327
		-7.6722988415794528e-16 -30.250199660287816 12.602137782937879
		-3.9102300389553689e-16 -32.13873914000073 6.1277490940088057
		-3.5279957241277595e-19 -32.631597644248245 0.96600277410843416
		3.9243420192301099e-16 -32.522078334867068 -9.9917601846957531
		6.3900519468627168e-16 -29.985254705088202 -14.561369156853582
		7.6229069106790219e-16 -28.716842890198759 -16.846173642932495
		;
createNode transform -n "lfLegBp1_lwr_fkc_ofs" -p "lfLegBp1_FK";
	rename -uid "4A03034F-40BF-1DE4-DC2A-41873A5BA8FD";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp1_lwr_fkc" -p "lfLegBp1_lwr_fkc_ofs";
	rename -uid "B4B5B3EC-4C2B-4777-C972-199E6AFB392C";
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
createNode nurbsCurve -n "lfLegBp1_lwr_fkcShape1" -p "lfLegBp1_lwr_fkc";
	rename -uid "EAC69D74-4509-8F76-7EE8-11ADE09AA9F5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 20 0 no 3
		25 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 20 20
		23
		7.6229069106796175e-16 28.716842890201022 -16.846173642933802
		6.3900519467791646e-16 29.985254704955377 -14.561369156660128
		3.9243420189782262e-16 32.522078334463885 -9.9917601841126888
		-3.5279954460277679e-19 32.631597644431977 0.96600277352312536
		-3.9102300391131929e-16 32.138739140265969 6.1277490943496531
		-7.6722988415370545e-16 30.250199660216502 12.602137782846386
		-1.1138016058812497e-15 27.189931769918459 18.158613294742214
		-1.4176110838908811e-15 23.282317898026292 23.203615663191695
		-1.666931651596276e-15 15.924083876582712 29.500487364540792
		-1.8521959187054417e-15 9.7128441203343456 32.1277609845718
		-1.9662804928765761e-15 -2.5294678667000414 36.781665558250417
		-2.0048022809859007e-15 -1.1891309455463248e-14 44.792880099568279
		-1.9662804928765655e-15 2.5294678667001818 36.781665558250296
		-1.8521959187055108e-15 -9.7128441203349549 32.127760984572994
		-1.6669316515961847e-15 -15.924083876581241 29.500487364538891
		-1.4176110838911948e-15 -23.282317898031621 23.203615663198441
		-1.1138016058800907e-15 -27.189931769898852 18.158613294717327
		-7.6722988415794528e-16 -30.250199660287816 12.602137782937879
		-3.9102300389553689e-16 -32.13873914000073 6.1277490940088057
		-3.5279957241277595e-19 -32.631597644248245 0.96600277410843416
		3.9243420192301099e-16 -32.522078334867068 -9.9917601846957531
		6.3900519468627168e-16 -29.985254705088202 -14.561369156853582
		7.6229069106790219e-16 -28.716842890198759 -16.846173642932495
		;
createNode transform -n "lfLegBp1_palm_fkc_ofs" -p "lfLegBp1_FK";
	rename -uid "2D21F1AB-4768-470C-8FCC-93B6AF19A421";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp1_palm_fkc" -p "lfLegBp1_palm_fkc_ofs";
	rename -uid "7094E28C-490E-0605-1DFB-E6B3B248FCA4";
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
createNode nurbsCurve -n "lfLegBp1_palm_fkcShape1" -p "lfLegBp1_palm_fkc";
	rename -uid "8F43659D-44D3-396A-91EB-5B9B2379C0B9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 20 0 no 3
		25 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 20 20
		23
		7.6229069106796175e-16 28.716842890201022 -16.846173642933802
		6.3900519467791646e-16 29.985254704955377 -14.561369156660128
		3.9243420189782262e-16 32.522078334463885 -9.9917601841126888
		-3.5279954460277679e-19 32.631597644431977 0.96600277352312536
		-3.9102300391131929e-16 32.138739140265969 6.1277490943496531
		-7.6722988415370545e-16 30.250199660216502 12.602137782846386
		-1.1138016058812497e-15 27.189931769918459 18.158613294742214
		-1.4176110838908811e-15 23.282317898026292 23.203615663191695
		-1.666931651596276e-15 15.924083876582712 29.500487364540792
		-1.8521959187054417e-15 9.7128441203343456 32.1277609845718
		-1.9662804928765761e-15 -2.5294678667000414 36.781665558250417
		-2.0048022809859007e-15 -1.1891309455463248e-14 44.792880099568279
		-1.9662804928765655e-15 2.5294678667001818 36.781665558250296
		-1.8521959187055108e-15 -9.7128441203349549 32.127760984572994
		-1.6669316515961847e-15 -15.924083876581241 29.500487364538891
		-1.4176110838911948e-15 -23.282317898031621 23.203615663198441
		-1.1138016058800907e-15 -27.189931769898852 18.158613294717327
		-7.6722988415794528e-16 -30.250199660287816 12.602137782937879
		-3.9102300389553689e-16 -32.13873914000073 6.1277490940088057
		-3.5279957241277595e-19 -32.631597644248245 0.96600277410843416
		3.9243420192301099e-16 -32.522078334867068 -9.9917601846957531
		6.3900519468627168e-16 -29.985254705088202 -14.561369156853582
		7.6229069106790219e-16 -28.716842890198759 -16.846173642932495
		;
createNode transform -n "lfLegBp1_ikc_matcher" -p "lfLegBp1_palm_fkc";
	rename -uid "CCDB5F56-49E4-9665-C646-AAA5525410BD";
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-14 0 ;
	setAttr ".r" -type "double3" 0 179.99999999999943 90.000000000000156 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp1_ball_fkc_ofs" -p "lfLegBp1_FK";
	rename -uid "F2AF955F-4E3A-5A3E-88E0-94BE33BD0E4F";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp1_ball_fkc" -p "lfLegBp1_ball_fkc_ofs";
	rename -uid "15846249-47A9-E9AE-96C9-BF9A3643C6BD";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "lfLegBp1_ball_fkcShape1" -p "lfLegBp1_ball_fkc";
	rename -uid "FE2AF9CD-499E-525A-EAA3-DDB8AFD33D00";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.4339689460665644e-16 -16.73064656053527 -16.730646560535291
		4.8563654562953848e-16 -9.2631819974358151e-16 -15.127924237233454
		3.4339689460665624e-16 16.73064656053527 -16.730646560535277
		-1.9820412498931665e-31 15.127924237233497 -5.8741319547036276e-15
		-3.4339689460665634e-16 16.73064656053527 16.73064656053527
		-4.8563654562953888e-16 1.5153745173048121e-15 15.127924237233469
		-3.4339689460665624e-16 -16.73064656053527 16.730646560535277
		-2.8960569353174386e-31 -15.127924237233497 -3.0269080039572845e-15
		3.4339689460665644e-16 -16.73064656053527 -16.730646560535291
		4.8563654562953848e-16 -9.2631819974358151e-16 -15.127924237233454
		3.4339689460665624e-16 16.73064656053527 -16.730646560535277
		;
createNode transform -n "lfLegBp1_toe00_2_ikc_ofs" -p "lfLegBp1_ball_fkc_ofs";
	rename -uid "C9994125-4EDD-5113-D144-77A2C69789CD";
	setAttr ".t" -type "double3" -17.275668121538317 18.039316446535281 4.6040813263574449 ;
	setAttr ".r" -type "double3" 16.636655384392398 -29.265040915119936 43.288885396552814 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "lfLegBp1_toe00_2_ikc_ofs1" -p "lfLegBp1_toe00_2_ikc_ofs";
	rename -uid "D933FC41-4AE5-2913-F97F-CF8C550AF705";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp1_toe00_2_ikc" -p "lfLegBp1_toe00_2_ikc_ofs1";
	rename -uid "4DD87561-47A0-DF5F-7DEF-AAAE3284055E";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp1_toe00_2_ikcShape1" -p "lfLegBp1_toe00_2_ikc";
	rename -uid "267E432C-4396-6A97-7C76-97B7AA447352";
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
		-1.5150123335444504e-15 -5.2268901171159999e-16 -3.5527136788005009e-15
		-1.5150123335444504e-15 -5.2268901171159999e-16 -3.9564747101264111
		0.45688490864693843 -5.2268901171159999e-16 -3.9564747101264111
		0.45688490864693843 -5.2268901171159999e-16 -4.8702445274202937
		-0.45688490864694142 -5.2268901171159999e-16 -4.8702445274202937
		-0.45688490864694142 -5.2268901171159999e-16 -3.9564747101264111
		-1.5150123335444504e-15 -5.2268901171159999e-16 -3.9564747101264111
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegBp1_toe00_2_1_ikj_ikh" -p "lfLegBp1_toe00_2_ikc";
	rename -uid "BBC9899C-4772-D3E3-184E-F8909E615322";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 11.163346129606932 0.23765454914999395 0.79027398064269505 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.45034173039316899 -0.79889613770939139 -0.39869447829071236 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegBp1_toe01_2_ikc_ofs" -p "lfLegBp1_ball_fkc_ofs";
	rename -uid "DAB4F673-4CB4-1786-15FB-23AF77D3B545";
	setAttr ".t" -type "double3" -6.7106656090661261 13.659611867627554 1.1268297081539913 ;
	setAttr ".r" -type "double3" 5.9930746392994205 -16.555937178177903 16.081295689371231 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
createNode transform -n "lfLegBp1_toe01_2_ikc_ofs1" -p "lfLegBp1_toe01_2_ikc_ofs";
	rename -uid "1BE579EA-47A6-22E0-77B8-7BA681974AE8";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "lfLegBp1_toe01_2_ikc" -p "lfLegBp1_toe01_2_ikc_ofs1";
	rename -uid "378F2F09-4462-CBB9-3151-348059C048C6";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp1_toe01_2_ikcShape1" -p "lfLegBp1_toe01_2_ikc";
	rename -uid "9B3CA18B-4DEE-B2B9-C6FA-F2B13DC61758";
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
		0 -1.0453780234232e-15 -7.1054273576010019e-15
		0 -1.0453780234232e-15 -3.9564747101264146
		0.45688490864693992 -1.0453780234232e-15 -3.9564747101264146
		0.45688490864693992 -1.0453780234232e-15 -4.8702445274202972
		-0.45688490864693992 -1.0453780234232e-15 -4.8702445274202972
		-0.45688490864693992 -1.0453780234232e-15 -3.9564747101264146
		0 -1.0453780234232e-15 -3.9564747101264146
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegBp1_toe01_2_1_ikj_ikh" -p "lfLegBp1_toe01_2_ikc";
	rename -uid "D21DA51F-44F7-6214-670C-00B442174EAC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 16.607337145714432 -0.18585458740659533 -3.3836575250159555 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 0.99999999999999978 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.785781850081262 -0.32012033108567756 -0.52921626742614924 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegBp1_toe02_2_ikc_ofs" -p "lfLegBp1_ball_fkc_ofs";
	rename -uid "84C7E508-49F4-7E21-BEF6-6EBC90076DEF";
	setAttr ".t" -type "double3" -1.760581610707078 2.7294220916099761 -0.50238632048549903 ;
	setAttr ".r" -type "double3" -1.4790211600756313 -14.396013901472946 -3.9899199836523276 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "lfLegBp1_toe02_2_ikc_ofs1" -p "lfLegBp1_toe02_2_ikc_ofs";
	rename -uid "F8F27885-43EE-0CDA-D513-D7A0537D0A52";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999967 ;
createNode transform -n "lfLegBp1_toe02_2_ikc" -p "lfLegBp1_toe02_2_ikc_ofs1";
	rename -uid "53D7548D-4AD5-1319-B832-FAB12D978E21";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp1_toe02_2_ikcShape1" -p "lfLegBp1_toe02_2_ikc";
	rename -uid "C5BE7A68-4C88-12EA-2863-A594584FBC5C";
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
		0 -6.0600493341778015e-15 6.0600493341778015e-15
		0 -6.0600493341778015e-15 -3.9564747101264013
		0.45688490864693992 -6.0600493341778015e-15 -3.9564747101264013
		0.45688490864693992 -6.0600493341778015e-15 -4.8702445274202839
		-0.45688490864693992 -6.0600493341778015e-15 -4.8702445274202839
		-0.45688490864693992 -6.0600493341778015e-15 -3.9564747101264013
		0 -6.0600493341778015e-15 -3.9564747101264013
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegBp1_toe02_2_1_ikj_ikh" -p "lfLegBp1_toe02_2_ikc";
	rename -uid "939E975A-451B-4E74-A645-9D92EA20547B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 21.354398024050198 1.1809483696561642 -5.1386549840007163 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.84009172388888242 0.079967843524337598 -0.53651751085633093 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegBp1_toe03_2_ikc_ofs" -p "lfLegBp1_ball_fkc_ofs";
	rename -uid "6A33D713-42EC-A531-3227-E0B8BC79A42C";
	setAttr ".t" -type "double3" -6.5350899280958998 -8.4013300187606035 1.0690427088232823 ;
	setAttr ".r" -type "double3" -8.8446032754988373 -10.379168666867718 -26.095364262206015 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp1_toe03_2_ikc_ofs1" -p "lfLegBp1_toe03_2_ikc_ofs";
	rename -uid "319110DE-426C-1072-F659-B6A99DBD7635";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode transform -n "lfLegBp1_toe03_2_ikc" -p "lfLegBp1_toe03_2_ikc_ofs1";
	rename -uid "854A5906-4181-FC7A-AEA2-D2B112D37978";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp1_toe03_2_ikcShape1" -p "lfLegBp1_toe03_2_ikc";
	rename -uid "E241C664-4386-BF33-D5F2-FEB18EF07CB9";
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
		-1.2120098668355603e-14 3.5527136788005009e-15 5.2268901171159999e-16
		-1.2120098668355603e-14 3.5527136788005009e-15 -3.9564747101264071
		0.45688490864692782 3.5527136788005009e-15 -3.9564747101264071
		0.45688490864692782 3.5527136788005009e-15 -4.8702445274202901
		-0.45688490864695203 3.5527136788005009e-15 -4.8702445274202901
		-0.45688490864695203 3.5527136788005009e-15 -3.9564747101264071
		-1.2120098668355603e-14 3.5527136788005009e-15 -3.9564747101264071
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegBp1_toe03_2_1_ikj_ikh" -p "lfLegBp1_toe03_2_ikc";
	rename -uid "761427EF-4F44-F431-BC0A-4281817CE5EE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 16.852440787363321 0.034611620565984325 -2.6549089228862002 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.78276474115954586 0.48376189212461007 -0.39147642550407302 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegBp1_toe04_2_ikc_ofs" -p "lfLegBp1_ball_fkc_ofs";
	rename -uid "D100C46F-4C3A-D604-86F5-4A99699D35D6";
	setAttr ".t" -type "double3" -14.353479499863312 -13.578789704640634 3.6423036381542602 ;
	setAttr ".r" -type "double3" -21.099025857323408 -39.790565660511639 -47.119286795238672 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegBp1_toe04_2_ikc_ofs1" -p "lfLegBp1_toe04_2_ikc_ofs";
	rename -uid "4C6F679E-494D-4A74-7B95-4B8F4AC5CBD9";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "lfLegBp1_toe04_2_ikc" -p "lfLegBp1_toe04_2_ikc_ofs1";
	rename -uid "1C242BC3-4DCB-26F4-B24B-85BFADB0E310";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp1_toe04_2_ikcShape1" -p "lfLegBp1_toe04_2_ikc";
	rename -uid "71665939-4D25-7814-C6D6-CDAC6DF5F2C9";
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
		6.0600493341778015e-15 -5.0146713107546011e-15 1.3165476691778803e-14
		6.0600493341778015e-15 -5.0146713107546011e-15 -3.9564747101263942
		0.45688490864694598 -5.0146713107546011e-15 -3.9564747101263942
		0.45688490864694598 -5.0146713107546011e-15 -4.8702445274202759
		-0.45688490864693387 -5.0146713107546011e-15 -4.8702445274202759
		-0.45688490864693387 -5.0146713107546011e-15 -3.9564747101263942
		6.0600493341778015e-15 -5.0146713107546011e-15 -3.9564747101263942
		;
	setAttr ".adot" yes;
createNode ikHandle -n "lfLegBp1_toe04_2_1_ikj_ikh" -p "lfLegBp1_toe04_2_ikc";
	rename -uid "3AF5BFDA-49F8-DCF5-AC78-C0A22F6E1E4E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 12.279956058488644 0.38733809859276391 -3.826484662456437 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.29658088981516656 0.88476485320535381 -0.35948703777598529 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegBp1_quadScap_ofs" -p "lfLegBp1_FK";
	rename -uid "97A2DFF6-4CEA-C147-4D96-4EB535575218";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp1_quadScap" -p "lfLegBp1_quadScap_ofs";
	rename -uid "6D1364FB-4E98-02E0-0DCD-44B5E3005996";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "lfLegBp1_hip_fkc_ofs" -p "lfLegBp1_quadScap";
	rename -uid "48152D4D-4A95-E444-E7E5-2B9D3DF934B0";
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-14 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
createNode transform -n "lfLegBp1_hip_fkc" -p "lfLegBp1_hip_fkc_ofs";
	rename -uid "D87FA93A-4A29-E764-31AD-878FE1E31E2B";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "autoAim" -ln "autoAim" -dv 0.3 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -k on ".autoAim";
createNode nurbsCurve -n "lfLegBp1_hip_fkcShape1" -p "lfLegBp1_hip_fkc";
	rename -uid "2B448EC5-4641-C693-84AD-4BA1F2340209";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		33.46129312107054 -48.484264162541045 -33.461293121070582
		1.852636399487163e-15 -48.484264162541045 -30.255848474466909
		-33.46129312107054 -48.484264162541045 -33.461293121070554
		-30.255848474466994 -48.484264162541045 -1.1748263909407255e-14
		-33.46129312107054 -48.484264162541045 33.46129312107054
		-3.0307490346096243e-15 -48.484264162541045 30.255848474466937
		33.46129312107054 -48.484264162541045 33.461293121070554
		30.255848474466994 -48.484264162541045 -6.053816007914569e-15
		33.46129312107054 -48.484264162541045 -33.461293121070582
		1.852636399487163e-15 -48.484264162541045 -30.255848474466909
		-33.46129312107054 -48.484264162541045 -33.461293121070554
		;
createNode transform -n "lfLegBp1_scap_fkc_ofs" -p "lfLegBp1_hip_fkc";
	rename -uid "4B6470AA-4BA2-7E6B-509F-898A20637966";
	setAttr ".t" -type "double3" 108.40929707281964 -1.4210854715202004e-14 2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "lfLegBp1_scap_fkc" -p "lfLegBp1_scap_fkc_ofs";
	rename -uid "A9145AF9-455E-65E2-A85A-AB8CC5172A0C";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.8421709430404007e-14 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfLegBp1_scap_fkcShape1" -p "lfLegBp1_scap_fkc";
	rename -uid "C6BCD4E3-43FD-CF0C-24EC-19A1A2C2400A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
		27
		-145.45279248762313 6.4645685550054726 3.9584067671042494e-16
		-145.45279248762313 4.5711401844579571 4.5711401844579571
		-145.45279248762313 3.9584067671042494e-16 6.4645685550054726
		-145.45279248762313 -4.5711401844579571 4.5711401844579571
		-145.45279248762313 -6.4645685550054726 3.9584067671042494e-16
		-145.45279248762313 -4.5711401844579571 -4.5711401844579571
		-145.45279248762313 -3.9584067671042494e-16 -6.4645685550054726
		-145.45279248762313 4.5711401844579571 -4.5711401844579571
		-145.45279248762313 6.4645685550054726 -3.9584067671042494e-16
		-150.02393267208109 4.5711401844579571 2.7990161588537757e-16
		-151.91736104262861 2.4238249416486934e-32 3.9584067671042494e-16
		-150.02393267208109 -4.5711401844579571 -2.7990161588537757e-16
		-145.45279248762313 -6.4645685550054726 3.9584067671042494e-16
		-140.88165230316517 -4.5711401844579571 -2.7990161588537757e-16
		-138.98822393261764 -2.4238249416486934e-32 -3.9584067671042494e-16
		-140.88165230316517 4.5711401844579571 2.7990161588537757e-16
		-145.45279248762313 6.4645685550054726 3.9584067671042494e-16
		-145.45279248762313 4.5711401844579571 4.5711401844579571
		-145.45279248762313 3.9584067671042494e-16 6.4645685550054726
		-150.02393267208109 2.7990161588537757e-16 4.5711401844579571
		-151.91736104262861 3.9584067671042494e-16 2.4238249416486934e-32
		-150.02393267208109 -2.7990161588537757e-16 -4.5711401844579571
		-145.45279248762313 -3.9584067671042494e-16 -6.4645685550054726
		-140.88165230316517 -2.7990161588537757e-16 -4.5711401844579571
		-138.98822393261764 -3.9584067671042494e-16 -2.4238249416486934e-32
		-140.88165230316517 2.7990161588537757e-16 4.5711401844579571
		-145.45279248762313 3.9584067671042494e-16 6.4645685550054726
		;
createNode joint -n "lfLegBp1_autoAim" -p "lfLegBp1_quadScap_ofs";
	rename -uid "FA1717F5-40EB-B216-8122-76B492A6F67A";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 5.6843418860808015e-14 1.4210854715202004e-14 0 ;
	setAttr ".r" -type "double3" -5.0888874903416268e-14 -2.7715786839864456e-29 -1.6062558282194156e-29 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -117.72899397162945 -8.3053192020350686 6.6510579228868449 ;
	setAttr ".radi" 9.6968528325082097;
createNode joint -n "lfLegBp1_autoAim_end" -p "lfLegBp1_autoAim";
	rename -uid "3D4E7BA5-4997-F17E-CD59-738144A03DCD";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 287.01759515469064 1.5631940186722204e-13 9.0594198809412774e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 4.7708320221952752e-15 -1.3914926731402878e-15 -9.2683351264522822e-15 ;
	setAttr ".radi" 9.6968528325082097;
createNode ikEffector -n "effector16" -p "lfLegBp1_autoAim";
	rename -uid "A6ADB496-4158-DD10-3EB9-628148B0DBB9";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikHandle -n "lfLegBp1_legLock_ikh" -p "lfLegBp1_quadScap_ofs";
	rename -uid "045D0330-44C2-221E-59B2-A99E213B134F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.6843418860808015e-14 1.4210854715202004e-14 0 ;
	setAttr ".r" -type "double3" -62.271006028370486 8.305319202035033 -173.34894207711312 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "lfLegBp1_IK" -p "lfLegBp1_ctl_data";
	rename -uid "88F1ED11-4D60-2CAB-184A-DAABC854B389";
	setAttr ".t" -type "double3" -34.387288993065852 -320.60922383140547 -47.601245693640564 ;
	setAttr -cb on ".ro";
createNode joint -n "lfLegBp1_hip_ik" -p "lfLegBp1_IK";
	rename -uid "57A24B6B-4182-FBD8-8A69-B18EB94B9A08";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 178.97330242843387 -12.845909388717383 -80.898713085560644 ;
	setAttr ".radi" 9.6968528325082097;
createNode joint -n "lfLegBp1_upr_ik" -p "lfLegBp1_hip_ik";
	rename -uid "C9A5E0C1-47CD-24FB-0C9D-3BA0279C8E1A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 108.40929707281967 0 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 8.4800406880415795e-07 1.7075472917698389e-06 9.9088563083768486e-08 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 179.48854489652854 -19.863561351678964 10.785156761924807 ;
	setAttr ".radi" 9.6968528325082097;
createNode joint -n "lfLegBp1_lwr_ik" -p "lfLegBp1_upr_ik";
	rename -uid "229647A5-4CC7-CBA9-C84D-CA9BB7ABA02D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 89.280451821657152 1.4210854715202004e-14 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 1.1101389940009304e-13 -5.6240812729034851e-06 -1.3612016850155892e-13 ;
	setAttr -cb on ".ro" 2;
	setAttr ".jo" -type "double3" 0 -13.029425657780328 0 ;
	setAttr ".pa" -type "double3" 0 -45 0 ;
	setAttr ".radi" 9.6968528325082097;
createNode joint -n "lfLegBp1_palm_ik" -p "lfLegBp1_lwr_ik";
	rename -uid "314C76B2-4A18-3A0F-BAEF-9B9168F8577C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 93.469913638690045 -2.9132252166164108e-13 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 1.0095771715962893e-08 -3.7214784427321043e-06 1.2692350213701186e-08 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 179.27268781587955 6.0005786893652653 1.5879129121126598 ;
	setAttr ".radi" 9.6968528325082097;
createNode joint -n "lfLegBp1_ball_ik" -p "lfLegBp1_palm_ik";
	rename -uid "1C0018F7-4E58-8808-BD80-45BE75A9510E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 26.310713149415811 2.5579538487363607e-13 -15.314095378522623 ;
	setAttr ".r" -type "double3" 4.7720304551992503e-08 4.222943172159741e-22 -1.8360622311459118e-23 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 71.782107589002308 0 ;
	setAttr ".radi" 9.6968528325082097;
createNode joint -n "lfLegBp1_tip_ik" -p "lfLegBp1_ball_ik";
	rename -uid "91E511DE-492E-17B6-73EC-4D88F0B11647";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 18.46741077057554 1.6342482922482304e-13 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 18.217892410997671 0 ;
	setAttr ".radi" 9.6968528325082097;
createNode ikEffector -n "effector14" -p "lfLegBp1_ball_ik";
	rename -uid "74E8FD20-42D1-E0D4-12FC-7FBBFB2DFAC1";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector13" -p "lfLegBp1_palm_ik";
	rename -uid "68C93904-4013-D574-5648-409514ADE02F";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector12" -p "lfLegBp1_lwr_ik";
	rename -uid "A7CEF5FF-4409-9D6D-ED47-959B21776CE5";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "lfLegBp1_softJ" -p "lfLegBp1_hip_ik";
	rename -uid "4D19FEA5-4B74-DFF3-4B65-53AC9F12CE52";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 108.40929707281967 0 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -2.5444437451708131e-14 1.69272215241805e-29 -1.3940064784619239e-29 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 12.408340305240538 -13.199110314150893 10.724187954150526 ;
createNode joint -n "lfLegBp1_softJ_end" -p "lfLegBp1_softJ";
	rename -uid "6F73C1D1-440D-5B23-C914-8FA0E1A30B27";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 181.5709228515625 -1.2079226507921703e-13 9.9475983006414026e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.2722218725854067e-14 -7.9513867036588047e-16 -4.8702243559910101e-15 ;
createNode ikEffector -n "effector15" -p "lfLegBp1_softJ";
	rename -uid "E95F5F80-456F-4048-D9B7-FBA597427155";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "lfLegBp1_pvChainJ" -p "lfLegBp1_hip_ik";
	rename -uid "D3435BE3-46A2-E880-DA06-CEA7E729226B";
	setAttr ".ove" yes;
	setAttr ".ovc" 5;
	setAttr ".t" -type "double3" 108.40929707281967 -1.4210854715202004e-14 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -2.7690376051787848e-15 -1.1769330691478196e-06 2.6960606227193405e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 12.408346343415815 -13.199110489362566 10.724187955702439 ;
createNode joint -n "lfLegBp1_pvChainJ_end" -p "lfLegBp1_pvChainJ";
	rename -uid "92865B76-422C-A68C-79B8-769745DB5D60";
	setAttr ".ove" yes;
	setAttr ".ovc" 5;
	setAttr ".t" -type "double3" 181.57092251176181 -5.6843418860808015e-14 2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.2722218725854067e-14 -7.9513867036588047e-16 -4.8702243559910101e-15 ;
createNode ikEffector -n "effector23" -p "lfLegBp1_pvChainJ";
	rename -uid "F42497C6-4C3A-A9C0-226D-588781A1C7F4";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegBp1_pvc_SPACE_1_ofs" -p "lfLegBp1_pvChainJ";
	rename -uid "9D475421-4B1A-D3B2-CD16-0E8201BCD54E";
	setAttr ".t" -type "double3" 89.503344373826707 20.357839054767005 88.869715514577905 ;
	setAttr ".r" -type "double3" 0.22385102980391358 12.913582506855706 88.379880944094296 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "lfLegBp1_pvc_SPACE_1" -p "lfLegBp1_pvc_SPACE_1_ofs";
	rename -uid "D90F9AF2-4AEC-CF0A-BC1F-599803B52D74";
	setAttr ".t" -type "double3" 0 0 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "lfLegBp1_ikCstG" -p "lfLegBp1_IK";
	rename -uid "145CA9B9-4C12-B6AC-759A-43B3992A453B";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp1_heelRollG" -p "lfLegBp1_ikCstG";
	rename -uid "54606316-4490-06AE-B476-AFB1D34EEE19";
	setAttr ".t" -type "double3" 2.1316282072803006e-14 34.745592349254537 7.7993538431150284 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp1_heelRollG_ctl" -p "lfLegBp1_heelRollG";
	rename -uid "82F3F241-441C-E7F6-796A-ADA43291E24F";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegBp1_toeRollG" -p "lfLegBp1_heelRollG_ctl";
	rename -uid "B26C2E8D-4FFC-DD65-E112-71A228873A9D";
	setAttr ".t" -type "double3" 0 4.9742408479559257e-15 -40.617758944204859 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp1_toeRollG_ctl" -p "lfLegBp1_toeRollG";
	rename -uid "1945D73E-4DBE-3909-4E6D-74A5DDF608D1";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegBp1_footRollG" -p "lfLegBp1_toeRollG_ctl";
	rename -uid "CA1113F9-4C58-16D7-44FF-5DBA411F306F";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp1_outRollG" -p "lfLegBp1_footRollG";
	rename -uid "D6BD2089-410E-D1C3-4288-258B540D9973";
	setAttr ".t" -type "double3" 21.536899366703132 -3.7720028734753189e-15 30.800740883833072 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp1_outRollG_ctl" -p "lfLegBp1_outRollG";
	rename -uid "FFA4422C-430B-FF1C-45B0-AA83C43E1945";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegBp1_inRollG" -p "lfLegBp1_outRollG_ctl";
	rename -uid "84545950-4875-1073-CD5F-7086DE973235";
	setAttr ".t" -type "double3" -48.173748721715398 -1.570486004538592e-16 1.2823991420481775 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp1_inRollG_ctl" -p "lfLegBp1_inRollG";
	rename -uid "AA34A2B9-4A79-8933-BB54-6CB53BFEFB83";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "lfLegBp1_ballRollG" -p "lfLegBp1_inRollG_ctl";
	rename -uid "9F6FF35F-4F34-D0C6-2183-6FB57A84BD96";
	setAttr ".t" -type "double3" 26.636849355012217 -8.4348791998387238 -14.578830303314049 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp1_ballG_ikc" -p "lfLegBp1_ballRollG";
	rename -uid "4650C8E1-48F0-B336-55B7-D496F8463B76";
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
createNode transform -n "lfLegBp1_dist_loc1" -p "lfLegBp1_ballG_ikc";
	rename -uid "F391C8B3-4576-461B-F9A6-0F97D4E86FEC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.8421709430404007e-14 -26.3107131494158 15.314095378522623 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
createNode locator -n "lfLegBp1_dist_loc1Shape" -p "lfLegBp1_dist_loc1";
	rename -uid "0E648DFD-4436-8616-F8D0-A197236AD602";
	setAttr -k off ".v";
createNode transform -n "lfLegBp1_softJ_posGrp" -p "lfLegBp1_ballG_ikc";
	rename -uid "542C3E07-4CF1-9AAB-F49B-67ABFF3BB837";
	setAttr ".t" -type "double3" -3.86957310638536e-08 -26.310713469850366 15.314092330333835 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp1_1_ikh_ofs" -p "lfLegBp1_ballG_ikc";
	rename -uid "A7849E73-4EC5-E4B8-3D8A-E1BE329577EF";
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegBp1_1_ikh" -p "lfLegBp1_1_ikh_ofs";
	rename -uid "2235FAD8-4826-79A7-1855-EC8FD54FE42E";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode nurbsCurve -n "stickCShape2" -p "lfLegBp1_ballG_ikc";
	rename -uid "CBC9FE1E-4DFA-F576-582D-5A92CD93CA91";
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
		3.0029122854123479e-16 -43.580136131054019 -2.6508878811015413e-15
		2.9005904412652341e-16 -43.747240976752778 -1.2692816765228621
		2.6005983015866508e-16 -44.237165504536073 -2.4520638230843561
		2.1233794874268049e-16 -45.016522653275644 -3.4677418945837144
		1.5014561427061739e-16 -46.032200146797535 -4.2470994286415928
		7.7721084689111358e-17 -47.214982486018179 -4.7370235711065769
		-9.1956879173561471e-32 -48.484264162541045 -4.9041276461687122
		-7.7721084689111358e-17 -49.753545839063904 -4.7370235711065769
		-1.5014561427061739e-16 -50.936328178284555 -4.2470994286415928
		-2.1233794874268049e-16 -51.952005671806447 -3.4677418945837144
		-2.6005983015866508e-16 -52.731365903092509 -2.4520638230843561
		-2.9005904412652341e-16 -53.221287348329305 -1.2692816765228621
		-3.0029122854123479e-16 -53.388392194028071 -1.4491299654613714e-15
		-2.9005904412652341e-16 -53.221287348329305 1.2692816765228621
		-2.6005983015866508e-16 -52.731365903092509 2.4520638230843561
		-2.1233794874268049e-16 -51.952005671806447 3.4677418945837144
		-1.5014561427061739e-16 -50.936328178284555 4.2470994286415928
		-7.7721084689111358e-17 -49.753545839063904 4.7370235711065769
		2.2466816451998866e-31 -48.484264162541045 4.9041276461687122
		7.7721084689111358e-17 -47.214982486018179 4.7370235711065769
		1.5014561427061739e-16 -46.032200146797535 4.2470994286415928
		2.1233794874268049e-16 -45.016522653275644 3.4677418945837144
		2.6005983015866508e-16 -44.237165504536073 2.4520638230843561
		2.9005904412652341e-16 -43.747240976752778 1.2692816765228621
		3.0029122854123479e-16 -43.580136131054019 -2.6508878811015413e-15
		0 0 0
		;
createNode transform -n "lfLegBp1_toe_wiggle_grp" -p "lfLegBp1_inRollG_ctl";
	rename -uid "5FCCAAC8-4CEA-8D96-F6D3-78BEB3EBD157";
	setAttr ".t" -type "double3" 26.636849355012217 -8.4348791998387238 -14.578830303314049 ;
	setAttr ".r" -type "double3" 179.99999999999821 71.782107589002308 89.99999999999811 ;
	setAttr -cb on ".ro";
createNode ikHandle -n "lfLegBp1_2_ikh" -p "lfLegBp1_toe_wiggle_grp";
	rename -uid "FDAEBFB5-4F67-8326-22BA-EE862DD2A8A0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.4574583338553566e-06 -3.8302964355807489e-08 2.0037385013438325e-06 ;
	setAttr ".r" -type "double3" 179.9999998592441 71.782105711000654 0 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.9498744687941767 -9.7875097194771813e-15 0.31263156195909009 ;
	setAttr ".roc" yes;
createNode ikHandle -n "lfLegBp1_3_ikh" -p "lfLegBp1_toe_wiggle_grp";
	rename -uid "C6195831-49FF-79E6-0FD8-EFABB7546DFA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 18.46741422803386 -2.5400453296242631e-08 2.6090506111131617e-06 ;
	setAttr ".r" -type "double3" 179.99999995599524 -1.8780017004221535e-06 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.9498744687941767 -9.7875097194771813e-15 0.31263156195909009 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "diamondShape6" -p "lfLegBp1_inRollG_ctl";
	rename -uid "2F6C0D14-4409-D566-614E-248E596BD403";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.9999758967048182
		-1.9999758967048182 0 0
		0 0 -1.9999758967048182
		1.9999758967048182 0 0
		0 0 1.9999758967048182
		0 1.9999758967048182 0
		1.9999758967048182 0 0
		0 0 -1.9999758967048182
		0 1.9999758967048182 0
		-1.9999758967048182 0 0
		0 -1.9999758967048182 0
		1.9999758967048182 0 0
		0 0 1.9999758967048182
		0 -1.9999758967048182 0
		0 0 -1.9999758967048182
		;
createNode nurbsCurve -n "diamondShape7" -p "lfLegBp1_outRollG_ctl";
	rename -uid "7B9DE764-4C05-6E91-8F95-10AAB2BE7C5D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.9999758967048182
		-1.9999758967048182 0 0
		0 0 -1.9999758967048182
		1.9999758967048182 0 0
		0 0 1.9999758967048182
		0 1.9999758967048182 0
		1.9999758967048182 0 0
		0 0 -1.9999758967048182
		0 1.9999758967048182 0
		-1.9999758967048182 0 0
		0 -1.9999758967048182 0
		1.9999758967048182 0 0
		0 0 1.9999758967048182
		0 -1.9999758967048182 0
		0 0 -1.9999758967048182
		;
createNode nurbsCurve -n "diamondShape5" -p "lfLegBp1_toeRollG_ctl";
	rename -uid "14F289F4-49AA-D4DE-4CD3-56BF3F6E8936";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.9999758967048182
		-1.9999758967048182 0 0
		0 0 -1.9999758967048182
		1.9999758967048182 0 0
		0 0 1.9999758967048182
		0 1.9999758967048182 0
		1.9999758967048182 0 0
		0 0 -1.9999758967048182
		0 1.9999758967048182 0
		-1.9999758967048182 0 0
		0 -1.9999758967048182 0
		1.9999758967048182 0 0
		0 0 1.9999758967048182
		0 -1.9999758967048182 0
		0 0 -1.9999758967048182
		;
createNode nurbsCurve -n "diamondShape8" -p "lfLegBp1_heelRollG_ctl";
	rename -uid "4C23E41E-447E-3976-B56D-3AA094A7AE91";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.9999758967048182
		-1.9999758967048182 0 0
		0 0 -1.9999758967048182
		1.9999758967048182 0 0
		0 0 1.9999758967048182
		0 1.9999758967048182 0
		1.9999758967048182 0 0
		0 0 -1.9999758967048182
		0 1.9999758967048182 0
		-1.9999758967048182 0 0
		0 -1.9999758967048182 0
		1.9999758967048182 0 0
		0 0 1.9999758967048182
		0 -1.9999758967048182 0
		0 0 -1.9999758967048182
		;
createNode transform -n "lfLegBp1_line_28" -p "lfLegBp1_IK";
	rename -uid "E11F9EFF-4BB4-F38E-AF8F-7A9B31669505";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape2" -p "lfLegBp1_line_28";
	rename -uid "C9E192FA-4B17-6454-D55B-4BA9C5E0BF5C";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		48.834889508701735 127.66767230728048 60.745487354727423
		50.086173291694578 127.35193949443406 -20.058274605394814
		;
createNode transform -n "lfLegBp1_ikc_ofs" -p "lfLegBp1_IK";
	rename -uid "FF1697DC-40C3-DCF0-6338-CC8249A19C8C";
	setAttr ".t" -type "double3" 46.120991069505067 34.745592349254537 70.479277947315055 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp1_ikc_ofs1" -p "lfLegBp1_ikc_ofs";
	rename -uid "2B6347DF-4DB2-6DF3-6C9E-A3BD2C82B303";
createNode transform -n "lfLegBp1_ikc" -p "lfLegBp1_ikc_ofs1";
	rename -uid "AFC597A2-44CD-8FB2-F67E-F1853DEA4C3E";
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
	setAttr -k on ".legLock";
	setAttr -k on ".legLockLen";
	setAttr -av -k on ".palmScale";
	setAttr -l on -k on ".wsMirror";
	setAttr -cb on ".extraCtl";
	setAttr -k on ".space";
createNode nurbsCurve -n "lfLegBp1_ikcShape1" -p "lfLegBp1_ikc";
	rename -uid "705088EC-4BA3-1131-09F0-039AE43DCF66";
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
		32.322842775027333 -34.74559234925453 32.322842775027368
		31.701768414534715 -34.74559234925453 38.628716580484138
		29.862412872428074 -34.74559234925453 44.692259191971971
		26.875461550668103 -34.74559234925453 50.280452067405271
		22.855701313448435 -34.74559234925453 55.178544088475796
		17.957609292377903 -34.74559234925453 59.198304325695482
		12.369416416944603 -34.74559234925453 62.185255647455442
		6.3058738054567653 -34.74559234925453 64.024611189562094
		-3.7734815106977321e-15 -34.74559234925453 64.645685550054708
		-6.3058738054567725 -34.74559234925453 64.024611189562094
		-12.369416416944611 -34.74559234925453 62.185255647455442
		-17.957609292377914 -34.74559234925453 59.198304325695482
		-22.855701313448449 -34.74559234925453 55.178544088475803
		-26.87546155066812 -34.74559234925453 50.280452067405278
		-29.862412872428092 -34.74559234925453 44.692259191971971
		-31.701768414534737 -34.74559234925453 38.628716580484131
		-32.322842775027354 -34.74559234925453 32.322842775027354
		-31.701768223907052 -25.066167629810124 32.322842775027361
		-29.862412728086166 -15.641076917584741 32.322842775027361
		-26.87546216132818 -7.4795246359516412 32.322842775027361
		-22.855701307608101 -0.98523133669051077 32.322842775027361
		-17.957608902165681 3.9051845500215947 32.322842775027361
		-12.369416023129066 6.8921351167795777 32.322842775027361
		-6.3058736667920039 8.7314906126004672 32.322842775027361
		1.9792032979942723e-15 9.3525651637207687 32.322842775027361
		6.3058736667920039 8.7314906126004672 32.322842775027361
		12.369416023129066 6.8921351167795777 32.322842775027361
		17.957608902165681 3.9051845500215947 32.322842775027361
		22.855701307608101 -0.98523133669051077 32.322842775027361
		26.87546216132818 -7.4795246359516412 32.322842775027361
		29.862412728086166 -15.641076917584741 32.322842775027361
		31.701768223907052 -25.066167629810124 32.322842775027361
		32.322842775027361 -34.74559234925453 32.322842775027361
		32.322842775027361 -34.745592349254537 -30.383472208525717
		32.322842775027361 -32.806221782752885 -32.322842775027361
		31.701768223907052 -25.066167629810124 -32.322842775027361
		29.862412728086166 -15.641076917584741 -32.322842775027361
		26.87546216132818 -7.4795246359516412 -32.322842775027361
		22.855701307608101 -0.98523133669051077 -32.322842775027361
		17.957608902165681 3.9051845500215947 -32.322842775027361
		12.369416023129066 6.8921351167795777 -32.322842775027361
		6.3058736667920039 8.7314906126004672 -32.322842775027361
		1.9792032979942723e-15 9.3525651637207687 -32.322842775027361
		-6.3058736667920039 8.7314906126004672 -32.322842775027361
		-12.369416023129066 6.8921351167795777 -32.322842775027361
		-17.957608902165681 3.9051845500215947 -32.322842775027361
		-22.855701307608101 -0.98523133669051077 -32.322842775027361
		-26.87546216132818 -7.4795246359516412 -32.322842775027361
		-29.862412728086166 -15.641076917584741 -32.322842775027361
		-31.701768223907052 -25.066167629810124 -32.322842775027361
		-32.322842775027361 -32.806221782752885 -32.322842775027361
		-32.322842775027361 -34.745592349254522 -30.383472208525717
		-32.322842775027361 -34.74559234925453 32.322842775027361
		;
createNode transform -n "lfLegBp1_ikc_gmb" -p "lfLegBp1_ikc";
	rename -uid "67C295B8-4906-F259-15EA-1FA47CDA1729";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
createNode nurbsCurve -n "lfLegBp1_ikc_gmbShape" -p "lfLegBp1_ikc_gmb";
	rename -uid "8A3DE2D1-43B0-E7E5-1646-F1BFEFEB384E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".tw" yes;
	setAttr -s 53 ".cp[0:52]" -type "double3" -6.4645685550054637 4.4098155485557413 
		-3.2322843905767655 -6.3403536829069402 4.4098155485557413 -4.4934591516681195 -5.972482574485614 
		4.4098155485557413 -5.7061676739656875 -5.3750923101336205 4.4098155485557413 -6.8238062490523461 
		-4.5711402626896849 4.4098155485557413 -7.803424653266454 -3.5915218584755806 4.4098155485557413 
		-8.6073767007103896 -2.4738832833889202 4.4098155485557413 -9.2047669650623831 -1.2611747610913531 
		4.4098155485557413 -9.5726380734837093 7.5469630213954627e-16 4.4098155485557413 
		-9.6968529455822363 1.261174761091354 4.4098155485557413 -9.5726380734837093 2.4738832833889219 
		4.4098155485557413 -9.2047669650623831 3.5915218584755824 4.4098155485557413 -8.6073767007103896 
		4.5711402626896884 4.4098155485557413 -7.803424653266454 5.3750923101336241 4.4098155485557413 
		-6.8238062490523461 5.9724825744856176 4.4098155485557413 -5.7061676739656875 6.3403536829069473 
		4.4098155485557413 -4.4934591516681195 6.4645685550054708 4.4098155485557413 -3.2322843905767655 
		6.3403536447814091 2.4739306046668545 -3.2322843905767655 5.9724825456172326 0.5889124622217814 
		-3.2322843905767655 5.3750924322656353 -1.0433979941048381 -3.2322843905767655 4.5711402615216201 
		-2.3422566539570635 -3.2322843905767655 3.5915217804331352 -3.3203398312994845 -3.2322843905767655 
		2.4738832046258121 -3.9177299446510805 -3.2322843905767655 1.2611747333584002 -4.2856010438152587 
		-3.2322843905767655 -3.9584065959885439e-16 -4.4098159540393187 -3.2322843905767655 
		-1.2611747333584002 -4.2856010438152587 -3.2322843905767655 -2.4738832046258121 -3.9177299446510805 
		-3.2322843905767655 -3.5915217804331352 -3.3203398312994845 -3.2322843905767655 -4.5711402615216201 
		-2.3422566539570635 -3.2322843905767655 -5.3750924322656353 -1.0433979941048381 -3.2322843905767655 
		-5.9724825456172326 0.5889124622217814 -3.2322843905767655 -6.3403536447814091 2.4739306046668545 
		-3.2322843905767655 -6.4645685550054708 4.4098155485557413 -3.2322843905767655 -6.4645685550054708 
		4.4098155485557413 9.3089786061338486 -6.4645685550054708 4.0219414352554068 9.696852719434176 
		-6.3403536447814091 2.4739306046668545 9.696852719434176 -5.9724825456172326 0.5889124622217814 
		9.696852719434176 -5.3750924322656353 -1.0433979941048381 9.696852719434176 -4.5711402615216201 
		-2.3422566539570635 9.696852719434176 -3.5915217804331352 -3.3203398312994845 9.696852719434176 
		-2.4738832046258121 -3.9177299446510805 9.696852719434176 -1.2611747333584002 -4.2856010438152587 
		9.696852719434176 -3.9584065959885439e-16 -4.4098159540393187 9.696852719434176 1.2611747333584002 
		-4.2856010438152587 9.696852719434176 2.4738832046258121 -3.9177299446510805 9.696852719434176 
		3.5915217804331352 -3.3203398312994845 9.696852719434176 4.5711402615216201 -2.3422566539570635 
		9.696852719434176 5.3750924322656353 -1.0433979941048381 9.696852719434176 5.9724825456172326 
		0.5889124622217814 9.696852719434176 6.3403536447814091 2.4739306046668545 9.696852719434176 
		6.4645685550054708 4.0219414352554068 9.696852719434176 6.4645685550054708 4.4098155485557342 
		9.3089786061338486 6.4645685550054708 4.4098155485557413 -3.2322843905767655;
createNode nurbsCurve -n "lfLegBp1_ikc_gmbShapeOrig" -p "lfLegBp1_ikc_gmb";
	rename -uid "55E4C177-4B85-1E47-B6E8-5F9BC11F0A1A";
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
		32.322842775027333 -34.74559234925453 32.322842775027368
		31.701768414534715 -34.74559234925453 38.628716580484138
		29.862412872428074 -34.74559234925453 44.692259191971971
		26.875461550668103 -34.74559234925453 50.280452067405271
		22.855701313448435 -34.74559234925453 55.178544088475796
		17.957609292377903 -34.74559234925453 59.198304325695482
		12.369416416944603 -34.74559234925453 62.185255647455442
		6.3058738054567653 -34.74559234925453 64.024611189562094
		-3.7734815106977321e-15 -34.74559234925453 64.645685550054708
		-6.3058738054567725 -34.74559234925453 64.024611189562094
		-12.369416416944611 -34.74559234925453 62.185255647455442
		-17.957609292377914 -34.74559234925453 59.198304325695482
		-22.855701313448449 -34.74559234925453 55.178544088475803
		-26.87546155066812 -34.74559234925453 50.280452067405278
		-29.862412872428092 -34.74559234925453 44.692259191971971
		-31.701768414534737 -34.74559234925453 38.628716580484131
		-32.322842775027354 -34.74559234925453 32.322842775027354
		-31.701768223907052 -25.066167629810124 32.322842775027361
		-29.862412728086166 -15.641076917584741 32.322842775027361
		-26.87546216132818 -7.4795246359516412 32.322842775027361
		-22.855701307608101 -0.98523133669051077 32.322842775027361
		-17.957608902165681 3.9051845500215947 32.322842775027361
		-12.369416023129066 6.8921351167795777 32.322842775027361
		-6.3058736667920039 8.7314906126004672 32.322842775027361
		1.9792032979942723e-15 9.3525651637207687 32.322842775027361
		6.3058736667920039 8.7314906126004672 32.322842775027361
		12.369416023129066 6.8921351167795777 32.322842775027361
		17.957608902165681 3.9051845500215947 32.322842775027361
		22.855701307608101 -0.98523133669051077 32.322842775027361
		26.87546216132818 -7.4795246359516412 32.322842775027361
		29.862412728086166 -15.641076917584741 32.322842775027361
		31.701768223907052 -25.066167629810124 32.322842775027361
		32.322842775027361 -34.74559234925453 32.322842775027361
		32.322842775027361 -34.745592349254537 -30.383472208525717
		32.322842775027361 -32.806221782752885 -32.322842775027361
		31.701768223907052 -25.066167629810124 -32.322842775027361
		29.862412728086166 -15.641076917584741 -32.322842775027361
		26.87546216132818 -7.4795246359516412 -32.322842775027361
		22.855701307608101 -0.98523133669051077 -32.322842775027361
		17.957608902165681 3.9051845500215947 -32.322842775027361
		12.369416023129066 6.8921351167795777 -32.322842775027361
		6.3058736667920039 8.7314906126004672 -32.322842775027361
		1.9792032979942723e-15 9.3525651637207687 -32.322842775027361
		-6.3058736667920039 8.7314906126004672 -32.322842775027361
		-12.369416023129066 6.8921351167795777 -32.322842775027361
		-17.957608902165681 3.9051845500215947 -32.322842775027361
		-22.855701307608101 -0.98523133669051077 -32.322842775027361
		-26.87546216132818 -7.4795246359516412 -32.322842775027361
		-29.862412728086166 -15.641076917584741 -32.322842775027361
		-31.701768223907052 -25.066167629810124 -32.322842775027361
		-32.322842775027361 -32.806221782752885 -32.322842775027361
		-32.322842775027361 -34.745592349254522 -30.383472208525717
		-32.322842775027361 -34.74559234925453 32.322842775027361
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode transform -n "lfLegBp1_smart_ctl_ofs" -p "lfLegBp1_ikc_gmb";
	rename -uid "CAAE59C1-432B-07AB-5618-698CBB3F3D61";
	setAttr ".t" -type "double3" 1.4210854715202004e-14 -34.745592349254537 32.818405101089823 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp1_smart_ctl" -p "lfLegBp1_smart_ctl_ofs";
	rename -uid "BBE8AC5C-45F5-990F-6BAD-1286B7BD720D";
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
createNode nurbsCurve -n "lfLegBp1_smart_ctlShape1" -p "lfLegBp1_smart_ctl";
	rename -uid "6B273C6D-4E08-26BE-9B22-7484F85B36C4";
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
		8.3653232802676349 1.7169844730332822e-16 -8.3653232802676456
		4.6315909987179076e-16 2.4281827281476924e-16 -7.5639621186167272
		-8.3653232802676349 1.7169844730332812e-16 -8.3653232802676385
		-7.5639621186167485 -9.9102062494658325e-32 -2.9370659773518138e-15
		-8.3653232802676349 -1.7169844730332817e-16 8.3653232802676349
		-7.5768725865240607e-16 -2.4281827281476944e-16 7.5639621186167343
		8.3653232802676349 -1.7169844730332812e-16 8.3653232802676385
		7.5639621186167485 -1.4480284676587193e-31 -1.5134540019786423e-15
		8.3653232802676349 1.7169844730332822e-16 -8.3653232802676456
		4.6315909987179076e-16 2.4281827281476924e-16 -7.5639621186167272
		-8.3653232802676349 1.7169844730332812e-16 -8.3653232802676385
		;
createNode ikHandle -n "lfLegBp1_autoAimJ_ikh" -p "lfLegBp1_ikc";
	rename -uid "6D0B5D89-414F-96C4-65E6-FCBC7AAC3D32";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.1316282072803006e-14 -2.2737367544323206e-13 4.2632564145606011e-14 ;
	setAttr ".r" -type "double3" 62.753746316950043 -4.5718686390800212 -87.649528125082242 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode joint -n "lfLegBp1_legLock" -p "lfLegBp1_ikc";
	rename -uid "883F2A54-480F-990C-7DEA-E8966179C7C5";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" 2.5444437451708131e-14 -1.1338276434490004e-29 -1.2125656742440705e-29 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 117.24625368304997 4.5718686390800558 92.350471874917716 ;
	setAttr ".radi" 6.4645685550054726;
createNode joint -n "lfLegBp1_legLock_end" -p "lfLegBp1_legLock";
	rename -uid "2FB7C1A8-42D7-1805-A70E-ADB8C9D3FFF7";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 287.01759515469053 -1.2789769243681803e-13 -1.3677947663381929e-13 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 6.4645685550054726;
createNode ikEffector -n "effector17" -p "lfLegBp1_legLock";
	rename -uid "A69719CD-48B7-87D4-53F1-A48F3814ED7B";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "lfLegBp1_pvc_ofs" -p "lfLegBp1_IK";
	rename -uid "C1AC2386-41E9-9F33-E8A0-D38304F85D8F";
	setAttr ".t" -type "double3" 50.086173291694571 127.35193949443408 -20.058274605394814 ;
	setAttr ".r" -type "double3" 0.22384934433846743 179.11281912061222 -6.8868659928810569e-06 ;
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp1_pvc_ofs1" -p "lfLegBp1_pvc_ofs";
	rename -uid "A14769FC-4825-2E56-F604-809CAE767D1B";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "lfLegBp1_pvc" -p "lfLegBp1_pvc_ofs1";
	rename -uid "E198ACBD-4F62-9E13-94FB-4F8552E0C6A4";
	addAttr -ci true -sn "fkPin" -ln "fkPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -2.1316282072803006e-14 4.2632564145606011e-14 -2.1316282072803006e-14 ;
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
createNode nurbsCurve -n "lfLegBp1_pvcShape1" -p "lfLegBp1_pvc";
	rename -uid "089C4DAC-42C3-0919-89A4-78BC69AFB656";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 7.9999035868192729
		-7.9999035868192729 0 0
		0 0 -7.9999035868192729
		7.9999035868192729 0 0
		0 0 7.9999035868192729
		0 7.9999035868192729 0
		7.9999035868192729 0 0
		0 0 -7.9999035868192729
		0 7.9999035868192729 0
		-7.9999035868192729 0 0
		0 -7.9999035868192729 0
		7.9999035868192729 0 0
		0 0 7.9999035868192729
		0 -7.9999035868192729 0
		0 0 -7.9999035868192729
		;
createNode transform -n "lfLegBp1_pin_fkc_ofs" -p "lfLegBp1_pvc";
	rename -uid "ED00AFFC-467E-BACC-6B36-348C1494534D";
	setAttr ".t" -type "double3" 2.5628477204634379 -92.95955931181139 -90.225599294096781 ;
	setAttr ".r" -type "double3" -0.88718085248441481 -0.22384945097200792 -90.000006886093232 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "lfLegBp1_pin_fkc" -p "lfLegBp1_pin_fkc_ofs";
	rename -uid "6ED53962-4730-EDBE-8CC7-2E9E2592F5DA";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "lfLegBp1_pin_fkcShape1" -p "lfLegBp1_pin_fkc";
	rename -uid "59675465-41E2-4711-B53E-0DA32607D2AC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-4.5246728476609746e-14 -33.461293121070526 -33.461293121070554
		-4.4962249174563985e-14 1.2358218315714841e-14 -30.255848474466877
		-4.5246728476609752e-14 33.461293121070554 -33.461293121070526
		-4.5933522265823062e-14 30.255848474467008 1.9974403641213803e-14
		-4.6620316055036378e-14 33.461293121070554 33.461293121070568
		-4.6904795357082138e-14 1.7241603749811627e-14 30.255848474466969
		-4.6620316055036378e-14 -33.461293121070526 33.461293121070582
		-4.5933522265823062e-14 -30.25584847446698 2.5668851542706488e-14
		-4.5246728476609746e-14 -33.461293121070526 -33.461293121070554
		-4.4962249174563985e-14 1.2358218315714841e-14 -30.255848474466877
		-4.5246728476609752e-14 33.461293121070554 -33.461293121070526
		;
createNode transform -n "lfLegBp1_BF" -p "lfLegBp1_ctl_data";
	rename -uid "DDFC7C4C-45B3-4FAB-EDC4-478A6C589CB0";
	setAttr ".t" -type "double3" -34.387288993065852 -320.60922383140547 -47.601245693640564 ;
	setAttr -cb on ".ro";
createNode joint -n "lfLegBp1_hip_bf" -p "lfLegBp1_BF";
	rename -uid "86798B4E-4960-80B6-7E45-1387467C7611";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 3;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 178.97330242843387 -12.845909388717383 -80.898713085560644 ;
	setAttr ".radi" 12.929137110010945;
createNode joint -n "lfLegBp1_upr_bf" -p "lfLegBp1_hip_bf";
	rename -uid "0AA1DAB9-4B3E-4121-3AAC-5D8DF92FE982";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 179.48854489652854 -19.863561351678964 10.785156761924807 ;
	setAttr ".radi" 12.929137110010945;
createNode joint -n "lfLegBp1_lwr_bf" -p "lfLegBp1_upr_bf";
	rename -uid "0AD20B0F-4F8E-99F7-2F2F-329CC7C6CCC9";
	setAttr ".v" no;
	setAttr -cb on ".ro" 2;
	setAttr ".jo" -type "double3" 0 -13.029425657780328 0 ;
	setAttr ".pa" -type "double3" 0 -45 0 ;
	setAttr ".radi" 12.929137110010945;
createNode joint -n "lfLegBp1_palm_bf" -p "lfLegBp1_lwr_bf";
	rename -uid "2E7AC98B-448C-B2DF-154B-B689DEFEC884";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 179.27268781587955 6.0005786893652653 1.5879129121126598 ;
	setAttr ".radi" 12.929137110010945;
createNode joint -n "lfLegBp1_ball_bf" -p "lfLegBp1_palm_bf";
	rename -uid "FD517ACA-4602-B2A3-E7B3-C8A6FCE7616A";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 71.782107589002308 0 ;
	setAttr ".radi" 12.929137110010945;
createNode joint -n "lfLegBp1_tip_bf" -p "lfLegBp1_ball_bf";
	rename -uid "85855DEB-420B-48C2-AF2D-C58B8EE5CDFD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 18.46741077057554 1.6342482922482304e-13 -7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 18.217892410997671 0 ;
	setAttr ".radi" 12.929137110010945;
createNode transform -n "lfLegBp1_setting" -p "lfLegBp1_ctl_data";
	rename -uid "85426485-4BE9-D55D-0386-8ABC4049F866";
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
createNode nurbsCurve -n "lfLegBp1_settingShape1" -p "lfLegBp1_setting";
	rename -uid "6BB9D932-4A0F-0A80-8032-D499A1F153F8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		16.161421387513681 16.161421387513681 -4.0233828225578864e-16
		15.850884111953526 16.161421387513681 3.1529368333960019
		14.931206364043083 16.161421387513681 6.1847083968828453
		13.43773108066409 16.161421387513681 8.9788044510828406
		11.427850653804049 16.161421387513681 11.427850653804049
		8.9788044510828406 16.161421387513681 13.43773108066409
		6.1847083968828453 16.161421387513681 14.931206364043083
		3.1529368333960019 16.161421387513681 15.850884111953526
		-9.8960164899713617e-16 16.161421387513681 16.161421387513681
		-3.1529368333960019 16.161421387513681 15.850884111953526
		-6.1847083968828453 16.161421387513681 14.931206364043083
		-8.9788044510828406 16.161421387513681 13.43773108066409
		-11.427850653804049 16.161421387513681 11.427850653804049
		-13.43773108066409 16.161421387513681 8.9788044510828406
		-14.931206364043083 16.161421387513681 6.1847083968828453
		-15.850884111953526 16.161421387513681 3.1529368333960019
		-16.161421387513681 16.161421387513681 1.7480468568294712e-15
		-15.546314646415007 16.161421387513681 3.0923540057822665
		-13.794636020658865 16.161421387513681 5.7139253269020243
		-11.173064314220795 16.161421387513681 7.4656031820215416
		-8.0807106937568403 16.161421387513681 8.0807106937568403
		-4.9883566879745738 16.161421387513681 7.4656031820215416
		-2.3667853668548164 16.161421387513681 5.7139253269020243
		-0.61510751173529898 16.161421387513681 3.0923540057822665
		0 16.161421387513681 1.7480468568294712e-15
		0.61510751173529898 16.161421387513681 -3.0923540057822665
		2.3667853668548164 16.161421387513681 -5.7139253269020243
		4.9883566879745738 16.161421387513681 -7.4656031820215416
		8.0807106937568403 16.161421387513681 -8.0807106937568403
		11.173064314220795 16.161421387513681 -7.4656031820215416
		13.794636020658865 16.161421387513681 -5.7139253269020243
		15.546314646415007 16.161421387513681 -3.0923540057822665
		16.161421387513681 16.161421387513681 -4.0233828225578864e-16
		15.850884111953526 16.161421387513681 -3.1529368333960019
		14.931206364043083 16.161421387513681 -6.1847083968828453
		13.43773108066409 16.161421387513681 -8.9788044510828406
		11.427850653804049 16.161421387513681 -11.427850653804049
		8.9788044510828406 16.161421387513681 -13.43773108066409
		6.1847083968828453 16.161421387513681 -14.931206364043083
		3.1529368333960019 16.161421387513681 -15.850884111953526
		1.8867407557514928e-15 16.161421387513681 -16.161421387513681
		-3.1529368333960019 16.161421387513681 -15.850884111953526
		-6.1847083968828453 16.161421387513681 -14.931206364043083
		-8.9788044510828406 16.161421387513681 -13.43773108066409
		-11.427850653804049 16.161421387513681 -11.427850653804049
		-13.43773108066409 16.161421387513681 -8.9788044510828406
		-14.931206364043083 16.161421387513681 -6.1847083968828453
		-15.850884111953526 16.161421387513681 -3.1529368333960019
		-16.161421387513681 16.161421387513681 1.7480468568294712e-15
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp1_toe00_3_ctl_ofs" -p "lfLegBp1_ctl_data";
	rename -uid "E53EF0FF-4BB4-FFF7-4678-1FBAC3484688";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "lfLegBp1_toe00_3_ctl" -p "lfLegBp1_toe00_3_ctl_ofs";
	rename -uid "EBCFBC4F-4732-7B1D-4298-32813C0042E8";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp1_toe00_3_ctlShape1" -p "lfLegBp1_toe00_3_ctl";
	rename -uid "3F15CEA3-4618-7607-D39A-D18104880AF7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.0101952581623836e-15 -1.5230576162506084 -1.5230576162505918
		3.0231439020201913e-15 -1.4164508909795798e-14 -1.3771553982814608
		3.0101952581623836e-15 1.5230576162505804 -1.5230576162505909
		2.9789344665465252e-15 1.3771553982814553 4.0102912942972942e-15
		2.9476736749306668e-15 1.5230576162505804 1.5230576162505989
		2.9347250310728591e-15 -1.3942231864148544e-14 1.377155398281471
		2.9476736749306668e-15 -1.5230576162506084 1.5230576162505998
		2.9789344665465252e-15 -1.3771553982814833 4.269485468752235e-15
		3.0101952581623836e-15 -1.5230576162506084 -1.5230576162505918
		3.0231439020201913e-15 -1.4164508909795798e-14 -1.3771553982814608
		3.0101952581623836e-15 1.5230576162505804 -1.5230576162505909
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp1_toe01_3_ctl_ofs" -p "lfLegBp1_ctl_data";
	rename -uid "AED15EE8-4398-0627-2B83-6BA2DC52EE4A";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp1_toe01_3_ctl" -p "lfLegBp1_toe01_3_ctl_ofs";
	rename -uid "0937BF81-4C7C-01C1-906D-EC8747230EEC";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp1_toe01_3_ctlShape1" -p "lfLegBp1_toe01_3_ctl";
	rename -uid "43EBFA4B-4AEA-5503-D6AB-C1AB2F39F0B1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.0141172318073416e-15 -1.5230576162505873 -1.5230576162505962
		-1.0011685879495339e-15 7.0211009100793068e-15 -1.3771553982814653
		-1.0141172318073416e-15 1.5230576162506015 -1.5230576162505953
		-1.0453780234232e-15 1.3771553982814764 -5.3474570633605678e-16
		-1.0766388150390584e-15 1.5230576162506015 1.5230576162505944
		-1.0895874588968661e-15 7.2433779557265608e-15 1.3771553982814666
		-1.0766388150390582e-15 -1.5230576162505873 1.5230576162505953
		-1.0453780234232e-15 -1.3771553982814622 -2.7555153188111651e-16
		-1.0141172318073416e-15 -1.5230576162505873 -1.5230576162505962
		-1.0011685879495339e-15 7.0211009100793068e-15 -1.3771553982814653
		-1.0141172318073416e-15 1.5230576162506015 -1.5230576162505953
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp1_toe01_4_ctl_ofs" -p "lfLegBp1_ctl_data";
	rename -uid "D74D89F7-4516-CFC4-71D2-ECB90DE706E1";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "lfLegBp1_toe01_4_ctl" -p "lfLegBp1_toe01_4_ctl_ofs";
	rename -uid "E0F4DC41-400C-4381-7087-2B91A354E19E";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp1_toe01_4_ctlShape1" -p "lfLegBp1_toe01_4_ctl";
	rename -uid "9B42C441-4BF6-1CC3-222B-CCB2E8B5BFA9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.126079161585838e-17 -1.5230576162505944 -1.5230576162505962
		4.4209435473666111e-17 -8.4326447521694814e-17 -1.3771553982814653
		3.1260791615858361e-17 1.5230576162505944 -1.5230576162505953
		-1.8043313570997191e-32 1.3771553982814693 -5.3474570633605678e-16
		-3.1260791615858374e-17 1.5230576162505944 1.5230576162505944
		-4.4209435473666155e-17 1.3795059812555873e-16 1.3771553982814666
		-3.1260791615858361e-17 -1.5230576162505944 1.5230576162505953
		-2.6363963618925802e-32 -1.3771553982814693 -2.7555153188111651e-16
		3.126079161585838e-17 -1.5230576162505944 -1.5230576162505962
		4.4209435473666111e-17 -8.4326447521694814e-17 -1.3771553982814653
		3.1260791615858361e-17 1.5230576162505944 -1.5230576162505953
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp1_toe02_3_ctl_ofs" -p "lfLegBp1_ctl_data";
	rename -uid "C4330EF8-4622-F14A-8DCA-DBB5C7D149FF";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegBp1_toe02_3_ctl" -p "lfLegBp1_toe02_3_ctl_ofs";
	rename -uid "A07E6FAF-4F76-0C6D-465E-5DA40794C4FF";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp1_toe02_3_ctlShape1" -p "lfLegBp1_toe02_3_ctl";
	rename -uid "04F3DB6A-4584-8640-E3DB-A49EFB7C1ACB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.126079161585838e-17 -1.5230576162505944 -1.5230576162505962
		4.4209435473666111e-17 -8.4326447521694814e-17 -1.3771553982814653
		3.1260791615858361e-17 1.5230576162505944 -1.5230576162505953
		-1.8043313570997191e-32 1.3771553982814693 -5.3474570633605678e-16
		-3.1260791615858374e-17 1.5230576162505944 1.5230576162505944
		-4.4209435473666155e-17 1.3795059812555873e-16 1.3771553982814666
		-3.1260791615858361e-17 -1.5230576162505944 1.5230576162505953
		-2.6363963618925802e-32 -1.3771553982814693 -2.7555153188111651e-16
		3.126079161585838e-17 -1.5230576162505944 -1.5230576162505962
		4.4209435473666111e-17 -8.4326447521694814e-17 -1.3771553982814653
		3.1260791615858361e-17 1.5230576162505944 -1.5230576162505953
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp1_toe02_4_ctl_ofs" -p "lfLegBp1_ctl_data";
	rename -uid "4627BCE3-4EDF-3DD7-C927-7587C3ED52DC";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp1_toe02_4_ctl" -p "lfLegBp1_toe02_4_ctl_ofs";
	rename -uid "67374D57-46E4-A331-1E28-298A42811B7D";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp1_toe02_4_ctlShape1" -p "lfLegBp1_toe02_4_ctl";
	rename -uid "D3B11E54-4BD5-E8B5-F502-B8AD669C239F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.126079161585838e-17 -1.5230576162505944 -1.5230576162505962
		4.4209435473666111e-17 -8.4326447521694814e-17 -1.3771553982814653
		3.1260791615858361e-17 1.5230576162505944 -1.5230576162505953
		-1.8043313570997191e-32 1.3771553982814693 -5.3474570633605678e-16
		-3.1260791615858374e-17 1.5230576162505944 1.5230576162505944
		-4.4209435473666155e-17 1.3795059812555873e-16 1.3771553982814666
		-3.1260791615858361e-17 -1.5230576162505944 1.5230576162505953
		-2.6363963618925802e-32 -1.3771553982814693 -2.7555153188111651e-16
		3.126079161585838e-17 -1.5230576162505944 -1.5230576162505962
		4.4209435473666111e-17 -8.4326447521694814e-17 -1.3771553982814653
		3.1260791615858361e-17 1.5230576162505944 -1.5230576162505953
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp1_toe03_3_ctl_ofs" -p "lfLegBp1_ctl_data";
	rename -uid "D711DEFF-42AA-AA80-AC23-4DAD5EA2ADCF";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lfLegBp1_toe03_3_ctl" -p "lfLegBp1_toe03_3_ctl_ofs";
	rename -uid "7445B08F-4436-DAFB-D55C-119D586B3C32";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp1_toe03_3_ctlShape1" -p "lfLegBp1_toe03_3_ctl";
	rename -uid "5A68599B-4535-E92F-23E7-D6BDFCE9C660";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.3196737483394661e-14 -1.5230576162505853 -1.5230576162505902
		1.3209686127252469e-14 9.1118569569257068e-15 -1.3771553982814593
		1.3196737483394661e-14 1.5230576162506035 -1.5230576162505893
		1.3165476691778803e-14 1.3771553982814784 5.5253036278417446e-15
		1.3134215900162945e-14 1.5230576162506035 1.5230576162506004
		1.3121267256305137e-14 9.3341340025729599e-15 1.3771553982814726
		1.3134215900162945e-14 -1.5230576162505853 1.5230576162506013
		1.3165476691778803e-14 -1.3771553982814602 5.7844978022966853e-15
		1.3196737483394661e-14 -1.5230576162505853 -1.5230576162505902
		1.3209686127252469e-14 9.1118569569257068e-15 -1.3771553982814593
		1.3196737483394661e-14 1.5230576162506035 -1.5230576162505893
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp1_toe03_4_ctl_ofs" -p "lfLegBp1_ctl_data";
	rename -uid "43204BAA-40B4-EFDF-4CE7-03837D108E5B";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp1_toe03_4_ctl" -p "lfLegBp1_toe03_4_ctl_ofs";
	rename -uid "705398BF-4D59-AF8B-E23F-408464B26EDC";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp1_toe03_4_ctlShape1" -p "lfLegBp1_toe03_4_ctl";
	rename -uid "B5D3AF59-4FF2-8069-0B83-16A3A3F99272";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.9260529747165834e-16 -1.5230576162505962 -1.5230576162505962
		3.0555394132946609e-16 -1.8606832869219451e-15 -1.3771553982814653
		2.9260529747165834e-16 1.5230576162505927 -1.5230576162505953
		2.6134450585579994e-16 1.3771553982814675 -5.3474570633605678e-16
		2.3008371423994164e-16 1.5230576162505927 1.5230576162505944
		2.1713507038213383e-16 -1.6384062412746916e-15 1.3771553982814666
		2.3008371423994164e-16 -1.5230576162505962 1.5230576162505953
		2.6134450585579994e-16 -1.377155398281471 -2.7555153188111651e-16
		2.9260529747165834e-16 -1.5230576162505962 -1.5230576162505962
		3.0555394132946609e-16 -1.8606832869219451e-15 -1.3771553982814653
		2.9260529747165834e-16 1.5230576162505927 -1.5230576162505953
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp1_toe04_3_ctl_ofs" -p "lfLegBp1_ctl_data";
	rename -uid "82CC3547-477B-B176-0BEB-DF9A0B1E4587";
	setAttr -cb on ".ro";
createNode transform -n "lfLegBp1_toe04_3_ctl" -p "lfLegBp1_toe04_3_ctl_ofs";
	rename -uid "FDF697DA-41C6-47DB-C57F-81A01184554C";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp1_toe04_3_ctlShape1" -p "lfLegBp1_toe04_3_ctl";
	rename -uid "5404E45D-484D-A55D-E0A2-49876C0102DE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.0141172318073416e-15 -1.5230576162505873 -1.5230576162505962
		-1.0011685879495339e-15 7.0211009100793068e-15 -1.3771553982814653
		-1.0141172318073416e-15 1.5230576162506015 -1.5230576162505953
		-1.0453780234232e-15 1.3771553982814764 -5.3474570633605678e-16
		-1.0766388150390584e-15 1.5230576162506015 1.5230576162505944
		-1.0895874588968661e-15 7.2433779557265608e-15 1.3771553982814666
		-1.0766388150390582e-15 -1.5230576162505873 1.5230576162505953
		-1.0453780234232e-15 -1.3771553982814622 -2.7555153188111651e-16
		-1.0141172318073416e-15 -1.5230576162505873 -1.5230576162505962
		-1.0011685879495339e-15 7.0211009100793068e-15 -1.3771553982814653
		-1.0141172318073416e-15 1.5230576162506015 -1.5230576162505953
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp1_toe04_4_ctl_ofs" -p "lfLegBp1_ctl_data";
	rename -uid "ADFFA60C-4BE0-989D-1241-DDB1E7EF22A5";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "lfLegBp1_toe04_4_ctl" -p "lfLegBp1_toe04_4_ctl_ofs";
	rename -uid "70ABE7FD-4FA3-C639-81BE-EBACDC7947DA";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "lfLegBp1_toe04_4_ctlShape1" -p "lfLegBp1_toe04_4_ctl";
	rename -uid "9436B3AA-4275-C29D-73A9-8BA5CA13FB83";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.28 0.52999997 0.86000001 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.5394980332745838e-16 -1.5230576162505982 -1.5230576162505958
		5.6689844718526618e-16 -3.6370401263221952e-15 -1.3771553982814648
		5.5394980332745838e-16 1.5230576162505909 -1.5230576162505949
		5.2268901171159999e-16 1.3771553982814657 -1.5599262294994419e-16
		4.9142822009574159e-16 1.5230576162505909 1.5230576162505949
		4.7847957623793379e-16 -3.414763080674942e-15 1.377155398281467
		4.9142822009574159e-16 -1.5230576162505982 1.5230576162505958
		5.2268901171159999e-16 -1.3771553982814728 1.0320155150499608e-16
		5.5394980332745838e-16 -1.5230576162505982 -1.5230576162505958
		5.6689844718526618e-16 -3.6370401263221952e-15 -1.3771553982814648
		5.5394980332745838e-16 1.5230576162505909 -1.5230576162505949
		;
	setAttr ".adot" yes;
createNode transform -n "lfLegBp1_anchorF1" -p "master_ctl";
	rename -uid "4E5A2369-432B-CA5A-CBE3-32999B6ED14C";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "lfLegBp1_anchorF1Shape" -p "lfLegBp1_anchorF1";
	rename -uid "9069A5E4-441D-725B-A4D4-AF854985A514";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 11.034290804882879 11.034290804882879 11.034290804882879 ;
createNode transform -n "neckQd0_ctl_data" -p "master_ctl";
	rename -uid "D90046E0-4F06-8AF2-A23E-539FBF231EBD";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_IK" -p "neckQd0_ctl_data";
	rename -uid "7B968ED2-4246-A7D5-C52F-AAB2D9782B05";
	setAttr ".t" -type "double3" -1.1995990639336598 276.33511783310195 75.803516045812401 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_cog_ctl_ofs" -p "neckQd0_IK";
	rename -uid "F7BAE09B-4908-F211-5E00-18A96E8BC9B0";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_cog_ctl_ofs1" -p "neckQd0_cog_ctl_ofs";
	rename -uid "BEC84D93-4A06-D09B-B78A-D3B6DB0E1459";
	setAttr ".t" -type "double3" 0 -5.6843418860808015e-14 1.4210854715202004e-14 ;
createNode transform -n "neckQd0_cog_ctl" -p "neckQd0_cog_ctl_ofs1";
	rename -uid "9A722EA5-4BC4-A049-895D-81B306E230FF";
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
	rename -uid "C1B2D432-4DC8-6265-B16A-39BFAF51D24E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		27.143344001318543 27.143344001318574 5.5711774231603851e-16
		1.5028333459407987e-15 24.54313108052262 7.8788346702202165e-16
		-27.143344001318543 27.143344001318557 5.5711774231603811e-16
		-24.543131080522691 9.5300312381087759e-15 -3.2156095866346704e-31
		-27.143344001318543 -27.143344001318543 -5.5711774231603831e-16
		-2.4585022261518979e-15 -24.543131080522645 -7.8788346702202243e-16
		27.143344001318543 -27.143344001318557 -5.5711774231603811e-16
		24.543131080522691 4.910772869086803e-15 -4.6984836693729422e-31
		27.143344001318543 27.143344001318574 5.5711774231603851e-16
		1.5028333459407987e-15 24.54313108052262 7.8788346702202165e-16
		-27.143344001318543 27.143344001318557 5.5711774231603811e-16
		;
createNode transform -n "neckQd0_base_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "3AC9AA13-4AB6-EA9A-5EB2-D6995A86210E";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_base_ctl" -p "neckQd0_base_ctl_ofs";
	rename -uid "3D958DB3-4BAD-435B-3DB8-2C8327C87C84";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode nurbsCurve -n "neckQd0_base_ctlShape1" -p "neckQd0_base_ctl";
	rename -uid "2D188B48-459E-7774-5E92-979D2DBD7468";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		12.32770691283492 12.327706912834921 7.5485434058149929e-16
		1.067525246066555e-15 17.434010309091693 1.067525246066555e-15
		-12.32770691283492 12.32770691283492 7.5485434058149909e-16
		-17.434010309091704 9.0378217303883072e-16 5.534069726692217e-32
		-12.32770691283492 -12.32770691283492 -7.5485434058149909e-16
		-1.7463767363273316e-15 -17.434010309091708 -1.0675252460665558e-15
		12.32770691283492 -12.32770691283492 -7.5485434058149909e-16
		17.434010309091704 -2.3774698302883539e-15 -1.4557804088660167e-31
		12.32770691283492 12.327706912834921 7.5485434058149929e-16
		1.067525246066555e-15 17.434010309091693 1.067525246066555e-15
		-12.32770691283492 12.32770691283492 7.5485434058149909e-16
		;
createNode transform -n "neckQd0_tangent0_ctl_ofs" -p "neckQd0_base_ctl";
	rename -uid "C9B2BCD9-4286-80F2-157B-A3973443BA1C";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_tangent0_ctl" -p "neckQd0_tangent0_ctl_ofs";
	rename -uid "47A12EB7-4162-B51C-A163-EBBEC167D202";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "neckQd0_tangent0_ctlShape1" -p "neckQd0_tangent0_ctl";
	rename -uid "63DA82C3-4033-394F-32F0-20AF1277F492";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-3.7297630108332313e-07 2.506176100619248 -0.53626351438516384
		-4.5485151120014251e-07 2.6779603512146997 -0.9850782778857069
		-4.79608300521031e-07 2.4650548742922611 -1.3130862864254085
		-4.4262021101413703e-07 2.2159419286647677 -1.4080800482811207
		-3.9050850826690808e-07 1.8649721987890489 -1.4115184283992448
		1.6169622602845617e-07 -1.8540995912252651 -1.4479539115445454
		2.1380792877660516e-07 -2.2050693211009582 -1.4513922916626427
		2.5079601822470879e-07 -2.4541822667284636 -1.361279549031658
		3.4039123094484827e-07 -2.6779603512146997 -1.0276383843806682
		3.7286802279549195e-07 -2.5170487081830379 -0.57617992180896582
		4.7960830063364149e-07 -0.46082505299636872 2.23262279665032
		4.5672633416054184e-07 -0.23099909980031427 2.4649796077210508
		4.2926307082415108e-07 -0.00081499443096227258 2.5603160828292606
		3.7318782454130807e-07 0.23160591071047953 2.470491558692316
		3.1253128139848252e-07 0.46438496802525592 2.2436466985928658
		-3.7297630108332313e-07 2.506176100619248 -0.53626351438516384
		;
	setAttr ".adot" yes;
createNode joint -n "neckQd0_0_ikj" -p "neckQd0_tangent0_ctl";
	rename -uid "42735A4E-477E-9043-30A4-2481E38152CB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.1995990639336598 276.33511783310195 75.803516045812401 1;
	setAttr ".radi" 2.0975878902674805;
createNode joint -n "neckQd0_two_ikj" -p "neckQd0_base_ctl";
	rename -uid "2A9C1C20-44E6-6947-7DEC-A8906926CD6D";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".r" -type "double3" -1.1785252629735713e-15 -1.1346432012302099e-14 -4.9593821668936636e-14 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 10.487939451337402;
createNode joint -n "neckQd0_two_ikj_end" -p "neckQd0_two_ikj";
	rename -uid "8C8CB242-49FF-CE84-B3D2-27B48E63E507";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 1.1995990639336598 11.549323250484861 50.480633652978497 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 10.487939451337402;
createNode ikEffector -n "effector25" -p "neckQd0_two_ikj";
	rename -uid "DC6DE812-418C-0710-359F-81ACC40AF4D1";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "neckQd0_fore_ctl_SPACE_1_ofs" -p "neckQd0_base_ctl";
	rename -uid "97E531B0-431E-4B9F-2C2A-46BEC21879C2";
	setAttr ".t" -type "double3" 1.1995990639336598 11.549323250484861 50.480633652978497 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_1" -p "neckQd0_fore_ctl_SPACE_1_ofs";
	rename -uid "89750E9F-4C38-33C5-7B33-F4A543F615F6";
createNode transform -n "neckQd0_mid_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "3BF67314-4E11-2542-AD6D-0C972C1EDB92";
	setAttr ".t" -type "double3" 0.59979953196682922 5.7746616252425724 25.240316826489206 ;
	setAttr ".r" -type "double3" -25.416642135514497 2.8290904095564144 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "neckQd0_mid_ctl_ofs1" -p "neckQd0_mid_ctl_ofs";
	rename -uid "8A2DB3E0-405D-DB7C-5EFA-57B319B0372B";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "neckQd0_mid_ctl_ofs2" -p "neckQd0_mid_ctl_ofs1";
	rename -uid "091269E4-4525-A17B-179E-C0B3782BEEC9";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 -2.8421709430404007e-14 -2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000007 ;
createNode transform -n "neckQd0_mid_ctl" -p "neckQd0_mid_ctl_ofs2";
	rename -uid "10F21AA4-43F1-70BD-FD72-3687B54A1F7D";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999944 0.99999999999999967 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "neckQd0_mid_ctlShape1" -p "neckQd0_mid_ctl";
	rename -uid "F40A6B5E-4876-BE17-C508-57B27DB0489D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		12.32770691283492 12.327706912834921 7.5485434058149929e-16
		1.067525246066555e-15 17.434010309091693 1.067525246066555e-15
		-12.32770691283492 12.32770691283492 7.5485434058149909e-16
		-17.434010309091704 9.0378217303883072e-16 5.534069726692217e-32
		-12.32770691283492 -12.32770691283492 -7.5485434058149909e-16
		-1.7463767363273316e-15 -17.434010309091708 -1.0675252460665558e-15
		12.32770691283492 -12.32770691283492 -7.5485434058149909e-16
		17.434010309091704 -2.3774698302883539e-15 -1.4557804088660167e-31
		12.32770691283492 12.327706912834921 7.5485434058149929e-16
		1.067525246066555e-15 17.434010309091693 1.067525246066555e-15
		-12.32770691283492 12.32770691283492 7.5485434058149909e-16
		;
createNode joint -n "neckQd0_1_ikj" -p "neckQd0_mid_ctl";
	rename -uid "69480EB4-4DA5-3A3C-EE63-91B91CD16777";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0 -2.8421709430404007e-14 0 ;
	setAttr ".r" -type "double3" -25.416642135514493 2.8290904095564158 9.9513620356124652e-17 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 25.44373974736596 -2.5550732154407032 -1.2150441190505832 ;
	setAttr ".bps" -type "matrix" 0.99878120643228796 8.3925079642268341e-18 -0.049356880752975736 0
		 -0.021183849734588398 0.90321066623490687 -0.42867439497818915 0 0.044579661148172078 0.42919749812818592 0.90210983888461105 0
		 -0.59979953196682756 282.10977945834452 101.04383287230168 1;
	setAttr ".radi" 2.0975878902674805;
createNode transform -n "neckQd0_fore_ctl_ofs" -p "neckQd0_cog_ctl";
	rename -uid "DF27E612-4574-EE3D-683D-F88B9E93CCA1";
	setAttr ".t" -type "double3" 1.1995990639336598 11.549323250484861 50.480633652978497 ;
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_fore_ctl_ofs1" -p "neckQd0_fore_ctl_ofs";
	rename -uid "D1AEB28B-4EFF-8739-D30C-45A6B19C7721";
createNode transform -n "neckQd0_fore_ctl" -p "neckQd0_fore_ctl_ofs1";
	rename -uid "B3A5B105-49CF-F742-04A6-FB8789C03A3A";
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
	rename -uid "E6936FF6-4986-2FE8-D03F-14ADE4DDA359";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		71.367596893417542 94.476179901148711 87.692243272492732
		6.1801202748828233e-15 124.0376064483782 87.692243272492732
		-71.367596893417542 94.476179901148711 87.692243272492732
		-100.92902344064707 5.2321783978930938e-15 3.2037852637738491e-31
		-71.367596893417542 -71.367596893417542 -4.3700049549181165e-15
		-1.0110129306569448e-14 -100.92902344064709 -6.1801202748828256e-15
		71.367596893417542 -71.367596893417542 -4.3700049549181165e-15
		100.92902344064707 -1.3763655290800714e-14 -8.4278081982233137e-31
		71.367596893417542 94.476179901148711 87.692243272492732
		6.1801202748828233e-15 124.0376064483782 87.692243272492732
		-71.367596893417542 94.476179901148711 87.692243272492732
		;
createNode transform -n "neckQd0_tangent1_ctl_ofs" -p "neckQd0_fore_ctl";
	rename -uid "14C92BEC-4D7F-F96D-B2BA-F8A49A88FF7E";
	setAttr -cb on ".ro";
createNode transform -n "neckQd0_tangent1_ctl" -p "neckQd0_tangent1_ctl_ofs";
	rename -uid "DA7C1BD1-4B4D-8373-5A9B-588B5FDC86FD";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "neckQd0_tangent1_ctlShape1" -p "neckQd0_tangent1_ctl";
	rename -uid "D7DC8620-4194-2A6F-6ADD-918B80849973";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-3.7297630108332313e-07 -2.506176100619248 0.53626351438516418
		-4.5485151120014251e-07 -2.6779603512146997 0.98507827788570723
		-4.79608300521031e-07 -2.4650548742922611 1.3130862864254087
		-4.4262021101413703e-07 -2.2159419286647677 1.4080800482811209
		-3.9050850826690808e-07 -1.8649721987890486 1.411518428399245
		1.6169622602845617e-07 1.8540995912252654 1.447953911544545
		2.1380792877660516e-07 2.2050693211009582 1.4513922916626425
		2.5079601822470879e-07 2.4541822667284636 1.3612795490316578
		3.4039123094484827e-07 2.6779603512146997 1.027638384380668
		3.7286802279549195e-07 2.5170487081830379 0.57617992180896549
		4.7960830063364149e-07 0.46082505299636844 -2.23262279665032
		4.5672633416054184e-07 0.230999099800314 -2.4649796077210508
		4.2926307082415108e-07 0.00081499443096195903 -2.5603160828292606
		3.7318782454130807e-07 -0.23160591071047981 -2.470491558692316
		3.1253128139848252e-07 -0.4643849680252562 -2.2436466985928658
		-3.7297630108332313e-07 -2.506176100619248 0.53626351438516418
		;
	setAttr ".adot" yes;
createNode joint -n "neckQd0_2_ikj" -p "neckQd0_tangent1_ctl";
	rename -uid "6D98F37C-4B3E-0BCA-4B88-F283EAF8AC8D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 287.88444108358681 126.2841496987909 1;
	setAttr ".radi" 2.0975878902674805;
createNode ikHandle -n "neckQd0_two_ikj_ikh" -p "neckQd0_tangent1_ctl";
	rename -uid "F667552E-45F6-C702-29C0-83BF661344D5";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "neckQd0_anchorToRbj" -p "neckQd0_fore_ctl";
	rename -uid "2C720891-4287-0C64-E53C-0F945DD4A0A2";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "neckQd0_anchorToRbjShape" -p "neckQd0_anchorToRbj";
	rename -uid "C96ED71A-4FC4-F6F9-7E7C-93BAB1B67204";
	setAttr -k off ".v";
createNode transform -n "head0_head_fkc_SPACE_1_ofs" -p "neckQd0_anchorToRbj";
	rename -uid "7642C24F-44ED-7A9A-2D35-A884E4B31398";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 -11.398407350865796 31.426514479869027 ;
createNode transform -n "head0_head_fkc_SPACE_1" -p "head0_head_fkc_SPACE_1_ofs";
	rename -uid "AD458888-4A34-1C2D-457E-DFA27AE9EBD8";
createNode transform -n "neckQd0_setting" -p "neckQd0_ctl_data";
	rename -uid "40A8B499-4100-1403-A70A-1F8A68FE77BA";
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
	rename -uid "28413F43-4B9A-5A2D-390E-D7B02A801DD6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-3.9329772942515264 5.243969725668701 9.791139595820027e-17
		-3.8574062151668351 5.243969725668701 -0.76728578994520602
		-3.6335972064273743 5.243969725668701 -1.5050852962289543
		-3.2701511803498944 5.243969725668701 -2.1850450643478991
		-2.7810349143073312 5.243969725668701 -2.7810349143073312
		-2.1850450643478991 5.243969725668701 -3.2701511803498944
		-1.5050852962289543 5.243969725668701 -3.6335972064273743
		-0.76728578994520602 5.243969725668701 -3.8574062151668351
		2.4082540282419886e-16 5.243969725668701 -3.9329772942515264
		0.76728578994520602 5.243969725668701 -3.8574062151668351
		1.5050852962289543 5.243969725668701 -3.6335972064273743
		2.1850450643478991 5.243969725668701 -3.2701511803498944
		2.7810349143073312 5.243969725668701 -2.7810349143073312
		3.2701511803498944 5.243969725668701 -2.1850450643478991
		3.6335972064273743 5.243969725668701 -1.5050852962289543
		3.8574062151668351 5.243969725668701 -0.76728578994520602
		3.9329772942515264 5.243969725668701 -4.2539752119264135e-16
		3.783287437878422 5.243969725668701 -0.75254260122973426
		3.3570061042794288 5.243969725668701 -1.3905174571536656
		2.7190311545860117 5.243969725668701 -1.8167986032136871
		1.9664886471257632 5.243969725668701 -1.9664886471257632
		1.2139460458960287 5.243969725668701 -1.8167986032136871
		0.57597118997209751 5.243969725668701 -1.3905174571536656
		0.14969004391207588 5.243969725668701 -0.75254260122973426
		0 5.243969725668701 -4.2539752119264135e-16
		-0.14969004391207588 5.243969725668701 0.75254260122973426
		-0.57597118997209751 5.243969725668701 1.3905174571536656
		-1.2139460458960287 5.243969725668701 1.8167986032136871
		-1.9664886471257632 5.243969725668701 1.9664886471257632
		-2.7190311545860117 5.243969725668701 1.8167986032136871
		-3.3570061042794288 5.243969725668701 1.3905174571536656
		-3.783287437878422 5.243969725668701 0.75254260122973426
		-3.9329772942515264 5.243969725668701 9.791139595820027e-17
		-3.8574062151668351 5.243969725668701 0.76728578994520602
		-3.6335972064273743 5.243969725668701 1.5050852962289543
		-3.2701511803498944 5.243969725668701 2.1850450643478991
		-2.7810349143073312 5.243969725668701 2.7810349143073312
		-2.1850450643478991 5.243969725668701 3.2701511803498944
		-1.5050852962289543 5.243969725668701 3.6335972064273743
		-0.76728578994520602 5.243969725668701 3.8574062151668351
		-4.5914950019449855e-16 5.243969725668701 3.9329772942515264
		0.76728578994520602 5.243969725668701 3.8574062151668351
		1.5050852962289543 5.243969725668701 3.6335972064273743
		2.1850450643478991 5.243969725668701 3.2701511803498944
		2.7810349143073312 5.243969725668701 2.7810349143073312
		3.2701511803498944 5.243969725668701 2.1850450643478991
		3.6335972064273743 5.243969725668701 1.5050852962289543
		3.8574062151668351 5.243969725668701 0.76728578994520602
		3.9329772942515264 5.243969725668701 -4.2539752119264135e-16
		;
	setAttr ".adot" yes;
createNode transform -n "neckQd0_anchorF1" -p "master_ctl";
	rename -uid "0E93FBEA-41FA-667E-5445-FF9FFC6FA92E";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "neckQd0_anchorF1Shape" -p "neckQd0_anchorF1";
	rename -uid "954F86BD-4222-3ED7-1358-11A37B18908D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 7.865954588503052 7.865954588503052 7.865954588503052 ;
createNode transform -n "neckQd0_anchorM1" -p "master_ctl";
	rename -uid "81DA7912-4787-CAE1-9D81-3695AD6E343A";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "neckQd0_anchorM1Shape" -p "neckQd0_anchorM1";
	rename -uid "D52D84EE-41AA-E5EB-1B6D-70AC37A32B1E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 7.865954588503052 7.865954588503052 7.865954588503052 ;
createNode transform -n "rtLegBp0_ctl_data" -p "master_ctl";
	rename -uid "E47804A7-40AF-5F25-DED4-4DAC62343143";
	setAttr ".t" -type "double3" -49.798005037915345 288.14915777849779 -145.84493377973951 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_FK" -p "rtLegBp0_ctl_data";
	rename -uid "A73E6793-4106-61ED-96C3-5B8D42DDA5A2";
	setAttr ".t" -type "double3" 49.798005037915345 -288.14915777849779 145.84493377973951 ;
	setAttr -cb on ".ro";
createNode joint -n "rtLegBp0_hip_fk" -p "rtLegBp0_FK";
	rename -uid "96024900-4097-7385-432F-C1A1550E842E";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.0598280714887189 -35.594455587046454 93.300707752435954 ;
	setAttr ".radi" 5.7564606713400535;
createNode joint -n "rtLegBp0_upr_fk" -p "rtLegBp0_hip_fk";
	rename -uid "3B296897-45F6-1A35-2CBD-C1AC9C102E87";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 6.2004800234673674 46.29529179404048 0.86798635242294586 ;
	setAttr ".radi" 5.7564606713400535;
createNode joint -n "rtLegBp0_lwr_fk" -p "rtLegBp0_upr_fk";
	rename -uid "57CDA8FD-4F7C-7564-ED59-52B004A6DA11";
	setAttr ".v" no;
	setAttr -cb on ".ro" 2;
	setAttr ".jo" -type "double3" 0 -21.881586329072551 0 ;
	setAttr ".pa" -type "double3" 0 -45 0 ;
	setAttr ".radi" 5.7564606713400535;
createNode joint -n "rtLegBp0_palm_fk" -p "rtLegBp0_lwr_fk";
	rename -uid "1F3360A6-4824-CB65-05B8-9B9334D2B7C2";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -5.1600553709616239 10.945139122878761 -2.2694243949569728 ;
	setAttr ".radi" 5.7564606713400535;
createNode joint -n "rtLegBp0_ball_fk" -p "rtLegBp0_palm_fk";
	rename -uid "535C9DA7-47ED-94E5-1637-41898124DBBF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -21.594906678987545 -0.72133415395973088 12.780707493518378 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 5.2737082620191709 66.95319410643863 4.8548874731917451 ;
	setAttr ".radi" 5.7564606713400535;
createNode joint -n "rtLegBp0_tip_fk" -p "rtLegBp0_ball_fk";
	rename -uid "9E254B0B-4455-02F4-89F3-A1BFE54D4FDF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -18.75333200087735 -3.907985046680551e-14 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -0.87332769106313002 22.943661776666016 -2.2393349239534968 ;
	setAttr ".radi" 5.7564606713400535;
createNode transform -n "rtLegBp0_upr_fkc_ofs" -p "rtLegBp0_FK";
	rename -uid "FE7103FB-4B86-DCD7-CD27-D9BE9C4AA7D6";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_upr_fkc" -p "rtLegBp0_upr_fkc_ofs";
	rename -uid "0F74C0AB-462F-1B8E-A84A-83A4A1BC50C1";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegBp0_upr_fkcShape1" -p "rtLegBp0_upr_fkc";
	rename -uid "7F49F0CC-4593-3C55-5E9A-E78F619E8406";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 20 0 no 3
		25 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 20 20
		23
		-6.7879183984578193e-16 -25.571293009878751 15.000898391436694
		-5.6901063708223084e-16 -26.70076710618839 12.966363982059612
		-3.4944823155512594e-16 -28.959715298807485 8.8972951633053654
		3.1415502613860767e-19 -29.057238218584626 -0.86018996115148738
		3.4819161162145828e-16 -28.618365837291623 -5.4565353225546467
		6.8319000973203417e-16 -26.936690849908256 -11.221740461796733
		9.917993885247583e-16 -24.211634784004939 -16.169577658252198
		1.2623305611563268e-15 -20.732048268534683 -20.661966821378996
		1.4843413620845668e-15 -14.179811349002089 -26.269099608798175
		1.6493123819359677e-15 -8.6489306610058545 -28.608590193184892
		1.7509005016743248e-15 2.2523981562238822 -32.752721146178999
		1.7852027379881962e-15 1.0588773965140564e-14 -39.886413216171249
		1.7509005016743153e-15 -2.2523981562240074 -32.752721146178885
		1.6493123819360293e-15 8.6489306610063963 -28.608590193185954
		1.4843413620844854e-15 14.179811349000781 -26.269099608796484
		1.262330561156606e-15 20.73204826853943 -20.661966821385008
		9.9179938852372627e-16 24.211634783987481 -16.16957765823004
		6.8319000973580956e-16 26.936690849971757 -11.221740461878206
		3.4819161160740467e-16 28.618365837055439 -5.4565353222511339
		3.1415505090238967e-19 29.057238218421023 -0.86018996167268336
		-3.4944823157755522e-16 28.959715299166508 8.8972951638245625
		-5.6901063708967088e-16 26.700767106306664 12.966363982231876
		-6.7879183984572888e-16 25.571293009876737 15.00089839143553
		;
createNode transform -n "rtLegBp0_lwr_fkc_ofs" -p "rtLegBp0_FK";
	rename -uid "3945C1C8-417B-9458-AF4A-ACA9565CC7D4";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_lwr_fkc" -p "rtLegBp0_lwr_fkc_ofs";
	rename -uid "6BA90F06-4C54-07E0-B7F3-0DB5AEBFD28C";
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
createNode nurbsCurve -n "rtLegBp0_lwr_fkcShape1" -p "rtLegBp0_lwr_fkc";
	rename -uid "250E7CC7-4C90-DB79-9357-5ABAC0458591";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 20 0 no 3
		25 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 20 20
		23
		-6.7879183984578193e-16 -25.571293009878751 15.000898391436694
		-5.6901063708223084e-16 -26.70076710618839 12.966363982059612
		-3.4944823155512594e-16 -28.959715298807485 8.8972951633053654
		3.1415502613860767e-19 -29.057238218584626 -0.86018996115148738
		3.4819161162145828e-16 -28.618365837291623 -5.4565353225546467
		6.8319000973203417e-16 -26.936690849908256 -11.221740461796733
		9.917993885247583e-16 -24.211634784004939 -16.169577658252198
		1.2623305611563268e-15 -20.732048268534683 -20.661966821378996
		1.4843413620845668e-15 -14.179811349002089 -26.269099608798175
		1.6493123819359677e-15 -8.6489306610058545 -28.608590193184892
		1.7509005016743248e-15 2.2523981562238822 -32.752721146178999
		1.7852027379881962e-15 1.0588773965140564e-14 -39.886413216171249
		1.7509005016743153e-15 -2.2523981562240074 -32.752721146178885
		1.6493123819360293e-15 8.6489306610063963 -28.608590193185954
		1.4843413620844854e-15 14.179811349000781 -26.269099608796484
		1.262330561156606e-15 20.73204826853943 -20.661966821385008
		9.9179938852372627e-16 24.211634783987481 -16.16957765823004
		6.8319000973580956e-16 26.936690849971757 -11.221740461878206
		3.4819161160740467e-16 28.618365837055439 -5.4565353222511339
		3.1415505090238967e-19 29.057238218421023 -0.86018996167268336
		-3.4944823157755522e-16 28.959715299166508 8.8972951638245625
		-5.6901063708967088e-16 26.700767106306664 12.966363982231876
		-6.7879183984572888e-16 25.571293009876737 15.00089839143553
		;
createNode transform -n "rtLegBp0_palm_fkc_ofs" -p "rtLegBp0_FK";
	rename -uid "549A4605-4B38-35F2-1762-FC87EF7CAE52";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_palm_fkc" -p "rtLegBp0_palm_fkc_ofs";
	rename -uid "5CED2AED-4A51-1C49-CC11-42A00BACD09F";
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
	rename -uid "94E2D17C-4270-175B-5589-B3B02EA6B872";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 20 0 no 3
		25 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 20 20
		23
		-6.7879183984578193e-16 -25.571293009878751 15.000898391436694
		-5.6901063708223084e-16 -26.70076710618839 12.966363982059612
		-3.4944823155512594e-16 -28.959715298807485 8.8972951633053654
		3.1415502613860767e-19 -29.057238218584626 -0.86018996115148738
		3.4819161162145828e-16 -28.618365837291623 -5.4565353225546467
		6.8319000973203417e-16 -26.936690849908256 -11.221740461796733
		9.917993885247583e-16 -24.211634784004939 -16.169577658252198
		1.2623305611563268e-15 -20.732048268534683 -20.661966821378996
		1.4843413620845668e-15 -14.179811349002089 -26.269099608798175
		1.6493123819359677e-15 -8.6489306610058545 -28.608590193184892
		1.7509005016743248e-15 2.2523981562238822 -32.752721146178999
		1.7852027379881962e-15 1.0588773965140564e-14 -39.886413216171249
		1.7509005016743153e-15 -2.2523981562240074 -32.752721146178885
		1.6493123819360293e-15 8.6489306610063963 -28.608590193185954
		1.4843413620844854e-15 14.179811349000781 -26.269099608796484
		1.262330561156606e-15 20.73204826853943 -20.661966821385008
		9.9179938852372627e-16 24.211634783987481 -16.16957765823004
		6.8319000973580956e-16 26.936690849971757 -11.221740461878206
		3.4819161160740467e-16 28.618365837055439 -5.4565353222511339
		3.1415505090238967e-19 29.057238218421023 -0.86018996167268336
		-3.4944823157755522e-16 28.959715299166508 8.8972951638245625
		-5.6901063708967088e-16 26.700767106306664 12.966363982231876
		-6.7879183984572888e-16 25.571293009876737 15.00089839143553
		;
createNode transform -n "rtLegBp0_ikc_matcher" -p "rtLegBp0_palm_fkc";
	rename -uid "F0BF0956-497F-4461-5AC7-D897A3D7B56C";
	setAttr ".t" -type "double3" -2.8421709430404007e-14 7.1054273576010019e-15 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 0 0 -90.000000000000014 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_ball_fkc_ofs" -p "rtLegBp0_FK";
	rename -uid "60674E61-41CF-8CCD-5C8B-63A367F346FB";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_ball_fkc" -p "rtLegBp0_ball_fkc_ofs";
	rename -uid "BAB41151-4161-25B8-A228-7BB62826564F";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegBp0_ball_fkcShape1" -p "rtLegBp0_ball_fkc";
	rename -uid "62DF51E4-465B-5740-1C04-EEA9898C03B0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-3.057823119429893e-16 14.898025771146067 14.898025771146084
		-4.3244149268357642e-16 8.2485230694037139e-16 13.470860455678567
		-3.0578231194298915e-16 -14.898025771146067 14.898025771146074
		1.7649348764581302e-31 -13.470860455678606 5.2306985822481824e-15
		3.0578231194298925e-16 -14.898025771146067 -14.898025771146067
		4.3244149268357687e-16 -1.3493853049886458e-15 -13.470860455678579
		3.0578231194298915e-16 14.898025771146067 -14.898025771146074
		2.5788322466173191e-31 13.470860455678606 2.6953503133713429e-15
		-3.057823119429893e-16 14.898025771146067 14.898025771146084
		-4.3244149268357642e-16 8.2485230694037139e-16 13.470860455678567
		-3.0578231194298915e-16 -14.898025771146067 14.898025771146074
		;
createNode transform -n "rtLegBp0_toe00_2_ikc_ofs" -p "rtLegBp0_ball_fkc_ofs";
	rename -uid "BB4A6E66-4B4C-EE49-0AA5-369104D49505";
	setAttr ".t" -type "double3" 12.964940900296966 -16.093734516990146 -6.374358508079915 ;
	setAttr ".r" -type "double3" 20.503081804506497 -19.656294366525749 48.394905631058265 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegBp0_toe00_2_ikc_ofs1" -p "rtLegBp0_toe00_2_ikc_ofs";
	rename -uid "3BF9B3A8-4D03-E0B2-3D2F-BDA4BB0F6BEA";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "rtLegBp0_toe00_2_ikc" -p "rtLegBp0_toe00_2_ikc_ofs1";
	rename -uid "B2E41371-4561-196D-2751-90930FE6B0C9";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe00_2_ikcShape1" -p "rtLegBp0_toe00_2_ikc";
	rename -uid "1DA3817E-498A-43E5-979B-9082CFF6971E";
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
		1.5979197092780128e-14 3.0190051807982135e-14 -1.7747539470358253e-14
		1.5979197092780128e-14 3.0190051807982135e-14 3.3463501905378492
		-0.38642908475855076 3.0190051807982135e-14 3.3463501905378492
		-0.38642908475855076 3.0190051807982135e-14 4.1192083600549854
		0.38642908475858273 3.0190051807982135e-14 4.1192083600549854
		0.38642908475858273 3.0190051807982135e-14 3.3463501905378492
		1.5979197092780128e-14 3.0190051807982135e-14 3.3463501905378492
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegBp0_toe00_2_1_ikj_ikh" -p "rtLegBp0_toe00_2_ikc";
	rename -uid "3FC7326F-4CAA-5766-0405-0AA202CAECA3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -10.295054639868312 0.57417170213699364 -0.12262582141820388 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999956 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.41892501330648629 0.86425085980927674 0.27851801475862498 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegBp0_toe01_2_ikc_ofs" -p "rtLegBp0_ball_fkc_ofs";
	rename -uid "73D37B25-488F-965A-A14B-6B9D238253C4";
	setAttr ".t" -type "double3" 2.3553019244290851 -11.00298519500792 -2.3911135318560994 ;
	setAttr ".r" -type "double3" 7.4744752291474343 -16.310840308145089 15.169036192530225 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "rtLegBp0_toe01_2_ikc_ofs1" -p "rtLegBp0_toe01_2_ikc_ofs";
	rename -uid "F1DB6356-4787-1499-3A9C-16B7144E0AC5";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
createNode transform -n "rtLegBp0_toe01_2_ikc" -p "rtLegBp0_toe01_2_ikc_ofs1";
	rename -uid "2BEA5684-4947-3996-6CDE-0D8B6F00175A";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe01_2_ikcShape1" -p "rtLegBp0_toe01_2_ikc";
	rename -uid "FEABDAAC-4954-8567-9947-0AADC1E0897F";
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
		0 7.1054273576010019e-15 -8.8417118878906174e-16
		0 7.1054273576010019e-15 3.3463501905378661
		-0.38642908475856674 7.1054273576010019e-15 3.3463501905378661
		-0.38642908475856674 7.1054273576010019e-15 4.1192083600550022
		0.38642908475856674 7.1054273576010019e-15 4.1192083600550022
		0.38642908475856674 7.1054273576010019e-15 3.3463501905378661
		0 7.1054273576010019e-15 3.3463501905378661
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegBp0_toe01_2_1_ikj_ikh" -p "rtLegBp0_toe01_2_ikc";
	rename -uid "EA4D8462-4731-0A04-50BF-919816A3B722";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -15.732073737645024 0.6194425781703643 3.8773792261259814 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000009 1.0000000000000007 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.73385989971408483 0.35394272494386603 0.57980530788441764 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegBp0_toe02_2_ikc_ofs" -p "rtLegBp0_ball_fkc_ofs";
	rename -uid "8C327F0C-41F6-383F-07E4-10B2BA7BBF6F";
	setAttr ".t" -type "double3" -1.8814061215892366 -0.081156132969223194 -0.59627390034946615 ;
	setAttr ".r" -type "double3" 0.5741793325044996 -8.3573398569837156 1.2576733256007213 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegBp0_toe02_2_ikc_ofs1" -p "rtLegBp0_toe02_2_ikc_ofs";
	rename -uid "B146910D-413E-2D2D-6D0A-38A94FADEF9E";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
createNode transform -n "rtLegBp0_toe02_2_ikc" -p "rtLegBp0_toe02_2_ikc_ofs1";
	rename -uid "EEDD1380-4D8F-4D0C-8AD2-0986876825C7";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe02_2_ikcShape1" -p "rtLegBp0_toe02_2_ikc";
	rename -uid "AD99FF3A-42AA-FEE1-1CEF-AC92C6185C63";
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
		-3.1958394185560257e-14 -1.7683423775781235e-15 1.4210854715202004e-14
		-3.1958394185560257e-14 -1.7683423775781235e-15 3.3463501905378812
		-0.38642908475859872 -1.7683423775781235e-15 3.3463501905378812
		-0.38642908475859872 -1.7683423775781235e-15 4.1192083600550173
		0.38642908475853477 -1.7683423775781235e-15 4.1192083600550173
		0.38642908475853477 -1.7683423775781235e-15 3.3463501905378812
		-3.1958394185560257e-14 -1.7683423775781235e-15 3.3463501905378812
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegBp0_toe02_2_1_ikj_ikh" -p "rtLegBp0_toe02_2_ikc";
	rename -uid "F4392BD5-4B65-155C-9763-7D9FE10CB351";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -18.682093410962835 0.6063686748826207 3.5092486585271558 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.85275253091269099 0.061371977957631871 0.51869702268623785 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegBp0_toe03_2_ikc_ofs" -p "rtLegBp0_ball_fkc_ofs";
	rename -uid "6DAF96E4-44FB-3ED1-9C51-ACBC0B422F11";
	setAttr ".t" -type "double3" 3.1004784045150018 10.504803916045983 -2.7068017389190899 ;
	setAttr ".r" -type "double3" -11.559308215992731 -6.8617695121564592 -27.232824228756993 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegBp0_toe03_2_ikc_ofs1" -p "rtLegBp0_toe03_2_ikc_ofs";
	rename -uid "86A60353-453D-9E9C-9661-A496EA76EB4F";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 0.99999999999999989 ;
createNode transform -n "rtLegBp0_toe03_2_ikc" -p "rtLegBp0_toe03_2_ikc_ofs1";
	rename -uid "4598BBB0-4237-9E85-A372-298815F76E5A";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe03_2_ikcShape1" -p "rtLegBp0_toe03_2_ikc";
	rename -uid "C4FA6EC4-410F-77EF-B3E0-51BF0CB2762A";
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
		1.5979197092780128e-14 2.8421709430404007e-14 -3.536684755156247e-15
		1.5979197092780128e-14 2.8421709430404007e-14 3.3463501905378634
		-0.38642908475855076 2.8421709430404007e-14 3.3463501905378634
		-0.38642908475855076 2.8421709430404007e-14 4.1192083600549996
		0.38642908475858273 2.8421709430404007e-14 4.1192083600549996
		0.38642908475858273 2.8421709430404007e-14 3.3463501905378634
		1.5979197092780128e-14 2.8421709430404007e-14 3.3463501905378634
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegBp0_toe03_2_1_ikj_ikh" -p "rtLegBp0_toe03_2_ikc";
	rename -uid "D98F7E46-40C6-69CA-ECC6-A593862B0015";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -15.159738746297492 0.26692782207082644 2.0404427642452632 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 0.99999999999999989 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.78209954970927342 -0.47873453463706783 0.39891545431379549 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegBp0_toe04_2_ikc_ofs" -p "rtLegBp0_ball_fkc_ofs";
	rename -uid "F6D36ED5-47CC-CA30-447C-22921886442A";
	setAttr ".t" -type "double3" 10.744450639962679 14.709232372786506 -5.2453553808848667 ;
	setAttr ".r" -type "double3" -29.610716460539933 -41.255521109951836 -50.258245897501489 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
createNode transform -n "rtLegBp0_toe04_2_ikc_ofs1" -p "rtLegBp0_toe04_2_ikc_ofs";
	rename -uid "DC00A42B-4B41-3A7E-AA9B-5982C06C4333";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999978 ;
createNode transform -n "rtLegBp0_toe04_2_ikc" -p "rtLegBp0_toe04_2_ikc_ofs1";
	rename -uid "479C148A-41F7-F16C-2722-34BE675BF0AE";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe04_2_ikcShape1" -p "rtLegBp0_toe04_2_ikc";
	rename -uid "F0B01D81-4073-6BC4-1DC4-19B996320268";
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
		-1.997399636597516e-15 9.9469258738769453e-16 -7.9936057773011271e-15
		-1.997399636597516e-15 9.9469258738769453e-16 3.3463501905378594
		-0.38642908475856874 9.9469258738769453e-16 3.3463501905378594
		-0.38642908475856874 9.9469258738769453e-16 4.1192083600549951
		0.38642908475856474 9.9469258738769453e-16 4.1192083600549951
		0.38642908475856474 9.9469258738769453e-16 3.3463501905378594
		-1.997399636597516e-15 9.9469258738769453e-16 3.3463501905378594
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegBp0_toe04_2_1_ikj_ikh" -p "rtLegBp0_toe04_2_ikc";
	rename -uid "E955F6DC-4140-2EC8-7A53-B2AD7CE8E458";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -10.89659153113762 -0.76307798408183203 3.3445095450193372 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999944 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.20601143560682189 -0.94065457731883484 0.2696817653612113 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegBp0_quadScap_ofs" -p "rtLegBp0_FK";
	rename -uid "051695DF-4ED0-6C33-774D-F68DA62B5408";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_quadScap" -p "rtLegBp0_quadScap_ofs";
	rename -uid "E1A7675E-4E5F-442C-80CF-42B94DDFFFFC";
	setAttr ".t" -type "double3" -2.8421709430404007e-14 1.4210854715202004e-14 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_hip_fkc_ofs" -p "rtLegBp0_quadScap";
	rename -uid "04DEECEE-43CF-D836-9D5C-3E8C66373063";
	setAttr ".t" -type "double3" -2.8421709430404007e-14 -7.1054273576010019e-15 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_hip_fkc" -p "rtLegBp0_hip_fkc_ofs";
	rename -uid "DD69356F-4AB0-7514-E622-28ABB10DBF75";
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
	rename -uid "C0D53AC4-4EC1-9060-0DAA-1198F33F1F63";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-29.796051542292133 43.173455035050402 29.796051542292169
		-1.6497046138807428e-15 43.173455035050402 26.941720911357134
		29.796051542292133 43.173455035050402 29.796051542292147
		26.941720911357212 43.173455035050402 1.0461397164496365e-14
		29.796051542292133 43.173455035050402 -29.796051542292133
		2.6987706099772916e-15 43.173455035050402 -26.941720911357159
		-29.796051542292133 43.173455035050402 -29.796051542292147
		-26.941720911357212 43.173455035050402 5.3907006267426857e-15
		-29.796051542292133 43.173455035050402 29.796051542292169
		-1.6497046138807428e-15 43.173455035050402 26.941720911357134
		29.796051542292133 43.173455035050402 29.796051542292147
		;
createNode joint -n "rtLegBp0_autoAim" -p "rtLegBp0_quadScap_ofs";
	rename -uid "7426CA27-4CF2-9BB4-CFF3-8A8178A9BA2D";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -8.5265128291212022e-14 2.8421709430404007e-14 -5.6843418860808015e-14 ;
	setAttr ".r" -type "double3" 2.5444437451708134e-14 2.7976400907358982e-30 -9.7917403175756365e-30 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 72.902585866976992 27.5952158405861 -0.27186228373161875 ;
	setAttr ".radi" 8.6346910070100797;
createNode joint -n "rtLegBp0_autoAim_end" -p "rtLegBp0_autoAim";
	rename -uid "50CAAEFF-4E33-388C-4052-BBAFCA83B6D6";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -258.49443974843558 -2.8421709430404007e-14 9.9475983006414026e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 3.1805546814635168e-15 1.1927080055488188e-15 3.9756933518293979e-16 ;
	setAttr ".radi" 8.6346910070100797;
createNode ikEffector -n "effector30" -p "rtLegBp0_autoAim";
	rename -uid "64C57E42-4577-2FE4-3168-61893E0172FC";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegBp0_IK" -p "rtLegBp0_ctl_data";
	rename -uid "C268F901-40C7-D58F-727B-BAA4B3E6B41E";
	setAttr ".t" -type "double3" 49.798005037915345 -288.14915777849779 145.84493377973951 ;
	setAttr -cb on ".ro";
createNode joint -n "rtLegBp0_hip_ik" -p "rtLegBp0_IK";
	rename -uid "FE5C9A16-4677-67D8-9436-0780B9CFB947";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.0598280714887189 -35.594455587046454 93.300707752435954 ;
	setAttr ".radi" 8.6346910070100797;
createNode joint -n "rtLegBp0_upr_ik" -p "rtLegBp0_hip_ik";
	rename -uid "214D03E9-4765-2AB5-797B-D5967C296E76";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -70.103072218951411 7.1054273576010019e-15 -5.6843418860808015e-14 ;
	setAttr ".r" -type "double3" -8.42412971712266e-07 6.2020646962562766e-05 -1.3881670394283364e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 6.2004800234673674 46.29529179404048 0.86798635242294586 ;
	setAttr ".radi" 8.6346910070100797;
createNode joint -n "rtLegBp0_lwr_ik" -p "rtLegBp0_upr_ik";
	rename -uid "715516AD-484D-2B3F-FC21-0EBD3EF68331";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -115.80994910082964 -1.0658141036401503e-14 1.4210854715202004e-13 ;
	setAttr ".r" -type "double3" 2.4900129826142237e-14 -0.00014559473838360461 1.5768572421509429e-14 ;
	setAttr -cb on ".ro" 2;
	setAttr ".jo" -type "double3" 0 -21.881586329072551 0 ;
	setAttr ".pa" -type "double3" 0 -45 0 ;
	setAttr ".radi" 8.6346910070100797;
createNode joint -n "rtLegBp0_palm_ik" -p "rtLegBp0_lwr_ik";
	rename -uid "EF1518D8-40FE-8A5D-9A45-29A2DAD00C75";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -86.831289758537409 5.6843418860808015e-14 0 ;
	setAttr ".r" -type "double3" -1.6731369206530609e-07 4.4847373903906041e-06 1.1712645020962766e-06 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -5.1600553709616239 10.945139122878761 -2.2694243949569728 ;
	setAttr ".radi" 8.6346910070100797;
createNode joint -n "rtLegBp0_ball_ik" -p "rtLegBp0_palm_ik";
	rename -uid "27BC1C1A-4D25-22C0-57C4-5DB61FFA12AA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -21.594906678987545 -0.72133415395973088 12.780707493518378 ;
	setAttr ".r" -type "double3" -9.0643715360736064e-07 -3.1619064204122562e-06 1.2904335756231832e-06 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 5.2737082620191709 66.95319410643863 4.8548874731917451 ;
	setAttr ".radi" 8.6346910070100797;
createNode joint -n "rtLegBp0_tip_ik" -p "rtLegBp0_ball_ik";
	rename -uid "A688690B-4454-1C83-6041-67AC315A97E8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -18.75333200087735 -3.907985046680551e-14 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -0.87332769106313002 22.943661776666016 -2.2393349239534968 ;
	setAttr ".radi" 8.6346910070100797;
createNode ikEffector -n "effector28" -p "rtLegBp0_ball_ik";
	rename -uid "60CDC373-4385-F9ED-7113-E191908E7135";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector27" -p "rtLegBp0_palm_ik";
	rename -uid "803DCB86-408E-91AE-3E4E-FBA292BA76E9";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector26" -p "rtLegBp0_lwr_ik";
	rename -uid "F8073C9F-4D9A-9BD7-9428-FDAFA3EC9CEF";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "rtLegBp0_softJ" -p "rtLegBp0_hip_ik";
	rename -uid "C1269A04-4BA6-BEDA-C209-92BF24C4DEF0";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -70.103072218951453 2.1316282072803006e-14 -1.1368683772161603e-13 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -29.804896754186746 36.985102899274153 -0.39173593494474929 ;
createNode joint -n "rtLegBp0_softJ_end" -p "rtLegBp0_softJ";
	rename -uid "A4156989-4620-3039-98C8-CC93248843F2";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -199.03399658203125 -8.5265128291212022e-14 1.7053025658242404e-13 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 3.1805546814635168e-15 1.1927080055488188e-15 3.9756933518293979e-16 ;
createNode ikEffector -n "effector29" -p "rtLegBp0_softJ";
	rename -uid "794B1B56-4E24-0F43-A3CA-21A07D933C58";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "rtLegBp0_pvChainJ" -p "rtLegBp0_hip_ik";
	rename -uid "60476E2E-46DD-F1C0-52BA-D3A48C98FDE7";
	setAttr ".ove" yes;
	setAttr ".ovc" 5;
	setAttr ".t" -type "double3" -70.103072218951453 7.1054273576010019e-15 -5.6843418860808015e-14 ;
	setAttr ".r" -type "double3" 2.5444437451708134e-14 9.0835556601608042e-30 -3.6334222640643189e-30 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -29.804896618616016 36.985102891380521 -0.39173593587203936 ;
createNode joint -n "rtLegBp0_pvChainJ_end" -p "rtLegBp0_pvChainJ";
	rename -uid "95248435-4395-F1B1-BA73-4399225A9C64";
	setAttr ".ove" yes;
	setAttr ".ovc" 5;
	setAttr ".t" -type "double3" -199.03395623045481 -7.1054273576010019e-14 2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 3.1805546814635168e-15 1.1927080055488188e-15 3.9756933518293979e-16 ;
createNode ikEffector -n "effector36" -p "rtLegBp0_pvChainJ";
	rename -uid "C3CA0C0D-4E8A-B4D3-3A85-8693AD13ECB4";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegBp0_pvc_SPACE_1_ofs" -p "rtLegBp0_pvChainJ";
	rename -uid "15440998-4044-7AE9-DA07-56B98ACF7479";
	setAttr ".t" -type "double3" -102.85385347762278 -54.901180717544889 77.92677468968995 ;
	setAttr ".r" -type "double3" -10.050520582736311 34.801005495313092 -92.725901250404988 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
createNode transform -n "rtLegBp0_pvc_SPACE_1" -p "rtLegBp0_pvc_SPACE_1_ofs";
	rename -uid "4BCB8744-494D-036E-C141-B4A451AB9352";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 1.4210854715202004e-14 ;
createNode transform -n "rtLegBp0_ikCstG" -p "rtLegBp0_IK";
	rename -uid "4B5A3AC6-45EA-AC3F-7529-9D99A9AC74F3";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_heelRollG" -p "rtLegBp0_ikCstG";
	rename -uid "62AFF2F1-48F6-08FC-85CF-549D5EC33946";
	setAttr ".t" -type "double3" 1.3426723332779815 -32.4301199666141 -10.894160576977811 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_heelRollG_ctl" -p "rtLegBp0_heelRollG";
	rename -uid "78DB0731-4338-C38E-E867-079F42147977";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegBp0_toeRollG" -p "rtLegBp0_heelRollG_ctl";
	rename -uid "D4DB533D-40E2-3727-2B89-DCA26F51421D";
	setAttr ".t" -type "double3" 0 0 43.756603594235202 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_toeRollG_ctl" -p "rtLegBp0_toeRollG";
	rename -uid "921197D5-481D-9895-0FF5-C1B7886C85B5";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegBp0_footRollG" -p "rtLegBp0_toeRollG_ctl";
	rename -uid "EB6C987F-48FF-BAA1-51C0-69ACF15A2828";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_outRollG" -p "rtLegBp0_footRollG";
	rename -uid "C35772DE-46F2-4498-C305-ECBD6B9C7F0A";
	setAttr ".t" -type "double3" -22.847792250031226 0 -29.356603594235168 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_outRollG_ctl" -p "rtLegBp0_outRollG";
	rename -uid "4C8F71F6-4FE7-48C0-DF2D-458F6311CE4E";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegBp0_inRollG" -p "rtLegBp0_outRollG_ctl";
	rename -uid "262C1B4D-4C0F-1BFC-22DF-3CB52FCA7F76";
	setAttr ".t" -type "double3" 45.476177876224213 0 2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_inRollG_ctl" -p "rtLegBp0_inRollG";
	rename -uid "5DACEA1C-4DFE-D46A-FEB2-D2A34C1DC5E8";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegBp0_ballRollG" -p "rtLegBp0_inRollG_ctl";
	rename -uid "E6558569-495D-3DAB-DC1F-318413E868CA";
	setAttr ".t" -type "double3" -23.249723805511266 10.835213287626551 9.2748680704961259 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_ballG_ikc" -p "rtLegBp0_ballRollG";
	rename -uid "D538384F-4371-40B1-756E-6CBC12FA43C7";
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
	rename -uid "89D5F633-4BAF-4A83-A6E2-43B50E77AB64";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.72133415395970246 21.594906678987549 -12.780707493518378 ;
	setAttr -cb on ".ro";
createNode locator -n "rtLegBp0_dist_loc1Shape" -p "rtLegBp0_dist_loc1";
	rename -uid "65409AB5-45AF-10E8-5258-B3BB2A001C7C";
	setAttr -k off ".v";
createNode transform -n "rtLegBp0_softJ_posGrp" -p "rtLegBp0_ballG_ikc";
	rename -uid "011E3904-483E-BC94-50B1-85A567561FEE";
	setAttr ".t" -type "double3" -0.72133580670752906 21.594946985866059 -12.780708450252405 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_1_ikh_ofs" -p "rtLegBp0_ballG_ikc";
	rename -uid "D5DFC784-4F29-11C4-79EE-F8834F799AC7";
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegBp0_1_ikh" -p "rtLegBp0_1_ikh_ofs";
	rename -uid "85B158C4-423F-2E58-CBA8-BF99B7A53B10";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode nurbsCurve -n "stickCShape3" -p "rtLegBp0_ballG_ikc";
	rename -uid "9748D903-4B1B-435A-7545-D8A4707A2198";
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
		-2.6739830080501675e-16 38.806509290680076 2.3605182158486789e-15
		-2.5828691670196199e-16 38.955310013275934 1.1302486762398081
		-2.3157371938527802e-16 39.391569796448266 2.1834727006292658
		-1.8907913816210209e-16 40.085558689515736 3.0878966886464552
		-1.3369915040250838e-16 40.989982162865239 3.7818859248257204
		-6.9207769016594546e-17 42.043206358810593 4.2181453648862632
		8.1884220720639842e-32 43.173455035050402 4.3669454012585316
		6.9207769016594546e-17 44.303703711290211 4.2181453648862632
		1.3369915040250838e-16 45.356927907235566 3.7818859248257204
		1.8907913816210209e-16 46.261351380585062 3.0878966886464552
		2.3157371938527802e-16 46.955343018546884 2.1834727006292658
		2.5828691670196199e-16 47.391600056824871 1.1302486762398081
		2.6739830080501675e-16 47.540400779420729 1.2903969666126764e-15
		2.5828691670196199e-16 47.391600056824871 -1.1302486762398081
		2.3157371938527802e-16 46.955343018546884 -2.1834727006292658
		1.8907913816210209e-16 46.261351380585062 -3.0878966886464552
		1.3369915040250838e-16 45.356927907235566 -3.7818859248257204
		6.9207769016594546e-17 44.303703711290211 -4.2181453648862632
		-2.0005874207337209e-31 43.173455035050402 -4.3669454012585316
		-6.9207769016594546e-17 42.043206358810593 -4.2181453648862632
		-1.3369915040250838e-16 40.989982162865239 -3.7818859248257204
		-1.8907913816210209e-16 40.085558689515736 -3.0878966886464552
		-2.3157371938527802e-16 39.391569796448266 -2.1834727006292658
		-2.5828691670196199e-16 38.955310013275934 -1.1302486762398081
		-2.6739830080501675e-16 38.806509290680076 2.3605182158486789e-15
		0 0 0
		;
createNode transform -n "rtLegBp0_toe_wiggle_grp" -p "rtLegBp0_inRollG_ctl";
	rename -uid "70B04171-45C3-0165-BAE3-10978893F1D1";
	setAttr ".t" -type "double3" -23.249723805511266 10.835213287626551 9.2748680704961259 ;
	setAttr ".r" -type "double3" 5.273708262019186 66.953194106438644 94.854887473191809 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999989 ;
createNode ikHandle -n "rtLegBp0_2_ikh" -p "rtLegBp0_toe_wiggle_grp";
	rename -uid "39F4188A-4297-9AB3-DA94-51BDAEEB459B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.4998321723378467e-05 2.2426250332330255e-06 1.1858538229603255e-05 ;
	setAttr ".r" -type "double3" -2.0620877224975716 -67.040690887354529 -8.4031631789167653e-06 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.9201853514544508 0.035982633826927971 0.38982581883647272 ;
	setAttr ".roc" yes;
createNode ikHandle -n "rtLegBp0_3_ikh" -p "rtLegBp0_toe_wiggle_grp";
	rename -uid "82D721E2-4B77-4BE5-DA68-82B0D69F18EF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -18.753297002541473 1.8350508028674994e-06 -1.1174956085824306e-05 ;
	setAttr ".r" -type "double3" 4.0874187805842757e-06 -7.0372668276504877e-05 1.2452336901040345e-06 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.9201853514544508 0.035982633826927971 0.38982581883647272 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "diamondShape10" -p "rtLegBp0_inRollG_ctl";
	rename -uid "29EF5D88-46F2-2E47-FC6B-60999AF44715";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.7809050201958292
		-1.7809050201958292 0 0
		0 0 -1.7809050201958292
		1.7809050201958292 0 0
		0 0 1.7809050201958292
		0 1.7809050201958292 0
		1.7809050201958292 0 0
		0 0 -1.7809050201958292
		0 1.7809050201958292 0
		-1.7809050201958292 0 0
		0 -1.7809050201958292 0
		1.7809050201958292 0 0
		0 0 1.7809050201958292
		0 -1.7809050201958292 0
		0 0 -1.7809050201958292
		;
createNode nurbsCurve -n "diamondShape11" -p "rtLegBp0_outRollG_ctl";
	rename -uid "B8BB6D08-42C2-946A-CBDC-3B95EE21CC1F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.7809050201958292
		-1.7809050201958292 0 0
		0 0 -1.7809050201958292
		1.7809050201958292 0 0
		0 0 1.7809050201958292
		0 1.7809050201958292 0
		1.7809050201958292 0 0
		0 0 -1.7809050201958292
		0 1.7809050201958292 0
		-1.7809050201958292 0 0
		0 -1.7809050201958292 0
		1.7809050201958292 0 0
		0 0 1.7809050201958292
		0 -1.7809050201958292 0
		0 0 -1.7809050201958292
		;
createNode nurbsCurve -n "diamondShape9" -p "rtLegBp0_toeRollG_ctl";
	rename -uid "3D69EFBB-470F-775F-4E64-9C92742ED4A5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.7809050201958292
		-1.7809050201958292 0 0
		0 0 -1.7809050201958292
		1.7809050201958292 0 0
		0 0 1.7809050201958292
		0 1.7809050201958292 0
		1.7809050201958292 0 0
		0 0 -1.7809050201958292
		0 1.7809050201958292 0
		-1.7809050201958292 0 0
		0 -1.7809050201958292 0
		1.7809050201958292 0 0
		0 0 1.7809050201958292
		0 -1.7809050201958292 0
		0 0 -1.7809050201958292
		;
createNode nurbsCurve -n "diamondShape12" -p "rtLegBp0_heelRollG_ctl";
	rename -uid "9F3BF6B8-4401-3E8C-C115-068E11AF00E4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.7809050201958292
		-1.7809050201958292 0 0
		0 0 -1.7809050201958292
		1.7809050201958292 0 0
		0 0 1.7809050201958292
		0 1.7809050201958292 0
		1.7809050201958292 0 0
		0 0 -1.7809050201958292
		0 1.7809050201958292 0
		-1.7809050201958292 0 0
		0 -1.7809050201958292 0
		1.7809050201958292 0 0
		0 0 1.7809050201958292
		0 -1.7809050201958292 0
		0 0 -1.7809050201958292
		;
createNode transform -n "rtLegBp0_line_28" -p "rtLegBp0_IK";
	rename -uid "85064101-4306-537D-0D8A-C0B9C95EC690";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape3" -p "rtLegBp0_line_28";
	rename -uid "70341407-421F-8186-0048-558A8B1AD49A";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-40.300075678328241 117.61505751541682 -165.13227202360872
		-34.545244652744898 131.11243128654067 -89.195326243460755
		;
createNode transform -n "rtLegBp0_ikc_ofs" -p "rtLegBp0_IK";
	rename -uid "05EF4AEF-4997-AA9C-5CAB-0599DFB570A8";
	setAttr ".t" -type "double3" -38.357234944738117 32.4301199666141 -181.84851500573805 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_ikc_ofs1" -p "rtLegBp0_ikc_ofs";
	rename -uid "4C897F85-40AA-B998-E6AD-6D943B83DA89";
createNode transform -n "rtLegBp0_ikc" -p "rtLegBp0_ikc_ofs1";
	rename -uid "F739F4E5-4C9E-35DB-B716-D99B767C9A06";
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
	rename -uid "239E1085-41B1-D098-EFF7-B59792AB94C8";
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
		28.782303356700243 -32.430119966614093 28.782303356700272
		28.229259468352087 -32.430119966614093 34.397452186924816
		26.591380969786258 -32.430119966614093 39.796813996615569
		23.931610613169799 -32.430119966614093 44.772894339423111
		20.352161881691075 -32.430119966614093 49.134465238391336
		15.990590982722832 -32.430119966614093 52.713913969870077
		11.014510639915292 -32.430119966614093 55.373684326486533
		5.6151488302245376 -32.430119966614093 57.011562825052373
		-3.3601465783112821e-15 -32.430119966614093 57.564606713400515
		-5.6151488302245438 -32.430119966614093 57.011562825052373
		-11.014510639915299 -32.430119966614093 55.373684326486533
		-15.990590982722843 -32.430119966614093 52.713913969870077
		-20.352161881691085 -32.430119966614093 49.134465238391343
		-23.931610613169813 -32.430119966614093 44.772894339423111
		-26.591380969786272 -32.430119966614093 39.796813996615569
		-28.229259468352108 -32.430119966614093 34.397452186924809
		-28.782303356700261 -32.430119966614093 28.782303356700261
		-28.229259298605161 -23.810948053658599 28.782303356700268
		-26.591380841255095 -15.418251225232453 28.782303356700268
		-23.93161115694015 -8.1506889236571922 28.782303356700268
		-20.35216187649047 -2.3677594601901149 28.782303356700268
		-15.990590635253193 1.9869761232939993 28.782303356700268
		-11.014510289237034 4.6467458076089443 28.782303356700268
		-5.6151487067486654 6.2846242649590138 28.782303356700268
		1.7624077846106021e-15 6.8376683230541175 28.782303356700268
		5.6151487067486654 6.2846242649590138 28.782303356700268
		11.014510289237034 4.6467458076089443 28.782303356700268
		15.990590635253193 1.9869761232939993 28.782303356700268
		20.35216187649047 -2.3677594601901149 28.782303356700268
		23.93161115694015 -8.1506889236571922 28.782303356700268
		26.591380841255095 -15.418251225232453 28.782303356700268
		28.229259298605161 -23.810948053658599 28.782303356700268
		28.782303356700268 -32.430119966614093 28.782303356700268
		28.782303356700268 -32.4301199666141 -27.055365155298247
		28.782303356700268 -30.703181765212076 -28.782303356700268
		28.229259298605161 -23.810948053658599 -28.782303356700268
		26.591380841255095 -15.418251225232453 -28.782303356700268
		23.93161115694015 -8.1506889236571922 -28.782303356700268
		20.35216187649047 -2.3677594601901149 -28.782303356700268
		15.990590635253193 1.9869761232939993 -28.782303356700268
		11.014510289237034 4.6467458076089443 -28.782303356700268
		5.6151487067486654 6.2846242649590138 -28.782303356700268
		1.7624077846106021e-15 6.8376683230541175 -28.782303356700268
		-5.6151487067486654 6.2846242649590138 -28.782303356700268
		-11.014510289237034 4.6467458076089443 -28.782303356700268
		-15.990590635253193 1.9869761232939993 -28.782303356700268
		-20.35216187649047 -2.3677594601901149 -28.782303356700268
		-23.93161115694015 -8.1506889236571922 -28.782303356700268
		-26.591380841255095 -15.418251225232453 -28.782303356700268
		-28.229259298605161 -23.810948053658599 -28.782303356700268
		-28.782303356700268 -30.703181765212076 -28.782303356700268
		-28.782303356700268 -32.430119966614093 -27.055365155298247
		-28.782303356700268 -32.430119966614093 28.782303356700268
		;
createNode transform -n "rtLegBp0_ikc_gmb" -p "rtLegBp0_ikc";
	rename -uid "0777593D-4C58-3F24-26A7-C88BB6830A17";
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
	rename -uid "5382A1DB-46D1-08E5-47AE-4EAFBA7DEBAF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".tw" yes;
	setAttr -s 53 ".cp[0:52]" -type "double3" -5.7564606713400472 3.9267789791321448 
		-2.8782303856955238 -5.6458518936704145 3.9267789791321448 -4.001260151740432 -5.3182761939572494 
		3.9267789791321448 -5.0811325136785825 -4.7863221226339583 3.9267789791321448 -6.0763485822400938 
		-4.0704323763382142 3.9267789791321448 -6.9486627620337273 -3.1981181965445646 3.9267789791321448 
		-7.6645525083294785 -2.202902127983057 3.9267789791321448 -8.1965065796527696 -1.1230297660449056 
		3.9267789791321448 -8.5240822793659348 2.0931147871824564e-15 3.9267789791321448 
		-8.6346910570355746 1.12302976604491 3.9267789791321448 -8.5240822793659348 2.2029021279830605 
		3.9267789791321448 -8.1965065796527696 3.19811819654457 3.9267789791321448 -7.6645525083294785 
		4.0704323763382178 3.9267789791321448 -6.9486627620337345 4.7863221226339618 3.9267789791321448 
		-6.0763485822400938 5.3182761939572529 3.9267789791321448 -5.0811325136785825 5.6458518936704216 
		3.9267789791321448 -4.0012601517404285 5.7564606713400508 3.9267789791321448 -2.8782303856955203 
		5.6458518597210308 2.2029445965410481 -2.8782303856955203 5.3182761682510176 0.52440523085581781 
		-2.8782303856955203 4.7863222313880307 -0.92910722945923396 -2.8782303856955203 4.0704323752980933 
		-2.0856931221526498 -2.8782303856955203 3.1981181270506394 -2.9566402388494719 -2.8782303856955203 
		2.2029020578474086 -3.488594175712461 -2.8782303856955203 1.1230297413497343 -3.8161698671824746 
		-2.8782303856955203 1.0686039145980796e-15 -3.9267786788014956 -2.8782303856955203 
		-1.1230297413497308 -3.8161698671824746 -2.8782303856955203 -2.202902057847405 -3.488594175712461 
		-2.8782303856955203 -3.1981181270506358 -2.9566402388494719 -2.8782303856955203 -4.0704323752980933 
		-2.0856931221526498 -2.8782303856955203 -4.7863222313880307 -0.92910722945923396 
		-2.8782303856955203 -5.3182761682510176 0.52440523085581781 -2.8782303856955203 -5.6458518597210308 
		2.2029445965410481 -2.8782303856955203 -5.7564606713400508 3.9267789791321448 -2.8782303856955203 
		-5.7564606713400508 3.9267789791321448 8.2893033167041779 -5.7564606713400508 3.5813913388517413 
		8.6346909569845813 -5.6458518597210308 2.2029445965410481 8.6346909569845813 -5.3182761682510176 
		0.52440523085581781 8.6346909569845813 -4.7863222313880307 -0.92910722945923396 8.6346909569845813 
		-4.0704323752980933 -2.0856931221526498 8.6346909569845813 -3.1981181270506358 -2.9566402388494719 
		8.6346909569845813 -2.202902057847405 -3.488594175712461 8.6346909569845813 -1.1230297413497308 
		-3.8161698671824746 8.6346909569845813 1.0686039145980796e-15 -3.9267786788014956 
		8.6346909569845813 1.1230297413497343 -3.8161698671824746 8.6346909569845813 2.2029020578474086 
		-3.488594175712461 8.6346909569845813 3.1981181270506394 -2.9566402388494719 8.6346909569845813 
		4.0704323752980933 -2.0856931221526498 8.6346909569845813 4.7863222313880307 -0.92910722945923396 
		8.6346909569845813 5.3182761682510176 0.52440523085581781 8.6346909569845813 5.6458518597210308 
		2.2029445965410481 8.6346909569845813 5.7564606713400508 3.5813913388517413 8.6346909569845813 
		5.7564606713400508 3.9267789791321448 8.2893033167041779 5.7564606713400508 3.9267789791321448 
		-2.8782303856955203;
createNode nurbsCurve -n "rtLegBp0_ikc_gmbShapeOrig" -p "rtLegBp0_ikc_gmb";
	rename -uid "D8E587B1-4A10-5EE8-0742-6D84AA4E9C86";
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
		28.782303356700243 -32.430119966614093 28.782303356700272
		28.229259468352087 -32.430119966614093 34.397452186924816
		26.591380969786258 -32.430119966614093 39.796813996615569
		23.931610613169799 -32.430119966614093 44.772894339423111
		20.352161881691075 -32.430119966614093 49.134465238391336
		15.990590982722832 -32.430119966614093 52.713913969870077
		11.014510639915292 -32.430119966614093 55.373684326486533
		5.6151488302245376 -32.430119966614093 57.011562825052373
		-3.3601465783112821e-15 -32.430119966614093 57.564606713400515
		-5.6151488302245438 -32.430119966614093 57.011562825052373
		-11.014510639915299 -32.430119966614093 55.373684326486533
		-15.990590982722843 -32.430119966614093 52.713913969870077
		-20.352161881691085 -32.430119966614093 49.134465238391343
		-23.931610613169813 -32.430119966614093 44.772894339423111
		-26.591380969786272 -32.430119966614093 39.796813996615569
		-28.229259468352108 -32.430119966614093 34.397452186924809
		-28.782303356700261 -32.430119966614093 28.782303356700261
		-28.229259298605161 -23.810948053658599 28.782303356700268
		-26.591380841255095 -15.418251225232453 28.782303356700268
		-23.93161115694015 -8.1506889236571922 28.782303356700268
		-20.35216187649047 -2.3677594601901149 28.782303356700268
		-15.990590635253193 1.9869761232939993 28.782303356700268
		-11.014510289237034 4.6467458076089443 28.782303356700268
		-5.6151487067486654 6.2846242649590138 28.782303356700268
		1.7624077846106021e-15 6.8376683230541175 28.782303356700268
		5.6151487067486654 6.2846242649590138 28.782303356700268
		11.014510289237034 4.6467458076089443 28.782303356700268
		15.990590635253193 1.9869761232939993 28.782303356700268
		20.35216187649047 -2.3677594601901149 28.782303356700268
		23.93161115694015 -8.1506889236571922 28.782303356700268
		26.591380841255095 -15.418251225232453 28.782303356700268
		28.229259298605161 -23.810948053658599 28.782303356700268
		28.782303356700268 -32.430119966614093 28.782303356700268
		28.782303356700268 -32.4301199666141 -27.055365155298247
		28.782303356700268 -30.703181765212076 -28.782303356700268
		28.229259298605161 -23.810948053658599 -28.782303356700268
		26.591380841255095 -15.418251225232453 -28.782303356700268
		23.93161115694015 -8.1506889236571922 -28.782303356700268
		20.35216187649047 -2.3677594601901149 -28.782303356700268
		15.990590635253193 1.9869761232939993 -28.782303356700268
		11.014510289237034 4.6467458076089443 -28.782303356700268
		5.6151487067486654 6.2846242649590138 -28.782303356700268
		1.7624077846106021e-15 6.8376683230541175 -28.782303356700268
		-5.6151487067486654 6.2846242649590138 -28.782303356700268
		-11.014510289237034 4.6467458076089443 -28.782303356700268
		-15.990590635253193 1.9869761232939993 -28.782303356700268
		-20.35216187649047 -2.3677594601901149 -28.782303356700268
		-23.93161115694015 -8.1506889236571922 -28.782303356700268
		-26.591380841255095 -15.418251225232453 -28.782303356700268
		-28.229259298605161 -23.810948053658599 -28.782303356700268
		-28.782303356700268 -30.703181765212076 -28.782303356700268
		-28.782303356700268 -32.430119966614093 -27.055365155298247
		-28.782303356700268 -32.430119966614093 28.782303356700268
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode transform -n "rtLegBp0_smart_ctl_ofs" -p "rtLegBp0_ikc_gmb";
	rename -uid "3E6FD92E-4852-298B-FBF9-75BF0C65F314";
	setAttr ".t" -type "double3" 1.3426723332779744 -32.430119966614107 32.862443017257391 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_smart_ctl" -p "rtLegBp0_smart_ctl_ofs";
	rename -uid "18734D3C-40B8-704C-8E3F-12A3583665AE";
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
	rename -uid "D6450033-4123-618D-E615-DF902E59D386";
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
		7.4490128855730333 1.5289115597149465e-16 -7.4490128855730422
		4.1242615347018569e-16 2.1622074634178821e-16 -6.7354302278392835
		-7.4490128855730333 1.5289115597149457e-16 -7.4490128855730369
		-6.735430227839303 -8.824674382290651e-32 -2.6153492911240912e-15
		-7.4490128855730333 -1.5289115597149462e-16 7.4490128855730333
		-6.746926524943229e-16 -2.1622074634178843e-16 6.7354302278392897
		7.4490128855730333 -1.5289115597149457e-16 7.4490128855730369
		6.735430227839303 -1.2894161233086596e-31 -1.3476751566856714e-15
		7.4490128855730333 1.5289115597149465e-16 -7.4490128855730422
		4.1242615347018569e-16 2.1622074634178821e-16 -6.7354302278392835
		-7.4490128855730333 1.5289115597149457e-16 -7.4490128855730369
		;
createNode ikHandle -n "rtLegBp0_autoAimJ_ikh" -p "rtLegBp0_ikc";
	rename -uid "C247F5F9-4EFB-C9D0-28F3-A7945E52D706";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -4.2632564145606011e-14 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 72.192130303811041 -8.0062915715068161 92.561682574963172 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegBp0_pvc_ofs" -p "rtLegBp0_IK";
	rename -uid "BC70B2D7-4369-96FD-5CD2-A3893767AB66";
	setAttr ".t" -type "double3" -34.545244652744898 131.1124312865407 -89.195326243460741 ;
	setAttr ".r" -type "double3" -10.050520582736306 4.3338384319327226 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_pvc_ofs1" -p "rtLegBp0_pvc_ofs";
	rename -uid "05300F30-40DF-A6EB-5573-F79BA2BF7928";
createNode transform -n "rtLegBp0_pvc" -p "rtLegBp0_pvc_ofs1";
	rename -uid "78726E23-4560-E1AF-6542-4FA3D6E99AE2";
	addAttr -ci true -sn "fkPin" -ln "fkPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -1.7763568394002505e-14 0 -1.1368683772161603e-13 ;
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".fkPin";
	setAttr -k on ".pvPin";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -k on ".space";
createNode nurbsCurve -n "rtLegBp0_pvcShape1" -p "rtLegBp0_pvc";
	rename -uid "8E7EDD77-4574-2229-400E-56A7B796111D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 7.1236200807833168
		-7.1236200807833168 0 0
		0 0 -7.1236200807833168
		7.1236200807833168 0 0
		0 0 7.1236200807833168
		0 7.1236200807833168 0
		7.1236200807833168 0 0
		0 0 -7.1236200807833168
		0 7.1236200807833168 0
		-7.1236200807833168 0 0
		0 -7.1236200807833168 0
		7.1236200807833168 0 0
		0 0 7.1236200807833168
		0 -7.1236200807833168 0
		0 0 -7.1236200807833168
		;
createNode transform -n "rtLegBp0_pin_fkc_ofs" -p "rtLegBp0_pvc";
	rename -uid "D3FD596F-425B-B5BF-AEF2-1C987F600D1B";
	setAttr ".t" -type "double3" 3.2004925382382083 -80.994412934655017 -108.47582747382305 ;
	setAttr ".r" -type "double3" -4.3338384319327048 -10.050520582736315 89.999999999999901 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "rtLegBp0_pin_fkc" -p "rtLegBp0_pin_fkc_ofs";
	rename -uid "A5D45513-4B1B-D5DD-9573-6DA60953661D";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtLegBp0_pin_fkcShape1" -p "rtLegBp0_pin_fkc";
	rename -uid "0131B41B-4D9A-C846-CCCC-CB879F36A0AB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		6.1156462388597859e-16 -29.796051542292133 -29.796051542292169
		8.6488298536715284e-16 -1.6497046138807428e-15 -26.941720911357134
		6.115646238859783e-16 29.796051542292133 -29.796051542292147
		-3.5298697529162604e-31 26.941720911357212 -1.0461397164496365e-14
		-6.115646238859785e-16 29.796051542292133 29.796051542292133
		-8.6488298536715373e-16 2.6987706099772916e-15 26.941720911357159
		-6.115646238859783e-16 -29.796051542292133 29.796051542292147
		-5.1576644932346382e-31 -26.941720911357212 -5.3907006267426857e-15
		6.1156462388597859e-16 -29.796051542292133 -29.796051542292169
		8.6488298536715284e-16 -1.6497046138807428e-15 -26.941720911357134
		6.115646238859783e-16 29.796051542292133 -29.796051542292147
		;
createNode transform -n "rtLegBp0_BF" -p "rtLegBp0_ctl_data";
	rename -uid "01810113-4D00-FD87-1DB7-EF8A06CE99FB";
	setAttr ".t" -type "double3" 49.798005037915345 -288.14915777849779 145.84493377973951 ;
	setAttr -cb on ".ro";
createNode joint -n "rtLegBp0_hip_bf" -p "rtLegBp0_BF";
	rename -uid "1417BEA8-4712-8518-F115-FE89F00244C1";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 3;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.0598280714887189 -35.594455587046454 93.300707752435954 ;
	setAttr ".radi" 11.512921342680107;
createNode joint -n "rtLegBp0_upr_bf" -p "rtLegBp0_hip_bf";
	rename -uid "CF7A3C29-445B-D85A-CE31-4AB7E88D66E5";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 6.2004800234673674 46.29529179404048 0.86798635242294586 ;
	setAttr ".radi" 11.512921342680107;
createNode joint -n "rtLegBp0_lwr_bf" -p "rtLegBp0_upr_bf";
	rename -uid "0ABD074C-482B-CE47-782D-4F8F790A7B0B";
	setAttr ".v" no;
	setAttr -cb on ".ro" 2;
	setAttr ".jo" -type "double3" 0 -21.881586329072551 0 ;
	setAttr ".pa" -type "double3" 0 -45 0 ;
	setAttr ".radi" 11.512921342680107;
createNode joint -n "rtLegBp0_palm_bf" -p "rtLegBp0_lwr_bf";
	rename -uid "3B00B25F-4C87-2D97-C318-D2A7AE069AB5";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -5.1600553709616239 10.945139122878761 -2.2694243949569728 ;
	setAttr ".radi" 11.512921342680107;
createNode joint -n "rtLegBp0_ball_bf" -p "rtLegBp0_palm_bf";
	rename -uid "D0E90B5F-4295-3566-C9E4-80AEE2019F03";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 5.2737082620191709 66.95319410643863 4.8548874731917451 ;
	setAttr ".radi" 11.512921342680107;
createNode joint -n "rtLegBp0_tip_bf" -p "rtLegBp0_ball_bf";
	rename -uid "56EDAEAA-47EC-E0AE-D638-79A888F9FB5E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -18.75333200087735 -3.907985046680551e-14 7.1054273576010019e-15 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -0.87332769106313002 22.943661776666016 -2.2393349239534968 ;
	setAttr ".radi" 11.512921342680107;
createNode transform -n "rtLegBp0_setting" -p "rtLegBp0_ctl_data";
	rename -uid "934D4FEB-45D4-5C4F-8F52-18B87A3B16DF";
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
	rename -uid "4696AF7E-4E73-598E-B980-37B340ABE6E3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		14.391151678350134 14.391151678350134 -3.5826745105621362e-16
		14.11462964930258 14.391151678350134 2.8075743533743323
		13.295690420627547 14.391151678350134 5.5072554877303102
		11.965805578470075 14.391151678350134 7.9952953176265966
		10.176080938245233 14.391151678350134 10.176080938245233
		7.9952953176265966 14.391151678350134 11.965805578470075
		5.5072554877303102 14.391151678350134 13.295690420627547
		2.8075743533743323 14.391151678350134 14.11462964930258
		-8.8120389230530103e-16 14.391151678350134 14.391151678350134
		-2.8075743533743323 14.391151678350134 14.11462964930258
		-5.5072554877303102 14.391151678350134 13.295690420627547
		-7.9952953176265966 14.391151678350134 11.965805578470075
		-10.176080938245233 14.391151678350134 10.176080938245233
		-11.965805578470075 14.391151678350134 7.9952953176265966
		-13.295690420627547 14.391151678350134 5.5072554877303102
		-14.11462964930258 14.391151678350134 2.8075743533743323
		-14.391151678350134 14.391151678350134 1.5565714706833873e-15
		-13.843421735712427 14.391151678350134 2.7536275723092585
		-12.283616308297683 14.391151678350134 5.0880404691226166
		-9.9492030683725314 14.391151678350134 6.6478452103137737
		-7.195575839175067 14.391151678350134 7.195575839175067
		-4.4419482668658086 14.391151678350134 6.6478452103137737
		-2.10753537005245 14.391151678350134 5.0880404691226166
		-0.5477306288612932 14.391151678350134 2.7536275723092585
		0 14.391151678350134 1.5565714706833873e-15
		0.5477306288612932 14.391151678350134 -2.7536275723092585
		2.10753537005245 14.391151678350134 -5.0880404691226166
		4.4419482668658086 14.391151678350134 -6.6478452103137737
		7.195575839175067 14.391151678350134 -7.195575839175067
		9.9492030683725314 14.391151678350134 -6.6478452103137737
		12.283616308297683 14.391151678350134 -5.0880404691226166
		13.843421735712427 14.391151678350134 -2.7536275723092585
		14.391151678350134 14.391151678350134 -3.5826745105621362e-16
		14.11462964930258 14.391151678350134 -2.8075743533743323
		13.295690420627547 14.391151678350134 -5.5072554877303102
		11.965805578470075 14.391151678350134 -7.9952953176265966
		10.176080938245233 14.391151678350134 -10.176080938245233
		7.9952953176265966 14.391151678350134 -11.965805578470075
		5.5072554877303102 14.391151678350134 -13.295690420627547
		2.8075743533743323 14.391151678350134 -14.11462964930258
		1.6800732895141651e-15 14.391151678350134 -14.391151678350134
		-2.8075743533743323 14.391151678350134 -14.11462964930258
		-5.5072554877303102 14.391151678350134 -13.295690420627547
		-7.9952953176265966 14.391151678350134 -11.965805578470075
		-10.176080938245233 14.391151678350134 -10.176080938245233
		-11.965805578470075 14.391151678350134 -7.9952953176265966
		-13.295690420627547 14.391151678350134 -5.5072554877303102
		-14.11462964930258 14.391151678350134 -2.8075743533743323
		-14.391151678350134 14.391151678350134 1.5565714706833873e-15
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp0_toe00_3_ctl_ofs" -p "rtLegBp0_ctl_data";
	rename -uid "49C02839-4D8D-3057-F5E6-C2A959D91C3A";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "rtLegBp0_toe00_3_ctl" -p "rtLegBp0_toe00_3_ctl_ofs";
	rename -uid "34A6D934-4D95-0CBB-B555-7AB95E8CB5FB";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe00_3_ctlShape1" -p "rtLegBp0_toe00_3_ctl";
	rename -uid "16083C17-4F99-E04E-B08C-F6BBDB0555D4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.6440092163953201e-17 1.2881882275894769 1.2881882275894785
		-3.7391936928657257e-17 7.1322539484294896e-17 1.1647854635957464
		-2.6440092163953186e-17 -1.2881882275894769 1.2881882275894776
		1.5260869898069396e-32 -1.1647854635957497 4.5228303664041315e-16
		2.6440092163953195e-17 -1.2881882275894769 -1.2881882275894769
		3.7391936928657294e-17 -1.1667735652164128e-16 -1.1647854635957475
		2.6440092163953186e-17 1.2881882275894769 -1.2881882275894776
		2.2298399748069432e-32 1.1647854635957497 2.3305897011127743e-16
		-2.6440092163953201e-17 1.2881882275894769 1.2881882275894785
		-3.7391936928657257e-17 7.1322539484294896e-17 1.1647854635957464
		-2.6440092163953186e-17 -1.2881882275894769 1.2881882275894776
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp0_toe01_3_ctl_ofs" -p "rtLegBp0_ctl_data";
	rename -uid "99FF4264-4C5B-55AF-A776-D287A76DEA81";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_toe01_3_ctl" -p "rtLegBp0_toe01_3_ctl_ofs";
	rename -uid "97C14EB4-46FF-1EBD-5F3E-DDAD5073CFB5";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe01_3_ctlShape1" -p "rtLegBp0_toe01_3_ctl";
	rename -uid "1365D4C4-4615-743A-64C2-9FAC6A07364B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-3.5800428795985134e-16 1.2881882275894743 1.2881882275895105
		-3.6895613272455541e-16 -2.5932127196160808e-15 1.1647854635957784
		-3.5800428795985134e-16 -1.2881882275894796 1.2881882275895096
		-3.3156419579589818e-16 -1.1647854635957524 3.2410677222200668e-14
		-3.0512410363194496e-16 -1.2881882275894796 -1.288188227589445
		-2.9417225886724085e-16 -2.7812126156220168e-15 -1.1647854635957156
		-3.0512410363194496e-16 1.2881882275894743 -1.2881882275894456
		-3.3156419579589818e-16 1.1647854635957471 3.2191453155671536e-14
		-3.5800428795985134e-16 1.2881882275894743 1.2881882275895105
		-3.6895613272455541e-16 -2.5932127196160808e-15 1.1647854635957784
		-3.5800428795985134e-16 -1.2881882275894796 1.2881882275895096
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp0_toe01_4_ctl_ofs" -p "rtLegBp0_ctl_data";
	rename -uid "599240B7-4E8F-8F95-DEC3-8085543859C3";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "rtLegBp0_toe01_4_ctl" -p "rtLegBp0_toe01_4_ctl_ofs";
	rename -uid "9B94BAAA-49E3-1AFD-7E6A-1B9BBAE2655D";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe01_4_ctlShape1" -p "rtLegBp0_toe01_4_ctl";
	rename -uid "50C34AC0-4890-2816-3E08-439294AAC493";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-9.1061128095301496e-16 1.2881882275894698 1.2881882275894776
		-9.2156312571771902e-16 -7.0341048181167078e-15 1.1647854635957455
		-9.1061128095301476e-16 -1.288188227589484 1.2881882275894767
		-8.8417118878906174e-16 -1.1647854635957569 -5.4641678165834487e-16
		-8.5773109662510852e-16 -1.288188227589484 -1.2881882275894778
		-8.4677925186040446e-16 -7.2221047141226434e-15 -1.1647854635957484
		-8.5773109662510852e-16 1.2881882275894698 -1.2881882275894785
		-8.8417118878906174e-16 1.1647854635957426 -7.6564084818748064e-16
		-9.1061128095301496e-16 1.2881882275894698 1.2881882275894776
		-9.2156312571771902e-16 -7.0341048181167078e-15 1.1647854635957455
		-9.1061128095301476e-16 -1.288188227589484 1.2881882275894767
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp0_toe02_3_ctl_ofs" -p "rtLegBp0_ctl_data";
	rename -uid "1B63B3B3-4F9B-F5D2-CAA9-EFA4162C1382";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "rtLegBp0_toe02_3_ctl" -p "rtLegBp0_toe02_3_ctl_ofs";
	rename -uid "DBE20F93-406A-2E65-D303-F7B055832F1D";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe02_3_ctlShape1" -p "rtLegBp0_toe02_3_ctl";
	rename -uid "FFD5CD17-49A9-AEB1-FD42-CF94C4AB5062";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.8448149522567963e-14 1.2881882275894805 1.2881882275894705
		-2.8459101367332667e-14 3.6080072946405418e-15 1.1647854635957384
		-2.8448149522567963e-14 -1.2881882275894734 1.2881882275894696
		-2.8421709430404007e-14 -1.1647854635957462 -7.537315509749651e-15
		-2.8395269338240058e-14 -1.2881882275894734 -1.2881882275894849
		-2.8384317493475354e-14 3.4200073986346058e-15 -1.1647854635957555
		-2.8395269338240058e-14 1.2881882275894805 -1.2881882275894856
		-2.8421709430404007e-14 1.1647854635957533 -7.7565395762787866e-15
		-2.8448149522567963e-14 1.2881882275894805 1.2881882275894705
		-2.8459101367332667e-14 3.6080072946405418e-15 1.1647854635957384
		-2.8448149522567963e-14 -1.2881882275894734 1.2881882275894696
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp0_toe02_4_ctl_ofs" -p "rtLegBp0_ctl_data";
	rename -uid "062E6868-4A97-5237-7B68-699A98BA3028";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "rtLegBp0_toe02_4_ctl" -p "rtLegBp0_toe02_4_ctl_ofs";
	rename -uid "ECBF4E26-4D2C-20DF-41BF-A89108B940BA";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe02_4_ctlShape1" -p "rtLegBp0_toe02_4_ctl";
	rename -uid "0E3402F6-4C04-851D-855E-59A3363DD4D5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.6440092163953201e-17 1.2881882275894769 1.2881882275894785
		-3.7391936928657257e-17 7.1322539484294896e-17 1.1647854635957464
		-2.6440092163953186e-17 -1.2881882275894769 1.2881882275894776
		1.5260869898069396e-32 -1.1647854635957497 4.5228303664041315e-16
		2.6440092163953195e-17 -1.2881882275894769 -1.2881882275894769
		3.7391936928657294e-17 -1.1667735652164128e-16 -1.1647854635957475
		2.6440092163953186e-17 1.2881882275894769 -1.2881882275894776
		2.2298399748069432e-32 1.1647854635957497 2.3305897011127743e-16
		-2.6440092163953201e-17 1.2881882275894769 1.2881882275894785
		-3.7391936928657257e-17 7.1322539484294896e-17 1.1647854635957464
		-2.6440092163953186e-17 -1.2881882275894769 1.2881882275894776
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp0_toe03_3_ctl_ofs" -p "rtLegBp0_ctl_data";
	rename -uid "DC51E580-4854-BA06-6F45-D8BA0B121F6A";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "rtLegBp0_toe03_3_ctl" -p "rtLegBp0_toe03_3_ctl_ofs";
	rename -uid "5EFBF363-46C7-00DC-CDA2-1D872ECE11F2";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe03_3_ctlShape1" -p "rtLegBp0_toe03_3_ctl";
	rename -uid "9FB6B79F-470A-50E1-A5AA-B48C776DA5FE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.1931954093396301e-14 1.2881882275895018 1.2881882275894865
		3.1921002248631597e-14 2.4956347214732056e-14 1.1647854635957544
		3.1931954093396301e-14 -1.2881882275894521 1.2881882275894856
		3.1958394185560257e-14 -1.1647854635957249 8.4418815830304773e-15
		3.1984834277724212e-14 -1.2881882275894521 -1.2881882275894689
		3.1995786122488917e-14 2.4768347318726121e-14 -1.1647854635957395
		3.1984834277724212e-14 1.2881882275895018 -1.2881882275894696
		3.1958394185560257e-14 1.1647854635957746 8.2226575165013418e-15
		3.1931954093396301e-14 1.2881882275895018 1.2881882275894865
		3.1921002248631597e-14 2.4956347214732056e-14 1.1647854635957544
		3.1931954093396301e-14 -1.2881882275894521 1.2881882275894856
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp0_toe03_4_ctl_ofs" -p "rtLegBp0_ctl_data";
	rename -uid "7E51C4C5-487D-504F-C3A4-F887C2D76709";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_toe03_4_ctl" -p "rtLegBp0_toe03_4_ctl_ofs";
	rename -uid "66E86F78-47BE-C10D-1B6F-B6AD3EF0474C";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe03_4_ctlShape1" -p "rtLegBp0_toe03_4_ctl";
	rename -uid "D41235B9-4B23-7A26-F834-F8ADE925ADBB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.6440092163953201e-17 1.2881882275894769 1.2881882275894794
		-3.7391936928657257e-17 7.1322539484294896e-17 1.1647854635957473
		-2.6440092163953186e-17 -1.2881882275894769 1.2881882275894785
		1.5260869898069396e-32 -1.1647854635957497 1.4509828549391712e-15
		2.6440092163953195e-17 -1.2881882275894769 -1.288188227589476
		3.7391936928657294e-17 -1.1667735652164128e-16 -1.1647854635957466
		2.6440092163953186e-17 1.2881882275894769 -1.2881882275894767
		2.2298399748069432e-32 1.1647854635957497 1.2317587884100354e-15
		-2.6440092163953201e-17 1.2881882275894769 1.2881882275894794
		-3.7391936928657257e-17 7.1322539484294896e-17 1.1647854635957473
		-2.6440092163953186e-17 -1.2881882275894769 1.2881882275894785
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp0_toe04_3_ctl_ofs" -p "rtLegBp0_ctl_data";
	rename -uid "9E55F5D9-4E2B-F618-D91F-5F9058C68F87";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp0_toe04_3_ctl" -p "rtLegBp0_toe04_3_ctl_ofs";
	rename -uid "03015E11-4485-6277-D72F-6CB3B66C6A53";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe04_3_ctlShape1" -p "rtLegBp0_toe04_3_ctl";
	rename -uid "DE309D78-4304-F3FC-01A3-0A87F3B43F52";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.1310664317678452e-14 1.2881882275894219 1.2881882275894765
		-2.1321616162443156e-14 -5.5003753943745602e-14 1.1647854635957444
		-2.1310664317678452e-14 -1.288188227589532 1.2881882275894756
		-2.1284224225514499e-14 -1.1647854635958048 -1.5451165999571029e-15
		-2.1257784133350547e-14 -1.288188227589532 -1.2881882275894789
		-2.1246832288585842e-14 -5.5191753839751536e-14 -1.1647854635957495
		-2.1257784133350547e-14 1.2881882275894219 -1.2881882275894796
		-2.1284224225514499e-14 1.1647854635956947 -1.7643406664862387e-15
		-2.1310664317678452e-14 1.2881882275894219 1.2881882275894765
		-2.1321616162443156e-14 -5.5003753943745602e-14 1.1647854635957444
		-2.1310664317678452e-14 -1.288188227589532 1.2881882275894756
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp0_toe04_4_ctl_ofs" -p "rtLegBp0_ctl_data";
	rename -uid "12E59C69-486C-65A5-B72B-53B3569E97DB";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rtLegBp0_toe04_4_ctl" -p "rtLegBp0_toe04_4_ctl_ofs";
	rename -uid "3A16C89F-4CFD-CFC2-BB95-9EA2C40B8FBF";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp0_toe04_4_ctlShape1" -p "rtLegBp0_toe04_4_ctl";
	rename -uid "B36440FF-4057-AE31-703F-71B995378A08";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.6440092163953201e-17 1.2881882275894769 1.2881882275894785
		-3.7391936928657257e-17 7.1322539484294896e-17 1.1647854635957464
		-2.6440092163953186e-17 -1.2881882275894769 1.2881882275894776
		1.5260869898069396e-32 -1.1647854635957497 4.5228303664041315e-16
		2.6440092163953195e-17 -1.2881882275894769 -1.2881882275894769
		3.7391936928657294e-17 -1.1667735652164128e-16 -1.1647854635957475
		2.6440092163953186e-17 1.2881882275894769 -1.2881882275894776
		2.2298399748069432e-32 1.1647854635957497 2.3305897011127743e-16
		-2.6440092163953201e-17 1.2881882275894769 1.2881882275894785
		-3.7391936928657257e-17 7.1322539484294896e-17 1.1647854635957464
		-2.6440092163953186e-17 -1.2881882275894769 1.2881882275894776
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp0_anchorF1" -p "master_ctl";
	rename -uid "18BC8A60-4D15-B6F8-FD87-4EAEF4BD344D";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "rtLegBp0_anchorF1Shape" -p "rtLegBp0_anchorF1";
	rename -uid "FDB9D146-49DF-5099-6B57-7B9861F843ED";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 9.3327024289737821 9.3327024289737821 9.3327024289737821 ;
createNode transform -n "rtLegBp1_ctl_data" -p "master_ctl";
	rename -uid "92700963-4A45-DFCC-97CC-EFB9AD494C58";
	setAttr ".t" -type "double3" -34.387288993065852 320.60922383140547 47.601245693640571 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp1_FK" -p "rtLegBp1_ctl_data";
	rename -uid "623B1156-435D-647F-148F-FE8393860F45";
	setAttr ".t" -type "double3" 34.387288993065852 -320.60922383140547 -47.601245693640571 ;
	setAttr -cb on ".ro";
createNode joint -n "rtLegBp1_hip_fk" -p "rtLegBp1_FK";
	rename -uid "B773FD56-4462-EB33-444F-CB9C3E93F8E8";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.0266976468698323 12.845909847021364 80.898712746857882 ;
	setAttr ".radi" 6.4645685613907968;
createNode joint -n "rtLegBp1_upr_fk" -p "rtLegBp1_hip_fk";
	rename -uid "4C87183B-47F6-4383-6E41-80BEFC713B63";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 179.48854482226253 -19.863561633621387 10.785157071828166 ;
	setAttr ".radi" 6.4645685613907968;
createNode joint -n "rtLegBp1_lwr_fk" -p "rtLegBp1_upr_fk";
	rename -uid "8C6BF65C-48D0-9D66-36E5-50B770BD6B3C";
	setAttr ".v" no;
	setAttr -cb on ".ro" 2;
	setAttr ".jo" -type "double3" 0 -13.029425341035457 0 ;
	setAttr ".pa" -type "double3" 0 -45 0 ;
	setAttr ".radi" 6.4645685613907968;
createNode joint -n "rtLegBp1_palm_fk" -p "rtLegBp1_lwr_fk";
	rename -uid "C0DC69F0-4CF0-2E8C-7882-EFB4B038BE2B";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 179.2726877997525 6.0005785473742641 1.5879128728914029 ;
	setAttr ".radi" 6.4645685613907968;
createNode joint -n "rtLegBp1_ball_fk" -p "rtLegBp1_palm_fk";
	rename -uid "3593A6C1-40E7-1417-453C-3FB0CF5E3525";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -26.310713056567902 4.5474735088646412e-13 15.314096789397709 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 71.782109197951513 0 ;
	setAttr ".radi" 6.4645685613907968;
createNode joint -n "rtLegBp1_tip_fk" -p "rtLegBp1_ball_fk";
	rename -uid "AE7D48A4-4F65-F749-8D14-0C8A02B0BABE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -18.467411063857654 1.4210854715202004e-14 2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 18.21789080204849 0 ;
	setAttr ".radi" 6.4645685613907968;
createNode transform -n "rtLegBp1_upr_fkc_ofs" -p "rtLegBp1_FK";
	rename -uid "FCD73706-4067-9BD8-A269-93AC306EDD13";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp1_upr_fkc" -p "rtLegBp1_upr_fkc_ofs";
	rename -uid "024E277D-457E-F211-C456-D9A768328FAF";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegBp1_upr_fkcShape1" -p "rtLegBp1_upr_fkc";
	rename -uid "B8C81A5D-4E1F-FB5E-CEE3-FCA5A67AD86D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 20 0 no 3
		25 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 20 20
		23
		-7.6229069182090809e-16 -28.716842918565845 16.84617365957347
		-6.390051953090885e-16 -29.985254734573065 14.561369171042999
		-3.9243420228544628e-16 -32.522078366587294 9.9917601939819676
		3.5279954495125162e-19 -32.631597676663567 -0.96600277447728666
		3.9102300429754904e-16 -32.138739172010744 -6.127749100402287
		7.672298849115304e-16 -30.250199690095886 -12.602137795294043
		1.1138016069813981e-15 -27.189931796775088 -18.158613312678234
		1.4176110852911147e-15 -23.282317921023211 -23.203615686110872
		1.666931653242774e-15 -15.924083892311595 -29.500487393679652
		1.8521959205349328e-15 -9.7128441299281274 -32.127761016305733
		1.9662804948187533e-15 2.5294678691985024 -36.781665594581206
		2.0048022829661274e-15 1.1891309467208792e-14 -44.792880143812077
		1.966280494818743e-15 -2.5294678691986432 -36.781665594581085
		1.8521959205350019e-15 9.7128441299287367 -32.127761016306927
		1.6669316532426825e-15 15.924083892310124 -29.500487393677755
		1.4176110852914285e-15 23.28231792102854 -23.203615686117622
		1.1138016069802391e-15 27.189931796755481 -18.158613312653348
		7.6722988491577033e-16 30.2501996901672 -12.602137795385536
		3.9102300428176664e-16 32.138739171745506 -6.1277491000614397
		3.5279957276125078e-19 32.631597676479842 -0.96600277506259546
		-3.9243420231063461e-16 32.522078366990485 9.9917601945650318
		-6.3900519531744382e-16 29.98525473470589 14.561369171236455
		-7.6229069182084853e-16 28.716842918563586 16.846173659572166
		;
createNode transform -n "rtLegBp1_lwr_fkc_ofs" -p "rtLegBp1_FK";
	rename -uid "D8E6C4BE-4C16-A31D-A272-3280D049B289";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp1_lwr_fkc" -p "rtLegBp1_lwr_fkc_ofs";
	rename -uid "3C8E8781-43DF-D3E9-4BCC-838E45FA1A29";
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
createNode nurbsCurve -n "rtLegBp1_lwr_fkcShape1" -p "rtLegBp1_lwr_fkc";
	rename -uid "2E5FB9F4-4915-5600-F288-368A08CE601C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 20 0 no 3
		25 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 20 20
		23
		-7.6229069182090809e-16 -28.716842918565845 16.84617365957347
		-6.390051953090885e-16 -29.985254734573065 14.561369171042999
		-3.9243420228544628e-16 -32.522078366587294 9.9917601939819676
		3.5279954495125162e-19 -32.631597676663567 -0.96600277447728666
		3.9102300429754904e-16 -32.138739172010744 -6.127749100402287
		7.672298849115304e-16 -30.250199690095886 -12.602137795294043
		1.1138016069813981e-15 -27.189931796775088 -18.158613312678234
		1.4176110852911147e-15 -23.282317921023211 -23.203615686110872
		1.666931653242774e-15 -15.924083892311595 -29.500487393679652
		1.8521959205349328e-15 -9.7128441299281274 -32.127761016305733
		1.9662804948187533e-15 2.5294678691985024 -36.781665594581206
		2.0048022829661274e-15 1.1891309467208792e-14 -44.792880143812077
		1.966280494818743e-15 -2.5294678691986432 -36.781665594581085
		1.8521959205350019e-15 9.7128441299287367 -32.127761016306927
		1.6669316532426825e-15 15.924083892310124 -29.500487393677755
		1.4176110852914285e-15 23.28231792102854 -23.203615686117622
		1.1138016069802391e-15 27.189931796755481 -18.158613312653348
		7.6722988491577033e-16 30.2501996901672 -12.602137795385536
		3.9102300428176664e-16 32.138739171745506 -6.1277491000614397
		3.5279957276125078e-19 32.631597676479842 -0.96600277506259546
		-3.9243420231063461e-16 32.522078366990485 9.9917601945650318
		-6.3900519531744382e-16 29.98525473470589 14.561369171236455
		-7.6229069182084853e-16 28.716842918563586 16.846173659572166
		;
createNode transform -n "rtLegBp1_palm_fkc_ofs" -p "rtLegBp1_FK";
	rename -uid "472A25AB-4A1F-53A3-6F2C-9DADD3E15D85";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp1_palm_fkc" -p "rtLegBp1_palm_fkc_ofs";
	rename -uid "1BF2C4B9-474C-10D1-B20A-CF9043B8212F";
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
createNode nurbsCurve -n "rtLegBp1_palm_fkcShape1" -p "rtLegBp1_palm_fkc";
	rename -uid "998155FB-49B1-825A-6FF1-46B810BDDA1A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 20 0 no 3
		25 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 20 20
		23
		-7.6229069182090809e-16 -28.716842918565845 16.84617365957347
		-6.390051953090885e-16 -29.985254734573065 14.561369171042999
		-3.9243420228544628e-16 -32.522078366587294 9.9917601939819676
		3.5279954495125162e-19 -32.631597676663567 -0.96600277447728666
		3.9102300429754904e-16 -32.138739172010744 -6.127749100402287
		7.672298849115304e-16 -30.250199690095886 -12.602137795294043
		1.1138016069813981e-15 -27.189931796775088 -18.158613312678234
		1.4176110852911147e-15 -23.282317921023211 -23.203615686110872
		1.666931653242774e-15 -15.924083892311595 -29.500487393679652
		1.8521959205349328e-15 -9.7128441299281274 -32.127761016305733
		1.9662804948187533e-15 2.5294678691985024 -36.781665594581206
		2.0048022829661274e-15 1.1891309467208792e-14 -44.792880143812077
		1.966280494818743e-15 -2.5294678691986432 -36.781665594581085
		1.8521959205350019e-15 9.7128441299287367 -32.127761016306927
		1.6669316532426825e-15 15.924083892310124 -29.500487393677755
		1.4176110852914285e-15 23.28231792102854 -23.203615686117622
		1.1138016069802391e-15 27.189931796755481 -18.158613312653348
		7.6722988491577033e-16 30.2501996901672 -12.602137795385536
		3.9102300428176664e-16 32.138739171745506 -6.1277491000614397
		3.5279957276125078e-19 32.631597676479842 -0.96600277506259546
		-3.9243420231063461e-16 32.522078366990485 9.9917601945650318
		-6.3900519531744382e-16 29.98525473470589 14.561369171236455
		-7.6229069182084853e-16 28.716842918563586 16.846173659572166
		;
createNode transform -n "rtLegBp1_ikc_matcher" -p "rtLegBp1_palm_fkc";
	rename -uid "ED8B4F06-4EA3-B213-AE6F-2D83A0CD4C49";
	setAttr ".t" -type "double3" 0 7.1054273576010019e-15 4.2632564145606011e-14 ;
	setAttr ".r" -type "double3" 0 0 -89.999999999999872 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp1_ball_fkc_ofs" -p "rtLegBp1_FK";
	rename -uid "4188A61A-476B-73AA-E457-C1AC587C0E0E";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp1_ball_fkc" -p "rtLegBp1_ball_fkc_ofs";
	rename -uid "88AB3540-4C62-735D-0E7E-66A888F7E79B";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
createNode nurbsCurve -n "rtLegBp1_ball_fkcShape1" -p "rtLegBp1_ball_fkc";
	rename -uid "8748CFC1-49DF-51BB-EC60-B9B5687302BB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-3.433968949458439e-16 16.730646577060828 16.730646577060849
		-4.8563654610922192e-16 9.263182006585446e-16 15.127924252175937
		-3.433968949458437e-16 -16.730646577060828 16.730646577060838
		1.9820412518509114e-31 -15.12792425217598 5.8741319605057532e-15
		3.433968949458438e-16 -16.730646577060828 -16.730646577060828
		4.8563654610922242e-16 -1.5153745188016108e-15 -15.127924252175951
		3.433968949458437e-16 16.730646577060828 -16.730646577060838
		2.896056938177995e-31 15.12792425217598 3.0269080069470879e-15
		-3.433968949458439e-16 16.730646577060828 16.730646577060849
		-4.8563654610922192e-16 9.263182006585446e-16 15.127924252175937
		-3.433968949458437e-16 -16.730646577060828 16.730646577060838
		;
createNode transform -n "rtLegBp1_toe00_2_ikc_ofs" -p "rtLegBp1_ball_fkc_ofs";
	rename -uid "3C9AC18F-4644-328F-7ED5-70BFC52DAC32";
	setAttr ".t" -type "double3" 17.278997522579346 -18.039316587015747 -4.6051842948804271 ;
	setAttr ".r" -type "double3" 16.635315177157459 -29.262637223519231 43.285952539948646 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "rtLegBp1_toe00_2_ikc_ofs1" -p "rtLegBp1_toe00_2_ikc_ofs";
	rename -uid "E2DAD889-454C-4E6E-9A18-B0B049D12D89";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000002 ;
createNode transform -n "rtLegBp1_toe00_2_ikc" -p "rtLegBp1_toe00_2_ikc_ofs1";
	rename -uid "1AFCD0CF-4D4A-C66F-DAB3-D890071DEB34";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp1_toe00_2_ikcShape1" -p "rtLegBp1_toe00_2_ikc";
	rename -uid "2283F29B-49BF-1792-419E-AC85FD39CFDF";
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
		0 5.2268901523312398e-16 -3.5527136788005009e-15
		0 5.2268901523312398e-16 3.9564747367824467
		-0.45688491172512047 5.2268901523312398e-16 3.9564747367824467
		-0.45688491172512047 5.2268901523312398e-16 4.87024456023269
		0.45688491172512047 5.2268901523312398e-16 4.87024456023269
		0.45688491172512047 5.2268901523312398e-16 3.9564747367824467
		0 5.2268901523312398e-16 3.9564747367824467
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegBp1_toe00_2_1_ikj_ikh" -p "rtLegBp1_toe00_2_ikc";
	rename -uid "89E4F40C-4E9F-9586-4AC7-618992276910";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -11.163560170053449 -0.2377858004086022 -0.79037026472026994 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 1.0000000000000004 1.0000000000000007 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.45039637896994084 0.79885215619696748 0.39872087272956014 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegBp1_toe01_2_ikc_ofs" -p "rtLegBp1_ball_fkc_ofs";
	rename -uid "C019E20D-45ED-32C6-A9AF-0AAF2EED015A";
	setAttr ".t" -type "double3" 6.713995342132506 -13.659611943029638 -1.1279317498460983 ;
	setAttr ".r" -type "double3" 5.9925123858253597 -16.553631582085881 16.080168285317033 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp1_toe01_2_ikc_ofs1" -p "rtLegBp1_toe01_2_ikc_ofs";
	rename -uid "B24E150A-441D-0D52-D1BB-54B939C40A47";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "rtLegBp1_toe01_2_ikc" -p "rtLegBp1_toe01_2_ikc_ofs1";
	rename -uid "7CF60242-4540-A5F8-1165-12AB9B5DB256";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp1_toe01_2_ikcShape1" -p "rtLegBp1_toe01_2_ikc";
	rename -uid "FA534615-481E-2A85-F6E8-16AD20F4BDC7";
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
		0 -1.045378030466248e-15 7.1054273576010019e-15
		0 -1.045378030466248e-15 3.9564747367824569
		-0.45688491172512047 -1.045378030466248e-15 3.9564747367824569
		-0.45688491172512047 -1.045378030466248e-15 4.8702445602327007
		0.45688491172512047 -1.045378030466248e-15 4.8702445602327007
		0.45688491172512047 -1.045378030466248e-15 3.9564747367824569
		0 -1.045378030466248e-15 3.9564747367824569
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegBp1_toe01_2_1_ikj_ikh" -p "rtLegBp1_toe01_2_ikc";
	rename -uid "4E1829E2-4BB8-AC31-06FA-D88901FD37E0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -16.607630021104086 0.18548666298130456 3.383137799321112 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.78580928880289125 0.32009412949591881 0.52919137360065194 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegBp1_toe02_2_ikc_ofs" -p "rtLegBp1_ball_fkc_ofs";
	rename -uid "903A0580-4B2C-2F70-EC9F-D7BB47F1609C";
	setAttr ".t" -type "double3" 1.760579958086538 -2.7294220873495547 0.50238428046269945 ;
	setAttr ".r" -type "double3" -1.4790210375807666 -14.396009014659196 -3.989920170945914 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp1_toe02_2_ikc_ofs1" -p "rtLegBp1_toe02_2_ikc_ofs";
	rename -uid "FD249FDC-4690-145D-13CE-63AD48ECEEE1";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "rtLegBp1_toe02_2_ikc" -p "rtLegBp1_toe02_2_ikc_ofs1";
	rename -uid "F9F031F9-47EB-FECD-B95D-14AC35F68F58";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp1_toe02_2_ikcShape1" -p "rtLegBp1_toe02_2_ikc";
	rename -uid "EE0675CD-4F0A-00E4-6950-C594347C4305";
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
		0 -1.045378030466248e-15 7.1054273576010019e-15
		0 -1.045378030466248e-15 3.9564747367824569
		-0.45688491172512047 -1.045378030466248e-15 3.9564747367824569
		-0.45688491172512047 -1.045378030466248e-15 4.8702445602327007
		0.45688491172512047 -1.045378030466248e-15 4.8702445602327007
		0.45688491172512047 -1.045378030466248e-15 3.9564747367824569
		0 -1.045378030466248e-15 3.9564747367824569
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegBp1_toe02_2_1_ikj_ikh" -p "rtLegBp1_toe02_2_ikc";
	rename -uid "5151E42F-413F-B819-0F14-CAABD94CE9C1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -21.354398025443544 -1.1809482983818782 5.1386549900476197 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.84009172376990382 -0.079967843622976167 0.53651751102792811 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegBp1_toe03_2_ikc_ofs" -p "rtLegBp1_ball_fkc_ofs";
	rename -uid "019BE1A0-4C42-4ED9-CD55-959B019717A1";
	setAttr ".t" -type "double3" 6.5384198471224693 8.4013299444400289 -1.0701445983895894 ;
	setAttr ".r" -type "double3" -8.8439229947055757 -10.377259704720178 -26.093613308033028 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "rtLegBp1_toe03_2_ikc_ofs1" -p "rtLegBp1_toe03_2_ikc_ofs";
	rename -uid "810AAB92-4A00-9635-F98F-BFB0FFD439AD";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "rtLegBp1_toe03_2_ikc" -p "rtLegBp1_toe03_2_ikc_ofs1";
	rename -uid "66477B9B-42D6-569B-CCE1-2BB947EF1C3E";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp1_toe03_2_ikcShape1" -p "rtLegBp1_toe03_2_ikc";
	rename -uid "96569A29-4882-1A8F-04DF-599849DF5CF8";
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
		1.63016107761345e-14 7.836406166535004e-15 5.7987048195181922e-15
		1.63016107761345e-14 7.836406166535004e-15 3.9564747367824555
		-0.45688491172510415 7.836406166535004e-15 3.9564747367824555
		-0.45688491172510415 7.836406166535004e-15 4.8702445602326998
		0.45688491172513679 7.836406166535004e-15 4.8702445602326998
		0.45688491172513679 7.836406166535004e-15 3.9564747367824555
		1.63016107761345e-14 7.836406166535004e-15 3.9564747367824555
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegBp1_toe03_2_1_ikj_ikh" -p "rtLegBp1_toe03_2_ikc";
	rename -uid "5D02ADA8-44B0-D62C-9907-42A3B6068F42";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -16.852676412332599 -0.03407734526566486 2.6545138766485294 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999911 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.78279262806278704 -0.48372782867332681 0.3914627558498292 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegBp1_toe04_2_ikc_ofs" -p "rtLegBp1_ball_fkc_ofs";
	rename -uid "083C5B17-4302-644C-4012-01B56E88676C";
	setAttr ".t" -type "double3" 14.356809242267701 13.57878958216029 -3.6434061612537576 ;
	setAttr ".r" -type "double3" -21.096778294454545 -39.78757227550939 -47.115146531923692 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "rtLegBp1_toe04_2_ikc_ofs1" -p "rtLegBp1_toe04_2_ikc_ofs";
	rename -uid "E48D8EFA-484C-0C0D-3BC2-7ABB315FB818";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp1_toe04_2_ikc" -p "rtLegBp1_toe04_2_ikc_ofs1";
	rename -uid "62C611E0-4A74-E2EF-56A5-21BFD6C07904";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp1_toe04_2_ikcShape1" -p "rtLegBp1_toe04_2_ikc";
	rename -uid "3FC3D004-42DB-DDF9-2339-EEA0CC4BB96C";
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
		-1.63016107761345e-14 0 0
		-1.63016107761345e-14 0 3.9564747367824502
		-0.45688491172513679 0 3.9564747367824502
		-0.45688491172513679 0 4.8702445602326936
		0.45688491172510415 0 4.8702445602326936
		0.45688491172510415 0 3.9564747367824502
		-1.63016107761345e-14 0 3.9564747367824502
		;
	setAttr ".adot" yes;
createNode ikHandle -n "rtLegBp1_toe04_2_1_ikj_ikh" -p "rtLegBp1_toe04_2_ikc";
	rename -uid "3AA769E4-4EFC-54DB-6E59-55AC099392ED";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -12.280153525212214 -0.38632481184779977 3.8262385883713961 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.29665363349061302 -0.88471318018664535 0.35955418303901088 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegBp1_quadScap_ofs" -p "rtLegBp1_FK";
	rename -uid "01CC2E55-45FB-BCB1-EE20-029F5BA511D2";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp1_quadScap" -p "rtLegBp1_quadScap_ofs";
	rename -uid "D464C8A8-47AF-43F3-D67A-EE94A6914B87";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegBp1_hip_fkc_ofs" -p "rtLegBp1_quadScap";
	rename -uid "6DC48FE9-409A-202F-7B02-F3BC38C38A7D";
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-14 2.8421709430404007e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999989 ;
createNode transform -n "rtLegBp1_hip_fkc" -p "rtLegBp1_hip_fkc_ofs";
	rename -uid "1A37EBFD-463E-244F-853D-EEB4C4F61FAF";
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
createNode nurbsCurve -n "rtLegBp1_hip_fkcShape1" -p "rtLegBp1_hip_fkc";
	rename -uid "3E168C7B-4F81-52B0-E630-2FA0EF7E586C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-33.461293154121655 48.484264210430979 33.461293154121698
		-1.8526364013170892e-15 48.484264210430979 30.255848504351874
		33.461293154121655 48.484264210430979 33.461293154121677
		30.25584850435196 48.484264210430979 1.1748263921011506e-14
		33.461293154121655 48.484264210430979 -33.461293154121655
		3.0307490376032216e-15 48.484264210430979 -30.255848504351903
		-33.461293154121655 48.484264210430979 -33.461293154121677
		-30.25584850435196 48.484264210430979 6.0538160138941757e-15
		-33.461293154121655 48.484264210430979 33.461293154121698
		-1.8526364013170892e-15 48.484264210430979 30.255848504351874
		33.461293154121655 48.484264210430979 33.461293154121677
		;
createNode transform -n "rtLegBp1_scap_fkc_ofs" -p "rtLegBp1_hip_fkc";
	rename -uid "C2373871-4122-E7BE-C2EA-93B105E510E4";
	setAttr ".t" -type "double3" -108.40929327012165 -2.8421709430404007e-14 5.6843418860808015e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999967 ;
createNode transform -n "rtLegBp1_scap_fkc" -p "rtLegBp1_scap_fkc_ofs";
	rename -uid "50DB96B6-4A6F-92FC-EA1C-5BA1802C9254";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 0 1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtLegBp1_scap_fkcShape1" -p "rtLegBp1_scap_fkc";
	rename -uid "917C1563-4917-BF8D-747D-97B816D94707";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
		27
		145.45279263129294 6.4645685613907968 3.958406771014133e-16
		145.45279263129294 4.5711401889730627 4.5711401889730627
		145.45279263129294 3.958406771014133e-16 6.4645685613907968
		145.45279263129294 -4.5711401889730627 4.5711401889730627
		145.45279263129294 -6.4645685613907968 3.958406771014133e-16
		145.45279263129294 -4.5711401889730627 -4.5711401889730627
		145.45279263129294 -3.958406771014133e-16 -6.4645685613907968
		145.45279263129294 4.5711401889730627 -4.5711401889730627
		145.45279263129294 6.4645685613907968 -3.958406771014133e-16
		140.88165244231988 4.5711401889730627 2.7990161616184812e-16
		138.98822406990215 2.4238249440428066e-32 3.958406771014133e-16
		140.88165244231988 -4.5711401889730627 -2.7990161616184812e-16
		145.45279263129294 -6.4645685613907968 3.958406771014133e-16
		150.023932820266 -4.5711401889730627 -2.7990161616184812e-16
		151.91736119268373 -2.4238249440428066e-32 -3.958406771014133e-16
		150.023932820266 4.5711401889730627 2.7990161616184812e-16
		145.45279263129294 6.4645685613907968 3.958406771014133e-16
		145.45279263129294 4.5711401889730627 4.5711401889730627
		145.45279263129294 3.958406771014133e-16 6.4645685613907968
		140.88165244231988 2.7990161616184812e-16 4.5711401889730627
		138.98822406990215 3.958406771014133e-16 2.4238249440428066e-32
		140.88165244231988 -2.7990161616184812e-16 -4.5711401889730627
		145.45279263129294 -3.958406771014133e-16 -6.4645685613907968
		150.023932820266 -2.7990161616184812e-16 -4.5711401889730627
		151.91736119268373 -3.958406771014133e-16 -2.4238249440428066e-32
		150.023932820266 2.7990161616184812e-16 4.5711401889730627
		145.45279263129294 3.958406771014133e-16 6.4645685613907968
		;
createNode joint -n "rtLegBp1_autoAim" -p "rtLegBp1_quadScap_ofs";
	rename -uid "462EA839-4AE1-6869-1489-38B56BE4FC2B";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -5.6843418860808015e-14 8.5265128291212022e-14 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -117.72899402655763 -8.3053196708744466 6.651058256846925 ;
	setAttr ".radi" 9.6968528420861944;
createNode joint -n "rtLegBp1_autoAim_end" -p "rtLegBp1_autoAim";
	rename -uid "714AF0BF-4E40-E510-C46F-389625D39A7F";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -287.01759564646113 4.2632564145606011e-14 -1.3677947663381929e-13 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 7.5312276210480845e-31 3.1805546814635168e-15 1.3517357396219947e-14 ;
	setAttr ".radi" 9.6968528420861944;
createNode ikEffector -n "effector41" -p "rtLegBp1_autoAim";
	rename -uid "FA1BA587-4A0E-CCCF-94DC-619C79937526";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikHandle -n "rtLegBp1_legLock_ikh" -p "rtLegBp1_quadScap_ofs";
	rename -uid "F72C14E6-4B8F-28DC-BF65-CE8696AE49A9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.6843418860808015e-14 8.5265128291212022e-14 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -62.271005973442357 8.3053196708744288 -173.34894174315306 ;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode transform -n "rtLegBp1_IK" -p "rtLegBp1_ctl_data";
	rename -uid "1E1518A0-4526-7E69-6121-0DAB160C565B";
	setAttr ".t" -type "double3" 34.387288993065852 -320.60922383140547 -47.601245693640571 ;
	setAttr -cb on ".ro";
createNode joint -n "rtLegBp1_hip_ik" -p "rtLegBp1_IK";
	rename -uid "7A6B727C-44F9-403B-22ED-2DAFFE251D7F";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.0266976468698323 12.845909847021364 80.898712746857882 ;
	setAttr ".radi" 9.6968528420861944;
createNode joint -n "rtLegBp1_upr_ik" -p "rtLegBp1_hip_ik";
	rename -uid "AEAD0768-4923-B5CD-3796-9B908372B7CD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -108.40929327012182 -5.6843418860808015e-14 4.2632564145606011e-14 ;
	setAttr ".r" -type "double3" -8.4800425828478969e-07 1.4489019235975537e-05 -9.908713066257723e-08 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 179.48854482226253 -19.863561633621387 10.785157071828166 ;
	setAttr ".radi" 9.6968528420861944;
createNode joint -n "rtLegBp1_lwr_ik" -p "rtLegBp1_upr_ik";
	rename -uid "717CB414-4252-3F20-B1E7-E8BBE6F7897E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -89.28045402603351 -2.1316282072803006e-14 -1.8474111129762605e-13 ;
	setAttr ".r" -type "double3" 2.2324645888451005e-13 -3.0186282868605728e-05 -3.3307425137620467e-13 ;
	setAttr -cb on ".ro" 2;
	setAttr ".jo" -type "double3" 0 -13.029425341035457 0 ;
	setAttr ".pa" -type "double3" 0 -45 0 ;
	setAttr ".radi" 9.6968528420861944;
createNode joint -n "rtLegBp1_palm_ik" -p "rtLegBp1_lwr_ik";
	rename -uid "84D03386-43F0-8D16-6044-6D927BEFA78F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -93.469915847568672 5.8264504332328215e-13 8.5265128291212022e-14 ;
	setAttr ".r" -type "double3" 5.6537440676070582e-07 -1.8644741301021869e-05 -1.6532240834831146e-08 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 179.2726877997525 6.0005785473742641 1.5879128728914029 ;
	setAttr ".radi" 9.6968528420861944;
createNode joint -n "rtLegBp1_ball_ik" -p "rtLegBp1_palm_ik";
	rename -uid "0956D2E0-46D8-1D62-079C-07BE0A343596";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -26.310713056567902 4.5474735088646412e-13 15.314096789397709 ;
	setAttr ".r" -type "double3" 3.6762929491397962e-07 -4.3720100963093373e-06 7.5274336375704118e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 71.782109197951513 0 ;
	setAttr ".radi" 9.6968528420861944;
createNode joint -n "rtLegBp1_tip_ik" -p "rtLegBp1_ball_ik";
	rename -uid "0E214797-4909-F0CA-3EA3-D78E410CC4B0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -18.467411063857654 1.4210854715202004e-14 2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 18.21789080204849 0 ;
	setAttr ".radi" 9.6968528420861944;
createNode ikEffector -n "effector39" -p "rtLegBp1_ball_ik";
	rename -uid "FE26ABF1-4FEA-6596-09EE-C2ADCEAC4C03";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector38" -p "rtLegBp1_palm_ik";
	rename -uid "73DE49C7-4609-1E56-A9E9-E186C1DE2074";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode ikEffector -n "effector37" -p "rtLegBp1_lwr_ik";
	rename -uid "D586738E-4FE5-CDA3-6C0D-4A8A61AEC309";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "rtLegBp1_softJ" -p "rtLegBp1_hip_ik";
	rename -uid "D0AA0C96-4153-6491-2C2D-ADA09A329F18";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -108.40929327012182 -5.6843418860808015e-14 7.1054273576010019e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 12.408340225590452 -13.199110761672173 10.724188256596728 ;
createNode joint -n "rtLegBp1_softJ_end" -p "rtLegBp1_softJ";
	rename -uid "BFB9929C-41FC-8D98-1B07-FA83F700EDB9";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" -181.5709228515625 -2.8421709430404007e-14 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 7.4346734207782372e-31 3.1805546814635168e-15 1.3666445896913548e-14 ;
createNode ikEffector -n "effector40" -p "rtLegBp1_softJ";
	rename -uid "A7D2B252-4C88-3AC4-0DC1-9DBD15476696";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode joint -n "rtLegBp1_pvChainJ" -p "rtLegBp1_hip_ik";
	rename -uid "3E524982-4743-63F2-1528-8C863445C242";
	setAttr ".ove" yes;
	setAttr ".ovc" 5;
	setAttr ".t" -type "double3" -108.40929327012188 -1.4210854715202004e-14 9.9475983006414026e-14 ;
	setAttr ".r" -type "double3" -2.7690359569862114e-15 -1.1769330983450163e-06 2.6960593481502554e-07 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 12.408340453703914 -13.199110768291419 10.724188256655388 ;
createNode joint -n "rtLegBp1_pvChainJ_end" -p "rtLegBp1_pvChainJ";
	rename -uid "832ED987-45AB-8358-928B-FA99AA13F904";
	setAttr ".ove" yes;
	setAttr ".ovc" 5;
	setAttr ".t" -type "double3" -181.5709225117715 -1.4210854715202004e-14 -5.6843418860808015e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 7.4346734207782372e-31 3.1805546814635168e-15 1.3666445896913548e-14 ;
createNode ikEffector -n "effector48" -p "rtLegBp1_pvChainJ";
	rename -uid "409CA67E-4686-F568-C245-8FBEAC64E5C7";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegBp1_pvc_SPACE_1_ofs" -p "rtLegBp1_pvChainJ";
	rename -uid "62614198-4735-C699-36B0-63B5D294CD3F";
	setAttr ".t" -type "double3" -89.50334673492236 -20.357830087961005 -88.869717833993434 ;
	setAttr ".r" -type "double3" -179.77615024938601 12.913576721014874 88.379873956667467 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegBp1_pvc_SPACE_1" -p "rtLegBp1_pvc_SPACE_1_ofs";
	rename -uid "3EAE2863-4B18-081E-CCAE-C69134B07EB5";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 0 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000007 ;
createNode transform -n "rtLegBp1_ikCstG" -p "rtLegBp1_IK";
	rename -uid "1F2B9B8F-4C86-CA8F-785D-569B1F2941EC";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp1_heelRollG" -p "rtLegBp1_ikCstG";
	rename -uid "2C9AA68C-47EA-BB84-6BF9-8DA51D0DA9E2";
	setAttr ".t" -type "double3" 2.8421709430404007e-14 -34.745591855498688 -7.7993538431150711 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp1_heelRollG_ctl" -p "rtLegBp1_heelRollG";
	rename -uid "1A8D7993-436E-AE92-292E-2A9354570905";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegBp1_toeRollG" -p "rtLegBp1_heelRollG_ctl";
	rename -uid "15249CD9-442F-603B-EC02-88A5659174E9";
	setAttr ".t" -type "double3" 0 0 40.617758944204851 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp1_toeRollG_ctl" -p "rtLegBp1_toeRollG";
	rename -uid "55B1175F-4273-3E07-9150-CABFE644746F";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegBp1_footRollG" -p "rtLegBp1_toeRollG_ctl";
	rename -uid "5F9F9453-4AF8-944F-29DD-009E255AB0B2";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp1_outRollG" -p "rtLegBp1_footRollG";
	rename -uid "EC91B6C9-4827-AB91-818F-EA95F504E168";
	setAttr ".t" -type "double3" -21.536899366703132 0 -30.800740883833072 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp1_outRollG_ctl" -p "rtLegBp1_outRollG";
	rename -uid "3276480C-4725-E12C-9A02-66BD0EB87292";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegBp1_inRollG" -p "rtLegBp1_outRollG_ctl";
	rename -uid "94E75B6F-442D-775A-336A-E9AFC7AA8451";
	setAttr ".t" -type "double3" 48.173748721715398 0 -1.2823991420481775 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp1_inRollG_ctl" -p "rtLegBp1_inRollG";
	rename -uid "BBE9D36E-47AE-B2A5-B375-D59D4276F754";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "rtLegBp1_ballRollG" -p "rtLegBp1_inRollG_ctl";
	rename -uid "7CBDE4E6-4CD5-3096-A611-6D9F5C2021E6";
	setAttr ".t" -type "double3" -26.636849355012913 8.4348787989307823 14.578831714189178 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp1_ballG_ikc" -p "rtLegBp1_ballRollG";
	rename -uid "D4CC12A5-437A-0EAE-B8E2-749752FB626A";
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
createNode transform -n "rtLegBp1_dist_loc1" -p "rtLegBp1_ballG_ikc";
	rename -uid "AE902A19-4547-E063-DE8F-EEBA84A5CA3D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.3238303482648917e-13 26.310713056567906 -15.314096789397723 ;
	setAttr -cb on ".ro";
createNode locator -n "rtLegBp1_dist_loc1Shape" -p "rtLegBp1_dist_loc1";
	rename -uid "9EF526A6-4124-7ED9-916F-508ABAC469CF";
	setAttr -k off ".v";
createNode transform -n "rtLegBp1_softJ_posGrp" -p "rtLegBp1_ballG_ikc";
	rename -uid "C3D70837-4E48-7AB8-13A0-DEB46D8F7726";
	setAttr ".t" -type "double3" 3.869641318487993e-08 26.310713377002642 -15.31409374120723 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp1_1_ikh_ofs" -p "rtLegBp1_ballG_ikc";
	rename -uid "A1750AC7-40DC-0216-6794-E5AAABE60EE8";
	setAttr -cb on ".ro";
createNode ikHandle -n "rtLegBp1_1_ikh" -p "rtLegBp1_1_ikh_ofs";
	rename -uid "8C4DD188-42E8-8B88-8182-2BB47EA72F73";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode nurbsCurve -n "stickCShape4" -p "rtLegBp1_ballG_ikc";
	rename -uid "018156A8-4369-0087-0148-D98F5B9035E6";
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
		-3.0029122883784496e-16 43.580136174099941 2.6508878837199339e-15
		-2.9005904441302684e-16 43.747241019963759 1.2692816777765847
		-2.6005983041553703e-16 44.237165548230969 2.4520638255063618
		-2.1233794895241556e-16 45.016522697740342 3.4677418980089478
		-1.5014561441892248e-16 46.032200192265456 4.2470994328366301
		-7.7721084765879714e-17 47.214982532654389 4.7370235757855328
		9.1956879264391119e-32 48.484264210430979 4.9041276510127236
		7.7721084765879714e-17 49.753545888207562 4.7370235757855328
		1.5014561441892248e-16 50.936328228596494 4.2470994328366301
		2.1233794895241556e-16 51.952005723121609 3.4677418980089478
		2.6005983041553703e-16 52.73136595517748 2.4520638255063618
		2.9005904441302684e-16 53.221287400898198 1.2692816777765847
		3.0029122883784496e-16 53.38839224676201 1.4491299668927376e-15
		2.9005904441302684e-16 53.221287400898198 -1.2692816777765847
		2.6005983041553703e-16 52.73136595517748 -2.4520638255063618
		2.1233794895241556e-16 51.952005723121609 -3.4677418980089478
		1.5014561441892248e-16 50.936328228596494 -4.2470994328366301
		7.7721084765879714e-17 49.753545888207562 -4.7370235757855328
		-2.2466816474190279e-31 48.484264210430979 -4.9041276510127236
		-7.7721084765879714e-17 47.214982532654389 -4.7370235757855328
		-1.5014561441892248e-16 46.032200192265456 -4.2470994328366301
		-2.1233794895241556e-16 45.016522697740342 -3.4677418980089478
		-2.6005983041553703e-16 44.237165548230969 -2.4520638255063618
		-2.9005904441302684e-16 43.747241019963759 -1.2692816777765847
		-3.0029122883784496e-16 43.580136174099941 2.6508878837199339e-15
		0 0 0
		;
createNode transform -n "rtLegBp1_toe_wiggle_grp" -p "rtLegBp1_inRollG_ctl";
	rename -uid "13D25B97-4755-E781-20A5-35AF8F6DA6DB";
	setAttr ".t" -type "double3" -26.636849355012913 8.4348787989307823 14.578831714189178 ;
	setAttr ".r" -type "double3" -1.0173492826185171e-14 71.782109197951513 89.999999999999886 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode ikHandle -n "rtLegBp1_2_ikh" -p "rtLegBp1_toe_wiggle_grp";
	rename -uid "0187CF46-4AB1-EA9F-2FAF-138CCF0F9F29";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.4574601812664696e-06 -3.8303006988371635e-08 2.0037395174199446e-06 ;
	setAttr ".r" -type "double3" 0 -71.782107319948864 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.94987447757332755 -7.7398343387305668e-17 0.31263153528522741 ;
	setAttr ".roc" yes;
createNode ikHandle -n "rtLegBp1_3_ikh" -p "rtLegBp1_toe_wiggle_grp";
	rename -uid "015369E5-4745-B1A5-5463-18B988DC1A3C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -18.467414521317821 -2.5400197500857757e-08 2.6090519611443597e-06 ;
	setAttr ".r" -type "double3" 0 1.8780026577691121e-06 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.94987447757332755 -7.7398343387305668e-17 0.31263153528522741 ;
	setAttr ".roc" yes;
createNode nurbsCurve -n "diamondShape14" -p "rtLegBp1_inRollG_ctl";
	rename -uid "FDACED26-48F7-DF3F-1F02-E8B6736C26FC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.9999758986802778
		-1.9999758986802778 0 0
		0 0 -1.9999758986802778
		1.9999758986802778 0 0
		0 0 1.9999758986802778
		0 1.9999758986802778 0
		1.9999758986802778 0 0
		0 0 -1.9999758986802778
		0 1.9999758986802778 0
		-1.9999758986802778 0 0
		0 -1.9999758986802778 0
		1.9999758986802778 0 0
		0 0 1.9999758986802778
		0 -1.9999758986802778 0
		0 0 -1.9999758986802778
		;
createNode nurbsCurve -n "diamondShape15" -p "rtLegBp1_outRollG_ctl";
	rename -uid "FCA2AA75-41D2-A7EB-E895-409B08E59CFD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.9999758986802778
		-1.9999758986802778 0 0
		0 0 -1.9999758986802778
		1.9999758986802778 0 0
		0 0 1.9999758986802778
		0 1.9999758986802778 0
		1.9999758986802778 0 0
		0 0 -1.9999758986802778
		0 1.9999758986802778 0
		-1.9999758986802778 0 0
		0 -1.9999758986802778 0
		1.9999758986802778 0 0
		0 0 1.9999758986802778
		0 -1.9999758986802778 0
		0 0 -1.9999758986802778
		;
createNode nurbsCurve -n "diamondShape13" -p "rtLegBp1_toeRollG_ctl";
	rename -uid "370F409F-49B6-9D6F-24DA-A2B772AFE74A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.9999758986802778
		-1.9999758986802778 0 0
		0 0 -1.9999758986802778
		1.9999758986802778 0 0
		0 0 1.9999758986802778
		0 1.9999758986802778 0
		1.9999758986802778 0 0
		0 0 -1.9999758986802778
		0 1.9999758986802778 0
		-1.9999758986802778 0 0
		0 -1.9999758986802778 0
		1.9999758986802778 0 0
		0 0 1.9999758986802778
		0 -1.9999758986802778 0
		0 0 -1.9999758986802778
		;
createNode nurbsCurve -n "diamondShape16" -p "rtLegBp1_heelRollG_ctl";
	rename -uid "FFB4ED87-4E8D-70BF-2103-12A384425A39";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 1.9999758986802778
		-1.9999758986802778 0 0
		0 0 -1.9999758986802778
		1.9999758986802778 0 0
		0 0 1.9999758986802778
		0 1.9999758986802778 0
		1.9999758986802778 0 0
		0 0 -1.9999758986802778
		0 1.9999758986802778 0
		-1.9999758986802778 0 0
		0 -1.9999758986802778 0
		1.9999758986802778 0 0
		0 0 1.9999758986802778
		0 -1.9999758986802778 0
		0 0 -1.9999758986802778
		;
createNode transform -n "rtLegBp1_line_28" -p "rtLegBp1_IK";
	rename -uid "85CD9599-4B7E-97F1-D840-FD8DEB493805";
	setAttr -cb on ".ro";
	setAttr ".it" no;
createNode nurbsCurve -n "curveShape4" -p "rtLegBp1_line_28";
	rename -uid "D9875986-46C0-0B3C-7C52-A48B39266983";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-48.834889884031007 127.66767647088608 60.745467591185943
		-50.086173291663521 127.3519407999471 -20.058274603532144
		;
createNode transform -n "rtLegBp1_ikc_ofs" -p "rtLegBp1_IK";
	rename -uid "679E0908-4897-5DEA-8998-4FB0AC7E364D";
	setAttr ".t" -type "double3" -46.120991069505116 34.745591855498688 70.479277947315097 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp1_ikc_ofs1" -p "rtLegBp1_ikc_ofs";
	rename -uid "4011E087-44C7-F2C1-0041-91BE1D594CCB";
createNode transform -n "rtLegBp1_ikc" -p "rtLegBp1_ikc_ofs1";
	rename -uid "C3518117-4C81-D9B8-6140-4F8B85BC5CF8";
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
	setAttr -k on ".legLock";
	setAttr -k on ".legLockLen";
	setAttr -av -k on ".palmScale";
	setAttr -l on -k on ".wsMirror";
	setAttr -cb on ".extraCtl";
	setAttr -k on ".space";
createNode nurbsCurve -n "rtLegBp1_ikcShape1" -p "rtLegBp1_ikc";
	rename -uid "E02E9DF5-4496-204C-5C3D-08970B7F308F";
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
		32.322842806953958 -34.745591855498681 32.322842806953993
		31.701768445847875 -34.745591855498681 38.628716618639331
		29.862412901924426 -34.745591855498681 44.692259236116385
		26.875461577214121 -34.745591855498681 50.280452117069373
		22.855701336023966 -34.745591855498681 55.178544142977941
		17.957609310115384 -34.745591855498681 59.198304384168118
		12.369416429162392 -34.745591855498681 62.185255708878415
		6.3058738116853403 -34.745591855498681 64.024611252801876
		-3.7734815144249579e-15 -34.745591855498681 64.645685613907943
		-6.3058738116853474 -34.745591855498681 64.024611252801876
		-12.369416429162399 -34.745591855498681 62.185255708878415
		-17.957609310115394 -34.745591855498681 59.198304384168118
		-22.85570133602398 -34.745591855498681 55.178544142977955
		-26.875461577214136 -34.745591855498681 50.28045211706938
		-29.862412901924444 -34.745591855498681 44.692259236116385
		-31.701768445847897 -34.745591855498681 38.628716618639331
		-32.322842806953979 -34.745591855498681 32.322842806953979
		-31.701768255220212 -25.066167126493504 32.322842806953986
		-29.862412757582518 -15.641076404958564 32.322842806953986
		-26.875462187874199 -7.4795241152639598 32.322842806953986
		-22.855701330183631 -0.98523080958813836 32.322842806953986
		-17.957608919903162 3.9051850819544285 32.322842806953986
		-12.369416035346855 6.8921356516627483 32.322842806953986
		-6.3058736730205789 8.7314911493004459 32.322842806953986
		1.979203299949214e-15 9.3525657010342087 32.322842806953986
		6.3058736730205789 8.7314911493004459 32.322842806953986
		12.369416035346855 6.8921356516627483 32.322842806953986
		17.957608919903162 3.9051850819544285 32.322842806953986
		22.855701330183631 -0.98523080958813836 32.322842806953986
		26.875462187874199 -7.4795241152639598 32.322842806953986
		29.862412757582518 -15.641076404958564 32.322842806953986
		31.701768255220212 -25.066167126493504 32.322842806953986
		32.322842806953986 -34.745591855498681 32.322842806953986
		32.322842806953986 -34.745591855498688 -30.38347223853674
		32.322842806953986 -32.806221287081442 -32.322842806953986
		31.701768255220212 -25.066167126493504 -32.322842806953986
		29.862412757582518 -15.641076404958564 -32.322842806953986
		26.875462187874199 -7.4795241152639598 -32.322842806953986
		22.855701330183631 -0.98523080958813836 -32.322842806953986
		17.957608919903162 3.9051850819544285 -32.322842806953986
		12.369416035346855 6.8921356516627483 -32.322842806953986
		6.3058736730205789 8.7314911493004459 -32.322842806953986
		1.979203299949214e-15 9.3525657010342087 -32.322842806953986
		-6.3058736730205789 8.7314911493004459 -32.322842806953986
		-12.369416035346855 6.8921356516627483 -32.322842806953986
		-17.957608919903162 3.9051850819544285 -32.322842806953986
		-22.855701330183631 -0.98523080958813836 -32.322842806953986
		-26.875462187874199 -7.4795241152639598 -32.322842806953986
		-29.862412757582518 -15.641076404958564 -32.322842806953986
		-31.701768255220212 -25.066167126493504 -32.322842806953986
		-32.322842806953986 -32.806221287081442 -32.322842806953986
		-32.322842806953986 -34.745591855498674 -30.38347223853674
		-32.322842806953986 -34.745591855498681 32.322842806953986
		;
createNode transform -n "rtLegBp1_ikc_gmb" -p "rtLegBp1_ikc";
	rename -uid "F763FF72-4915-CBC4-B45E-FA890EAB39D8";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "wsMirror" -ln "wsMirror" -at "double";
	setAttr -cb on ".ro" 2;
	setAttr -l on -k on ".______________";
	setAttr -cb on ".fkIkBlend";
	setAttr -l on -k on ".wsMirror";
createNode nurbsCurve -n "rtLegBp1_ikc_gmbShape" -p "rtLegBp1_ikc_gmb";
	rename -uid "24134EAE-4E68-EBDC-2BC2-3D886CFD8341";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 17;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".tw" yes;
	setAttr -s 53 ".cp[0:52]" -type "double3" -6.4645685613907915 4.4098159266417269 
		-3.2322843969620862 -6.3403536891695751 4.4098159266417269 -4.4934591592991566 -5.9724825803848844 
		4.4098159266417269 -5.7061676827945647 -5.3750923154428243 4.4098159266417269 -6.823806258985158 
		-4.5711402672047932 4.4098159266417269 -7.8034246641668759 -3.5915218620230771 4.4098159266417269 
		-8.607376712404907 -2.4738832858324802 4.4098159266417269 -9.2047669773469707 -1.2611747623370695 
		4.4098159266417269 -9.5726380861316613 -6.6638916863520863e-16 4.4098159266417269 
		-9.6968529583528706 1.2611747623370677 4.4098159266417269 -9.5726380861316613 2.4738832858324766 
		4.4098159266417269 -9.2047669773469707 3.5915218620230771 4.4098159266417269 -8.607376712404907 
		4.5711402672047967 4.4098159266417269 -7.8034246641668759 5.3750923154428243 4.4098159266417269 
		-6.823806258985158 5.972482580384888 4.4098159266417269 -5.7061676827945647 6.3403536891695786 
		4.4098159266417269 -4.4934591592991566 6.4645685613907951 4.4098159266417269 -3.2322843969620862 
		6.3403536510440404 2.4739309808406915 -3.2322843969620862 5.972482551516503 0.58891283653370508 
		-3.2322843969620862 5.375092437574839 -1.0433976214052159 -3.2322843969620862 4.5711402660367249 
		-2.3422562825403799 -3.2322843969620862 3.5915217839806299 -3.320339460848893 -3.2322843969620862 
		2.4738832070693686 -3.9177295747905569 -3.2322843969620862 1.261174734604114 -4.2856006743180961 
		-3.2322843969620862 -1.8169261315100427e-15 -4.409815584664849 -3.2322843969620862 
		-1.2611747346041176 -4.2856006743180961 -3.2322843969620862 -2.4738832070693721 -3.9177295747905569 
		-3.2322843969620862 -3.5915217839806335 -3.320339460848893 -3.2322843969620862 -4.5711402660367249 
		-2.3422562825403799 -3.2322843969620862 -5.375092437574839 -1.0433976214052159 -3.2322843969620862 
		-5.972482551516503 0.58891283653370508 -3.2322843969620862 -6.3403536510440404 2.4739309808406915 
		-3.2322843969620862 -6.4645685613907951 4.4098159266417269 -3.2322843969620862 -6.4645685613907951 
		4.4098159266417269 9.3089786121360589 -6.4645685613907951 4.021941812958282 9.6968527258195039 
		-6.3403536510440404 2.4739309808406915 9.6968527258195039 -5.972482551516503 0.58891283653370508 
		9.6968527258195039 -5.375092437574839 -1.0433976214052159 9.6968527258195039 -4.5711402660367249 
		-2.3422562825403799 9.6968527258195039 -3.5915217839806335 -3.320339460848893 9.6968527258195039 
		-2.4738832070693721 -3.9177295747905569 9.6968527258195039 -1.2611747346041176 -4.2856006743180961 
		9.6968527258195039 -1.8169261315100427e-15 -4.409815584664849 9.6968527258195039 
		1.261174734604114 -4.2856006743180961 9.6968527258195039 2.4738832070693686 -3.9177295747905569 
		9.6968527258195039 3.5915217839806299 -3.320339460848893 9.6968527258195039 4.5711402660367249 
		-2.3422562825403799 9.6968527258195039 5.375092437574839 -1.0433976214052159 9.6968527258195039 
		5.972482551516503 0.58891283653370508 9.6968527258195039 6.3403536510440404 2.4739309808406915 
		9.6968527258195039 6.4645685613907951 4.021941812958282 9.6968527258195039 6.4645685613907951 
		4.4098159266417269 9.3089786121360589 6.4645685613907951 4.4098159266417269 -3.2322843969620862;
createNode nurbsCurve -n "rtLegBp1_ikc_gmbShapeOrig" -p "rtLegBp1_ikc_gmb";
	rename -uid "D448E0C2-415E-976E-2E95-698C61F1E5C7";
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
		32.322842806953958 -34.745591855498681 32.322842806953993
		31.701768445847875 -34.745591855498681 38.628716618639331
		29.862412901924426 -34.745591855498681 44.692259236116385
		26.875461577214121 -34.745591855498681 50.280452117069373
		22.855701336023966 -34.745591855498681 55.178544142977941
		17.957609310115384 -34.745591855498681 59.198304384168118
		12.369416429162392 -34.745591855498681 62.185255708878415
		6.3058738116853403 -34.745591855498681 64.024611252801876
		-3.7734815144249579e-15 -34.745591855498681 64.645685613907943
		-6.3058738116853474 -34.745591855498681 64.024611252801876
		-12.369416429162399 -34.745591855498681 62.185255708878415
		-17.957609310115394 -34.745591855498681 59.198304384168118
		-22.85570133602398 -34.745591855498681 55.178544142977955
		-26.875461577214136 -34.745591855498681 50.28045211706938
		-29.862412901924444 -34.745591855498681 44.692259236116385
		-31.701768445847897 -34.745591855498681 38.628716618639331
		-32.322842806953979 -34.745591855498681 32.322842806953979
		-31.701768255220212 -25.066167126493504 32.322842806953986
		-29.862412757582518 -15.641076404958564 32.322842806953986
		-26.875462187874199 -7.4795241152639598 32.322842806953986
		-22.855701330183631 -0.98523080958813836 32.322842806953986
		-17.957608919903162 3.9051850819544285 32.322842806953986
		-12.369416035346855 6.8921356516627483 32.322842806953986
		-6.3058736730205789 8.7314911493004459 32.322842806953986
		1.979203299949214e-15 9.3525657010342087 32.322842806953986
		6.3058736730205789 8.7314911493004459 32.322842806953986
		12.369416035346855 6.8921356516627483 32.322842806953986
		17.957608919903162 3.9051850819544285 32.322842806953986
		22.855701330183631 -0.98523080958813836 32.322842806953986
		26.875462187874199 -7.4795241152639598 32.322842806953986
		29.862412757582518 -15.641076404958564 32.322842806953986
		31.701768255220212 -25.066167126493504 32.322842806953986
		32.322842806953986 -34.745591855498681 32.322842806953986
		32.322842806953986 -34.745591855498688 -30.38347223853674
		32.322842806953986 -32.806221287081442 -32.322842806953986
		31.701768255220212 -25.066167126493504 -32.322842806953986
		29.862412757582518 -15.641076404958564 -32.322842806953986
		26.875462187874199 -7.4795241152639598 -32.322842806953986
		22.855701330183631 -0.98523080958813836 -32.322842806953986
		17.957608919903162 3.9051850819544285 -32.322842806953986
		12.369416035346855 6.8921356516627483 -32.322842806953986
		6.3058736730205789 8.7314911493004459 -32.322842806953986
		1.979203299949214e-15 9.3525657010342087 -32.322842806953986
		-6.3058736730205789 8.7314911493004459 -32.322842806953986
		-12.369416035346855 6.8921356516627483 -32.322842806953986
		-17.957608919903162 3.9051850819544285 -32.322842806953986
		-22.855701330183631 -0.98523080958813836 -32.322842806953986
		-26.875462187874199 -7.4795241152639598 -32.322842806953986
		-29.862412757582518 -15.641076404958564 -32.322842806953986
		-31.701768255220212 -25.066167126493504 -32.322842806953986
		-32.322842806953986 -32.806221287081442 -32.322842806953986
		-32.322842806953986 -34.745591855498674 -30.38347223853674
		-32.322842806953986 -34.745591855498681 32.322842806953986
		

		"gtag" 1
		"cluster1" 1 "cv[0:52]";
createNode transform -n "rtLegBp1_smart_ctl_ofs" -p "rtLegBp1_ikc_gmb";
	rename -uid "20E9502C-4A34-CF0B-DDDB-71A50B45F25B";
	setAttr ".t" -type "double3" 2.8421709430404007e-14 -34.745591855498688 32.81840510108978 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp1_smart_ctl" -p "rtLegBp1_smart_ctl_ofs";
	rename -uid "C74986CD-460C-A74F-95F1-8AB8AB94A0A8";
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
createNode nurbsCurve -n "rtLegBp1_smart_ctlShape1" -p "rtLegBp1_smart_ctl";
	rename -uid "33762281-437A-D48A-71FD-5B808F5867C5";
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
		8.3653232885304138 1.7169844747292195e-16 -8.3653232885304245
		4.631591003292723e-16 2.4281827305461096e-16 -7.5639621260879686
		-8.3653232885304138 1.7169844747292185e-16 -8.3653232885304192
		-7.5639621260879899 -9.910206259254557e-32 -2.9370659802528766e-15
		-8.3653232885304138 -1.716984474729219e-16 8.3653232885304138
		-7.5768725940080541e-16 -2.4281827305461121e-16 7.5639621260879757
		8.3653232885304138 -1.7169844747292185e-16 8.3653232885304192
		7.5639621260879899 -1.4480284690889975e-31 -1.5134540034735439e-15
		8.3653232885304138 1.7169844747292195e-16 -8.3653232885304245
		4.631591003292723e-16 2.4281827305461096e-16 -7.5639621260879686
		-8.3653232885304138 1.7169844747292185e-16 -8.3653232885304192
		;
createNode ikHandle -n "rtLegBp1_autoAimJ_ikh" -p "rtLegBp1_ikc";
	rename -uid "B35DBA3A-4B93-359D-03E7-50B1A6D9BFB6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -1.4210854715202004e-14 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -117.24625368272667 4.5718686312300383 87.649528129137536 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0 0 0 ;
	setAttr ".roc" yes;
createNode joint -n "rtLegBp1_legLock" -p "rtLegBp1_ikc";
	rename -uid "FF44C430-429B-56B4-C951-F4AB1B08C3D8";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" 2.5444437451708134e-14 7.5588509433754772e-30 -3.1495212264064463e-30 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -62.75374631727334 -4.5718686312300578 -92.350471870862478 ;
	setAttr ".radi" 6.4645685613907968;
createNode joint -n "rtLegBp1_legLock_end" -p "rtLegBp1_legLock";
	rename -uid "E1E8B37C-46B1-23C7-9615-E59103336609";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -287.01759564646119 -8.5265128291212022e-14 3.5527136788005009e-14 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 6.4645685613907968;
createNode ikEffector -n "effector42" -p "rtLegBp1_legLock";
	rename -uid "87FFAE97-453E-1CFE-3FAB-CAA54DB47D8D";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "rtLegBp1_pvc_ofs" -p "rtLegBp1_IK";
	rename -uid "DBC21170-4FA6-7F24-532E-6295E20DC40B";
	setAttr ".t" -type "double3" -50.086173291663513 127.35194079994709 -20.058274603532141 ;
	setAttr ".r" -type "double3" 0.22384975061399856 -179.11281914751601 0 ;
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp1_pvc_ofs1" -p "rtLegBp1_pvc_ofs";
	rename -uid "F9247BF5-4D3F-5FD0-296A-06915B26A261";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegBp1_pvc" -p "rtLegBp1_pvc_ofs1";
	rename -uid "996697DB-4381-2CEE-81E3-2CBF97550A42";
	addAttr -ci true -sn "fkPin" -ln "fkPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "pvPin" -ln "pvPin" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "______________" -ln "______________" -min 0 -max 0 -en " " 
		-at "enum";
	addAttr -uap -ci true -k true -sn "fkIkBlend" -ln "fkIkBlend" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "spaceType" -ln "spaceType" -at "double";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 2 -en "leg:master:COG" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 4.9737991503207013e-14 5.6843418860808015e-14 -4.6185277824406512e-14 ;
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
createNode nurbsCurve -n "rtLegBp1_pvcShape1" -p "rtLegBp1_pvc";
	rename -uid "D4C0D6FD-4942-7382-003C-3E8237D6FE93";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0 7.9999035947211112
		-7.9999035947211112 0 0
		0 0 -7.9999035947211112
		7.9999035947211112 0 0
		0 0 7.9999035947211112
		0 7.9999035947211112 0
		7.9999035947211112 0 0
		0 0 -7.9999035947211112
		0 7.9999035947211112 0
		-7.9999035947211112 0 0
		0 -7.9999035947211112 0
		7.9999035947211112 0 0
		0 0 7.9999035947211112
		0 -7.9999035947211112 0
		0 0 -7.9999035947211112
		;
createNode transform -n "rtLegBp1_pin_fkc_ofs" -p "rtLegBp1_pvc";
	rename -uid "A8C74420-4779-0727-0ECD-D1B7A9FF8457";
	setAttr ".t" -type "double3" -2.5628588928061689 -92.959561274899073 -90.22559879905009 ;
	setAttr ".r" -type "double3" 179.11281914751601 0.22384975061400217 90.000000000000227 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "rtLegBp1_pin_fkc" -p "rtLegBp1_pin_fkc_ofs";
	rename -uid "069CCC0A-4178-1375-3900-9D8DFAA5C359";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 2;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "rtLegBp1_pin_fkcShape1" -p "rtLegBp1_pin_fkc";
	rename -uid "84A467D7-4483-8F2A-7D2E-7985EFE9E80D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.3653554945488449e-14 -33.461293154121662 -33.461293154121698
		2.3938034247815205e-14 -8.9580637589180918e-15 -30.255848504351874
		2.3653554945488446e-14 33.461293154121648 -33.461293154121677
		2.296676115559676e-14 30.255848504351952 -1.1748263921011506e-14
		2.2279967365705071e-14 33.461293154121648 33.461293154121655
		2.1995488063378315e-14 -4.0746783199977806e-15 30.255848504351903
		2.2279967365705071e-14 -33.461293154121662 33.461293154121677
		2.296676115559676e-14 -30.255848504351967 -6.0538160138941757e-15
		2.3653554945488449e-14 -33.461293154121662 -33.461293154121698
		2.3938034247815205e-14 -8.9580637589180918e-15 -30.255848504351874
		2.3653554945488446e-14 33.461293154121648 -33.461293154121677
		;
createNode transform -n "rtLegBp1_BF" -p "rtLegBp1_ctl_data";
	rename -uid "5780B530-4E99-A264-F0FB-C5B1674ED21D";
	setAttr ".t" -type "double3" 34.387288993065852 -320.60922383140547 -47.601245693640571 ;
	setAttr -cb on ".ro";
createNode joint -n "rtLegBp1_hip_bf" -p "rtLegBp1_BF";
	rename -uid "82AD9068-4EBE-53DE-9185-0FA68C6D3079";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 3;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -1.0266976468698323 12.845909847021364 80.898712746857882 ;
	setAttr ".radi" 12.929137122781594;
createNode joint -n "rtLegBp1_upr_bf" -p "rtLegBp1_hip_bf";
	rename -uid "2C02C71A-43DD-5FCC-8B8D-D38E6F60BFD7";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 179.48854482226253 -19.863561633621387 10.785157071828166 ;
	setAttr ".radi" 12.929137122781594;
createNode joint -n "rtLegBp1_lwr_bf" -p "rtLegBp1_upr_bf";
	rename -uid "BFD5EEBD-437F-36F1-E415-3797434329D1";
	setAttr ".v" no;
	setAttr -cb on ".ro" 2;
	setAttr ".jo" -type "double3" 0 -13.029425341035457 0 ;
	setAttr ".pa" -type "double3" 0 -45 0 ;
	setAttr ".radi" 12.929137122781594;
createNode joint -n "rtLegBp1_palm_bf" -p "rtLegBp1_lwr_bf";
	rename -uid "FF9654C0-435C-B065-C189-69914BC0B8EA";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 179.2726877997525 6.0005785473742641 1.5879128728914029 ;
	setAttr ".radi" 12.929137122781594;
createNode joint -n "rtLegBp1_ball_bf" -p "rtLegBp1_palm_bf";
	rename -uid "2EED38AC-4345-EACE-E08D-0DB9EF634F6D";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 71.782109197951513 0 ;
	setAttr ".radi" 12.929137122781594;
createNode joint -n "rtLegBp1_tip_bf" -p "rtLegBp1_ball_bf";
	rename -uid "31F6B068-40DF-2D80-4AA7-C38B7AF903A0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -18.467411063857654 1.4210854715202004e-14 2.1316282072803006e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 0 18.21789080204849 0 ;
	setAttr ".radi" 12.929137122781594;
createNode transform -n "rtLegBp1_setting" -p "rtLegBp1_ctl_data";
	rename -uid "AE9EA55F-443B-521D-37C7-B1B9D53046E2";
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
createNode nurbsCurve -n "rtLegBp1_settingShape1" -p "rtLegBp1_setting";
	rename -uid "FF4E147A-4B23-3FC2-022D-FDA7F03C82B4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		16.161421403476993 16.161421403476993 -4.0233828265319492e-16
		15.850884127610106 16.161421403476993 3.152936836510289
		14.931206378791259 16.161421403476993 6.1847084029917401
		13.437731093937099 16.161421403476993 8.9788044599515811
		11.427850665091814 16.161421403476993 11.427850665091814
		8.9788044599515811 16.161421403476993 13.437731093937099
		6.1847084029917401 16.161421403476993 14.931206378791259
		3.152936836510289 16.161421403476993 15.850884127610106
		-9.8960164997460701e-16 16.161421403476993 16.161421403476993
		-3.152936836510289 16.161421403476993 15.850884127610106
		-6.1847084029917401 16.161421403476993 14.931206378791259
		-8.9788044599515811 16.161421403476993 13.437731093937099
		-11.427850665091814 16.161421403476993 11.427850665091814
		-13.437731093937099 16.161421403476993 8.9788044599515811
		-14.931206378791259 16.161421403476993 6.1847084029917401
		-15.850884127610106 16.161421403476993 3.152936836510289
		-16.161421403476993 16.161421403476993 1.7480468585560901e-15
		-15.546314661770751 16.161421403476993 3.0923540088367139
		-13.794636034284403 16.161421403476993 5.713925332545907
		-11.173064325256897 16.161421403476993 7.4656031893956296
		-8.0807107017384965 16.161421403476993 8.0807107017384965
		-4.9883566929017826 16.161421403476993 7.4656031893956296
		-2.3667853691925891 16.161421403476993 5.713925332545907
		-0.61510751234286642 16.161421403476993 3.0923540088367139
		0 16.161421403476993 1.7480468585560901e-15
		0.61510751234286642 16.161421403476993 -3.0923540088367139
		2.3667853691925891 16.161421403476993 -5.713925332545907
		4.9883566929017826 16.161421403476993 -7.4656031893956296
		8.0807107017384965 16.161421403476993 -8.0807107017384965
		11.173064325256897 16.161421403476993 -7.4656031893956296
		13.794636034284403 16.161421403476993 -5.713925332545907
		15.546314661770751 16.161421403476993 -3.0923540088367139
		16.161421403476993 16.161421403476993 -4.0233828265319492e-16
		15.850884127610106 16.161421403476993 -3.152936836510289
		14.931206378791259 16.161421403476993 -6.1847084029917401
		13.437731093937099 16.161421403476993 -8.9788044599515811
		11.427850665091814 16.161421403476993 -11.427850665091814
		8.9788044599515811 16.161421403476993 -13.437731093937099
		6.1847084029917401 16.161421403476993 -14.931206378791259
		3.152936836510289 16.161421403476993 -15.850884127610106
		1.8867407576151053e-15 16.161421403476993 -16.161421403476993
		-3.152936836510289 16.161421403476993 -15.850884127610106
		-6.1847084029917401 16.161421403476993 -14.931206378791259
		-8.9788044599515811 16.161421403476993 -13.437731093937099
		-11.427850665091814 16.161421403476993 -11.427850665091814
		-13.437731093937099 16.161421403476993 -8.9788044599515811
		-14.931206378791259 16.161421403476993 -6.1847084029917401
		-15.850884127610106 16.161421403476993 -3.152936836510289
		-16.161421403476993 16.161421403476993 1.7480468585560901e-15
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp1_toe00_3_ctl_ofs" -p "rtLegBp1_ctl_data";
	rename -uid "96E6B80C-48C8-57B5-CDA0-AC9956D19FAE";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "rtLegBp1_toe00_3_ctl" -p "rtLegBp1_toe00_3_ctl_ofs";
	rename -uid "D62EBAB8-4E7E-A57E-D059-A895AAD875C1";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp1_toe00_3_ctlShape1" -p "rtLegBp1_toe00_3_ctl";
	rename -uid "0D985F94-4ABD-FA72-4BF9-BC93EE70FA86";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.2338384330588431e-15 1.5230576265119091 1.5230576265119233
		-1.2467870770038901e-15 -1.4257200520920455e-14 1.3771554075598023
		-1.2338384330588431e-15 -1.523057626511938 1.5230576265119222
		-1.2025776412323707e-15 -1.3771554075598225 -1.5029556370780019e-15
		-1.1713168494058982e-15 -1.523057626511938 -1.5230576265119256
		-1.1583682054608512e-15 -1.4479477568065261e-14 -1.3771554075598076
		-1.1713168494058982e-15 1.5230576265119091 -1.5230576265119262
		-1.2025776412323707e-15 1.3771554075597938 -1.7621498132792168e-15
		-1.2338384330588431e-15 1.5230576265119091 1.5230576265119233
		-1.2467870770038901e-15 -1.4257200520920455e-14 1.3771554075598023
		-1.2338384330588431e-15 -1.523057626511938 1.5230576265119222
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp1_toe01_3_ctl_ofs" -p "rtLegBp1_ctl_data";
	rename -uid "BF57FE56-4601-E2E1-69F2-B8A34A5DC526";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "rtLegBp1_toe01_3_ctl" -p "rtLegBp1_toe01_3_ctl_ofs";
	rename -uid "76C99081-47FB-4670-D2B9-87BADBABEFCA";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp1_toe01_3_ctlShape1" -p "rtLegBp1_toe01_3_ctl";
	rename -uid "E87295F2-4BCA-AECB-6692-D2BDAB076005";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.0141172386397755e-15 1.5230576265119307 1.5230576265119375
		1.0011685946947287e-15 7.1897538056908322e-15 1.3771554075598165
		1.0141172386397755e-15 -1.5230576265119165 1.5230576265119364
		1.045378030466248e-15 -1.3771554075598009 1.2760953792039686e-14
		1.0766388222927204e-15 -1.5230576265119165 -1.5230576265119113
		1.0895874662377672e-15 6.967476758546026e-15 -1.3771554075597934
		1.0766388222927202e-15 1.5230576265119307 -1.523057626511912
		1.045378030466248e-15 1.3771554075598154 1.2501759615838471e-14
		1.0141172386397755e-15 1.5230576265119307 1.5230576265119375
		1.0011685946947287e-15 7.1897538056908322e-15 1.3771554075598165
		1.0141172386397755e-15 -1.5230576265119165 1.5230576265119364
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp1_toe01_4_ctl_ofs" -p "rtLegBp1_ctl_data";
	rename -uid "4D1442D6-4832-4DD0-B24D-6FA9F25CB2A7";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "rtLegBp1_toe01_4_ctl" -p "rtLegBp1_toe01_4_ctl_ofs";
	rename -uid "477AF2C5-4554-070A-1008-F2A00AF3EF39";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp1_toe01_4_ctlShape1" -p "rtLegBp1_toe01_4_ctl";
	rename -uid "2724BC4E-4925-EDD7-17AA-2EB3DE2F0AC6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4179593923375532e-14 1.5230576265119213 1.5230576265119258
		1.4166645279430486e-14 -2.0064296128426668e-15 1.3771554075598047
		1.4179593923375532e-14 -1.5230576265119256 1.5230576265119247
		1.4210854715202004e-14 -1.3771554075598103 1.0441710466930138e-15
		1.4242115507028478e-14 -1.5230576265119256 -1.5230576265119231
		1.4255064150973525e-14 -2.2287066599874722e-15 -1.3771554075598051
		1.4242115507028478e-14 1.5230576265119213 -1.5230576265119238
		1.4210854715202004e-14 1.377155407559806 7.8497687049179892e-16
		1.4179593923375532e-14 1.5230576265119213 1.5230576265119258
		1.4166645279430486e-14 -2.0064296128426668e-15 1.3771554075598047
		1.4179593923375532e-14 -1.5230576265119256 1.5230576265119247
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp1_toe02_3_ctl_ofs" -p "rtLegBp1_ctl_data";
	rename -uid "1DBF8E22-4861-46CA-E7B9-0F9336955C87";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "rtLegBp1_toe02_3_ctl" -p "rtLegBp1_toe02_3_ctl_ofs";
	rename -uid "1E1B5A34-4631-A83A-4D0B-888A1B664FA8";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp1_toe02_3_ctlShape1" -p "rtLegBp1_toe02_3_ctl";
	rename -uid "8C955031-4BC8-F62C-6395-9C95C613DCEE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-3.1260791826472384e-17 1.5230576265119236 1.5230576265119293
		-4.42094357715193e-17 8.4326448089829221e-17 1.3771554075598083
		-3.1260791826472366e-17 -1.5230576265119236 1.5230576265119282
		1.8043313692560799e-32 -1.377155407559808 4.6101484039724358e-15
		3.1260791826472378e-17 -1.5230576265119236 -1.5230576265119196
		4.4209435771519343e-17 -1.3795059905497628e-16 -1.3771554075598016
		3.1260791826472366e-17 1.5230576265119236 -1.5230576265119202
		2.6363963796548308e-32 1.377155407559808 4.3509542277712205e-15
		-3.1260791826472384e-17 1.5230576265119236 1.5230576265119293
		-4.42094357715193e-17 8.4326448089829221e-17 1.3771554075598083
		-3.1260791826472366e-17 -1.5230576265119236 1.5230576265119282
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp1_toe02_4_ctl_ofs" -p "rtLegBp1_ctl_data";
	rename -uid "50E3EBD5-4A99-5112-BCBC-DCB180E9E85E";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rtLegBp1_toe02_4_ctl" -p "rtLegBp1_toe02_4_ctl_ofs";
	rename -uid "950C6DE2-4311-4B1D-1D6C-61854866A6CF";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp1_toe02_4_ctlShape1" -p "rtLegBp1_toe02_4_ctl";
	rename -uid "968D16BD-4865-3C96-1801-3196E061EA64";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.5287493537494726e-14 1.5230576265119184 1.5230576265119253
		-1.5300442181439773e-14 -4.9303448485786764e-15 1.3771554075598043
		-1.5287493537494726e-14 -1.5230576265119287 1.5230576265119242
		-1.5256232745668252e-14 -1.3771554075598131 5.3474570993881067e-16
		-1.5224971953841781e-14 -1.5230576265119287 -1.5230576265119236
		-1.5212023309896734e-14 -5.1526218957234826e-15 -1.3771554075598056
		-1.5224971953841781e-14 1.5230576265119184 -1.5230576265119242
		-1.5256232745668252e-14 1.3771554075598031 2.7555153373759578e-16
		-1.5287493537494726e-14 1.5230576265119184 1.5230576265119253
		-1.5300442181439773e-14 -4.9303448485786764e-15 1.3771554075598043
		-1.5287493537494726e-14 -1.5230576265119287 1.5230576265119242
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp1_toe03_3_ctl_ofs" -p "rtLegBp1_ctl_data";
	rename -uid "E882D055-41CD-FD15-6150-B99D46D5E970";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp1_toe03_3_ctl" -p "rtLegBp1_toe03_3_ctl_ofs";
	rename -uid "FC4327C9-4AC2-BD7C-EDCE-9FBF4EA363D7";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp1_toe03_3_ctlShape1" -p "rtLegBp1_toe03_3_ctl";
	rename -uid "7F91AD01-4D7A-7DE1-A47C-13B92007DD23";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.5224971953841781e-14 1.5230576265119287 1.5230576265119253
		1.5212023309896734e-14 5.0989977447583355e-15 1.3771554075598043
		1.5224971953841781e-14 -1.5230576265119184 1.5230576265119242
		1.5256232745668252e-14 -1.3771554075598031 5.3474570993881067e-16
		1.5287493537494726e-14 -1.5230576265119184 -1.5230576265119236
		1.5300442181439773e-14 4.8767206976135301e-15 -1.3771554075598056
		1.5287493537494726e-14 1.5230576265119287 -1.5230576265119242
		1.5256232745668252e-14 1.3771554075598131 2.7555153373759578e-16
		1.5224971953841781e-14 1.5230576265119287 1.5230576265119253
		1.5212023309896734e-14 5.0989977447583355e-15 1.3771554075598043
		1.5224971953841781e-14 -1.5230576265119184 1.5230576265119242
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp1_toe03_4_ctl_ofs" -p "rtLegBp1_ctl_data";
	rename -uid "C8589255-4B46-1962-15D2-7B942B6585EF";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp1_toe03_4_ctl" -p "rtLegBp1_toe03_4_ctl_ofs";
	rename -uid "2591B637-4067-0FD7-813D-8D9BEA91B131";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp1_toe03_4_ctlShape1" -p "rtLegBp1_toe03_4_ctl";
	rename -uid "A2820424-4440-61A5-8DFD-D89F07786ED3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-5.5394980705959631e-16 1.52305762651192 1.5230576265119242
		-5.6689845100464334e-16 -3.4683872307106718e-15 1.3771554075598031
		-5.5394980705959631e-16 -1.5230576265119269 1.5230576265119231
		-5.2268901523312398e-16 -1.3771554075598116 -4.8410496356959561e-16
		-4.9142822340665165e-16 -1.5230576265119269 -1.5230576265119247
		-4.7847957946160461e-16 -3.6906642778554776e-15 -1.3771554075598067
		-4.9142822340665165e-16 1.52305762651192 -1.5230576265119253
		-5.2268901523312398e-16 1.3771554075598047 -7.4329913977081049e-16
		-5.5394980705959631e-16 1.52305762651192 1.5230576265119242
		-5.6689845100464334e-16 -3.4683872307106718e-15 1.3771554075598031
		-5.5394980705959631e-16 -1.5230576265119269 1.5230576265119231
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp1_toe04_3_ctl_ofs" -p "rtLegBp1_ctl_data";
	rename -uid "1D350133-4237-D663-D74D-3CA2B003E45E";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp1_toe04_3_ctl" -p "rtLegBp1_toe04_3_ctl_ofs";
	rename -uid "DFFA6DE0-48A7-4A8D-768C-EBB592F1AF5C";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp1_toe04_3_ctlShape1" -p "rtLegBp1_toe04_3_ctl";
	rename -uid "E5B9AAED-40B8-86AA-2F1E-298B95A89529";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.0141172386397755e-15 1.5230576265119307 1.5230576265119171
		1.0011685946947287e-15 7.1897538056908322e-15 1.377155407559796
		1.0141172386397755e-15 -1.5230576265119165 1.523057626511916
		1.045378030466248e-15 -1.3771554075598009 -7.6160596781284395e-15
		1.0766388222927204e-15 -1.5230576265119165 -1.5230576265119318
		1.0895874662377672e-15 6.967476758546026e-15 -1.3771554075598138
		1.0766388222927202e-15 1.5230576265119307 -1.5230576265119324
		1.045378030466248e-15 1.3771554075598154 -7.8752538543296548e-15
		1.0141172386397755e-15 1.5230576265119307 1.5230576265119171
		1.0011685946947287e-15 7.1897538056908322e-15 1.377155407559796
		1.0141172386397755e-15 -1.5230576265119165 1.523057626511916
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp1_toe04_4_ctl_ofs" -p "rtLegBp1_ctl_data";
	rename -uid "4FFE25C0-4B26-5736-AD75-B19045425C8D";
	setAttr -cb on ".ro";
createNode transform -n "rtLegBp1_toe04_4_ctl" -p "rtLegBp1_toe04_4_ctl_ofs";
	rename -uid "C6B0171A-4D7E-DE23-E6D2-66B6DC052C6E";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "rtLegBp1_toe04_4_ctlShape1" -p "rtLegBp1_toe04_4_ctl";
	rename -uid "D79710BB-4B96-2C42-4ACE-EAB063BFF321";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.74000001 0.20999999 0.20999999 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.0766388222927204e-15 1.5230576265119165 1.5230576265119253
		-1.0895874662377672e-15 -7.0211009095111731e-15 1.3771554075598043
		-1.0766388222927202e-15 -1.5230576265119307 1.5230576265119242
		-1.045378030466248e-15 -1.3771554075598154 5.3474570993881067e-16
		-1.0141172386397755e-15 -1.5230576265119307 -1.5230576265119236
		-1.0011685946947287e-15 -7.2433779566559777e-15 -1.3771554075598056
		-1.0141172386397755e-15 1.5230576265119165 -1.5230576265119242
		-1.045378030466248e-15 1.3771554075598009 2.7555153373759578e-16
		-1.0766388222927204e-15 1.5230576265119165 1.5230576265119253
		-1.0895874662377672e-15 -7.0211009095111731e-15 1.3771554075598043
		-1.0766388222927202e-15 -1.5230576265119307 1.5230576265119242
		;
	setAttr ".adot" yes;
createNode transform -n "rtLegBp1_anchorF1" -p "master_ctl";
	rename -uid "EF2611C5-45F5-D272-EE88-3899095E95DA";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "rtLegBp1_anchorF1Shape" -p "rtLegBp1_anchorF1";
	rename -uid "C582443A-42DF-6E87-FA75-F3BAB1A1318D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 11.034290879224448 11.034290879224448 11.034290879224448 ;
createNode transform -n "spineQd0_ctl_data" -p "master_ctl";
	rename -uid "DBFB8B2F-495F-9F3B-9524-87888BAF161E";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_IK" -p "spineQd0_ctl_data";
	rename -uid "139ED3DC-4E44-59DD-D838-46A686A2022E";
	setAttr ".t" -type "double3" 1.8899137694425253e-13 300.90548263022907 -152.41798543961227 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_cog_ctl_ofs" -p "spineQd0_IK";
	rename -uid "49DE4EEC-4803-72C7-1152-489D0844E762";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_cog_ctl" -p "spineQd0_cog_ctl_ofs";
	rename -uid "F6D87930-4585-E2D6-E2D0-1CBB031469EB";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spineQd0_cog_ctlShape1" -p "spineQd0_cog_ctl";
	rename -uid "3DB7241A-4CD1-CDFA-9C84-48B3530F2100";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		5.6487811907214844 124.27318619587267 86.244662493094836
		5.6487811907214844 139.42368300363026 86.244662493094836
		5.6487811907214844 146.8683109587586 41.054412967322975
		5.6487811907214844 124.27318619587267 41.054412967322975
		5.6487811907214844 124.27318619587267 86.244662493094836
		-5.6487811907214844 124.27318619587267 86.244662493094836
		-5.6487811907214844 124.27318619587267 41.054412967322975
		5.6487811907214844 124.27318619587267 41.054412967322975
		5.6487811907214844 146.8683109587586 41.054412967322975
		-5.6487811907214844 146.8683109587586 41.054412967322975
		-5.6487811907214844 124.27318619587267 41.054412967322975
		-5.6487811907214844 146.8683109587586 41.054412967322975
		-5.6487811907214844 139.42368300363026 86.244662493094836
		-5.6487811907214844 124.27318619587267 86.244662493094836
		5.6487811907214844 124.27318619587267 86.244662493094836
		5.6487811907214844 139.42368300363026 86.244662493094836
		-5.6487811907214844 139.42368300363026 86.244662493094836
		;
createNode transform -n "spineQd0_base_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "4730C0B8-4809-502D-65D9-559174374C59";
	setAttr ".t" -type "double3" -1.8899137694425253e-13 -2.4685239118543905 53.352814376791272 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_base_ctl" -p "spineQd0_base_ctl_ofs";
	rename -uid "BC28DA59-4A42-0249-7208-3D811ACF1591";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode nurbsCurve -n "spineQd0_base_ctlShape1" -p "spineQd0_base_ctl";
	rename -uid "82A5CDD3-4FFC-FB5C-F4DE-33AB28D30200";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		53.11740729019499 86.77659427005608 -60.800636443194534
		4.5997340534471671e-15 108.77854476775032 -60.800636443194534
		-53.11740729019499 53.117407290194983 3.2525031408471784e-15
		-75.119357787889271 3.8942007728087131e-15 2.3845102558286692e-31
		-53.11740729019499 -53.11740729019499 -3.2525031408471784e-15
		-7.5247574460941044e-15 -75.119357787889271 -4.5997340534471703e-15
		53.11740729019499 -53.117407290194983 -3.2525031408471784e-15
		75.119357787889271 -1.0244000298554819e-14 -6.2726410880448455e-31
		53.11740729019499 86.77659427005608 -60.800636443194534
		4.5997340534471671e-15 108.77854476775032 -60.800636443194534
		-53.11740729019499 53.117407290194983 3.2525031408471784e-15
		;
createNode transform -n "spineQd0_tangent0_ctl_ofs" -p "spineQd0_base_ctl";
	rename -uid "8468DA85-4E2E-9BDF-0664-5E8EDE087A73";
	setAttr ".t" -type "double3" 1.8905739482248469e-13 2.4685239118543905 -53.352814376791301 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_tangent0_ctl" -p "spineQd0_tangent0_ctl_ofs";
	rename -uid "C5AB66BB-4FEC-1EAB-76A2-47A1D9A5C795";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "spineQd0_tangent0_ctlShape1" -p "spineQd0_tangent0_ctl";
	rename -uid "5B584449-4F5F-3BB0-4A21-0FAF3AC9607D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-1.6070737432609308e-06 10.798567618357842 -2.3106428235093071
		-1.9598562123361366e-06 11.5387485838397 -4.2444880032556016
		-2.0665278318719699e-06 10.621385199719326 -5.6578031564500124
		-1.9071542006593127e-06 9.5480117096034061 -6.0671106111287267
		-1.6826162100190416e-06 8.035759494316828 -6.081925843064746
		6.9671386219432802e-07 -7.9889117935760945 -6.2389184136805325
		9.2125185283856337e-07 -9.5011640088625615 -6.2537336456164363
		1.0806254837979058e-06 -10.574537498978533 -5.8654574409491245
		1.4666717646640117e-06 -11.5387485838397 -4.4278702435206787
		1.6066071956737696e-06 -10.845415319098601 -2.4826339395930259
		2.0665278323571838e-06 -1.9855949044382986 9.6198859409594473
		1.9679344166192753e-06 -0.99532486897354588 10.62106089243764
		1.8496011893231145e-06 -0.0035116337072868104 11.031845023966751
		1.6079851518260972e-06 0.99793948517843178 10.644810690090557
		1.3466293027850828e-06 2.000933803865816 9.6673855362653445
		-1.6070737432609308e-06 10.798567618357842 -2.3106428235093071
		;
	setAttr ".adot" yes;
createNode joint -n "spineQd0_0_ikj" -p "spineQd0_tangent0_ctl";
	rename -uid "38063AEB-4512-94C1-E640-F0AC3417A2A9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".radi" 9.0380499051543755;
createNode transform -n "spineQd0_end_ctl_ofs" -p "spineQd0_base_ctl";
	rename -uid "4DFDA6A9-41C9-7BAA-7B9E-6BB8B917853F";
	setAttr ".t" -type "double3" 0 3.2358663282504381 -64.513486919051999 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_end_ctl" -p "spineQd0_end_ctl_ofs";
	rename -uid "F3B07AE7-41E1-9880-F68F-318062ADB882";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spineQd0_end_ctlShape1" -p "spineQd0_end_ctl";
	rename -uid "4813B9AB-4805-A817-F9A6-A797E800E297";
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
		27.068886476411031 39.984961530288501 0
		21.873847657705888 43.699642131427595 -8.3862866693670455
		21.873847657705888 43.699642131427595 -5.1950388187051484
		18.592770509050006 46.011919887196953 -5.1950388187051484
		14.491424073230151 47.828709552444309 -5.1950388187051484
		9.843231445967648 49.315173824010337 -5.1950388187051484
		5.1950388187051484 50.14098730821371 -5.1950388187051484
		0 50.306150005054349 -5.1950388187051484
		-5.1950388187051484 50.14098730821371 -5.1950388187051484
		-9.843231445967648 49.315173824010337 -5.1950388187051484
		-14.491424073230151 47.828709552444309 -5.1950388187051484
		-18.592770509050006 46.011919887196953 -5.1950388187051484
		-21.873847657705888 43.699642131427595 -5.1950388187051484
		-21.873847657705888 43.699642131427595 -8.3862866693670455
		-27.068886476411031 39.984961530288501 0
		-21.873847657705888 43.699642131427595 8.3862866693670455
		-21.873847657705888 43.699642131427595 5.1950388187051484
		-18.592770509050006 46.011919887196953 5.1950388187051484
		-14.491424073230151 47.828709552444309 5.1950388187051484
		-9.843231445967648 49.315173824010337 5.1950388187051484
		-5.1950388187051484 50.14098730821371 5.1950388187051484
		0 50.306150005054349 5.1950388187051484
		5.1950388187051484 50.14098730821371 5.1950388187051484
		9.843231445967648 49.315173824010337 5.1950388187051484
		14.491424073230151 47.828709552444309 5.1950388187051484
		18.592770509050006 46.011919887196953 5.1950388187051484
		21.873847657705888 43.699642131427595 5.1950388187051484
		21.873847657705888 43.699642131427595 8.3862866693670455
		27.068886476411031 39.984961530288501 0
		;
	setAttr ".adot" yes;
createNode joint -n "spineQd0_two_ikj" -p "spineQd0_base_ctl";
	rename -uid "1E4FF813-494A-0938-316D-10B50C9BC9C1";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" 1.8899137694425253e-13 2.4685239118543905 -53.352814376791272 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 45.190249525771875;
createNode joint -n "spineQd0_two_ikj_end" -p "spineQd0_two_ikj";
	rename -uid "394B26D9-46F4-E7F1-CB11-778BD1BC1CDB";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -1.8899137694425253e-13 -23.828587095284718 224.30374169081716 ;
	setAttr -cb on ".ro";
	setAttr ".radi" 45.190249525771875;
createNode transform -n "spineQd0_loc2" -p "spineQd0_two_ikj_end";
	rename -uid "F68E1A2D-49D3-7C5F-9626-A4B551DA02EE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.243113796219987 17.385302344402305 -113.55537851021782 ;
	setAttr ".r" -type "double3" 6.9518764978737826 0.00066175424300201474 4.0195682748289325e-05 ;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_loc2Shape" -p "spineQd0_loc2";
	rename -uid "EC3B5A83-42AC-5B61-48BA-45AAAC0DE883";
	setAttr -k off ".v";
createNode ikEffector -n "effector50" -p "spineQd0_two_ikj";
	rename -uid "ED4E394F-4E6B-8CA3-65B0-3A83AF507689";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hd" yes;
createNode transform -n "spineQd0_loc1" -p "spineQd0_base_ctl";
	rename -uid "A1CB4A72-4228-0366-CB5B-9D963D9BE16E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.243113796219987 -3.974760839028022 57.395548803808062 ;
	setAttr ".r" -type "double3" 6.9518764978737826 0.00066175424300201474 4.0195682748289325e-05 ;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_loc1Shape" -p "spineQd0_loc1";
	rename -uid "66802641-4A50-09C0-4B69-E5A7D5E9877F";
	setAttr -k off ".v";
createNode transform -n "spineQd0_mid_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "DF7D819A-4FB1-A71A-00ED-84BB5C193C14";
	setAttr ".t" -type "double3" 2.2431137962197987 -6.443284750882583 110.74836318059928 ;
	setAttr ".r" -type "double3" 6.9518764978737817 0.00066175424300201474 4.0195682748289319e-05 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_mid_ctl_ofs1" -p "spineQd0_mid_ctl_ofs";
	rename -uid "1B1FB347-41C6-B3C0-6CB2-68A754F70C97";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_mid_ctl_ofs2" -p "spineQd0_mid_ctl_ofs1";
	rename -uid "5C259713-4A58-71DB-03AD-53BB98D7E21C";
	setAttr ".t" -type "double3" 2.2204460492503131e-16 5.6843418860808015e-14 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "spineQd0_mid_ctl" -p "spineQd0_mid_ctl_ofs2";
	rename -uid "994E2328-4053-EBB2-3A97-1287B9A9B019";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spineQd0_mid_ctlShape1" -p "spineQd0_mid_ctl";
	rename -uid "09BD8D88-40E0-4A90-4C9C-BE84D75C3669";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		53.11740729019499 53.11740729019499 3.2525031408471791e-15
		4.5997340534471671e-15 75.119357787889228 4.5997340534471671e-15
		-53.11740729019499 53.117407290194983 3.2525031408471784e-15
		-75.119357787889271 3.8942007728087131e-15 2.3845102558286692e-31
		-53.11740729019499 -53.11740729019499 -3.2525031408471784e-15
		-7.5247574460941044e-15 -75.119357787889271 -4.5997340534471703e-15
		53.11740729019499 -53.117407290194983 -3.2525031408471784e-15
		75.119357787889271 -1.0244000298554819e-14 -6.2726410880448455e-31
		53.11740729019499 53.11740729019499 3.2525031408471791e-15
		4.5997340534471671e-15 75.119357787889228 4.5997340534471671e-15
		-53.11740729019499 53.117407290194983 3.2525031408471784e-15
		;
createNode joint -n "spineQd0_1_ikj" -p "spineQd0_mid_ctl";
	rename -uid "C029303A-4C2E-C207-80BA-2B891FBC0131";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -4.4408920985006262e-16 5.6843418860808015e-14 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 6.9518764978737764 0.00066175424300201474 4.0195682748289291e-05 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" -6.951876497873779 -0.00066175424300201474 4.0195682748289298e-05 ;
	setAttr ".radi" 9.0380499051543755;
createNode transform -n "spineQd0_fore_ctl_ofs" -p "spineQd0_cog_ctl";
	rename -uid "CD1B2557-476B-1A6A-7459-D5A624991EA6";
	setAttr ".t" -type "double3" -1.8899137694425253e-13 -23.828587095284718 224.30374169081716 ;
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_fore_ctl" -p "spineQd0_fore_ctl_ofs";
	rename -uid "F6379C8B-4209-FA21-6460-AA98E31AFDE7";
	addAttr -ci true -sn "tangentCtl" -ln "tangentCtl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".tangentCtl";
createNode nurbsCurve -n "spineQd0_fore_ctlShape1" -p "spineQd0_fore_ctl";
	rename -uid "ED82D1DF-401D-3F8C-2F1B-8988BA6C3B2B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 22;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		70.906889040182335 123.33681080240525 -97.410844581961712
		6.1402249993163937e-15 152.70740590853288 -97.410844581961712
		-70.906889040182335 123.33681080240525 -97.410844581961712
		-100.27748414631002 10.810630193378532 -32.540945231581119
		-70.906889040182335 -60.096258846803778 -32.540945231581119
		-1.004486416984758e-14 -89.466853952931572 -32.540945231581119
		70.906889040182335 -60.096258846803778 -32.540945231581119
		100.27748414631002 10.810630193378518 -32.540945231581119
		70.906889040182335 123.33681080240525 -97.410844581961712
		6.1402249993163937e-15 152.70740590853288 -97.410844581961712
		-70.906889040182335 123.33681080240525 -97.410844581961712
		;
createNode transform -n "spineQd0_tangent1_ctl_ofs" -p "spineQd0_fore_ctl";
	rename -uid "AFEC12BC-4E88-0C8A-DDC3-78AC4AB0D24E";
	setAttr -cb on ".ro";
createNode transform -n "spineQd0_tangent1_ctl" -p "spineQd0_tangent1_ctl_ofs";
	rename -uid "EA1CA104-4AC3-0D55-D459-F9B5EFC238A7";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "spineQd0_tangent1_ctlShape1" -p "spineQd0_tangent1_ctl";
	rename -uid "6C916C29-4AC7-E8EB-DED6-E5998276D624";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-1.6070737432609308e-06 -10.798567618357842 2.3106428235093084
		-1.9598562123361366e-06 -11.5387485838397 4.2444880032556034
		-2.0665278318719699e-06 -10.621385199719326 5.6578031564500133
		-1.9071542006593127e-06 -9.5480117096034061 6.0671106111287276
		-1.6826162100190416e-06 -8.0357594943168262 6.0819258430647469
		6.9671386219432802e-07 7.9889117935760954 6.2389184136805316
		9.2125185283856337e-07 9.5011640088625615 6.2537336456164354
		1.0806254837979058e-06 10.574537498978533 5.8654574409491236
		1.4666717646640117e-06 11.5387485838397 4.4278702435206769
		1.6066071956737696e-06 10.845415319098601 2.4826339395930246
		2.0665278323571838e-06 1.9855949044382974 -9.6198859409594473
		1.9679344166192753e-06 0.99532486897354466 -10.62106089243764
		1.8496011893231145e-06 0.0035116337072854595 -11.031845023966751
		1.6079851518260972e-06 -0.99793948517843301 -10.644810690090557
		1.3466293027850828e-06 -2.0009338038658173 -9.6673855362653445
		-1.6070737432609308e-06 -10.798567618357842 2.3106428235093084
		;
	setAttr ".adot" yes;
createNode joint -n "spineQd0_2_ikj" -p "spineQd0_tangent1_ctl";
	rename -uid "F373F285-4BB3-ED20-4C88-FB9CB3605F24";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".radi" 9.0380499051543755;
createNode ikHandle -n "spineQd0_two_ikj_ikh" -p "spineQd0_tangent1_ctl";
	rename -uid "16AA3FCB-449F-BBD2-F506-FBB5B2745044";
	setAttr ".v" no;
	setAttr -cb on ".ro";
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode transform -n "spineQd0_anchorToRbj" -p "spineQd0_fore_ctl";
	rename -uid "2C71E7CA-4CDF-3252-1AAD-9B94755F0F1A";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorToRbjShape" -p "spineQd0_anchorToRbj";
	rename -uid "3CEE9FAC-4408-3129-1EC5-6099D0982C95";
	setAttr -k off ".v";
createNode transform -n "neckQd0_cog_ctl_SPACE_1_ofs" -p "spineQd0_fore_ctl";
	rename -uid "7B991BBB-46F1-01F8-2CC6-47889DE7FEAD";
	setAttr ".t" -type "double3" -1.1995990639336598 -0.74177770184246583 3.9177597946075196 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_1" -p "neckQd0_cog_ctl_SPACE_1_ofs";
	rename -uid "DB4B6431-4CBE-C6FE-D981-739744675329";
createNode transform -n "head0_head_fkc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "16729435-4658-E946-E39A-E5BAE681714D";
	setAttr ".t" -type "double3" -1.8899137694425253e-13 -24.419448897508119 310.12864961827222 ;
createNode transform -n "head0_head_fkc_SPACE_2" -p "head0_head_fkc_SPACE_2_ofs";
	rename -uid "B44C667F-4E11-0FF9-E053-1DB1CDE33878";
createNode transform -n "lfLegBp0_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "9AF9CD90-4F13-FCDE-3126-D8B98400C955";
	setAttr ".t" -type "double3" 38.357234944737939 -268.47536220585124 -29.430529566125784 ;
createNode transform -n "lfLegBp0_ikc_SPACE_2" -p "lfLegBp0_ikc_SPACE_2_ofs";
	rename -uid "9C189622-4F6D-1190-3EA2-1CB4F1244700";
createNode transform -n "lfLegBp0_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "F27A2080-48E2-5669-5A29-33B3158DFC04";
	setAttr ".t" -type "double3" 34.545244628845722 -169.79305436659075 63.222659511480614 ;
	setAttr ".r" -type "double3" -10.050520019357236 -4.3338372301968242 6.7998637517368325e-06 ;
createNode transform -n "lfLegBp0_pvc_SPACE_3" -p "lfLegBp0_pvc_SPACE_3_ofs";
	rename -uid "47316C15-4500-C5FD-FC11-16A68FEEC4B2";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 0 -1.4210854715202004e-14 ;
createNode transform -n "lfLegBp1_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "D4811EF0-4520-4923-C581-3E953756DED1";
	setAttr ".t" -type "double3" 46.120991069504875 -266.15989028097454 222.89726338692731 ;
createNode transform -n "lfLegBp1_ikc_SPACE_2" -p "lfLegBp1_ikc_SPACE_2_ofs";
	rename -uid "C9B03759-485B-BFD8-5FA1-B1B7EF8F4A70";
createNode transform -n "lfLegBp1_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "1C84DE17-4B39-3C3C-1044-A7B80D552436";
	setAttr ".t" -type "double3" 50.086173291694379 -173.553543135795 132.35971083421745 ;
	setAttr ".r" -type "double3" -179.77615065566152 0.887180879387795 179.999993113134 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "lfLegBp1_pvc_SPACE_3" -p "lfLegBp1_pvc_SPACE_3_ofs";
	rename -uid "F294C3EF-49AB-AC20-D742-0385C26E7284";
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-14 7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "9D7097D4-4985-BFA3-9E6D-9580F0612662";
	setAttr ".t" -type "double3" -1.8899137694425253e-13 -13.021041546642323 278.70213513840315 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_2" -p "neckQd0_fore_ctl_SPACE_2_ofs";
	rename -uid "24D0394D-4913-4510-D376-589C25CF96A3";
createNode transform -n "neckQd0_cog_ctl_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "42726CB9-456F-D370-872C-C3AF5668B63D";
	setAttr ".t" -type "double3" -1.1995990639338487 -24.570364797127183 228.22150148542468 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_2" -p "neckQd0_cog_ctl_SPACE_2_ofs";
	rename -uid "DC7B0681-4211-2995-5DF3-A7910252A14E";
createNode transform -n "rtLegBp0_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "D4D8D564-4E38-A455-8E75-7FB73C3B4DAD";
	setAttr ".t" -type "double3" -38.357234944738309 -268.47536266361499 -29.430529566125784 ;
createNode transform -n "rtLegBp0_ikc_SPACE_2" -p "rtLegBp0_ikc_SPACE_2_ofs";
	rename -uid "369F442F-4A22-A048-0277-FCBBAE89ED30";
createNode transform -n "rtLegBp0_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "155471BB-4121-4E4E-3CEC-D080BAB94789";
	setAttr ".t" -type "double3" -34.54524465274509 -169.79305134368838 63.222659196151525 ;
	setAttr ".r" -type "double3" -10.050520582736306 4.3338384319327226 0 ;
createNode transform -n "rtLegBp0_pvc_SPACE_3" -p "rtLegBp0_pvc_SPACE_3_ofs";
	rename -uid "4345176F-4A76-22BF-6C6A-428FE186570C";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -2.8421709430404007e-14 0 ;
createNode transform -n "rtLegBp1_ikc_SPACE_2_ofs" -p "spineQd0_cog_ctl";
	rename -uid "4F9EF252-4A0D-95CE-5D9C-C3A550F87F7F";
	setAttr ".t" -type "double3" -46.120991069505308 -266.1598907747304 222.89726338692736 ;
createNode transform -n "rtLegBp1_ikc_SPACE_2" -p "rtLegBp1_ikc_SPACE_2_ofs";
	rename -uid "C37E42E0-4891-66E5-475E-9B9794886238";
createNode transform -n "rtLegBp1_pvc_SPACE_3_ofs" -p "spineQd0_cog_ctl";
	rename -uid "E66C8AD2-40B4-B485-6AE9-D290D82217EC";
	setAttr ".t" -type "double3" -50.086173291663705 -173.55354183028197 132.35971083608013 ;
	setAttr ".r" -type "double3" 0.22384975061399856 180.88718085248399 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "rtLegBp1_pvc_SPACE_3" -p "rtLegBp1_pvc_SPACE_3_ofs";
	rename -uid "69AF95B5-4D58-0939-97CB-5DB6EC72647E";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 1.4210854715202004e-14 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "spineQd0_setting" -p "spineQd0_ctl_data";
	rename -uid "8BFD1470-4840-BD01-29F4-7995D79379B9";
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
	rename -uid "815DDE51-4EDB-DA2D-9931-7E8EBA7D1A1B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-16.946343572164455 22.595124762885938 4.2187890531762179e-16
		-16.620724232291785 22.595124762885938 -3.3060675517898135
		-15.656379901550805 22.595124762885938 -6.4850851217951648
		-14.090370040052496 22.595124762885938 -9.4148838426356818
		-11.982874453132544 22.595124762885938 -11.982874453132544
		-9.4148838426356818 22.595124762885938 -14.090370040052496
		-6.4850851217951648 22.595124762885938 -15.656379901550805
		-3.3060675517898135 22.595124762885938 -16.620724232291785
		1.0376642710673065e-15 22.595124762885938 -16.946343572164455
		3.3060675517898135 22.595124762885938 -16.620724232291785
		6.4850851217951648 22.595124762885938 -15.656379901550805
		9.4148838426356818 22.595124762885938 -14.090370040052496
		11.982874453132544 22.595124762885938 -11.982874453132544
		14.090370040052496 22.595124762885938 -9.4148838426356818
		15.656379901550805 22.595124762885938 -6.4850851217951648
		16.620724232291785 22.595124762885938 -3.3060675517898135
		16.946343572164455 22.595124762885938 -1.8329453768813386e-15
		16.301362544922259 22.595124762885938 -3.2425423588814244
		14.4646090126485 22.595124762885938 -5.9914372265662719
		11.715713740931337 22.595124762885938 -7.8281899507754025
		8.4731717860822275 22.595124762885938 -8.4731717860822275
		5.2306294272008031 22.595124762885938 -7.8281899507754025
		2.4817345595159557 22.595124762885938 -5.9914372265662719
		0.64498183530682551 22.595124762885938 -3.2425423588814244
		0 22.595124762885938 -1.8329453768813386e-15
		-0.64498183530682551 22.595124762885938 3.2425423588814244
		-2.4817345595159557 22.595124762885938 5.9914372265662719
		-5.2306294272008031 22.595124762885938 7.8281899507754025
		-8.4731717860822275 22.595124762885938 8.4731717860822275
		-11.715713740931337 22.595124762885938 7.8281899507754025
		-14.4646090126485 22.595124762885938 5.9914372265662719
		-16.301362544922259 22.595124762885938 3.2425423588814244
		-16.946343572164455 22.595124762885938 4.2187890531762179e-16
		-16.620724232291785 22.595124762885938 3.3060675517898135
		-15.656379901550805 22.595124762885938 6.4850851217951648
		-14.090370040052496 22.595124762885938 9.4148838426356818
		-11.982874453132544 22.595124762885938 11.982874453132544
		-9.4148838426356818 22.595124762885938 14.090370040052496
		-6.4850851217951648 22.595124762885938 15.656379901550805
		-3.3060675517898135 22.595124762885938 16.620724232291785
		-1.9783753119185816e-15 22.595124762885938 16.946343572164455
		3.3060675517898135 22.595124762885938 16.620724232291785
		6.4850851217951648 22.595124762885938 15.656379901550805
		9.4148838426356818 22.595124762885938 14.090370040052496
		11.982874453132544 22.595124762885938 11.982874453132544
		14.090370040052496 22.595124762885938 9.4148838426356818
		15.656379901550805 22.595124762885938 6.4850851217951648
		16.620724232291785 22.595124762885938 3.3060675517898135
		16.946343572164455 22.595124762885938 -1.8329453768813386e-15
		;
	setAttr ".adot" yes;
createNode transform -n "spineQd0_anchorM1" -p "master_ctl";
	rename -uid "AFD7C632-4F67-CED7-5B2E-F7B5FB747CC8";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorM1Shape" -p "spineQd0_anchorM1";
	rename -uid "B19773F3-44E0-A725-2CF7-2889DFFCB3BC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 33.89268714432891 33.89268714432891 33.89268714432891 ;
createNode transform -n "spineQd0_anchorM2" -p "master_ctl";
	rename -uid "E0CB3F66-4D5E-6588-DFFE-62854D5D9CA3";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "spineQd0_anchorM2Shape" -p "spineQd0_anchorM2";
	rename -uid "511FB4A5-47C9-1ECB-7A24-1787E7860B4B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 33.89268714432891 33.89268714432891 33.89268714432891 ;
createNode transform -n "tail0_ctl_data" -p "master_ctl";
	rename -uid "455B3A6F-4896-244C-32E7-DFA7CED9BAEE";
	setAttr -cb on ".ro";
createNode transform -n "tail0_FK" -p "tail0_ctl_data";
	rename -uid "4755C312-4ECF-A07A-9E9A-62990BAF69A1";
	setAttr ".t" -type "double3" 0 275.0664231743981 -207.72387485400736 ;
	setAttr -cb on ".ro";
createNode transform -n "tail0_setting" -p "tail0_FK";
	rename -uid "8082C808-4D21-040C-976B-778D49699920";
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
	rename -uid "E10B21E4-493A-2EA1-C101-108604C1351B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		-7.799132190448832 -1.1888825440316651e-32 1.9415924957042103e-16
		-7.649274006314938 9.316715939701606e-17 -1.5215351770227918
		-7.2054585672775371 1.8275396586356671e-16 -2.9845987670326348
		-6.4847415660340761 2.6531762863621542e-16 -4.3329655942445893
		-5.5148192578274502 3.3768527896456724e-16 -5.5148192578274502
		-4.3329655942445893 3.9707590467111835e-16 -6.4847415660340761
		-2.9845987670326348 4.41207111274808e-16 -7.2054585672775371
		-1.5215351770227918 4.6838296276849402e-16 -7.649274006314938
		4.775591138523104e-16 4.775591138523104e-16 -7.799132190448832
		1.5215351770227918 4.6838296276849402e-16 -7.649274006314938
		2.9845987670326348 4.41207111274808e-16 -7.2054585672775371
		4.3329655942445893 3.9707590467111835e-16 -6.4847415660340761
		5.5148192578274502 3.3768527896456724e-16 -5.5148192578274502
		6.4847415660340761 2.6531762863621542e-16 -4.3329655942445893
		7.2054585672775371 1.8275396586356671e-16 -2.9845987670326348
		7.649274006314938 9.316715939701606e-17 -1.5215351770227918
		7.799132190448832 5.1653608580718785e-32 -8.4356741802702337e-16
		7.5022957507547874 9.1376982931783355e-17 -1.4922992905434167
		6.6569757241381415 1.6884264980434912e-16 -2.7574096289137251
		5.3918651998220311 2.20603555637404e-16 -3.6027292836387685
		3.899566095224416 2.387795569261552e-16 -3.899566095224416
		2.4072668046809991 2.20603555637404e-16 -3.6027292836387685
		1.1421564663106907 1.6884264980434912e-16 -2.7574096289137251
		0.29683681158564756 9.1376982931783355e-17 -1.4922992905434167
		0 5.1653608580718785e-32 -8.4356741802702337e-16
		-0.29683681158564756 -9.1376982931783355e-17 1.4922992905434167
		-1.1421564663106907 -1.6884264980434912e-16 2.7574096289137251
		-2.4072668046809991 -2.20603555637404e-16 3.6027292836387685
		-3.899566095224416 -2.387795569261552e-16 3.899566095224416
		-5.3918651998220311 -2.20603555637404e-16 3.6027292836387685
		-6.6569757241381415 -1.6884264980434912e-16 2.7574096289137251
		-7.5022957507547874 -9.1376982931783355e-17 1.4922992905434167
		-7.799132190448832 -1.1888825440316651e-32 1.9415924957042103e-16
		-7.649274006314938 -9.316715939701606e-17 1.5215351770227918
		-7.2054585672775371 -1.8275396586356671e-16 2.9845987670326348
		-6.4847415660340761 -2.6531762863621542e-16 4.3329655942445893
		-5.5148192578274502 -3.3768527896456724e-16 5.5148192578274502
		-4.3329655942445893 -3.9707590467111835e-16 6.4847415660340761
		-2.9845987670326348 -4.41207111274808e-16 7.2054585672775371
		-1.5215351770227918 -4.6838296276849402e-16 7.649274006314938
		-9.1049792034888664e-16 -4.775591138523104e-16 7.799132190448832
		1.5215351770227918 -4.6838296276849402e-16 7.649274006314938
		2.9845987670326348 -4.41207111274808e-16 7.2054585672775371
		4.3329655942445893 -3.9707590467111835e-16 6.4847415660340761
		5.5148192578274502 -3.3768527896456724e-16 5.5148192578274502
		6.4847415660340761 -2.6531762863621542e-16 4.3329655942445893
		7.2054585672775371 -1.8275396586356671e-16 2.9845987670326348
		7.649274006314938 -9.316715939701606e-17 1.5215351770227918
		7.799132190448832 5.1653608580718785e-32 -8.4356741802702337e-16
		;
	setAttr ".adot" yes;
createNode transform -n "tail0_0_chainGrp" -p "tail0_FK";
	rename -uid "FA74605C-4A58-3BEC-B3F6-E3B22EBB1553";
	setAttr -cb on ".ro";
createNode transform -n "tail0_1_chainGrp" -p "tail0_0_chainGrp";
	rename -uid "1B185A77-4094-D7E6-AD51-C5911F72C76F";
	setAttr -cb on ".ro";
createNode transform -n "tail0_2_chainGrp" -p "tail0_1_chainGrp";
	rename -uid "A664305D-496D-5F8A-5C21-D6BB5C23F843";
	setAttr -cb on ".ro";
createNode transform -n "tail0_3_chainGrp" -p "tail0_2_chainGrp";
	rename -uid "6A262900-45F4-AA2F-6748-0EB0B0E76FE3";
	setAttr -cb on ".ro";
createNode transform -n "tail0_4_chainGrp" -p "tail0_3_chainGrp";
	rename -uid "3D703D1C-4FAE-C874-88CB-ACB19F883251";
	setAttr -cb on ".ro";
createNode transform -n "tail0_5_chainGrp" -p "tail0_4_chainGrp";
	rename -uid "415D9A8C-4EE3-4BD4-354E-468E930567D4";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "tail0_0_fkc_ofs" -p "tail0_FK";
	rename -uid "C93C10E1-4749-5E56-E7C0-58992A2F467B";
	setAttr -cb on ".ro";
createNode transform -n "tail0_0_fkc" -p "tail0_0_fkc_ofs";
	rename -uid "4A85D880-4D20-28BB-9ED7-21A874936A69";
	setAttr -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_0_fkcShape1" -p "tail0_0_fkc";
	rename -uid "F9A8DB52-4D3D-8E29-BB13-4A81A291075A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		32.295308940612124 32.295308940612166 6.6286193784814387e-16
		1.7880798766376852e-15 29.201560448002063 9.3742834248575774e-16
		-32.295308940612124 32.295308940612145 6.6286193784814348e-16
		-29.201560448002144 1.1338886727938032e-14 -3.8259510334362658e-31
		-32.295308940612124 -32.295308940612124 -6.6286193784814368e-16
		-2.9251402819380431e-15 -29.201560448002088 -9.3742834248575873e-16
		32.295308940612124 -32.295308940612145 -6.6286193784814348e-16
		29.201560448002144 5.8428661898338842e-15 -5.5902832623515003e-31
		32.295308940612124 32.295308940612166 6.6286193784814387e-16
		1.7880798766376852e-15 29.201560448002063 9.3742834248575774e-16
		-32.295308940612124 32.295308940612145 6.6286193784814348e-16
		;
createNode transform -n "tail0_1_fkc_ofs" -p "tail0_0_fkc";
	rename -uid "488821A3-42E4-296C-6B3A-2482ED944336";
	setAttr -cb on ".ro";
createNode transform -n "tail0_1_fkc" -p "tail0_1_fkc_ofs";
	rename -uid "296A98AF-4C66-AA79-918F-CDB2C31C05CB";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_1_fkcShape1" -p "tail0_1_fkc";
	rename -uid "295684AF-44E5-2A0F-FC6C-55A2AFD60560";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		32.295308940612124 32.29530894061223 -1.7489251636374922e-13
		1.7880798766376986e-15 29.201560448002123 -1.7461794995911161e-13
		-32.295308940612124 32.295308940612202 -1.7489251636374922e-13
		-29.201560448002144 7.3723922311902224e-14 -1.7555537830159737e-13
		-32.295308940612124 -32.295308940612067 -1.7621824023944551e-13
		-2.9251402819380297e-15 -29.201560448002027 -1.7649280664408312e-13
		32.295308940612124 -32.295308940612081 -1.7621824023944551e-13
		29.201560448002144 6.8227901773798076e-14 -1.7555537830159737e-13
		32.295308940612124 32.29530894061223 -1.7489251636374922e-13
		1.7880798766376986e-15 29.201560448002123 -1.7461794995911161e-13
		-32.295308940612124 32.295308940612202 -1.7489251636374922e-13
		;
createNode transform -n "tail0_2_fkc_ofs" -p "tail0_1_fkc";
	rename -uid "1B593B2B-41C9-E23C-BC1D-DFB3C30186A5";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "tail0_2_fkc" -p "tail0_2_fkc_ofs";
	rename -uid "AD425C62-4918-B7A0-4F17-AFB77455F3C3";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_2_fkcShape1" -p "tail0_2_fkc";
	rename -uid "029613C3-4AEC-42AF-5E4B-8AB6835B5B07";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		32.295308940612124 32.295308940612152 1.9220545179404776e-13
		1.788079876637686e-15 29.201560448002049 1.924800181986854e-13
		-32.295308940612124 32.295308940612131 1.9220545179404776e-13
		-29.201560448002144 -1.171598347620569e-15 1.9154258985619963e-13
		-32.295308940612124 -32.295308940612138 1.908797279183515e-13
		-2.9251402819380423e-15 -29.201560448002102 1.9060516151371386e-13
		32.295308940612124 -32.295308940612152 1.908797279183515e-13
		29.201560448002144 -6.6676188857247173e-15 1.9154258985619963e-13
		32.295308940612124 32.295308940612152 1.9220545179404776e-13
		1.788079876637686e-15 29.201560448002049 1.924800181986854e-13
		-32.295308940612124 32.295308940612131 1.9220545179404776e-13
		;
createNode transform -n "tail0_3_fkc_ofs" -p "tail0_2_fkc";
	rename -uid "08D4B96B-45C3-BE56-25D1-EE8EAAB63915";
	setAttr -cb on ".ro";
createNode transform -n "tail0_3_fkc" -p "tail0_3_fkc_ofs";
	rename -uid "ADF97EE4-4C01-FF90-E843-588C7B329BEE";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_3_fkcShape1" -p "tail0_3_fkc";
	rename -uid "5FAE5458-44FB-0385-0A2F-D79C5DE814A9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		32.295308940612124 32.295308940612166 6.6286193784814387e-16
		1.7880798766376852e-15 29.201560448002063 9.3742834248575774e-16
		-32.295308940612124 32.295308940612145 6.6286193784814348e-16
		-29.201560448002144 1.1338886727938032e-14 -3.8259510334362658e-31
		-32.295308940612124 -32.295308940612124 -6.6286193784814368e-16
		-2.9251402819380431e-15 -29.201560448002088 -9.3742834248575873e-16
		32.295308940612124 -32.295308940612145 -6.6286193784814348e-16
		29.201560448002144 5.8428661898338842e-15 -5.5902832623515003e-31
		32.295308940612124 32.295308940612166 6.6286193784814387e-16
		1.7880798766376852e-15 29.201560448002063 9.3742834248575774e-16
		-32.295308940612124 32.295308940612145 6.6286193784814348e-16
		;
createNode transform -n "tail0_4_fkc_ofs" -p "tail0_3_fkc";
	rename -uid "9A5D66B8-429D-CA7D-A788-139A97480BB7";
	setAttr -cb on ".ro";
createNode transform -n "tail0_4_fkc" -p "tail0_4_fkc_ofs";
	rename -uid "79BDE677-4537-CA4A-A75C-768C6CD0AA96";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_4_fkcShape1" -p "tail0_4_fkc";
	rename -uid "A266CFB6-4E75-779E-9371-6DB04945A35A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		32.295308940612124 32.295308940612074 -2.7758847492555863e-14
		1.7880798766376852e-15 29.201560448001974 -2.748428108791825e-14
		-32.295308940612124 32.295308940612053 -2.7758847492555863e-14
		-29.201560448002144 -7.7326980842560773e-14 -2.8421709430404007e-14
		-32.295308940612124 -32.295308940612216 -2.9084571368252152e-14
		-2.9251402819380431e-15 -29.201560448002176 -2.9359137772889764e-14
		32.295308940612124 -32.29530894061223 -2.9084571368252152e-14
		29.201560448002144 -8.2823001380664934e-14 -2.8421709430404007e-14
		32.295308940612124 32.295308940612074 -2.7758847492555863e-14
		1.7880798766376852e-15 29.201560448001974 -2.748428108791825e-14
		-32.295308940612124 32.295308940612053 -2.7758847492555863e-14
		;
createNode transform -n "tail0_5_fkc_ofs" -p "tail0_4_fkc";
	rename -uid "B06745F8-4591-CDBC-4E17-4C80ADB6A670";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "tail0_5_fkc" -p "tail0_5_fkc_ofs";
	rename -uid "E0C8EDC4-4E9C-708C-32DA-2094B879EA03";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_5_fkcShape1" -p "tail0_5_fkc";
	rename -uid "395DBAED-4848-6389-E800-08B4271D8FE5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 25;
	setAttr ".ovrgb" -type "float3" 0.86000001 0.62 0.12 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		32.295308940612124 32.295308940612209 1.4873716653050148e-14
		1.7880798766376584e-15 29.201560448002105 1.5148283057687761e-14
		-32.295308940612124 32.295308940612188 1.4873716653050148e-14
		-29.201560448002144 5.5671820513187446e-14 1.4210854715202004e-14
		-32.295308940612124 -32.295308940612081 1.3547992777353859e-14
		-2.9251402819380699e-15 -29.201560448002045 1.3273426372716247e-14
		32.295308940612124 -32.295308940612095 1.3547992777353865e-14
		29.201560448002144 5.0175799975083291e-14 1.4210854715202004e-14
		32.295308940612124 32.295308940612209 1.4873716653050148e-14
		1.7880798766376584e-15 29.201560448002105 1.5148283057687761e-14
		-32.295308940612124 32.295308940612188 1.4873716653050148e-14
		;
createNode transform -n "tail0_5_ofs_ctl" -p "tail0_5_fkc";
	rename -uid "37779023-4894-AFD7-EB39-28B7E100F60E";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_5_ofs_ctlShape1" -p "tail0_5_ofs_ctl";
	rename -uid "4B0270F1-43DE-7861-AAC3-CABA238F3043";
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
		1.5521052817001688 6.0946007978700125 38.516456407839257
		1.4410913953271671 6.6915203726504684 38.516456407839257
		1.1029636621865575 7.1975644600565705 38.516456407839257
		0.59691957478045621 7.5356921931971801 38.516456407839257
		0 7.6466696836203232 38.516456407839257
		-0.59691957478045621 7.5356921931971801 38.516456407839257
		-1.1029636621865575 7.1975644600565705 38.516456407839257
		-1.4410913953271671 6.6915203726504684 38.516456407839257
		-1.5521052817001688 6.0946007243324116 38.516456407839257
		-1.4410913953271671 5.4976812230895566 38.516456407839257
		-1.1029636621865575 4.9916371356834546 38.516456407839257
		-0.59691957478045621 4.653509402542845 38.516456407839257
		6.1981886654691328e-08 4.5425319121197019 38.505902622264678
		0.59691957478045621 4.653509402542845 38.516456407839257
		1.1029636621865575 4.9916371356834546 38.516456407839257
		1.4410913953271671 5.4976812230895566 38.516456407839257
		1.5521052817001688 6.0946007978700125 38.516456407839257
		1.4339577891549726 6.0986396668246128 37.922504662798659
		1.0975042697078377 6.1020637145965235 37.418976055469898
		0.59396526353625734 6.1043515848022913 37.082529815212737
		6.1981886654691328e-08 6.1051549993983025 36.964385442320385
		-0.59396526353625734 6.1043515848022913 37.082529815212737
		-1.0975042697078377 6.1020637145965235 37.418976055469898
		-1.4339577891549726 6.0986396668246128 37.922504662798659
		-1.5521052817001688 6.0946007243324116 38.516456407839257
		-1.4339577891549726 6.090561783331613 39.110406073111292
		-1.0975042697078377 6.0871377355597023 39.613935720324335
		-0.59396526353625734 6.0848498653539345 39.950380920697214
		6.1981886654691328e-08 6.084046492353294 40.068525293589566
		0.59396526353625734 6.0848498653539345 39.950380920697214
		1.0975042697078377 6.0871377355597023 39.613935720324335
		1.4339577891549726 6.090561783331613 39.110406073111292
		1.5521052817001688 6.0946007978700125 38.516456407839257
		1.4339577891549726 6.0986396668246128 37.922504662798659
		1.0975042697078377 6.1020637145965235 37.418976055469898
		0.59396526353625734 6.1043515848022913 37.082529815212737
		6.1981886654691328e-08 6.1051549993983025 36.964385442320385
		6.1981886654691328e-08 6.6983024979354617 37.086569765646985
		6.1981886654691328e-08 7.1995423199602895 37.426439304959381
		6.1981886654691328e-08 7.5325642212779433 37.932255657707799
		0 7.6466696836203232 38.516456407839257
		6.1981886654691328e-08 7.5244864001780005 39.120158107904707
		6.1981886654691328e-08 7.1846168608656091 39.621396890045254
		6.1981886654691328e-08 6.6788015480014735 39.954419831247186
		6.1981886654691328e-08 6.084046492353294 40.068525293589566
		6.1981886654691328e-08 5.4908990978045633 39.946340970262966
		6.1981886654691328e-08 4.9896592757797356 39.60647143095057
		6.1981886654691328e-08 4.6566373744620817 39.100655078202152
		6.1981886654691328e-08 4.5425319121197019 38.505902622264678
		6.1981886654691328e-08 4.6647151955620245 37.912752628005244
		6.1981886654691328e-08 5.0045847348744159 37.411513845864697
		6.1981886654691328e-08 5.5104000477385515 37.078490904662765
		6.1981886654691328e-08 6.1051549993983025 36.964385442320385
		;
createNode joint -n "tail0_5_ofs_jnt" -p "tail0_5_ofs_ctl";
	rename -uid "86953AE3-4883-0628-DCD3-A0B8EE8ED3D8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" -81.008426509293955 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 81.008426509293955 0 0 ;
createNode transform -n "tail0_4_ofs_ctl" -p "tail0_4_fkc";
	rename -uid "CEB74D3B-46CA-F9A4-1905-9EA6EAA08DA8";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_4_ofs_ctlShape1" -p "tail0_4_ofs_ctl";
	rename -uid "7CBF2BBD-4B5F-5920-D18D-158CCE4F7285";
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
		1.5521052817001688 6.0946007978700134 38.516456407839264
		1.4410913953271671 6.6915203726504693 38.516456407839264
		1.1029636621865575 7.1975644600565705 38.516456407839264
		0.59691957478045621 7.5356921931971801 38.516456407839264
		0 7.6466696836203241 38.516456407839264
		-0.59691957478045621 7.5356921931971801 38.516456407839264
		-1.1029636621865575 7.1975644600565705 38.516456407839264
		-1.4410913953271671 6.6915203726504693 38.516456407839264
		-1.5521052817001688 6.0946007243324125 38.516456407839264
		-1.4410913953271671 5.4976812230895575 38.516456407839264
		-1.1029636621865575 4.9916371356834563 38.516456407839264
		-0.59691957478045621 4.6535094025428467 38.516456407839264
		6.1981886654691328e-08 4.5425319121197028 38.505902622264685
		0.59691957478045621 4.6535094025428467 38.516456407839264
		1.1029636621865575 4.9916371356834563 38.516456407839264
		1.4410913953271671 5.4976812230895575 38.516456407839264
		1.5521052817001688 6.0946007978700134 38.516456407839264
		1.4339577891549726 6.0986396668246137 37.922504662798666
		1.0975042697078377 6.1020637145965244 37.418976055469905
		0.59396526353625734 6.1043515848022922 37.082529815212744
		6.1981886654691328e-08 6.1051549993983034 36.964385442320392
		-0.59396526353625734 6.1043515848022922 37.082529815212744
		-1.0975042697078377 6.1020637145965244 37.418976055469905
		-1.4339577891549726 6.0986396668246137 37.922504662798666
		-1.5521052817001688 6.0946007243324125 38.516456407839264
		-1.4339577891549726 6.0905617833316139 39.110406073111299
		-1.0975042697078377 6.0871377355597032 39.613935720324342
		-0.59396526353625734 6.0848498653539353 39.950380920697221
		6.1981886654691328e-08 6.0840464923532949 40.068525293589573
		0.59396526353625734 6.0848498653539353 39.950380920697221
		1.0975042697078377 6.0871377355597032 39.613935720324342
		1.4339577891549726 6.0905617833316139 39.110406073111299
		1.5521052817001688 6.0946007978700134 38.516456407839264
		1.4339577891549726 6.0986396668246137 37.922504662798666
		1.0975042697078377 6.1020637145965244 37.418976055469905
		0.59396526353625734 6.1043515848022922 37.082529815212744
		6.1981886654691328e-08 6.1051549993983034 36.964385442320392
		6.1981886654691328e-08 6.6983024979354626 37.086569765646992
		6.1981886654691328e-08 7.1995423199602904 37.426439304959388
		6.1981886654691328e-08 7.5325642212779442 37.932255657707806
		0 7.6466696836203241 38.516456407839264
		6.1981886654691328e-08 7.5244864001780014 39.120158107904714
		6.1981886654691328e-08 7.18461686086561 39.621396890045261
		6.1981886654691328e-08 6.6788015480014735 39.954419831247193
		6.1981886654691328e-08 6.0840464923532949 40.068525293589573
		6.1981886654691328e-08 5.4908990978045642 39.946340970262973
		6.1981886654691328e-08 4.9896592757797364 39.606471430950577
		6.1981886654691328e-08 4.6566373744620826 39.100655078202159
		6.1981886654691328e-08 4.5425319121197028 38.505902622264685
		6.1981886654691328e-08 4.6647151955620254 37.912752628005251
		6.1981886654691328e-08 5.0045847348744168 37.411513845864704
		6.1981886654691328e-08 5.5104000477385533 37.078490904662772
		6.1981886654691328e-08 6.1051549993983034 36.964385442320392
		;
createNode joint -n "tail0_4_ofs_jnt" -p "tail0_4_ofs_ctl";
	rename -uid "F28B002A-4749-5EEE-2A56-069335A9D833";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" -81.008426509293955 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 81.008426509293955 0 0 ;
createNode transform -n "tail0_3_ofs_ctl" -p "tail0_3_fkc";
	rename -uid "8FB2CD85-49F9-0EA1-6A07-CDA9610E19B9";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_3_ofs_ctlShape1" -p "tail0_3_ofs_ctl";
	rename -uid "20DDE1F9-4DD3-EA9A-0E17-47A2430C1DDE";
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
		1.5521052817001688 14.108120145142982 36.354126575570355
		1.4410913953271671 14.705039719923438 36.354126575570355
		1.1029636621865575 15.211083807329539 36.354126575570355
		0.59691957478045621 15.549211540470148 36.354126575570355
		0 15.660189030893292 36.354126575570355
		-0.59691957478045621 15.549211540470148 36.354126575570355
		-1.1029636621865575 15.211083807329539 36.354126575570355
		-1.4410913953271671 14.705039719923438 36.354126575570355
		-1.5521052817001688 14.108120071605381 36.354126575570355
		-1.4410913953271671 13.511200570362526 36.354126575570355
		-1.1029636621865575 13.005156482956425 36.354126575570355
		-0.59691957478045621 12.667028749815815 36.354126575570355
		6.1981886654691328e-08 12.556051259392671 36.343572789995775
		0.59691957478045621 12.667028749815815 36.354126575570355
		1.1029636621865575 13.005156482956425 36.354126575570355
		1.4410913953271671 13.511200570362526 36.354126575570355
		1.5521052817001688 14.108120145142982 36.354126575570355
		1.4339577891549726 14.112159014097582 35.760174830529756
		1.0975042697078377 14.115583061869492 35.256646223200995
		0.59396526353625734 14.117870932075261 34.920199982943835
		6.1981886654691328e-08 14.118674346671272 34.802055610051482
		-0.59396526353625734 14.117870932075261 34.920199982943835
		-1.0975042697078377 14.115583061869492 35.256646223200995
		-1.4339577891549726 14.112159014097582 35.760174830529756
		-1.5521052817001688 14.108120071605381 36.354126575570355
		-1.4339577891549726 14.104081130604582 36.94807624084239
		-1.0975042697078377 14.10065708283267 37.451605888055433
		-0.59396526353625734 14.098369212626903 37.788051088428311
		6.1981886654691328e-08 14.097565839626263 37.906195461320664
		0.59396526353625734 14.098369212626903 37.788051088428311
		1.0975042697078377 14.10065708283267 37.451605888055433
		1.4339577891549726 14.104081130604582 36.94807624084239
		1.5521052817001688 14.108120145142982 36.354126575570355
		1.4339577891549726 14.112159014097582 35.760174830529756
		1.0975042697078377 14.115583061869492 35.256646223200995
		0.59396526353625734 14.117870932075261 34.920199982943835
		6.1981886654691328e-08 14.118674346671272 34.802055610051482
		6.1981886654691328e-08 14.711821845208432 34.924239933378082
		6.1981886654691328e-08 15.213061667233259 35.264109472690478
		6.1981886654691328e-08 15.546083568550912 35.769925825438897
		0 15.660189030893292 36.354126575570355
		6.1981886654691328e-08 15.538005747450971 36.957828275635805
		6.1981886654691328e-08 15.198136208138578 37.459067057776352
		6.1981886654691328e-08 14.692320895274442 37.792089998978284
		6.1981886654691328e-08 14.097565839626263 37.906195461320664
		6.1981886654691328e-08 13.504418445077532 37.784011137994064
		6.1981886654691328e-08 13.003178623052705 37.444141598681668
		6.1981886654691328e-08 12.670156721735051 36.93832524593325
		6.1981886654691328e-08 12.556051259392671 36.343572789995775
		6.1981886654691328e-08 12.678234542834993 35.750422795736341
		6.1981886654691328e-08 13.018104082147385 35.249184013595794
		6.1981886654691328e-08 13.523919395011522 34.916161072393862
		6.1981886654691328e-08 14.118674346671272 34.802055610051482
		;
createNode joint -n "tail0_3_ofs_jnt" -p "tail0_3_ofs_ctl";
	rename -uid "C5352770-4E63-8C09-1D61-3B8BD3888A99";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" -68.790022360501965 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 68.790022360501965 0 0 ;
createNode transform -n "tail0_2_ofs_ctl" -p "tail0_2_fkc";
	rename -uid "8554E7EC-4CC6-7DAE-A789-DC93BC3BE55F";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_2_ofs_ctlShape1" -p "tail0_2_ofs_ctl";
	rename -uid "6117D776-4B48-4A63-DCFA-4B9D060D58EC";
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
		1.5521052817001688 20.35390930005293 33.262290199377411
		1.4410913953271671 20.950828874833388 33.262290199377411
		1.1029636621865575 21.456872962239487 33.262290199377411
		0.59691957478045621 21.795000695380097 33.262290199377411
		0 21.905978185803242 33.262290199377411
		-0.59691957478045621 21.795000695380097 33.262290199377411
		-1.1029636621865575 21.456872962239487 33.262290199377411
		-1.4410913953271671 20.950828874833388 33.262290199377411
		-1.5521052817001688 20.353909226515331 33.262290199377411
		-1.4410913953271671 19.756989725272472 33.262290199377411
		-1.1029636621865575 19.250945637866373 33.262290199377411
		-0.59691957478045621 18.912817904725763 33.262290199377411
		6.1981886654691328e-08 18.801840414302617 33.251736413802831
		0.59691957478045621 18.912817904725763 33.262290199377411
		1.1029636621865575 19.250945637866373 33.262290199377411
		1.4410913953271671 19.756989725272472 33.262290199377411
		1.5521052817001688 20.35390930005293 33.262290199377411
		1.4339577891549726 20.357948169007528 32.668338454336812
		1.0975042697078377 20.36137221677944 32.164809847008051
		0.59396526353625734 20.36366008698521 31.828363606750887
		6.1981886654691328e-08 20.36446350158122 31.710219233858535
		-0.59396526353625734 20.36366008698521 31.828363606750887
		-1.0975042697078377 20.36137221677944 32.164809847008051
		-1.4339577891549726 20.357948169007528 32.668338454336812
		-1.5521052817001688 20.353909226515331 33.262290199377411
		-1.4339577891549726 20.34987028551453 33.856239864649446
		-1.0975042697078377 20.346446237742619 34.359769511862488
		-0.59396526353625734 20.344158367536853 34.696214712235367
		6.1981886654691328e-08 20.343354994536213 34.81435908512772
		0.59396526353625734 20.344158367536853 34.696214712235367
		1.0975042697078377 20.346446237742619 34.359769511862488
		1.4339577891549726 20.34987028551453 33.856239864649446
		1.5521052817001688 20.35390930005293 33.262290199377411
		1.4339577891549726 20.357948169007528 32.668338454336812
		1.0975042697078377 20.36137221677944 32.164809847008051
		0.59396526353625734 20.36366008698521 31.828363606750887
		6.1981886654691328e-08 20.36446350158122 31.710219233858535
		6.1981886654691328e-08 20.95761100011838 31.832403557185142
		6.1981886654691328e-08 21.458850822143205 32.172273096497534
		6.1981886654691328e-08 21.791872723460862 32.678089449245952
		0 21.905978185803242 33.262290199377411
		6.1981886654691328e-08 21.783794902360917 33.865991899442861
		6.1981886654691328e-08 21.443925363048525 34.367230681583408
		6.1981886654691328e-08 20.938110050184392 34.70025362278534
		6.1981886654691328e-08 20.343354994536213 34.81435908512772
		6.1981886654691328e-08 19.75020759998748 34.69217476180112
		6.1981886654691328e-08 19.248967777962655 34.352305222488724
		6.1981886654691328e-08 18.915945876644997 33.846488869740305
		6.1981886654691328e-08 18.801840414302617 33.251736413802831
		6.1981886654691328e-08 18.924023697744943 32.658586419543397
		6.1981886654691328e-08 19.263893237057335 32.15734763740285
		6.1981886654691328e-08 19.769708549921468 31.824324696200918
		6.1981886654691328e-08 20.36446350158122 31.710219233858535
		;
createNode joint -n "tail0_2_ofs_jnt" -p "tail0_2_ofs_ctl";
	rename -uid "1C49FCE1-4FB6-114C-1214-9E929920E9C2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" -58.536641523777405 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 58.536641523777391 0 0 ;
createNode transform -n "tail0_1_ofs_ctl" -p "tail0_1_fkc";
	rename -uid "5B2082E9-4B00-B27F-2814-F4AFBEF9C5DD";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_1_ofs_ctlShape1" -p "tail0_1_ofs_ctl";
	rename -uid "89CAA3FD-4660-A055-87CB-AC9568D78167";
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
		1.5521052817001688 27.605087699973847 27.543070020953238
		1.4410913953271671 28.202007274754301 27.543070020953238
		1.1029636621865575 28.708051362160404 27.543070020953238
		0.59691957478045621 29.046179095301014 27.543070020953238
		0 29.157156585724156 27.543070020953238
		-0.59691957478045621 29.046179095301014 27.543070020953238
		-1.1029636621865575 28.708051362160404 27.543070020953238
		-1.4410913953271671 28.202007274754301 27.543070020953238
		-1.5521052817001688 27.605087626436244 27.543070020953238
		-1.4410913953271671 27.008168125193389 27.543070020953238
		-1.1029636621865575 26.502124037787286 27.543070020953238
		-0.59691957478045621 26.163996304646677 27.543070020953238
		6.1981886654691328e-08 26.053018814223535 27.532516235378662
		0.59691957478045621 26.163996304646677 27.543070020953238
		1.1029636621865575 26.502124037787286 27.543070020953238
		1.4410913953271671 27.008168125193389 27.543070020953238
		1.5521052817001688 27.605087699973847 27.543070020953238
		1.4339577891549726 27.609126568928446 26.949118275912642
		1.0975042697078377 27.612550616700357 26.445589668583878
		0.59396526353625734 27.614838486906123 26.109143428326714
		6.1981886654691328e-08 27.615641901502137 25.990999055434365
		-0.59396526353625734 27.614838486906123 26.109143428326714
		-1.0975042697078377 27.612550616700357 26.445589668583878
		-1.4339577891549726 27.609126568928446 26.949118275912642
		-1.5521052817001688 27.605087626436244 27.543070020953238
		-1.4339577891549726 27.601048685435448 28.137019686225269
		-1.0975042697078377 27.597624637663536 28.640549333438315
		-0.59396526353625734 27.595336767457766 28.976994533811197
		6.1981886654691328e-08 27.594533394457127 29.09513890670355
		0.59396526353625734 27.595336767457766 28.976994533811197
		1.0975042697078377 27.597624637663536 28.640549333438315
		1.4339577891549726 27.601048685435448 28.137019686225269
		1.5521052817001688 27.605087699973847 27.543070020953238
		1.4339577891549726 27.609126568928446 26.949118275912642
		1.0975042697078377 27.612550616700357 26.445589668583878
		0.59396526353625734 27.614838486906123 26.109143428326714
		6.1981886654691328e-08 27.615641901502137 25.990999055434365
		6.1981886654691328e-08 28.208789400039294 26.113183378760969
		6.1981886654691328e-08 28.710029222064122 26.453052918073361
		6.1981886654691328e-08 29.043051123381776 26.958869270821779
		0 29.157156585724156 27.543070020953238
		6.1981886654691328e-08 29.034973302281834 28.146771721018688
		6.1981886654691328e-08 28.695103762969442 28.648010503159234
		6.1981886654691328e-08 28.189288450105305 28.98103344436117
		6.1981886654691328e-08 27.594533394457127 29.09513890670355
		6.1981886654691328e-08 27.001385999908397 28.972954583376946
		6.1981886654691328e-08 26.500146177883568 28.633085044064554
		6.1981886654691328e-08 26.167124276565914 28.127268691316136
		6.1981886654691328e-08 26.053018814223535 27.532516235378662
		6.1981886654691328e-08 26.175202097665856 26.939366241119224
		6.1981886654691328e-08 26.515071636978249 26.438127458978681
		6.1981886654691328e-08 27.020886949842385 26.105104517776745
		6.1981886654691328e-08 27.615641901502137 25.990999055434365
		;
createNode joint -n "tail0_1_ofs_jnt" -p "tail0_1_ofs_ctl";
	rename -uid "792521D5-4C2A-B4BB-B428-6A87A434BC2A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 5.6843418860808015e-14 -3.0198066269804258e-14 ;
	setAttr ".r" -type "double3" -44.935567208189468 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 44.935567208189461 0 0 ;
createNode transform -n "tail0_0_ofs_ctl" -p "tail0_0_fkc";
	rename -uid "F408F2D0-48D6-2B80-153C-4CADBB8B78F8";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "tail0_0_ofs_ctlShape1" -p "tail0_0_ofs_ctl";
	rename -uid "FDAF16E8-45C0-8D57-55C9-14AF316A3BA0";
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
		1.5521052817001688 28.332793270215923 26.793924658578611
		1.4410913953271671 28.929712844996381 26.793924658578611
		1.1029636621865575 29.43575693240248 26.793924658578611
		0.59691957478045621 29.77388466554309 26.793924658578611
		0 29.884862155966236 26.793924658578611
		-0.59691957478045621 29.77388466554309 26.793924658578611
		-1.1029636621865575 29.43575693240248 26.793924658578611
		-1.4410913953271671 28.929712844996381 26.793924658578611
		-1.5521052817001688 28.332793196678324 26.793924658578611
		-1.4410913953271671 27.735873695435465 26.793924658578611
		-1.1029636621865575 27.229829608029366 26.793924658578611
		-0.59691957478045621 26.891701874888756 26.793924658578611
		6.1981886654691328e-08 26.780724384465611 26.783370873004035
		0.59691957478045621 26.891701874888756 26.793924658578611
		1.1029636621865575 27.229829608029366 26.793924658578611
		1.4410913953271671 27.735873695435465 26.793924658578611
		1.5521052817001688 28.332793270215923 26.793924658578611
		1.4339577891549726 28.336832139170522 26.199972913538016
		1.0975042697078377 28.340256186942433 25.696444306209251
		0.59396526353625734 28.342544057148203 25.359998065952087
		6.1981886654691328e-08 28.343347471744213 25.241853693059735
		-0.59396526353625734 28.342544057148203 25.359998065952087
		-1.0975042697078377 28.340256186942433 25.696444306209251
		-1.4339577891549726 28.336832139170522 26.199972913538016
		-1.5521052817001688 28.332793196678324 26.793924658578611
		-1.4339577891549726 28.328754255677524 27.387874323850642
		-1.0975042697078377 28.325330207905612 27.891403971063689
		-0.59396526353625734 28.323042337699846 28.227849171436571
		6.1981886654691328e-08 28.322238964699206 28.345993544328923
		0.59396526353625734 28.323042337699846 28.227849171436571
		1.0975042697078377 28.325330207905612 27.891403971063689
		1.4339577891549726 28.328754255677524 27.387874323850642
		1.5521052817001688 28.332793270215923 26.793924658578611
		1.4339577891549726 28.336832139170522 26.199972913538016
		1.0975042697078377 28.340256186942433 25.696444306209251
		0.59396526353625734 28.342544057148203 25.359998065952087
		6.1981886654691328e-08 28.343347471744213 25.241853693059735
		6.1981886654691328e-08 28.936494970281373 25.364038016386342
		6.1981886654691328e-08 29.437734792306202 25.703907555698734
		6.1981886654691328e-08 29.770756693623852 26.209723908447149
		0 29.884862155966236 26.793924658578611
		6.1981886654691328e-08 29.76267887252391 27.397626358644061
		6.1981886654691328e-08 29.422809333211518 27.898865140784608
		6.1981886654691328e-08 28.916994020347385 28.23188808198654
		6.1981886654691328e-08 28.322238964699206 28.345993544328923
		6.1981886654691328e-08 27.729091570150473 28.223809221002316
		6.1981886654691328e-08 27.227851748125644 27.883939681689927
		6.1981886654691328e-08 26.894829846807994 27.378123328941509
		6.1981886654691328e-08 26.780724384465611 26.783370873004035
		6.1981886654691328e-08 26.902907667907936 26.190220878744597
		6.1981886654691328e-08 27.242777207220328 25.688982096604054
		6.1981886654691328e-08 27.748592520084461 25.355959155402118
		6.1981886654691328e-08 28.343347471744213 25.241853693059735
		;
createNode joint -n "tail0_0_ofs_jnt" -p "tail0_0_ofs_ctl";
	rename -uid "A0C75705-4BA4-3AC7-557A-62AE8CC3BF5B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" -43.400997043769095 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 43.400997043769095 0 0 ;
createNode transform -n "tail0_IK" -p "tail0_ctl_data";
	rename -uid "DA119905-4B6B-4D60-B780-85B7257EA512";
	setAttr -cb on ".ro";
createNode transform -n "tail0_0_ikc_ofs" -p "tail0_IK";
	rename -uid "F2AD6103-4781-7640-02EF-348F4019ED65";
	setAttr ".t" -type "double3" -6.2769588524302181e-14 -5.6843418860808015e-14 8.5265128291212022e-14 ;
	setAttr ".r" -type "double3" -43.400997043769095 0 0 ;
	setAttr -cb on ".ro";
createNode transform -n "tail0_0_ikc" -p "tail0_0_ikc_ofs";
	rename -uid "DF946BC4-4CA2-A221-1EFD-24A5E7EA59EE";
	setAttr -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_0_ikcShape1" -p "tail0_0_ikc";
	rename -uid "C6EEA36B-4E56-EA79-27A7-3396FBDF50B2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
		27
		5.7307096139572971e-16 9.3589586285385984 5.7307096139572971e-16
		4.0522234714395929e-16 6.6177829978254596 6.6177829978254596
		3.5090473801450624e-32 5.7307096139572971e-16 9.3589586285385984
		-4.0522234714395929e-16 -6.6177829978254596 6.6177829978254596
		-5.7307096139572971e-16 -9.3589586285385984 5.7307096139572971e-16
		-4.0522234714395929e-16 -6.6177829978254596 -6.6177829978254596
		-3.5090473801450624e-32 -5.7307096139572971e-16 -9.3589586285385984
		4.0522234714395929e-16 6.6177829978254596 -6.6177829978254596
		5.7307096139572971e-16 9.3589586285385984 -5.7307096139572971e-16
		-6.6177829978254596 6.6177829978254596 4.0522234714395929e-16
		-9.3589586285385984 3.5090473801450624e-32 5.7307096139572971e-16
		-6.6177829978254596 -6.6177829978254596 -4.0522234714395929e-16
		-5.7307096139572971e-16 -9.3589586285385984 5.7307096139572971e-16
		6.6177829978254596 -6.6177829978254596 -4.0522234714395929e-16
		9.3589586285385984 -3.5090473801450624e-32 -5.7307096139572971e-16
		6.6177829978254596 6.6177829978254596 4.0522234714395929e-16
		5.7307096139572971e-16 9.3589586285385984 5.7307096139572971e-16
		4.0522234714395929e-16 6.6177829978254596 6.6177829978254596
		3.5090473801450624e-32 5.7307096139572971e-16 9.3589586285385984
		-6.6177829978254596 4.0522234714395929e-16 6.6177829978254596
		-9.3589586285385984 5.7307096139572971e-16 3.5090473801450624e-32
		-6.6177829978254596 -4.0522234714395929e-16 -6.6177829978254596
		-3.5090473801450624e-32 -5.7307096139572971e-16 -9.3589586285385984
		6.6177829978254596 -4.0522234714395929e-16 -6.6177829978254596
		9.3589586285385984 -5.7307096139572971e-16 -3.5090473801450624e-32
		6.6177829978254596 4.0522234714395929e-16 6.6177829978254596
		3.5090473801450624e-32 5.7307096139572971e-16 9.3589586285385984
		;
createNode joint -n "tail0_0_ikj" -p "tail0_0_ikc";
	rename -uid "9E8BB722-4263-8141-C79E-EEADCCA0F3B1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 3.1805546814635168e-15 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.7265627143725949 -0.68710015433234117 0
		 0 0.68710015433234117 0.7265627143725949 0 -6.2769588524302181e-14 275.06642317439804 -207.72387485400728 1;
	setAttr ".radi" 6.2393057523590656;
createNode transform -n "tail0_1_ikc_ofs" -p "tail0_0_ikc";
	rename -uid "DF1B1079-4E3F-B1C3-7AF2-4DBED9B093F8";
	setAttr ".t" -type "double3" 3.5558937688665445e-14 -0.12692753719693428 -49.561444344177715 ;
	setAttr ".r" -type "double3" -4.6302455187912663 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "tail0_1_ikc" -p "tail0_1_ikc_ofs";
	rename -uid "677F14A2-42E7-8BFC-AEFC-7689F575F529";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_1_ikcShape1" -p "tail0_1_ikc";
	rename -uid "A03A2D88-4E9A-CB42-6C5E-868E910F4EF0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
		27
		5.7307096139571808e-16 9.3589586285385984 5.7307096139572971e-16
		4.0522234714394771e-16 6.6177829978254596 6.6177829978254596
		-1.1575299056584417e-29 5.7307096139572971e-16 9.3589586285385984
		-4.0522234714397088e-16 -6.6177829978254596 6.6177829978254596
		-5.7307096139574135e-16 -9.3589586285385984 5.7307096139572971e-16
		-4.0522234714397088e-16 -6.6177829978254596 -6.6177829978254596
		-1.164548000418732e-29 -5.7307096139572971e-16 -9.3589586285385984
		4.0522234714394771e-16 6.6177829978254596 -6.6177829978254596
		5.7307096139571808e-16 9.3589586285385984 -5.7307096139572971e-16
		-6.6177829978254596 6.6177829978254596 4.0522234714395929e-16
		-9.3589586285385984 3.5090473801450624e-32 5.7307096139572971e-16
		-6.6177829978254596 -6.6177829978254596 -4.0522234714395929e-16
		-5.7307096139574135e-16 -9.3589586285385984 5.7307096139572971e-16
		6.6177829978254596 -6.6177829978254596 -4.0522234714395929e-16
		9.3589586285385984 -3.5090473801450624e-32 -5.7307096139572971e-16
		6.6177829978254596 6.6177829978254596 4.0522234714395929e-16
		5.7307096139571808e-16 9.3589586285385984 5.7307096139572971e-16
		4.0522234714394771e-16 6.6177829978254596 6.6177829978254596
		-1.1575299056584417e-29 5.7307096139572971e-16 9.3589586285385984
		-6.6177829978254596 4.0522234714395929e-16 6.6177829978254596
		-9.3589586285385984 5.7307096139572971e-16 3.5090473801450624e-32
		-6.6177829978254596 -4.0522234714395929e-16 -6.6177829978254596
		-1.164548000418732e-29 -5.7307096139572971e-16 -9.3589586285385984
		6.6177829978254596 -4.0522234714395929e-16 -6.6177829978254596
		9.3589586285385984 -5.7307096139572971e-16 -3.5090473801450624e-32
		6.6177829978254596 4.0522234714395929e-16 6.6177829978254596
		-1.1575299056584417e-29 5.7307096139572971e-16 9.3589586285385984
		;
createNode joint -n "tail0_1_ikj" -p "tail0_1_ikc";
	rename -uid "06897468-4138-19CE-06F0-76948D079EE0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 3.1805546814635168e-15 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.6687252807407702 -0.7435095822504092 0
		 0 0.7435095822504092 0.6687252807407702 0 -2.7210650835636736e-14 240.9205263006254 -243.64616045454233 1;
	setAttr ".radi" 6.2393057523590656;
createNode transform -n "tail0_2_ikc_ofs" -p "tail0_0_ikc";
	rename -uid "2EE69D6E-4237-D636-EB80-A0A6958B5C8F";
	setAttr ".t" -type "double3" 7.7149516464089373e-14 -7.9236767370900907 -84.043956988303989 ;
	setAttr ".r" -type "double3" -20.028579121701721 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "tail0_2_ikc" -p "tail0_2_ikc_ofs";
	rename -uid "A18A7DB5-4E0D-2D3D-785B-218C49A1AE45";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_2_ikcShape1" -p "tail0_2_ikc";
	rename -uid "B15AA346-489E-442F-AE5D-F08ACC7E817F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
		27
		5.7307096139572971e-16 9.3589586285385984 5.7307096139572971e-16
		4.0522234714395929e-16 6.6177829978254596 6.6177829978254596
		3.5090473801450624e-32 5.7307096139572971e-16 9.3589586285385984
		-4.0522234714395929e-16 -6.6177829978254596 6.6177829978254596
		-5.7307096139572971e-16 -9.3589586285385984 5.7307096139572971e-16
		-4.0522234714395929e-16 -6.6177829978254596 -6.6177829978254596
		-3.5090473801450624e-32 -5.7307096139572971e-16 -9.3589586285385984
		4.0522234714395929e-16 6.6177829978254596 -6.6177829978254596
		5.7307096139572971e-16 9.3589586285385984 -5.7307096139572971e-16
		-6.6177829978254596 6.6177829978254596 4.0522234714395929e-16
		-9.3589586285385984 3.5090473801450624e-32 5.7307096139572971e-16
		-6.6177829978254596 -6.6177829978254596 -4.0522234714395929e-16
		-5.7307096139572971e-16 -9.3589586285385984 5.7307096139572971e-16
		6.6177829978254596 -6.6177829978254596 -4.0522234714395929e-16
		9.3589586285385984 -3.5090473801450624e-32 -5.7307096139572971e-16
		6.6177829978254596 6.6177829978254596 4.0522234714395929e-16
		5.7307096139572971e-16 9.3589586285385984 5.7307096139572971e-16
		4.0522234714395929e-16 6.6177829978254596 6.6177829978254596
		3.5090473801450624e-32 5.7307096139572971e-16 9.3589586285385984
		-6.6177829978254596 4.0522234714395929e-16 6.6177829978254596
		-9.3589586285385984 5.7307096139572971e-16 3.5090473801450624e-32
		-6.6177829978254596 -4.0522234714395929e-16 -6.6177829978254596
		-3.5090473801450624e-32 -5.7307096139572971e-16 -9.3589586285385984
		6.6177829978254596 -4.0522234714395929e-16 -6.6177829978254596
		9.3589586285385984 -5.7307096139572971e-16 -3.5090473801450624e-32
		6.6177829978254596 4.0522234714395929e-16 6.6177829978254596
		3.5090473801450624e-32 5.7307096139572971e-16 9.3589586285385984
		;
createNode joint -n "tail0_2_ikj" -p "tail0_2_ikc";
	rename -uid "C6F14841-4C26-4D2D-D45A-77B2CFE9240D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 6.3611093629270367e-15 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.44729746447414087 -0.89438525159743365 0
		 0 0.89438525159743365 0.44729746447414087 0 1.4379927939787192e-14 211.56275927912262 -263.34272086110889 1;
	setAttr ".radi" 6.2393057523590656;
createNode transform -n "tail0_3_ikc_ofs" -p "tail0_0_ikc";
	rename -uid "1732E9B1-409D-EB8A-E7FF-4EA6D83D186F";
	setAttr ".t" -type "double3" 1.1840848196595671e-13 -21.883182910229266 -110.73851257832533 ;
	setAttr ".r" -type "double3" -35.575935966354457 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "tail0_3_ikc" -p "tail0_3_ikc_ofs";
	rename -uid "BE58C1C0-4825-B343-FEA3-4F9986A7E2B6";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_3_ikcShape1" -p "tail0_3_ikc";
	rename -uid "C7CBB7A9-4D98-A0D2-7FE9-31BB63FF882D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
		27
		5.7307096139572971e-16 9.3589586285385984 5.7307096139572971e-16
		4.0522234714395929e-16 6.6177829978254596 6.6177829978254596
		3.5090473801450624e-32 5.7307096139572971e-16 9.3589586285385984
		-4.0522234714395929e-16 -6.6177829978254596 6.6177829978254596
		-5.7307096139572971e-16 -9.3589586285385984 5.7307096139572971e-16
		-4.0522234714395929e-16 -6.6177829978254596 -6.6177829978254596
		-3.5090473801450624e-32 -5.7307096139572971e-16 -9.3589586285385984
		4.0522234714395929e-16 6.6177829978254596 -6.6177829978254596
		5.7307096139572971e-16 9.3589586285385984 -5.7307096139572971e-16
		-6.6177829978254596 6.6177829978254596 4.0522234714395929e-16
		-9.3589586285385984 3.5090473801450624e-32 5.7307096139572971e-16
		-6.6177829978254596 -6.6177829978254596 -4.0522234714395929e-16
		-5.7307096139572971e-16 -9.3589586285385984 5.7307096139572971e-16
		6.6177829978254596 -6.6177829978254596 -4.0522234714395929e-16
		9.3589586285385984 -3.5090473801450624e-32 -5.7307096139572971e-16
		6.6177829978254596 6.6177829978254596 4.0522234714395929e-16
		5.7307096139572971e-16 9.3589586285385984 5.7307096139572971e-16
		4.0522234714395929e-16 6.6177829978254596 6.6177829978254596
		3.5090473801450624e-32 5.7307096139572971e-16 9.3589586285385984
		-6.6177829978254596 4.0522234714395929e-16 6.6177829978254596
		-9.3589586285385984 5.7307096139572971e-16 3.5090473801450624e-32
		-6.6177829978254596 -4.0522234714395929e-16 -6.6177829978254596
		-3.5090473801450624e-32 -5.7307096139572971e-16 -9.3589586285385984
		6.6177829978254596 -4.0522234714395929e-16 -6.6177829978254596
		9.3589586285385984 -5.7307096139572971e-16 -3.5090473801450624e-32
		6.6177829978254596 4.0522234714395929e-16 6.6177829978254596
		3.5090473801450624e-32 5.7307096139572971e-16 9.3589586285385984
		;
createNode joint -n "tail0_3_ikj" -p "tail0_3_ikc";
	rename -uid "4C8DC56E-4FAA-9E76-D6E2-0E8F1B84DD21";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 7.9513867036587935e-15 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.19120417802167755 -0.98155028516477683 0
		 0 0.98155028516477683 0.19120417802167755 0 5.5638893441654538e-14 183.07846931692876 -273.14641078359773 1;
	setAttr ".radi" 6.2393057523590656;
createNode transform -n "tail0_4_ikc_ofs" -p "tail0_0_ikc";
	rename -uid "67191BCD-46E2-2509-DB9F-F6B183DDA8FC";
	setAttr ".t" -type "double3" 1.5365913348278189e-13 -50.025645301253292 -147.74308776329025 ;
	setAttr ".r" -type "double3" -35.575935966354471 0 0 ;
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "tail0_4_ikc" -p "tail0_4_ikc_ofs";
	rename -uid "BC921141-4453-E42F-F44D-729C3EDA6CA1";
	setAttr -l on -k off ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "tail0_4_ikcShape1" -p "tail0_4_ikc";
	rename -uid "B9141C12-47C5-8DAC-B567-2B924F8006D7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
		27
		5.7307096139577616e-16 9.3589586285385984 5.2861616924067834e-14
		4.0522234714400574e-16 6.6177829978254596 6.617782997825512
		4.6476648595344925e-29 5.7307096139572971e-16 9.3589586285386499
		-4.0522234714391285e-16 -6.6177829978254596 6.617782997825512
		-5.7307096139568327e-16 -9.3589586285385984 5.2861616924067834e-14
		-4.0522234714391285e-16 -6.6177829978254596 -6.6177829978254072
		4.6406467647742023e-29 -5.7307096139572971e-16 -9.3589586285385469
		4.0522234714400574e-16 6.6177829978254596 -6.6177829978254072
		5.7307096139577616e-16 9.3589586285385984 5.1715475001276377e-14
		-6.6177829978254596 6.6177829978254596 5.2693768309816062e-14
		-9.3589586285385984 3.5090473801450624e-32 5.2861616924067834e-14
		-6.6177829978254596 -6.6177829978254596 5.188332361552815e-14
		-5.7307096139568327e-16 -9.3589586285385984 5.2861616924067834e-14
		6.6177829978254596 -6.6177829978254596 5.188332361552815e-14
		9.3589586285385984 -3.5090473801450624e-32 5.1715475001276377e-14
		6.6177829978254596 6.6177829978254596 5.2693768309816062e-14
		5.7307096139577616e-16 9.3589586285385984 5.2861616924067834e-14
		4.0522234714400574e-16 6.6177829978254596 6.617782997825512
		4.6476648595344925e-29 5.7307096139572971e-16 9.3589586285386499
		-6.6177829978254596 4.0522234714395929e-16 6.617782997825512
		-9.3589586285385984 5.7307096139572971e-16 5.2288545962672106e-14
		-6.6177829978254596 -4.0522234714395929e-16 -6.6177829978254072
		4.6406467647742023e-29 -5.7307096139572971e-16 -9.3589586285385469
		6.6177829978254596 -4.0522234714395929e-16 -6.6177829978254072
		9.3589586285385984 -5.7307096139572971e-16 5.2288545962672106e-14
		6.6177829978254596 4.0522234714395929e-16 6.617782997825512
		4.6476648595344925e-29 5.7307096139572971e-16 9.3589586285386499
		;
createNode joint -n "tail0_4_ikj" -p "tail0_4_ikc";
	rename -uid "02A7C268-45E7-1D1C-6D6C-31B8B3606B15";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0 0 -1.4210854715202004e-14 ;
	setAttr -cb on ".ro";
	setAttr ".jo" -type "double3" 1.5902773407317584e-15 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.19120417802167755 -0.98155028516477683 0
		 0 0.98155028516477683 0.19120417802167755 0 9.0889544958479743e-14 137.20535613238562 -280.69586512202591 1;
	setAttr ".radi" 6.2393057523590656;
createNode transform -n "tail0_anchorF1" -p "master_ctl";
	rename -uid "20AF3E9A-4531-3E8F-98C6-6A845B415286";
	setAttr ".v" no;
	setAttr -cb on ".ro";
createNode locator -n "tail0_anchorF1Shape" -p "tail0_anchorF1";
	rename -uid "C1AE1E77-4A58-FA9A-296F-0D93A3503C87";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 23.397396571346498 23.397396571346498 23.397396571346498 ;
createNode transform -n "head0_head_fkc_SPACE_3_ofs" -p "master_ctl";
	rename -uid "B4091B8F-40ED-0CDF-F057-2B9A13D7CD76";
	setAttr ".t" -type "double3" 0 276.48603373272095 157.71066417865995 ;
createNode transform -n "head0_head_fkc_SPACE_3" -p "head0_head_fkc_SPACE_3_ofs";
	rename -uid "B97D3E48-4E11-6B2D-A6D2-BD95F9529FEF";
createNode transform -n "lfLegBp0_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "96C33979-4655-08EA-9ED6-CDBDF4B25B5C";
	setAttr ".t" -type "double3" 38.357234944738131 32.430120424377833 -181.84851500573805 ;
createNode transform -n "lfLegBp0_ikc_SPACE_1" -p "lfLegBp0_ikc_SPACE_1_ofs";
	rename -uid "6CC68ADD-41D7-8B74-B260-6687DA5F2BEA";
createNode transform -n "lfLegBp0_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "BB52C23F-4AC7-0D8D-9D6D-B8B6E51B9F7A";
	setAttr ".t" -type "double3" 34.545244628845914 131.11242826363832 -89.195325928131652 ;
	setAttr ".r" -type "double3" -10.050520019357235 -4.3338372301968242 6.7998637516371545e-06 ;
createNode transform -n "lfLegBp0_pvc_SPACE_2" -p "lfLegBp0_pvc_SPACE_2_ofs";
	rename -uid "295B3780-4D67-C341-D30E-A8AD603B2CB4";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 0 -1.4210854715202004e-14 ;
createNode transform -n "lfLegBp1_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "2FA0135B-43D2-9105-5AD9-C3AD9033FE39";
	setAttr ".t" -type "double3" 46.120991069505067 34.745592349254537 70.479277947315055 ;
createNode transform -n "lfLegBp1_ikc_SPACE_1" -p "lfLegBp1_ikc_SPACE_1_ofs";
	rename -uid "5A2CE2FD-4ACD-AE37-66F7-B598774D43FB";
createNode transform -n "lfLegBp1_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "25812516-4786-1814-0D11-36A4A6BB3805";
	setAttr ".t" -type "double3" 50.086173291694571 127.35193949443408 -20.058274605394814 ;
	setAttr ".r" -type "double3" -179.77615065566152 0.887180879387795 179.999993113134 ;
createNode transform -n "lfLegBp1_pvc_SPACE_2" -p "lfLegBp1_pvc_SPACE_2_ofs";
	rename -uid "BBA30BA4-4591-9306-4031-A19F19977A5C";
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-14 7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_3_ofs" -p "master_ctl";
	rename -uid "2180A5F6-4093-E56F-906E-B5B190DA630B";
	setAttr ".t" -type "double3" 0 287.88444108358675 126.28414969879091 ;
createNode transform -n "neckQd0_fore_ctl_SPACE_3" -p "neckQd0_fore_ctl_SPACE_3_ofs";
	rename -uid "02BB8FC9-4E99-8CF3-185A-3692DE3A33A4";
createNode transform -n "neckQd0_cog_ctl_SPACE_3_ofs" -p "master_ctl";
	rename -uid "C1BE5067-4D90-4B80-9968-CDB31D47A26A";
	setAttr ".t" -type "double3" -1.1995990639336598 276.33511783310189 75.803516045812415 ;
createNode transform -n "neckQd0_cog_ctl_SPACE_3" -p "neckQd0_cog_ctl_SPACE_3_ofs";
	rename -uid "09C78AD2-4A33-6BC9-39BB-1C9523E03AE1";
createNode transform -n "rtLegBp0_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "2CCCC481-45E2-03A2-6DF7-C0ADBF44B5CA";
	setAttr ".t" -type "double3" -38.357234944738117 32.4301199666141 -181.84851500573805 ;
createNode transform -n "rtLegBp0_ikc_SPACE_1" -p "rtLegBp0_ikc_SPACE_1_ofs";
	rename -uid "932FAB45-4D47-56DC-C28D-93BB1E687AEB";
createNode transform -n "rtLegBp0_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "166F4A84-47F4-CCCA-F1B0-94B7BCA6195F";
	setAttr ".t" -type "double3" -34.545244652744898 131.1124312865407 -89.195326243460741 ;
	setAttr ".r" -type "double3" -10.050520582736306 4.3338384319327226 0 ;
createNode transform -n "rtLegBp0_pvc_SPACE_2" -p "rtLegBp0_pvc_SPACE_2_ofs";
	rename -uid "C1FB12E1-416E-1EF2-41A2-6780753F356D";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -2.8421709430404007e-14 0 ;
createNode transform -n "rtLegBp1_ikc_SPACE_1_ofs" -p "master_ctl";
	rename -uid "A3E86E27-4D13-0EF8-B030-BA85A1C10C24";
	setAttr ".t" -type "double3" -46.120991069505116 34.745591855498688 70.479277947315097 ;
createNode transform -n "rtLegBp1_ikc_SPACE_1" -p "rtLegBp1_ikc_SPACE_1_ofs";
	rename -uid "A38A2140-4D6C-94F8-4180-159AF75996AB";
createNode transform -n "rtLegBp1_pvc_SPACE_2_ofs" -p "master_ctl";
	rename -uid "9C6E6B90-47FA-B7FD-4641-26AEF5D23BFA";
	setAttr ".t" -type "double3" -50.086173291663513 127.35194079994709 -20.058274603532141 ;
	setAttr ".r" -type "double3" 0.22384975061399856 180.88718085248399 0 ;
createNode transform -n "rtLegBp1_pvc_SPACE_2" -p "rtLegBp1_pvc_SPACE_2_ofs";
	rename -uid "8983299B-48DB-32FF-D755-C6BB99FA252E";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 1.4210854715202004e-14 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode nurbsCurve -n "master1_ctlShape" -p "master1_ctl";
	rename -uid "B1E0475F-4D40-75BF-2127-8794D0BA8339";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 47.389104025461791 5.1947794159432257e-15 
		-76.330674294671454 4.9799790469730343e-14 7.3465275035635091e-15 -107.94787481260758 
		-47.389104025461791 5.1947794159432186e-15 -76.330674294671311 -67.018313621517279 
		2.263311933401177e-30 3.7632709443510359e-14 -47.389104025461791 -5.1947794159432186e-15 
		76.330674294671311 3.8982831995297351e-14 -7.346527503563517e-15 107.94787481260764 
		47.389104025461791 -5.1947794159432186e-15 76.330674294671269 67.018313621517279 
		8.8062328855191751e-31 5.7949559910156365e-14 0 0 0 0 0 0 0 0 0;
createNode nurbsCurve -n "master1_ctlShapeOrig" -p "master1_ctl";
	rename -uid "38CEA632-41A8-DFDF-39F0-4094C7397325";
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
	rename -uid "39296FEE-4AF9-0329-AAD0-C6B56DB2DC75";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".tw" yes;
	setAttr -s 45 ".cp[0:44]" -type "double3" 7.8087642755252029e-14 7.6250493464163024e-15 
		-116.49800897209545 -10.29314487388514 7.5474373384830196e-15 -115.31222721701747 
		-18.542933726219758 6.2285171620480638e-15 -101.71940458889202 -27.341579337975681 
		5.9048462573629756e-15 -96.433457572814604 -35.583629241014364 5.4609697110484404e-15 
		-89.1844034516824 -43.101299067419035 4.9059235695531624e-15 -80.119812062855459 
		-49.741550738693689 4.2510069716970837e-15 -69.424212346887401 -55.369207879715532 
		3.5095521307890463e-15 -57.315335870432776 -59.869707619916483 2.6966529292107455e-15 
		-44.039684439436037 -63.151432762955878 1.8288576504986046e-15 -29.867512033215107 
		-71.590395099868601 1.085157664561053e-15 -16.579395306023468 -72.326575350628048 
		-2.1917938393142761e-30 1.1068285851399322e-13 -71.590395099868545 -1.0851576645610536e-15 
		16.579395306023574 -63.151432762955878 -1.8288576504986046e-15 29.867512033215114 
		-59.869707619916483 -2.6966529292107451e-15 44.039684439436066 -55.369207879715532 
		-3.5095521307890487e-15 57.31533587043279 -49.741550738693533 -4.2510069716970845e-15 
		69.424212346887401 -43.101299067419021 -4.9059235695531632e-15 80.119812062855303 
		-35.583629241014336 -5.4609697110484381e-15 89.184403451682357 -27.341579337975659 
		-5.9048462573629725e-15 96.433457572814532 -18.542933726219765 -6.228517162048059e-15 
		101.71940458889192 -10.293144873885144 -7.5474373384830212e-15 115.31222721701735 
		7.5252589049099904e-14 -7.6250493464163039e-15 116.49800897209539 10.293144873885275 
		-7.5474373384830212e-15 115.31222721701735 18.542933726219758 -6.228517162048059e-15 
		101.71940458889192 27.341579337975659 -5.9048462573629725e-15 96.433457572814532 
		35.58362924101435 -5.4609697110484381e-15 89.184403451682371 43.101299067418992 -4.9059235695531576e-15 
		80.119812062855274 49.741550738693505 -4.2510069716970766e-15 69.424212346887359 
		55.369207879715546 -3.5095521307890416e-15 57.315335870432747 59.869707619916511 
		-2.6966529292107451e-15 44.039684439436009 63.151432762955807 -1.8288576504986022e-15 
		29.867512033215107 71.590395099868516 -1.0851576645610513e-15 16.579395306023521 
		72.326575350628019 -7.9757909607625181e-31 8.9381587625417601e-14 71.590395099868516 
		1.0851576645610536e-15 -16.579395306023468 63.151432762955764 1.8288576504986046e-15 
		-29.867512033215114 59.869707619916525 2.6966529292107451e-15 -44.039684439436009 
		55.369207879715518 3.5095521307890416e-15 -57.315335870432762 49.741550738693419 
		4.2510069716970735e-15 -69.424212346887174 43.101299067418907 4.9059235695531545e-15 
		-80.119812062855161 35.583629241014293 5.4609697110484357e-15 -89.184403451682314 
		27.341579337975659 5.9048462573629614e-15 -96.433457572814532 18.542933726219772 
		6.2285171620480543e-15 -101.71940458889185 10.293144873885247 7.5474373384830117e-15 
		-115.31222721701718 6.4035382637105154e-14 7.6250493464162945e-15 -116.49800897209519;
createNode nurbsCurve -n "master2_ctlShapeOrig" -p "master2_ctl";
	rename -uid "953D9A5B-44D9-FA5A-6D69-12AB1819DAE8";
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
	rename -uid "C8688407-4211-7F09-AFDE-CEA0A3175CA2";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion83";
	rename -uid "AE6CF9BB-4008-19FA-F055-42998EFCB355";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion147";
	rename -uid "5D4998C4-458C-623C-4DDB-84802052921F";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion208";
	rename -uid "7110D631-4514-17CE-11B6-6AABFF7378C4";
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
	setAttr ".msaa" yes;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 7 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 10 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 4 ".dsm";
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
	setAttr -s 34 ".hyp";
connectAttr "master2_ctl.sy" "master_ctl.globalScale" -l on;
connectAttr "master_ctlShapeOrig.ws" "master_ctlShape.cr";
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
connectAttr "lfLegBp0_autoAim_end.tx" "effector5.tx";
connectAttr "lfLegBp0_autoAim_end.ty" "effector5.ty";
connectAttr "lfLegBp0_autoAim_end.tz" "effector5.tz";
connectAttr "lfLegBp0_autoAim_end.opm" "effector5.opm";
connectAttr "lfLegBp0_hip_ik.s" "lfLegBp0_upr_ik.is";
connectAttr "lfLegBp0_upr_ik.s" "lfLegBp0_lwr_ik.is";
connectAttr "lfLegBp0_lwr_ik.s" "lfLegBp0_palm_ik.is";
connectAttr "lfLegBp0_palm_ik.s" "lfLegBp0_ball_ik.is";
connectAttr "lfLegBp0_ball_ik.s" "lfLegBp0_tip_ik.is";
connectAttr "lfLegBp0_tip_ik.tx" "effector3.tx";
connectAttr "lfLegBp0_tip_ik.ty" "effector3.ty";
connectAttr "lfLegBp0_tip_ik.tz" "effector3.tz";
connectAttr "lfLegBp0_tip_ik.opm" "effector3.opm";
connectAttr "lfLegBp0_ball_ik.tx" "effector2.tx";
connectAttr "lfLegBp0_ball_ik.ty" "effector2.ty";
connectAttr "lfLegBp0_ball_ik.tz" "effector2.tz";
connectAttr "lfLegBp0_ball_ik.opm" "effector2.opm";
connectAttr "lfLegBp0_palm_ik.tx" "effector1.tx";
connectAttr "lfLegBp0_palm_ik.ty" "effector1.ty";
connectAttr "lfLegBp0_palm_ik.tz" "effector1.tz";
connectAttr "lfLegBp0_palm_ik.opm" "effector1.opm";
connectAttr "lfLegBp0_hip_ik.s" "lfLegBp0_softJ.is";
connectAttr "lfLegBp0_softJ.s" "lfLegBp0_softJ_end.is";
connectAttr "lfLegBp0_softJ_end.tx" "effector4.tx";
connectAttr "lfLegBp0_softJ_end.ty" "effector4.ty";
connectAttr "lfLegBp0_softJ_end.tz" "effector4.tz";
connectAttr "lfLegBp0_softJ_end.opm" "effector4.opm";
connectAttr "lfLegBp0_hip_ik.s" "lfLegBp0_pvChainJ.is";
connectAttr "lfLegBp0_pvChainJ.s" "lfLegBp0_pvChainJ_end.is";
connectAttr "lfLegBp0_pvChainJ_end.tx" "effector11.tx";
connectAttr "lfLegBp0_pvChainJ_end.ty" "effector11.ty";
connectAttr "lfLegBp0_pvChainJ_end.tz" "effector11.tz";
connectAttr "lfLegBp0_pvChainJ_end.opm" "effector11.opm";
connectAttr "lfLegBp0_setting.fkIkBlend" "lfLegBp0_ikCstG.v";
connectAttr "lfLegBp0_ikc.extraCtl" "lfLegBp0_heelRollG_ctl.v" -l on;
connectAttr "lfLegBp0_ikc.extraCtl" "lfLegBp0_toeRollG_ctl.v" -l on;
connectAttr "lfLegBp0_ikc.extraCtl" "lfLegBp0_outRollG_ctl.v" -l on;
connectAttr "lfLegBp0_ikc.extraCtl" "lfLegBp0_inRollG_ctl.v" -l on;
connectAttr "lfLegBp0_setting.fkIkBlend" "lfLegBp0_ballG_ikc.fkIkBlend";
connectAttr "lfLegBp0_upr_ik.msg" "lfLegBp0_1_ikh.hsj";
connectAttr "effector1.hp" "lfLegBp0_1_ikh.hee";
connectAttr "lfLegBp0_palm_ik.msg" "lfLegBp0_2_ikh.hsj";
connectAttr "effector2.hp" "lfLegBp0_2_ikh.hee";
connectAttr "lfLegBp0_ball_ik.msg" "lfLegBp0_3_ikh.hsj";
connectAttr "effector3.hp" "lfLegBp0_3_ikh.hee";
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
connectAttr "unitConversion22.o" "lfLegBp0_smart_ctl.footRoll";
connectAttr "lfLegBp0_setting.fkIkBlend" "lfLegBp0_smart_ctl.fkIkBlend";
connectAttr "lfLegBp0_autoAim.msg" "lfLegBp0_autoAimJ_ikh.hsj";
connectAttr "effector5.hp" "lfLegBp0_autoAimJ_ikh.hee";
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
connectAttr "lfLegBp1_setting.moduleScale" "lfLegBp1_ctl_data.sy";
connectAttr "lfLegBp1_setting.moduleScale" "lfLegBp1_ctl_data.sx";
connectAttr "lfLegBp1_setting.moduleScale" "lfLegBp1_ctl_data.sz";
connectAttr "lfLegBp1_hip_fk.s" "lfLegBp1_upr_fk.is";
connectAttr "lfLegBp1_upr_fk.s" "lfLegBp1_lwr_fk.is";
connectAttr "lfLegBp1_lwr_fk.s" "lfLegBp1_palm_fk.is";
connectAttr "lfLegBp1_palm_fk.s" "lfLegBp1_ball_fk.is";
connectAttr "lfLegBp1_ball_fk.s" "lfLegBp1_tip_fk.is";
connectAttr "lfLegBp1_setting.fkIkBlend" "lfLegBp1_upr_fkc.fkIkBlend";
connectAttr "lfLegBp1_setting.fkIkBlend" "lfLegBp1_lwr_fkc.fkIkBlend";
connectAttr "lfLegBp1_setting.fkIkBlend" "lfLegBp1_palm_fkc.fkIkBlend";
connectAttr "lfLegBp1_setting.palmScale" "lfLegBp1_ball_fkc_ofs.sx";
connectAttr "lfLegBp1_setting.palmScale" "lfLegBp1_ball_fkc_ofs.sy";
connectAttr "lfLegBp1_setting.palmScale" "lfLegBp1_ball_fkc_ofs.sz";
connectAttr "lfLegBp1_setting.fkIkBlend" "lfLegBp1_ball_fkc.fkIkBlend";
connectAttr "lfLegBp1_ball_fkc.ry" "lfLegBp1_toe00_2_ikc_ofs1.ry";
connectAttr "lfLegBp1_ball_fkc.ry" "lfLegBp1_toe01_2_ikc_ofs1.ry";
connectAttr "lfLegBp1_ball_fkc.ry" "lfLegBp1_toe02_2_ikc_ofs1.ry";
connectAttr "lfLegBp1_ball_fkc.ry" "lfLegBp1_toe03_2_ikc_ofs1.ry";
connectAttr "lfLegBp1_ball_fkc.ry" "lfLegBp1_toe04_2_ikc_ofs1.ry";
connectAttr "lfLegBp1_setting.fkIkBlend" "lfLegBp1_hip_fkc.fkIkBlend";
connectAttr "lfLegBp1_autoAim.s" "lfLegBp1_autoAim_end.is";
connectAttr "lfLegBp1_autoAim_end.tx" "effector16.tx";
connectAttr "lfLegBp1_autoAim_end.ty" "effector16.ty";
connectAttr "lfLegBp1_autoAim_end.tz" "effector16.tz";
connectAttr "lfLegBp1_autoAim_end.opm" "effector16.opm";
connectAttr "lfLegBp1_legLock.msg" "lfLegBp1_legLock_ikh.hsj";
connectAttr "effector17.hp" "lfLegBp1_legLock_ikh.hee";
connectAttr "lfLegBp1_hip_ik.s" "lfLegBp1_upr_ik.is";
connectAttr "lfLegBp1_upr_ik.s" "lfLegBp1_lwr_ik.is";
connectAttr "lfLegBp1_lwr_ik.s" "lfLegBp1_palm_ik.is";
connectAttr "lfLegBp1_palm_ik.s" "lfLegBp1_ball_ik.is";
connectAttr "lfLegBp1_ball_ik.s" "lfLegBp1_tip_ik.is";
connectAttr "lfLegBp1_tip_ik.tx" "effector14.tx";
connectAttr "lfLegBp1_tip_ik.ty" "effector14.ty";
connectAttr "lfLegBp1_tip_ik.tz" "effector14.tz";
connectAttr "lfLegBp1_tip_ik.opm" "effector14.opm";
connectAttr "lfLegBp1_ball_ik.tx" "effector13.tx";
connectAttr "lfLegBp1_ball_ik.ty" "effector13.ty";
connectAttr "lfLegBp1_ball_ik.tz" "effector13.tz";
connectAttr "lfLegBp1_ball_ik.opm" "effector13.opm";
connectAttr "lfLegBp1_palm_ik.tx" "effector12.tx";
connectAttr "lfLegBp1_palm_ik.ty" "effector12.ty";
connectAttr "lfLegBp1_palm_ik.tz" "effector12.tz";
connectAttr "lfLegBp1_palm_ik.opm" "effector12.opm";
connectAttr "lfLegBp1_hip_ik.s" "lfLegBp1_softJ.is";
connectAttr "lfLegBp1_softJ.s" "lfLegBp1_softJ_end.is";
connectAttr "lfLegBp1_softJ_end.tx" "effector15.tx";
connectAttr "lfLegBp1_softJ_end.ty" "effector15.ty";
connectAttr "lfLegBp1_softJ_end.tz" "effector15.tz";
connectAttr "lfLegBp1_softJ_end.opm" "effector15.opm";
connectAttr "lfLegBp1_hip_ik.s" "lfLegBp1_pvChainJ.is";
connectAttr "lfLegBp1_pvChainJ.s" "lfLegBp1_pvChainJ_end.is";
connectAttr "lfLegBp1_pvChainJ_end.tx" "effector23.tx";
connectAttr "lfLegBp1_pvChainJ_end.ty" "effector23.ty";
connectAttr "lfLegBp1_pvChainJ_end.tz" "effector23.tz";
connectAttr "lfLegBp1_pvChainJ_end.opm" "effector23.opm";
connectAttr "lfLegBp1_setting.fkIkBlend" "lfLegBp1_ikCstG.v";
connectAttr "lfLegBp1_ikc.extraCtl" "lfLegBp1_heelRollG_ctl.v" -l on;
connectAttr "lfLegBp1_ikc.extraCtl" "lfLegBp1_toeRollG_ctl.v" -l on;
connectAttr "lfLegBp1_ikc.extraCtl" "lfLegBp1_outRollG_ctl.v" -l on;
connectAttr "lfLegBp1_ikc.extraCtl" "lfLegBp1_inRollG_ctl.v" -l on;
connectAttr "lfLegBp1_setting.fkIkBlend" "lfLegBp1_ballG_ikc.fkIkBlend";
connectAttr "lfLegBp1_upr_ik.msg" "lfLegBp1_1_ikh.hsj";
connectAttr "effector12.hp" "lfLegBp1_1_ikh.hee";
connectAttr "lfLegBp1_palm_ik.msg" "lfLegBp1_2_ikh.hsj";
connectAttr "effector13.hp" "lfLegBp1_2_ikh.hee";
connectAttr "lfLegBp1_ball_ik.msg" "lfLegBp1_3_ikh.hsj";
connectAttr "effector14.hp" "lfLegBp1_3_ikh.hee";
connectAttr "lfLegBp1_setting.fkIkBlend" "lfLegBp1_line_28.v";
connectAttr "lfLegBp1_setting.fkIkBlend" "lfLegBp1_ikc.fkIkBlend";
connectAttr "lfLegBp1_setting.palmScale" "lfLegBp1_ikc.palmScale";
connectAttr "lfLegBp1_setting.palmScale" "lfLegBp1_ikc.sx" -l on;
connectAttr "lfLegBp1_setting.palmScale" "lfLegBp1_ikc.sy" -l on;
connectAttr "lfLegBp1_setting.palmScale" "lfLegBp1_ikc.sz" -l on;
connectAttr "lfLegBp1_setting.fkIkBlend" "lfLegBp1_ikc.v" -l on;
connectAttr "lfLegBp1_setting.fkIkBlend" "lfLegBp1_ikc_gmb.fkIkBlend";
connectAttr "lfLegBp1_ikc.gimbalCtl" "lfLegBp1_ikc_gmbShape.v";
connectAttr "lfLegBp1_ikc_gmbShapeOrig.ws" "lfLegBp1_ikc_gmbShape.cr";
connectAttr "unitConversion83.o" "lfLegBp1_smart_ctl.footRoll";
connectAttr "lfLegBp1_setting.fkIkBlend" "lfLegBp1_smart_ctl.fkIkBlend";
connectAttr "lfLegBp1_autoAim.msg" "lfLegBp1_autoAimJ_ikh.hsj";
connectAttr "effector16.hp" "lfLegBp1_autoAimJ_ikh.hee";
connectAttr "lfLegBp1_legLock.s" "lfLegBp1_legLock_end.is";
connectAttr "lfLegBp1_legLock_end.tx" "effector17.tx";
connectAttr "lfLegBp1_legLock_end.ty" "effector17.ty";
connectAttr "lfLegBp1_legLock_end.tz" "effector17.tz";
connectAttr "lfLegBp1_legLock_end.opm" "effector17.opm";
connectAttr "lfLegBp1_setting.fkIkBlend" "lfLegBp1_pvc.fkIkBlend";
connectAttr "lfLegBp1_setting.fkIkBlend" "lfLegBp1_pvc.v" -l on;
connectAttr "lfLegBp1_pvc.fkPin" "lfLegBp1_pin_fkc.v" -l on;
connectAttr "lfLegBp1_hip_bf.s" "lfLegBp1_upr_bf.is";
connectAttr "lfLegBp1_upr_bf.s" "lfLegBp1_lwr_bf.is";
connectAttr "lfLegBp1_lwr_bf.s" "lfLegBp1_palm_bf.is";
connectAttr "lfLegBp1_setting.palmScale" "lfLegBp1_palm_bf.sx";
connectAttr "lfLegBp1_setting.palmScale" "lfLegBp1_palm_bf.sy";
connectAttr "lfLegBp1_setting.palmScale" "lfLegBp1_palm_bf.sz";
connectAttr "lfLegBp1_palm_bf.s" "lfLegBp1_ball_bf.is";
connectAttr "lfLegBp1_ball_bf.s" "lfLegBp1_tip_bf.is";
connectAttr "neckQd0_setting.moduleScale" "neckQd0_IK.sx";
connectAttr "neckQd0_setting.moduleScale" "neckQd0_IK.sy";
connectAttr "neckQd0_setting.moduleScale" "neckQd0_IK.sz";
connectAttr "neckQd0_base_ctl.tangentCtl" "neckQd0_tangent0_ctlShape1.v";
connectAttr "neckQd0_two_ikj.s" "neckQd0_two_ikj_end.is";
connectAttr "neckQd0_fore_ctl.rx" "neckQd0_two_ikj_end.rx";
connectAttr "neckQd0_fore_ctl.ry" "neckQd0_two_ikj_end.ry";
connectAttr "neckQd0_fore_ctl.rz" "neckQd0_two_ikj_end.rz";
connectAttr "neckQd0_two_ikj_end.tx" "effector25.tx";
connectAttr "neckQd0_two_ikj_end.ty" "effector25.ty";
connectAttr "neckQd0_two_ikj_end.tz" "effector25.tz";
connectAttr "neckQd0_two_ikj_end.opm" "effector25.opm";
connectAttr "neckQd0_fore_ctl.tangentCtl" "neckQd0_tangent1_ctlShape1.v";
connectAttr "neckQd0_two_ikj.msg" "neckQd0_two_ikj_ikh.hsj";
connectAttr "effector25.hp" "neckQd0_two_ikj_ikh.hee";
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
connectAttr "rtLegBp0_autoAim_end.tx" "effector30.tx";
connectAttr "rtLegBp0_autoAim_end.ty" "effector30.ty";
connectAttr "rtLegBp0_autoAim_end.tz" "effector30.tz";
connectAttr "rtLegBp0_autoAim_end.opm" "effector30.opm";
connectAttr "rtLegBp0_hip_ik.s" "rtLegBp0_upr_ik.is";
connectAttr "rtLegBp0_upr_ik.s" "rtLegBp0_lwr_ik.is";
connectAttr "rtLegBp0_lwr_ik.s" "rtLegBp0_palm_ik.is";
connectAttr "rtLegBp0_palm_ik.s" "rtLegBp0_ball_ik.is";
connectAttr "rtLegBp0_ball_ik.s" "rtLegBp0_tip_ik.is";
connectAttr "rtLegBp0_tip_ik.tx" "effector28.tx";
connectAttr "rtLegBp0_tip_ik.ty" "effector28.ty";
connectAttr "rtLegBp0_tip_ik.tz" "effector28.tz";
connectAttr "rtLegBp0_tip_ik.opm" "effector28.opm";
connectAttr "rtLegBp0_ball_ik.tx" "effector27.tx";
connectAttr "rtLegBp0_ball_ik.ty" "effector27.ty";
connectAttr "rtLegBp0_ball_ik.tz" "effector27.tz";
connectAttr "rtLegBp0_ball_ik.opm" "effector27.opm";
connectAttr "rtLegBp0_palm_ik.tx" "effector26.tx";
connectAttr "rtLegBp0_palm_ik.ty" "effector26.ty";
connectAttr "rtLegBp0_palm_ik.tz" "effector26.tz";
connectAttr "rtLegBp0_palm_ik.opm" "effector26.opm";
connectAttr "rtLegBp0_hip_ik.s" "rtLegBp0_softJ.is";
connectAttr "rtLegBp0_softJ.s" "rtLegBp0_softJ_end.is";
connectAttr "rtLegBp0_softJ_end.tx" "effector29.tx";
connectAttr "rtLegBp0_softJ_end.ty" "effector29.ty";
connectAttr "rtLegBp0_softJ_end.tz" "effector29.tz";
connectAttr "rtLegBp0_softJ_end.opm" "effector29.opm";
connectAttr "rtLegBp0_hip_ik.s" "rtLegBp0_pvChainJ.is";
connectAttr "rtLegBp0_pvChainJ.s" "rtLegBp0_pvChainJ_end.is";
connectAttr "rtLegBp0_pvChainJ_end.tx" "effector36.tx";
connectAttr "rtLegBp0_pvChainJ_end.ty" "effector36.ty";
connectAttr "rtLegBp0_pvChainJ_end.tz" "effector36.tz";
connectAttr "rtLegBp0_pvChainJ_end.opm" "effector36.opm";
connectAttr "rtLegBp0_setting.fkIkBlend" "rtLegBp0_ikCstG.v";
connectAttr "rtLegBp0_ikc.extraCtl" "rtLegBp0_heelRollG_ctl.v" -l on;
connectAttr "rtLegBp0_ikc.extraCtl" "rtLegBp0_toeRollG_ctl.v" -l on;
connectAttr "rtLegBp0_ikc.extraCtl" "rtLegBp0_outRollG_ctl.v" -l on;
connectAttr "rtLegBp0_ikc.extraCtl" "rtLegBp0_inRollG_ctl.v" -l on;
connectAttr "rtLegBp0_setting.fkIkBlend" "rtLegBp0_ballG_ikc.fkIkBlend";
connectAttr "rtLegBp0_upr_ik.msg" "rtLegBp0_1_ikh.hsj";
connectAttr "effector26.hp" "rtLegBp0_1_ikh.hee";
connectAttr "rtLegBp0_palm_ik.msg" "rtLegBp0_2_ikh.hsj";
connectAttr "effector27.hp" "rtLegBp0_2_ikh.hee";
connectAttr "rtLegBp0_ball_ik.msg" "rtLegBp0_3_ikh.hsj";
connectAttr "effector28.hp" "rtLegBp0_3_ikh.hee";
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
connectAttr "unitConversion147.o" "rtLegBp0_smart_ctl.footRoll";
connectAttr "rtLegBp0_setting.fkIkBlend" "rtLegBp0_smart_ctl.fkIkBlend";
connectAttr "rtLegBp0_autoAim.msg" "rtLegBp0_autoAimJ_ikh.hsj";
connectAttr "effector30.hp" "rtLegBp0_autoAimJ_ikh.hee";
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
connectAttr "rtLegBp1_setting.moduleScale" "rtLegBp1_ctl_data.sy";
connectAttr "rtLegBp1_setting.moduleScale" "rtLegBp1_ctl_data.sx";
connectAttr "rtLegBp1_setting.moduleScale" "rtLegBp1_ctl_data.sz";
connectAttr "rtLegBp1_hip_fk.s" "rtLegBp1_upr_fk.is";
connectAttr "rtLegBp1_upr_fk.s" "rtLegBp1_lwr_fk.is";
connectAttr "rtLegBp1_lwr_fk.s" "rtLegBp1_palm_fk.is";
connectAttr "rtLegBp1_palm_fk.s" "rtLegBp1_ball_fk.is";
connectAttr "rtLegBp1_ball_fk.s" "rtLegBp1_tip_fk.is";
connectAttr "rtLegBp1_setting.fkIkBlend" "rtLegBp1_upr_fkc.fkIkBlend";
connectAttr "rtLegBp1_setting.fkIkBlend" "rtLegBp1_lwr_fkc.fkIkBlend";
connectAttr "rtLegBp1_setting.fkIkBlend" "rtLegBp1_palm_fkc.fkIkBlend";
connectAttr "rtLegBp1_setting.palmScale" "rtLegBp1_ball_fkc_ofs.sx";
connectAttr "rtLegBp1_setting.palmScale" "rtLegBp1_ball_fkc_ofs.sy";
connectAttr "rtLegBp1_setting.palmScale" "rtLegBp1_ball_fkc_ofs.sz";
connectAttr "rtLegBp1_setting.fkIkBlend" "rtLegBp1_ball_fkc.fkIkBlend";
connectAttr "rtLegBp1_ball_fkc.ry" "rtLegBp1_toe00_2_ikc_ofs1.ry";
connectAttr "rtLegBp1_ball_fkc.ry" "rtLegBp1_toe01_2_ikc_ofs1.ry";
connectAttr "rtLegBp1_ball_fkc.ry" "rtLegBp1_toe02_2_ikc_ofs1.ry";
connectAttr "rtLegBp1_ball_fkc.ry" "rtLegBp1_toe03_2_ikc_ofs1.ry";
connectAttr "rtLegBp1_ball_fkc.ry" "rtLegBp1_toe04_2_ikc_ofs1.ry";
connectAttr "rtLegBp1_setting.fkIkBlend" "rtLegBp1_hip_fkc.fkIkBlend";
connectAttr "rtLegBp1_autoAim.s" "rtLegBp1_autoAim_end.is";
connectAttr "rtLegBp1_autoAim_end.tx" "effector41.tx";
connectAttr "rtLegBp1_autoAim_end.ty" "effector41.ty";
connectAttr "rtLegBp1_autoAim_end.tz" "effector41.tz";
connectAttr "rtLegBp1_autoAim_end.opm" "effector41.opm";
connectAttr "rtLegBp1_legLock.msg" "rtLegBp1_legLock_ikh.hsj";
connectAttr "effector42.hp" "rtLegBp1_legLock_ikh.hee";
connectAttr "rtLegBp1_hip_ik.s" "rtLegBp1_upr_ik.is";
connectAttr "rtLegBp1_upr_ik.s" "rtLegBp1_lwr_ik.is";
connectAttr "rtLegBp1_lwr_ik.s" "rtLegBp1_palm_ik.is";
connectAttr "rtLegBp1_palm_ik.s" "rtLegBp1_ball_ik.is";
connectAttr "rtLegBp1_ball_ik.s" "rtLegBp1_tip_ik.is";
connectAttr "rtLegBp1_tip_ik.tx" "effector39.tx";
connectAttr "rtLegBp1_tip_ik.ty" "effector39.ty";
connectAttr "rtLegBp1_tip_ik.tz" "effector39.tz";
connectAttr "rtLegBp1_tip_ik.opm" "effector39.opm";
connectAttr "rtLegBp1_ball_ik.tx" "effector38.tx";
connectAttr "rtLegBp1_ball_ik.ty" "effector38.ty";
connectAttr "rtLegBp1_ball_ik.tz" "effector38.tz";
connectAttr "rtLegBp1_ball_ik.opm" "effector38.opm";
connectAttr "rtLegBp1_palm_ik.tx" "effector37.tx";
connectAttr "rtLegBp1_palm_ik.ty" "effector37.ty";
connectAttr "rtLegBp1_palm_ik.tz" "effector37.tz";
connectAttr "rtLegBp1_palm_ik.opm" "effector37.opm";
connectAttr "rtLegBp1_hip_ik.s" "rtLegBp1_softJ.is";
connectAttr "rtLegBp1_softJ.s" "rtLegBp1_softJ_end.is";
connectAttr "rtLegBp1_softJ_end.tx" "effector40.tx";
connectAttr "rtLegBp1_softJ_end.ty" "effector40.ty";
connectAttr "rtLegBp1_softJ_end.tz" "effector40.tz";
connectAttr "rtLegBp1_softJ_end.opm" "effector40.opm";
connectAttr "rtLegBp1_hip_ik.s" "rtLegBp1_pvChainJ.is";
connectAttr "rtLegBp1_pvChainJ.s" "rtLegBp1_pvChainJ_end.is";
connectAttr "rtLegBp1_pvChainJ_end.tx" "effector48.tx";
connectAttr "rtLegBp1_pvChainJ_end.ty" "effector48.ty";
connectAttr "rtLegBp1_pvChainJ_end.tz" "effector48.tz";
connectAttr "rtLegBp1_pvChainJ_end.opm" "effector48.opm";
connectAttr "rtLegBp1_setting.fkIkBlend" "rtLegBp1_ikCstG.v";
connectAttr "rtLegBp1_ikc.extraCtl" "rtLegBp1_heelRollG_ctl.v" -l on;
connectAttr "rtLegBp1_ikc.extraCtl" "rtLegBp1_toeRollG_ctl.v" -l on;
connectAttr "rtLegBp1_ikc.extraCtl" "rtLegBp1_outRollG_ctl.v" -l on;
connectAttr "rtLegBp1_ikc.extraCtl" "rtLegBp1_inRollG_ctl.v" -l on;
connectAttr "rtLegBp1_setting.fkIkBlend" "rtLegBp1_ballG_ikc.fkIkBlend";
connectAttr "rtLegBp1_upr_ik.msg" "rtLegBp1_1_ikh.hsj";
connectAttr "effector37.hp" "rtLegBp1_1_ikh.hee";
connectAttr "rtLegBp1_palm_ik.msg" "rtLegBp1_2_ikh.hsj";
connectAttr "effector38.hp" "rtLegBp1_2_ikh.hee";
connectAttr "rtLegBp1_ball_ik.msg" "rtLegBp1_3_ikh.hsj";
connectAttr "effector39.hp" "rtLegBp1_3_ikh.hee";
connectAttr "rtLegBp1_setting.fkIkBlend" "rtLegBp1_line_28.v";
connectAttr "rtLegBp1_setting.fkIkBlend" "rtLegBp1_ikc.fkIkBlend";
connectAttr "rtLegBp1_setting.palmScale" "rtLegBp1_ikc.palmScale";
connectAttr "rtLegBp1_setting.palmScale" "rtLegBp1_ikc.sx" -l on;
connectAttr "rtLegBp1_setting.palmScale" "rtLegBp1_ikc.sy" -l on;
connectAttr "rtLegBp1_setting.palmScale" "rtLegBp1_ikc.sz" -l on;
connectAttr "rtLegBp1_setting.fkIkBlend" "rtLegBp1_ikc.v" -l on;
connectAttr "rtLegBp1_setting.fkIkBlend" "rtLegBp1_ikc_gmb.fkIkBlend";
connectAttr "rtLegBp1_ikc.gimbalCtl" "rtLegBp1_ikc_gmbShape.v";
connectAttr "rtLegBp1_ikc_gmbShapeOrig.ws" "rtLegBp1_ikc_gmbShape.cr";
connectAttr "unitConversion208.o" "rtLegBp1_smart_ctl.footRoll";
connectAttr "rtLegBp1_setting.fkIkBlend" "rtLegBp1_smart_ctl.fkIkBlend";
connectAttr "rtLegBp1_autoAim.msg" "rtLegBp1_autoAimJ_ikh.hsj";
connectAttr "effector41.hp" "rtLegBp1_autoAimJ_ikh.hee";
connectAttr "rtLegBp1_legLock.s" "rtLegBp1_legLock_end.is";
connectAttr "rtLegBp1_legLock_end.tx" "effector42.tx";
connectAttr "rtLegBp1_legLock_end.ty" "effector42.ty";
connectAttr "rtLegBp1_legLock_end.tz" "effector42.tz";
connectAttr "rtLegBp1_legLock_end.opm" "effector42.opm";
connectAttr "rtLegBp1_setting.fkIkBlend" "rtLegBp1_pvc.fkIkBlend";
connectAttr "rtLegBp1_setting.fkIkBlend" "rtLegBp1_pvc.v" -l on;
connectAttr "rtLegBp1_pvc.fkPin" "rtLegBp1_pin_fkc.v" -l on;
connectAttr "rtLegBp1_hip_bf.s" "rtLegBp1_upr_bf.is";
connectAttr "rtLegBp1_upr_bf.s" "rtLegBp1_lwr_bf.is";
connectAttr "rtLegBp1_lwr_bf.s" "rtLegBp1_palm_bf.is";
connectAttr "rtLegBp1_setting.palmScale" "rtLegBp1_palm_bf.sx";
connectAttr "rtLegBp1_setting.palmScale" "rtLegBp1_palm_bf.sy";
connectAttr "rtLegBp1_setting.palmScale" "rtLegBp1_palm_bf.sz";
connectAttr "rtLegBp1_palm_bf.s" "rtLegBp1_ball_bf.is";
connectAttr "rtLegBp1_ball_bf.s" "rtLegBp1_tip_bf.is";
connectAttr "spineQd0_setting.moduleScale" "spineQd0_IK.sx";
connectAttr "spineQd0_setting.moduleScale" "spineQd0_IK.sy";
connectAttr "spineQd0_setting.moduleScale" "spineQd0_IK.sz";
connectAttr "spineQd0_base_ctl.tangentCtl" "spineQd0_tangent0_ctlShape1.v";
connectAttr "spineQd0_two_ikj.s" "spineQd0_two_ikj_end.is";
connectAttr "spineQd0_fore_ctl.rx" "spineQd0_two_ikj_end.rx";
connectAttr "spineQd0_fore_ctl.ry" "spineQd0_two_ikj_end.ry";
connectAttr "spineQd0_fore_ctl.rz" "spineQd0_two_ikj_end.rz";
connectAttr "spineQd0_two_ikj_end.tx" "effector50.tx";
connectAttr "spineQd0_two_ikj_end.ty" "effector50.ty";
connectAttr "spineQd0_two_ikj_end.tz" "effector50.tz";
connectAttr "spineQd0_two_ikj_end.opm" "effector50.opm";
connectAttr "spineQd0_fore_ctl.tangentCtl" "spineQd0_tangent1_ctlShape1.v";
connectAttr "spineQd0_two_ikj.msg" "spineQd0_two_ikj_ikh.hsj";
connectAttr "effector50.hp" "spineQd0_two_ikj_ikh.hee";
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
connectAttr "lfLegBp0_smart_ctl.rx" "unitConversion22.i";
connectAttr "lfLegBp1_smart_ctl.rx" "unitConversion83.i";
connectAttr "rtLegBp0_smart_ctl.rx" "unitConversion147.i";
connectAttr "rtLegBp1_smart_ctl.rx" "unitConversion208.i";
// End of elephant_ctl.ma
