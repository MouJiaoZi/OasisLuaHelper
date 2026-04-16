---@meta

---@class FAnimNode_Fabrik
---@field EffectorTransform FTransform @Coordinates for target location of tip bone - if EffectorLocationSpace is bone, this is the offset from Target Bone to use as target location
---@field EffectorTransformSpace EBoneControlSpace @Reference frame of Effector Transform.
---@field EffectorTransformBone_DEPRECATED FBoneReference @If EffectorTransformSpace is a bone, this is the bone to use. *
---@field EffectorTarget FBoneSocketTarget @If EffectorTransformSpace is a bone, this is the bone to use. *
---@field EffectorRotationSource EBoneRotationSource
---@field TipBone FBoneReference @Name of tip bone
---@field RootBone FBoneReference @Name of the root bone
---@field Precision number @Tolerance for final tip location delta from EffectorLocation
---@field MaxIterations number @Maximum number of iterations allowed, to control performance.
---@field bEnableDebugDraw boolean @Toggle drawing of axes to debug joint rotation
FAnimNode_Fabrik = {}
