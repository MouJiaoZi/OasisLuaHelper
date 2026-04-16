---@meta

---@class ASTExtraVehicleAIController: AAIController
---@field IsDestroyedBlackboardKeyName string
---@field AIPawnTag string
local ASTExtraVehicleAIController = {}

---@param InVehicleHealthState ESTExtraVehicleHealthState
function ASTExtraVehicleAIController:HandleOnVehicleHealthStateChanged(InVehicleHealthState) end
