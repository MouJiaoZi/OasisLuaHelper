---@meta

---@class UVehicleTriggerComponent: USceneComponent
---@field TriggerRadius number @触发半径平方
---@field TriggerInterval number @触发间隔
---@field MaxAllowedValidationDiff number @触发间隔
local UVehicleTriggerComponent = {}

function UVehicleTriggerComponent:OnTriggered() end
