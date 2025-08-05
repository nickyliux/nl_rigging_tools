from nl_modules.nodel.base.dag_node import DagNode

fps = DagNode("tail0_setting").a.add("fps", dv=24, k=0)
freq = DagNode("tail0_setting").a.add("freq", dv=1)
localFrameOffset = DagNode("tail0_setting").a.add("localFrameOffset", dv=6)
globalFrameOffsetX = DagNode("tail0_setting").a.add("globalFrameOffsetX", dv=0)
globalFrameOffsetY = DagNode("tail0_setting").a.add("globalFrameOffsetY", dv=50)
globalFrameOffsetZ = DagNode("tail0_setting").a.add("globalFrameOffsetZ", dv=100)

noiseRatio = DagNode("tail0_setting").a.add("noiseRatio", dv=0.707)
noiseFreqRatio = DagNode("tail0_setting").a.add("noiseFreqRatio", dv=2)
noiseFreq = DagNode("tail0_setting").a.add("noiseFreq", dv=8)
depthMax = DagNode("tail0_setting").a.add("depthMax", dv=3)

waveX_mag = DagNode("tail0_setting").a.add("waveX_mag", dv=5)
waveY_mag = DagNode("tail0_setting").a.add("waveY_mag", dv=0)
waveZ_mag = DagNode("tail0_setting").a.add("waveZ_mag", dv=0)

noise_mag = DagNode("tail0_setting").a.add("noise_mag")
# noiseY_mag = DagNode("tail0_setting").a.add("noiseY_mag")
# noiseZ_mag = DagNode("tail0_setting").a.add("noiseZ_mag")

tgt = DagNode("tail0_1_ofs_ctl")
t = DagNode("time1").a.outTime

ctls = [
    "tail0_1_ofs_ctl",
    "tail0_2_ofs_ctl",
    "tail0_3_ofs_ctl",
    "tail0_4_ofs_ctl",
    "tail0_5_ofs_ctl",
]

for i, ctl in enumerate(ctls):
    f = freq / fps

    x = (t + globalFrameOffsetX - (i + 1) * localFrameOffset) * f
    y = (t + globalFrameOffsetY - (i + 1) * localFrameOffset) * f
    z = (t + globalFrameOffsetZ - (i + 1) * localFrameOffset) * f

    sinX = DepNode("sinX_#", nodeType="eulerToQuat")
    sinY = DepNode("sinY_#", nodeType="eulerToQuat")
    sinZ = DepNode("sinZ_#", nodeType="eulerToQuat")

    # eulerToQuat( x * 2 ) = sin( x )
    720 * x >> sinX.a.inputRotateX
    720 * y >> sinY.a.inputRotateY
    720 * z >> sinZ.a.inputRotateZ

    noise = DepNode("myNoise_#", nodeType="noise")
    noise.a.noiseType.set(0)
    noiseRatio >> noise.a.ratio
    noiseFreq >> noise.a.frequency
    noiseFreqRatio >> noise.a.frequencyRatio
    depthMax >> noise.a.depthMax
    noise_mag >> noise.a.amplitude

    x >> noise.a.time

    (waveX_mag * (sinX.a.outputQuatX + noise.a.outColorR) >> DagNode(ctl).a.tx)
    (waveY_mag * (sinY.a.outputQuatY + noise.a.outColorG) >> DagNode(ctl).a.ty)
    (waveZ_mag * (sinZ.a.outputQuatZ + noise.a.outColorB) >> DagNode(ctl).a.tz)
