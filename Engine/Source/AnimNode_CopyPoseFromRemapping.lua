---@meta

---Simple controller to copy a bone's transform to another one.
---@class FNewFPPPoseOffset
---@field Map ULuaMapHelper<string, FTransform>
FNewFPPPoseOffset = {}


---@class FAnimNode_CopyPoseFromRemapping
---@field SourceMeshComponent USkeletalMeshComponent
---@field bUseAttachedParent boolean
---@field bIkGunValid boolean
---@field bParentPoseOffset boolean
---@field NewFPPPoseOffset FNewFPPPoseOffset
---@field BoneNeedRelevant ULuaMapHelper<string, string>
FAnimNode_CopyPoseFromRemapping = {}
