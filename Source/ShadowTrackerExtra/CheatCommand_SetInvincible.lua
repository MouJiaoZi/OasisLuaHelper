---@meta

---@class UCheatCommand_SetInvincible: UCheatCommand
local UCheatCommand_SetInvincible = {}

---@param InCommandInfo FCheatCommandInfo
---@param InIsInvincible number
function UCheatCommand_SetInvincible:PackCommandParams(InCommandInfo, InIsInvincible) end

---@param InCommandInfo FCheatCommandInfo
---@return boolean
function UCheatCommand_SetInvincible:UnPackCommandParams(InCommandInfo) end
