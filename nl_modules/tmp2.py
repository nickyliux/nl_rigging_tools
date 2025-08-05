from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.nodel.base.dep_node import DepNode
from nl_modules.utils import utils_node as ut

frame = DagNode("time1").a.outTime
fps = DagNode("tail0_setting").a.add("fps", dv=24, k=0)
freq = DagNode("tail0_setting").a.add("freq", dv=1)
delay = DagNode("tail0_setting").a.add("delay", dv=2)
# Amplitude settings
xAmp = DagNode("tail0_setting").a.add("xAmplitude", dv=10)
yAmp = DagNode("tail0_setting").a.add("yAmplitude", dv=0)
zAmp = DagNode("tail0_setting").a.add("zAmplitude", dv=0)
# Offsets
globalOffset = DagNode("tail0_setting").a.add("globalOffset", dv=0)
xOffset = DagNode("tail0_setting").a.add("xOffset", dv=0)
yOffset = DagNode("tail0_setting").a.add("yOffset", dv=0)
zOffset = DagNode("tail0_setting").a.add("zOffset", dv=0)
# Noise
noiseShake = DagNode("tail0_setting").a.add("noiseShake", dv=2)
xN = DagNode("tail0_setting").a.add("xNoise", dv=0)
yN = DagNode("tail0_setting").a.add("yNoise", dv=0)
zN = DagNode("tail0_setting").a.add("zNoise", dv=0)

tgts = [
    "tail0_1_ofs_ctl",
    "tail0_2_ofs_ctl",
    "tail0_3_ofs_ctl",
    "tail0_4_ofs_ctl",
    "tail0_5_ofs_ctl",
]

for i, tgt in enumerate(tgts):

    part1 = freq * (frame - globalOffset - (i + 1) * delay)

    xFreq = (part1 - xOffset) / fps
    yFreq = (part1 - yOffset) / fps
    zFreq = (part1 - zOffset) / fps

    sinX = DepNode("sinX_#", nodeType="eulerToQuat")
    sinY = DepNode("sinY_#", nodeType="eulerToQuat")
    sinZ = DepNode("sinZ_#", nodeType="eulerToQuat")

    # eulerToQuat( x * 2 ) = sin( x )
    720 * xFreq >> sinX.a.inputRotateX
    720 * yFreq >> sinY.a.inputRotateY
    720 * zFreq >> sinZ.a.inputRotateZ

    noiseX = DepNode("myNoiseX_#", nodeType="noise")
    noiseY = DepNode("myNoiseY_#", nodeType="noise")
    noiseZ = DepNode("myNoiseZ_#", nodeType="noise")

    noiseX.a.noiseType.set(4)
    noiseY.a.noiseType.set(4)
    noiseZ.a.noiseType.set(4)
    noiseX.a.alphaOffset.set(-0.5)
    noiseY.a.alphaOffset.set(-0.5)
    noiseZ.a.alphaOffset.set(-0.5)
    noiseShake >> noiseX.a.frequencyRatio
    noiseShake >> noiseY.a.frequencyRatio
    noiseShake >> noiseZ.a.frequencyRatio

    xFreq >> noiseX.a.time
    yFreq >> noiseY.a.time
    zFreq >> noiseZ.a.time

    # noiseX = ut.noise_(xFreq, noiseType=4)
    # noiseY = ut.noise_(yFreq, noiseType=4)
    # noiseZ = ut.noise_(zFreq, noiseType=4)

    xAmp * sinX.a.outputQuatX + xN * noiseX.a.outAlpha >> DagNode(tgt).a.tx
    yAmp * sinY.a.outputQuatY + yN * noiseY.a.outAlpha >> DagNode(tgt).a.ty
    zAmp * sinZ.a.outputQuatZ + zN * noiseZ.a.outAlpha >> DagNode(tgt).a.tz
