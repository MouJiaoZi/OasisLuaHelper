---@meta

---@class FAnimAdditiveParams
---@field bUseCopyMotion boolean
---@field TranslationOffset FRotator
---@field RotationOffset FRotator
---@field RotationPivot FVector
---@field TranslationScale FVector
---@field RotationScale number
---@field bFixSprintRootRotation boolean
---@field ArmMeshSpaceAlpha_L number
---@field ArmMeshSpaceAlpha_R number
---@field ArmSwayAlpha_L number
---@field ArmSwayAlpha_R number
---@field HandAlpha_L number
---@field HandAlpha_R number
---@field bUseHandIK boolean
---@field HandIKAlpha_L number
---@field HandIKAlpha_R number
FAnimAdditiveParams = {}


---@class UAnimAdditiveDataAsset: UDataAsset
---@field AdditiveParams FAnimAdditiveParams
local UAnimAdditiveDataAsset = {}
