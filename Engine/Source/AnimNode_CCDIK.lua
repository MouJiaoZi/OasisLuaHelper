---@meta

---Controller which implements the CCDIK IK approximation algorithm
---@class FAnimNode_CCDIK
---@field EffectorLocation FVector @Coordinates for target location of tip bone - if EffectorLocationSpace is bone, this is the offset from Target Bone to use as target location
---@field EffectorLocationSpace EBoneControlSpace @Reference frame of Effector Transform.
---@field EffectorTarget FBoneSocketTarget @If EffectorTransformSpace is a bone, this is the bone to use. *
---@field TipBone FBoneReference @Name of tip bone
---@field RootBone FBoneReference @Name of the root bone
---@field Precision number @Tolerance for final tip location delta from EffectorLocation
---@field MaxIterations number @Maximum number of iterations allowed, to control performance.
---@field bStartFromTail boolean @Toggle drawing of axes to debug joint rotation
---@field bEnableRotationLimit boolean @Tolerance for final tip location delta from EffectorLocation
---@field RotationLimitPerJoints ULuaArrayHelper<number> @symmetry rotation limit per joint. Index 0 matches with root bone and last index matches with tip bone.
FAnimNode_CCDIK = {}
