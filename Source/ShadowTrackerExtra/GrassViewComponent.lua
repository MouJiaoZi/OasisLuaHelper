---@meta

---@class UGrassViewComponent: UActorComponent
---@field IgnoreMinViewDistanceSQ number
---@field IgnoreMaxViewDistanceSQ number
---@field IgnoreMaxViewAngle number
local UGrassViewComponent = {}

---@param LocationList ULuaArrayHelper<FVector>
function UGrassViewComponent:HandleTickViewLocationList(LocationList) end
