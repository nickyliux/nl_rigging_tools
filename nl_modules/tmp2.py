from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.utils import utils_node as ut

setting = DagNode("tail0_setting")
frame = DagNode("time1").a.outTime

setting.a.addSep()
fps = setting.a.add("fps", dv=24, k=0)
freq = setting.a.add("freq", dv=1)
softness = setting.a.add("softness", dv=3)
# Amplitude
xA = setting.a.add("xAmplitude", dv=0)
yA = setting.a.add("yAmplitude", dv=0)
zA = setting.a.add("zAmplitude", dv=0)
# Offsets
globalOffset = setting.a.add("globalOffset", dv=0)
xOffset = setting.a.add("xOffset", dv=0)
yOffset = setting.a.add("yOffset", dv=0)
zOffset = setting.a.add("zOffset", dv=0)
# Noise
shake = setting.a.add("noiseShake", min=0.01, dv=2)
xN = setting.a.add("xNoise", dv=0)
yN = setting.a.add("yNoise", dv=10)
zN = setting.a.add("zNoise", dv=0)

tgts = [
    "tail0_1_ofs_jnt",
    "tail0_2_ofs_jnt",
    "tail0_3_ofs_jnt",
    "tail0_4_ofs_jnt",
    "tail0_5_ofs_jnt",
]

for i, tgt in enumerate(tgts):

    tgt = DagNode(tgt)
    time = freq * (frame - globalOffset - (i + 1) * softness)

    xTime = (time - xOffset) / fps
    yTime = (time - yOffset) / fps
    zTime = (time - zOffset) / fps

    xA * ut.sin_(360 * xTime) + xN * ut.noise_(xTime, shake) >> tgt.a.tx
    yA * ut.sin_(360 * yTime) + yN * ut.noise_(yTime, shake) >> tgt.a.ty
    zA * ut.sin_(360 * zTime) + zN * ut.noise_(zTime, shake) >> tgt.a.tz
