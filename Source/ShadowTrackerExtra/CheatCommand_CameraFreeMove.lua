---@meta

---@class UCheatCommand_CameraFreeMove: UCheatCommand
local UCheatCommand_CameraFreeMove = {}

---@param InCommandInfo FCheatCommandInfo
---@param InIsCameraFreeMove number
function UCheatCommand_CameraFreeMove:PackCommandParams(InCommandInfo, InIsCameraFreeMove) end

---@param InCommandInfo FCheatCommandInfo
---@return boolean
function UCheatCommand_CameraFreeMove:UnPackCommandParams(InCommandInfo) end
