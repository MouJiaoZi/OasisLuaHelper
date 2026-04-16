---@meta

---@class FCachedBoneParamInfo
---@field CachedBoneName string
---@field CachedBoneFlag string
FCachedBoneParamInfo = {}


---@class FPairCachedBoneInfo
---@field ResetRoll boolean
---@field PreBoneCached FCachedBoneParamInfo
---@field PostBoneCached FCachedBoneParamInfo
FPairCachedBoneInfo = {}


---@class FAnimNode_RectificationBone
---@field BoneToModify FBoneReference
---@field DestinRotation FRotator
---@field BeginOffsetRotation FRotator
---@field EndOffsetRotation FRotator
---@field BaseBoneCached FCachedBoneParamInfo
---@field BoneCachedOffsetList ULuaArrayHelper<FPairCachedBoneInfo>
---@field AutoSortCacheList boolean
FAnimNode_RectificationBone = {}
