---@meta

---@class FNeonCreationInfo
---@field CommandType number
---@field InIsOpen boolean
FNeonCreationInfo = {}


---@class UCheatCommand_SetNeonCreation: UCheatCommand
local UCheatCommand_SetNeonCreation = {}

---@param InCommandInfo FCheatCommandInfo
---@param CommandType number
---@param InIsInvincible number
function UCheatCommand_SetNeonCreation:PackCommandParams(InCommandInfo, CommandType, InIsInvincible) end

---@param InCommandInfo FCheatCommandInfo
---@return FNeonCreationInfo
function UCheatCommand_SetNeonCreation:UnPackCommandParams(InCommandInfo) end

---@param CommandType number
---@param bIsOpen boolean
---@return ECheatCommandResultType
function UCheatCommand_SetNeonCreation:BP_DoExecute(CommandType, bIsOpen) end
