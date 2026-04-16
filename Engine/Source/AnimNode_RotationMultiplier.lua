---@meta

---Simple controller that multiplies scalar value to the translation/rotation/scale of a single bone.
---@class FAnimNode_RotationMultiplier
---@field TargetBone FBoneReference @Name of bone to control. This is the main bone chain to modify from.
---@field SourceBone FBoneReference @Source to get transform from
---@field Multiplier number
---@field RotationAxisToRefer EBoneAxis
---@field bIsAdditive boolean
FAnimNode_RotationMultiplier = {}
