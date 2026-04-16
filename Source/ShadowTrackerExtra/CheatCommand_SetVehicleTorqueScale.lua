---@meta

---@class UCheatCommand_SetVehicleTorqueScale: UCheatCommand
local UCheatCommand_SetVehicleTorqueScale = {}

---@param InCommandInfo FCheatCommandInfo
---@param InTorqueScale number
function UCheatCommand_SetVehicleTorqueScale:PackCommandParams(InCommandInfo, InTorqueScale) end

---@param InCommandInfo FCheatCommandInfo
---@return number
function UCheatCommand_SetVehicleTorqueScale:UnPackCommandParams(InCommandInfo) end
