import maya.cmds as cmds


class RibbonTwisting:
    def __init__(self):
        pass

    def create_twisting_system(self, rbn_dict, layer_progression):
        rbns = list(rbn_dict.keys())

        # Process layers starting from 2nd one - ALL layers get twisting blocks for ctrl_xforms
        for layer_idx in range(1, len(rbns)):
            current_rbn = rbns[layer_idx]
            upper_rbn = rbns[layer_idx - 1]  # Immediate upper layer for position
            current_jnts = rbn_dict[current_rbn]

            # Collect controllers and ranges from ALL previous layers for twist
            all_upper_ctrls = []
            all_ctrl_upos = []
            all_ctrl_ranges = []

            for prev_layer_idx in range(layer_idx):
                prev_rbn = rbns[prev_layer_idx]
                prev_ctrls = self.get_layer_controllers(
                    prev_rbn, layer_progression[prev_layer_idx]
                )
                prev_ctrl_upos, prev_ctrl_ranges = self.calculate_twisting_ranges(
                    prev_ctrls, prev_rbn
                )

                all_upper_ctrls.extend(prev_ctrls)
                all_ctrl_upos.extend(prev_ctrl_upos)
                all_ctrl_ranges.extend(prev_ctrl_ranges)

            # Create twisting blocks using immediate upper layer for position, all layers for twist
            self.create_twisting_blocks(
                current_jnts,
                upper_rbn,
                all_upper_ctrls,
                all_ctrl_upos,
                all_ctrl_ranges,
                current_rbn,
            )

        # Create final output layer that takes twist from ALL layers above
        if len(rbns) > 1:
            final_rbn = rbns[-1]  # Last ribbon
            final_jnts = rbn_dict[final_rbn]

            # Collect controllers and ranges from ALL previous layers for twist
            all_ctrls = []
            all_ctrl_upos = []
            all_ctrl_ranges = []

            for layer_idx in range(len(rbns)):
                layer_rbn = rbns[layer_idx]
                layer_ctrls = self.get_layer_controllers(
                    layer_rbn, layer_progression[layer_idx]
                )
                layer_ctrl_upos, layer_ctrl_ranges = self.calculate_twisting_ranges(
                    layer_ctrls, layer_rbn
                )

                all_ctrls.extend(layer_ctrls)
                all_ctrl_upos.extend(layer_ctrl_upos)
                all_ctrl_ranges.extend(layer_ctrl_ranges)

            # Create output transforms using ALL layer controllers and last layer ribbon
            self.create_output_transforms(
                final_jnts, final_rbn, all_ctrls, all_ctrl_upos, all_ctrl_ranges
            )

    def get_layer_controllers(self, rbn_shape, jnt_count):
        rbn_transform = cmds.listRelatives(rbn_shape, p=1)[0]
        return [f"{rbn_transform}_ctrl{i+1:03d}" for i in range(jnt_count)]

    def calculate_twisting_ranges(self, ctrls, rbn_shape):
        ctrl_upos = []
        ctrl_ranges = []

        # Get U positions for all controllers
        for ctrl in ctrls:
            cpos = cmds.createNode("closestPointOnSurface")
            cmds.connectAttr(f"{rbn_shape}.worldSpace[0]", f"{cpos}.inputSurface")
            ctrl_pos = cmds.xform(ctrl, q=1, t=1, ws=1)
            cmds.setAttr(f"{cpos}.inPositionX", ctrl_pos[0])
            cmds.setAttr(f"{cpos}.inPositionY", ctrl_pos[1])
            cmds.setAttr(f"{cpos}.inPositionZ", ctrl_pos[2])
            u_parm = round(cmds.getAttr(f"{cpos}.result.parameterU"), 3)
            ctrl_upos.append(u_parm)
            cmds.delete(cpos)

        # Calculate ranges for each controller
        for i, ctrl in enumerate(ctrls):
            if i == 0 or i == len(ctrls) - 1:  # First or last controller
                urange = [ctrl_upos[0], ctrl_upos[-1]]
            else:  # Middle controllers
                urange = [ctrl_upos[i - 1], ctrl_upos[i + 1]]
            ctrl_ranges.append(urange)

        return ctrl_upos, ctrl_ranges

    def create_twisting_blocks(
        self,
        jnts,
        upper_rbn,
        all_upper_ctrls,
        all_ctrl_upos,
        all_ctrl_ranges,
        current_rbn,
    ):
        for jnt in jnts:
            # Get joint U position on immediate upper layer ribbon
            jnt_upos = self.get_joint_upos(jnt, upper_rbn)

            # Create transform matrix and connect to ctrl_xform
            self.create_ctrl_transform_matrix(
                jnt,
                upper_rbn,
                jnt_upos,
                all_upper_ctrls,
                all_ctrl_upos,
                all_ctrl_ranges,
                current_rbn,
            )

    def create_output_transforms(
        self, jnts, final_rbn, final_ctrls, final_ctrl_upos, final_ctrl_ranges
    ):
        output_grp = cmds.group(n="rbn_full_xform_jnt_grp", em=1)

        for jnt in jnts:
            jnt_upos = self.get_joint_upos(jnt, final_rbn)
            output_jnt = self.create_ctrl_transform_matrix(
                jnt,
                final_rbn,
                jnt_upos,
                final_ctrls,
                final_ctrl_upos,
                final_ctrl_ranges,
                final_rbn,
                is_output=True,
            )
            cmds.parent(output_jnt, output_grp)

    def get_joint_upos(self, jnt, rbn_shape):
        cpos = cmds.createNode("closestPointOnSurface")
        cmds.connectAttr(f"{rbn_shape}.worldSpace[0]", f"{cpos}.inputSurface")
        jnt_pos = cmds.xform(jnt, q=1, t=1, ws=1)
        cmds.setAttr(f"{cpos}.inPositionX", jnt_pos[0])
        cmds.setAttr(f"{cpos}.inPositionY", jnt_pos[1])
        cmds.setAttr(f"{cpos}.inPositionZ", jnt_pos[2])
        u_parm = round(cmds.getAttr(f"{cpos}.result.parameterU"), 3)
        cmds.delete(cpos)
        return u_parm

    def create_ctrl_transform_matrix(
        self,
        jnt,
        upper_rbn,
        jnt_upos,
        all_upper_ctrls,
        all_ctrl_upos,
        all_ctrl_ranges,
        current_rbn,
        is_output=False,
    ):
        # Get corresponding ctrl_xform or create output joint
        if is_output:
            output_name = f"rbn_full_xform_jnt{jnt.split('_')[-1].replace('jnt', '')}"
            cmds.select(cl=1)
            target_node = cmds.joint(n=output_name, rad=0.15)
            # Create simplified naming for output joint nodes
            simplified_jnt_name = f"rbn_jnt{jnt.split('_')[-1].replace('jnt', '')}"
        else:
            current_rbn_transform = cmds.listRelatives(current_rbn, p=1)[0]
            jnt_number = jnt.split("_")[-1].replace(
                "jnt", ""
            )  # Extract "001" from "jnt001"
            target_node = f"{current_rbn_transform}_ctrl_xform{jnt_number}"
            simplified_jnt_name = jnt  # Use original joint name for ctrl_xforms

        # Create surface position matrix
        posi = cmds.createNode(
            "pointOnSurfaceInfo", n=f"{simplified_jnt_name}_twist_posi"
        )
        cmds.connectAttr(f"{upper_rbn}.worldSpace[0]", f"{posi}.inputSurface")
        cmds.setAttr(f"{posi}.parameterU", jnt_upos)
        cmds.setAttr(f"{posi}.parameterV", 0.5)

        # Create surface orientation matrix
        tanV = cmds.createNode("vectorProduct", n=f"{simplified_jnt_name}_twist_tanV")
        cmds.setAttr(f"{tanV}.operation", 2)
        cmds.connectAttr(f"{posi}.result.normalizedTangentU", f"{tanV}.input1")
        cmds.connectAttr(f"{posi}.result.normalizedNormal", f"{tanV}.input2")

        posi_mat = cmds.createNode(
            "fourByFourMatrix", n=f"{simplified_jnt_name}_twist_posi_mat"
        )
        cmds.connectAttr(
            f"{posi}.result.normalizedTangentU.normalizedTangentUX", f"{posi_mat}.in00"
        )
        cmds.connectAttr(
            f"{posi}.result.normalizedTangentU.normalizedTangentUY", f"{posi_mat}.in01"
        )
        cmds.connectAttr(
            f"{posi}.result.normalizedTangentU.normalizedTangentUZ", f"{posi_mat}.in02"
        )
        cmds.connectAttr(
            f"{posi}.result.normalizedNormal.normalizedNormalX", f"{posi_mat}.in10"
        )
        cmds.connectAttr(
            f"{posi}.result.normalizedNormal.normalizedNormalY", f"{posi_mat}.in11"
        )
        cmds.connectAttr(
            f"{posi}.result.normalizedNormal.normalizedNormalZ", f"{posi_mat}.in12"
        )
        cmds.connectAttr(f"{tanV}.output.outputX", f"{posi_mat}.in20")
        cmds.connectAttr(f"{tanV}.output.outputY", f"{posi_mat}.in21")
        cmds.connectAttr(f"{tanV}.output.outputZ", f"{posi_mat}.in22")
        cmds.connectAttr(f"{posi}.result.position.positionX", f"{posi_mat}.in30")
        cmds.connectAttr(f"{posi}.result.position.positionY", f"{posi_mat}.in31")
        cmds.connectAttr(f"{posi}.result.position.positionZ", f"{posi_mat}.in32")

        # Block twist and create twist rotation
        posi_mat_decomp = cmds.createNode(
            "decomposeMatrix", n=f"{simplified_jnt_name}_twist_decomp"
        )
        cmds.connectAttr(f"{posi_mat}.output", f"{posi_mat_decomp}.inputMatrix")
        twist_mat = cmds.createNode(
            "composeMatrix", n=f"{simplified_jnt_name}_twist_comp"
        )
        cmds.setAttr(f"{twist_mat}.useEulerRotation", 0)
        cmds.connectAttr(
            f"{posi_mat_decomp}.outputQuat.outputQuatX",
            f"{twist_mat}.inputQuat.inputQuatX",
        )
        cmds.connectAttr(
            f"{posi_mat_decomp}.outputQuat.outputQuatW",
            f"{twist_mat}.inputQuat.inputQuatW",
        )

        inv_twist_mat = cmds.createNode(
            "inverseMatrix", n=f"{simplified_jnt_name}_inv_twist"
        )
        cmds.connectAttr(f"{twist_mat}.outputMatrix", f"{inv_twist_mat}.inputMatrix")

        # Create twisting weight calculation
        rot_sum = self.create_twist_influence(
            jnt, jnt_upos, all_upper_ctrls, all_ctrl_upos, all_ctrl_ranges
        )
        rot_mat = cmds.createNode(
            "composeMatrix", n=f"{simplified_jnt_name}_twist_rot_mat"
        )
        cmds.connectAttr(f"{rot_sum}.output1D", f"{rot_mat}.inputRotate.inputRotateX")

        # Combine matrices
        full_mat = cmds.createNode(
            "multMatrix", n=f"{simplified_jnt_name}_twist_full_mat"
        )
        cmds.connectAttr(f"{rot_mat}.outputMatrix", f"{full_mat}.matrixIn[0]")
        cmds.connectAttr(f"{inv_twist_mat}.outputMatrix", f"{full_mat}.matrixIn[1]")
        cmds.connectAttr(f"{posi_mat}.output", f"{full_mat}.matrixIn[2]")

        # Connect parentInverseMatrix to matrixIn[3]
        cmds.connectAttr(
            f"{target_node}.parentInverseMatrix[0]", f"{full_mat}.matrixIn[3]"
        )

        # Decompose matrix and connect to target
        decomp_mat = cmds.createNode(
            "decomposeMatrix", n=f"{simplified_jnt_name}_twist_final_decomp"
        )
        cmds.connectAttr(f"{full_mat}.matrixSum", f"{decomp_mat}.inputMatrix")
        cmds.connectAttr(f"{decomp_mat}.outputTranslate", f"{target_node}.translate")
        cmds.connectAttr(f"{decomp_mat}.outputRotate", f"{target_node}.rotate")

        return target_node

    def create_twist_influence(self, jnt, jnt_upos, ctrls, ctrl_upos, ctrl_ranges):
        rot_sum = cmds.createNode("plusMinusAverage", n=f"{jnt}_twist_sum")
        rot_sum_idx = 0

        # Process controllers in groups of 3
        for i in range(0, len(ctrls), 3):
            group = ctrls[i : i + 3]
            wgts = []

            # Calculate weight for each controller in group
            for ctrl in group:
                idx = ctrls.index(ctrl)
                wgt = self.calculate_twist_weight(
                    jnt_upos, ctrl_upos[idx], ctrl_ranges[idx]
                )
                wgts.append(wgt)

            # Create multiply node for weighted rotation
            wgt_node = cmds.createNode("multiplyDivide", n=f"{jnt}_twist_wgt_{i}")
            for j, (ctrl, wgt) in enumerate(zip(group, wgts)):
                if j < 3:  # X, Y, Z channels
                    attr_map = ["X", "Y", "Z"][j]
                    cmds.connectAttr(
                        f"{ctrl}.rotate.rotateX", f"{wgt_node}.input1.input1{attr_map}"
                    )
                    cmds.setAttr(f"{wgt_node}.input2.input2{attr_map}", wgt)
                    cmds.connectAttr(
                        f"{wgt_node}.output.output{attr_map}",
                        f"{rot_sum}.input1D[{rot_sum_idx}]",
                    )
                    rot_sum_idx += 1

        return rot_sum

    def calculate_twist_weight(self, jnt_upos, ctrl_upos, ctrl_range):
        ctrl_min, ctrl_max = ctrl_range

        if jnt_upos > ctrl_min and jnt_upos < ctrl_max:
            if jnt_upos == ctrl_upos:
                return 1.0
            elif jnt_upos < ctrl_upos:
                return 1 - (ctrl_upos - jnt_upos) / (ctrl_upos - ctrl_min)
            else:
                return 1 - (jnt_upos - ctrl_upos) / (ctrl_max - ctrl_upos)
        elif jnt_upos == ctrl_upos:
            return 1.0
        else:
            return 0.0


class RibbonLayers:
    def __init__(self):
        pass

    def create_ribbons(self, jnt_num, layer_num, first_layer_jnts):
        # Calculate jnt progression
        rbn_jnts, layer_jnts = [first_layer_jnts], first_layer_jnts
        for i in range(layer_num - 2):
            if layer_jnts + (layer_jnts - 1) * 3 < jnt_num:
                layer_jnts += layer_jnts - 1
                rbn_jnts.append(layer_jnts)
                if layer_jnts >= jnt_num:
                    break
        rbn_jnts.append(jnt_num)

        # Create rbns
        u_patches = jnt_num - 1
        rbn001 = cmds.nurbsPlane(
            n="rbn001",
            p=(0, 0, 0),
            ax=(0, 1, 0),
            w=u_patches,
            lr=1.0 / u_patches,
            d=3,
            u=u_patches,
            v=1,
            ch=0,
        )
        rbns = [rbn001[0]] + [
            cmds.duplicate(rbn001[0], n=f"rbn{i+2:03d}")[0]
            for i in range(len(rbn_jnts) - 1)
        ]

        # Create layer controllers and bind
        rbn_dict = {}
        layer_groups = []
        for i, rbn in enumerate(rbns):
            # Create layer group
            layer_grp = cmds.group(n=f"rbn{i+1:03d}_grp", em=1)
            layer_groups.append(layer_grp)

            crv = cmds.duplicateCurve(f"{rbn}.v[0.5]", ch=0, rn=0, local=0)[0]
            jnt_names = []
            for j in range(rbn_jnts[i]):
                cmds.select(cl=1)
                pos = cmds.pointOnCurve(crv, pr=j / max(1, rbn_jnts[i] - 1), p=1)
                jnt = cmds.joint(p=pos, n=f"{rbn}_jnt{j+1:03d}", rad=0.25)
                cmds.setAttr(f"{jnt}.visibility", 0)  # Hide joints
                jnt_names.append(jnt)
                ctrl = cmds.circle(
                    c=(0, 0, 0),
                    nr=(1, 0, 0),
                    sw=360,
                    r=1 - i * 0.25,
                    d=3,
                    ut=0,
                    tol=0.01,
                    s=8,
                    ch=1,
                    n=f"{rbn}_ctrl{j+1:03d}",
                )[0]
                ctrl_shape = cmds.listRelatives(ctrl, s=1)[0]
                cmds.setAttr(f"{ctrl_shape}.lineWidth", 2)
                cmds.setAttr(f"{ctrl_shape}.overrideEnabled", 1), cmds.setAttr(
                    f"{ctrl_shape}.overrideRGBColors", 1
                ), cmds.setAttr(
                    f"{ctrl_shape}.overrideColorRGB",
                    *(((1, 1, 0) if i == 0 else (1, 0, 1) if i == 1 else (0, 1, 1))),
                )
                group_xform = cmds.group(
                    cmds.group(ctrl, n=f"{rbn}_ctrl_drv{j+1:03d}"),
                    n=f"{rbn}_ctrl_xform{j+1:03d}",
                )
                cmds.xform(group_xform, t=pos, ws=1), cmds.parent(jnt, ctrl)
            cmds.delete(crv)
            rbn_shape = cmds.listRelatives(rbn, s=1)[0]
            rbn_dict[rbn_shape] = jnt_names
            cmds.skinCluster(jnt_names, rbn, bm=0, nw=1, n=f"{rbn}_skinCluster")

            # Set ribbon visibility to 0
            cmds.setAttr(f"{rbn}.visibility", 0)

            # Parent ribbon and all ctrl_xforms to layer group
            cmds.parent(rbn, layer_grp)
            for j in range(rbn_jnts[i]):
                ctrl_xform = f"{rbn}_ctrl_xform{j+1:03d}"
                if cmds.objExists(ctrl_xform):
                    cmds.parent(ctrl_xform, layer_grp)

        print(f"Created {len(rbn_jnts)} layers: {rbn_jnts}nRbn-Jnt mapping: {rbn_dict}")

        # Create twisting system for layers
        if len(rbn_jnts) > 1:
            twisting = RibbonTwisting()
            twisting.create_twisting_system(rbn_dict, rbn_jnts)

        # Create main system group and organize everything
        sys_grp = cmds.group(n="rbn_sys_grp", em=1)
        cmds.parent(layer_groups, sys_grp)

        # Parent output group to system group if it exists
        if cmds.objExists("rbn_full_xform_jnt_grp"):
            cmds.parent("rbn_full_xform_jnt_grp", sys_grp)

        cmds.select(cl=1)

        return rbn_dict


def create_jnt_dialog():
    if cmds.window("jointLayerWin", ex=1):
        cmds.deleteUI("jointLayerWin")

    window = cmds.window("jointLayerWin", t="Ribbon Creator", wh=(300, 200))
    cmds.columnLayout(adj=1, rs=10, cal="center")
    cmds.text(l="Total joints", al="center")
    slider_jnts = cmds.intSliderGrp(f=1, min=2, max=20, v=13)
    cmds.text(l="Maximum layers", al="center")
    slider_layers = cmds.intSliderGrp(f=1, min=1, max=10, v=4)
    cmds.text(l="First layer joints", al="center")
    slider_first_layer = cmds.intSliderGrp(f=1, min=2, max=10, v=2)

    def on_apply_pressed(*args):
        RibbonLayers().create_ribbons(
            cmds.intSliderGrp(slider_jnts, q=1, v=1),
            cmds.intSliderGrp(slider_layers, q=1, v=1),
            cmds.intSliderGrp(slider_first_layer, q=1, v=1),
        )

    cmds.button(l="Create Ribbon System", c=on_apply_pressed)
    cmds.showWindow(window)


create_jnt_dialog()
