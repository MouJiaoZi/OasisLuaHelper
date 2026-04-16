---@meta

---@class FBranchFilter
---@field BoneName string @Bone Name to filter *
---@field BlendDepth number @Blend Depth *
---@field bIsIgnoreChildrenBones boolean @是否只针对改骨骼进行融合，不考虑其所有子节点。默认为false *
FBranchFilter = {}


---@class FInputBlendPose
---@field BranchFilters ULuaArrayHelper<FBranchFilter> @Bone Name to filter *
FInputBlendPose = {}


---@class UBoneMaskFilter: UObject
---@field BlendPoses ULuaArrayHelper<FInputBlendPose>
local UBoneMaskFilter = {}
