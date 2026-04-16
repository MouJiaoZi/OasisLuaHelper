---@meta

---@class UWaterSwimDataMgr: UObject
local UWaterSwimDataMgr = {}

---@param WaterSwimActor AWaterSwimActor
function UWaterSwimDataMgr:RegisterWaterSwimActor(WaterSwimActor) end

---@param WaterSwimActor AWaterSwimActor
function UWaterSwimDataMgr:UnRegisterWaterSwimActor(WaterSwimActor) end

---@param TestLocation FVector
---@return boolean
function UWaterSwimDataMgr:IsLocationInWater(TestLocation) end
