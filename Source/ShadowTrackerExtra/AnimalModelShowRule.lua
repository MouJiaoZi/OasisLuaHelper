---@meta

---@class AAnimalModelShowRule: AActor
---@field MaxShowModelNum number
---@field MaxShowModelDistance number
---@field MaxCheckShowRuleInterval number
---@field CheckShowModelTimer number
---@field AllAnimalActorModel ULuaArrayHelper<AAnimActorModel>
local AAnimalModelShowRule = {}

---@param DeltaTime number
function AAnimalModelShowRule:CheckShowModelRule(DeltaTime) end

---@param Model AAnimActorModel
function AAnimalModelShowRule:RegisterVehicleAnimalModel(Model) end

---@param Model AAnimActorModel
function AAnimalModelShowRule:UnRegisterVehicleAnimalModel(Model) end

function AAnimalModelShowRule:ClearAnimalModelShowRuleInstanceMap() end
