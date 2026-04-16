---@meta

---@class CopyBoneDeltaMode
---@field Accumulate number
---@field Copy number
CopyBoneDeltaMode = {}


---Simple controller to copy a transform relative to the ref pose to the target bone, instead of the copy bone node which copies the absolute transform
---@class FAnimNode_CopyBoneDelta
---@field SourceBone FBoneReference
---@field TargetBone FBoneReference
---@field bCopyTranslation boolean
---@field bCopyRotation boolean
---@field bCopyScale boolean
---@field CopyMode CopyBoneDeltaMode
---@field TranslationMultiplier number
---@field RotationMultiplier number
---@field ScaleMultiplier number
FAnimNode_CopyBoneDelta = {}
