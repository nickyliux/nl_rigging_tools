from nl_modules.nodel.base.dag_node import DagNode
from nl_modules.utils import utils_node as ut

frame = DagNode("time1").a.outTime
fps = DagNode("tail0_setting").a.add("fps", dv=24, k=0)
freq = DagNode("tail0_setting").a.add("freq", dv=0.5)
delay = DagNode("tail0_setting").a.add("delay", dv=3)
# Amplitude
xA = DagNode("tail0_setting").a.add("xAmplitude", dv=0)
yA = DagNode("tail0_setting").a.add("yAmplitude", dv=10)
zA = DagNode("tail0_setting").a.add("zAmplitude", dv=0)
# Offsets
globalOffset = DagNode("tail0_setting").a.add("globalOffset", dv=0)
xOffset = DagNode("tail0_setting").a.add("xOffset", dv=0)
yOffset = DagNode("tail0_setting").a.add("yOffset", dv=0)
zOffset = DagNode("tail0_setting").a.add("zOffset", dv=0)
# Noise
shake = DagNode("tail0_setting").a.add("noiseShake", min=0.01, dv=2)
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

    tgt = DagNode(tgt)
    time = freq * (frame - globalOffset - (i + 1) * delay)

    xTime = (time - xOffset) / fps
    yTime = (time - yOffset) / fps
    zTime = (time - zOffset) / fps

    xA * ut.sin_(360 * xTime) + xN * ut.noise_(xTime, shake) >> tgt.a.tx
    yA * ut.sin_(360 * yTime) + yN * ut.noise_(yTime, shake) >> tgt.a.ty
    zA * ut.sin_(360 * zTime) + zN * ut.noise_(zTime, shake) >> tgt.a.tz
