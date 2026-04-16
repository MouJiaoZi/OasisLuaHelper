---@meta

---@class FSkeletalMeshLODGroupSettings
---@field ScreenSize number @The screen sizes to use for the respective LOD level
---@field OptimizationSettings FSkeletalMeshOptimizationSettings @The optimization settings to use for the respective LOD level
FSkeletalMeshLODGroupSettings = {}


---@class USkeletalMeshReductionSettings: UObject
---@field Settings ULuaArrayHelper<FSkeletalMeshLODGroupSettings>
local USkeletalMeshReductionSettings = {}
