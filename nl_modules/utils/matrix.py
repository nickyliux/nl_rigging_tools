import maya.cmds as mc
from nl_modules.nodel.base.dep_node import DepNode
from nl_modules.nodel.loc_node import LocNode

'''
Attachment using Matrix, reference to 
1. Chris Lesage, https://rigmarolestudio.com
2. https://tech-artists.org/t/flipping-follicles-in-ribbon-ik/11022/10?u=clesage
3. Kiaran https://forums.cgsociety.org/t/rotations-by-surface-normal/1228039/4
'''
def attachMtx(nurbsObj, refLoc=None, uPos=0.5, vPos=0.5, createLoc=False):
    """Attach a transform to a nurbs surface using matrix nodes. 
    Returns the decomposeMatrix node for further connections."""    
    if refLoc:
        cpos = DepNode('cpos_#', nodeType='closestPointOnSurface')
        nurbsObj.shape.a.worldSpace >> cpos.a.inputSurface
        refLoc.shape.a.worldPosition >> cpos.a.inPosition
        uPos = cpos.a.parameterU.get()
        vPos = cpos.a.parameterV.get()
        mc.delete(cpos)

    posi = DepNode('posi_#', nodeType='pointOnSurfaceInfo')
    nurbsObj.shape.a.worldSpace >> posi.a.inputSurface
    posi.a.parameterU.set(uPos)
    posi.a.parameterV.set(vPos)
    
    fbf = DepNode('fbf_#', nodeType='fourByFourMatrix')
    posi.a.normalizedTangentUX >> fbf.a.in00
    posi.a.normalizedTangentUY >> fbf.a.in01
    posi.a.normalizedTangentUZ >> fbf.a.in02
    fbf.a.in03.set(0)
    posi.a.normalizedNormalX >> fbf.a.in10
    posi.a.normalizedNormalY >> fbf.a.in11
    posi.a.normalizedNormalZ >> fbf.a.in12
    fbf.a.in13.set(0)
    posi.a.normalizedTangentVX >> fbf.a.in20
    posi.a.normalizedTangentVY >> fbf.a.in21
    posi.a.normalizedTangentVZ >> fbf.a.in22
    fbf.a.in23.set(0)
    posi.a.positionX >> fbf.a.in30
    posi.a.positionY >> fbf.a.in31
    posi.a.positionZ >> fbf.a.in32
    fbf.a.in33.set(1)

    dcpMtx = DepNode('dcpMtx_#', nodeType='decomposeMatrix')
    fbf.a.output >> dcpMtx.a.inputMatrix

    if createLoc:
        attachLoc = LocNode('attachLoc_#')
        dcpMtx.a.outputTranslate >> attachLoc.a.translate
        dcpMtx.a.outputRotate >> attachLoc.a.rotate
        return attachLoc
    else:
        return dcpMtx
