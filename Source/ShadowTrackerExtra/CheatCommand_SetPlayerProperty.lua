---@meta

---@class UCheatCommand_SetPlayerProperty: UCheatCommand
local UCheatCommand_SetPlayerProperty = {}

---@param InCommandInfo FCheatCommandInfo
---@param InCheatProperty FPlayerCheatProperty
function UCheatCommand_SetPlayerProperty:PackCommandParams(InCommandInfo, InCheatProperty) end

---@param InCommandInfo FCheatCommandInfo
---@return FPlayerCheatProperty
function UCheatCommand_SetPlayerProperty:UnPackCommandParams(InCommandInfo) end
