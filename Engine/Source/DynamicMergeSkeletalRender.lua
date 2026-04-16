---@meta

---@class FDynamicMergeSkeletalGroup
---@field AtlasTexturesMap ULuaArrayHelper<FAtlasTextures>
FDynamicMergeSkeletalGroup = {}


---@class FDynamicMergeSkeletalRenderTickFunction
FDynamicMergeSkeletalRenderTickFunction = {}


---The class of DynamicMerge dynamic instancing render.
---@class UDynamicMergeSkeletalRenderFactory: UObject
---@field DynamicMergeSkeletalGroups ULuaArrayHelper<FDynamicMergeSkeletalGroup>
local UDynamicMergeSkeletalRenderFactory = {}

---@param world UWorld
function UDynamicMergeSkeletalRenderFactory:OnWorldAddEvent(world) end

---@param world UWorld
function UDynamicMergeSkeletalRenderFactory:OnWorldDestroyEvent(world) end
