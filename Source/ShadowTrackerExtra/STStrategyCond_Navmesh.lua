---@meta

---检查前置条件: 周围是否有navmesh
---@class USTStrategyCond_Navmesh: USTStrategyCond
---@field NavExtent FVector
---@field CheckOnlyTimeIsRipe boolean
local USTStrategyCond_Navmesh = {}

---@return boolean
function USTStrategyCond_Navmesh:CheckCondition() end

---@return FVector
function USTStrategyCond_Navmesh:GetTargetLoc() end

---@return FVector
function USTStrategyCond_Navmesh:GetSpawnLoc() end
