---@meta

---@class ARandomDeferredDecal: AActor
---@field MaterialInstanceDynamicList ULuaArrayHelper<UMaterialInstanceDynamic>
---@field ParameterName string
---@field RandomRange FFloatInterval
local ARandomDeferredDecal = {}

---@param Transform FTransform
function ARandomDeferredDecal:UpdateDecal(Transform) end
