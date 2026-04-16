---@meta

---@class UCheatCommand_MoveToLocation: UCheatCommand
local UCheatCommand_MoveToLocation = {}

---@param InCommandInfo FCheatCommandInfo
---@param InMoveToLocation FVector
function UCheatCommand_MoveToLocation:PackCommandParams(InCommandInfo, InMoveToLocation) end

---@param InCommandInfo FCheatCommandInfo
---@return FVector
function UCheatCommand_MoveToLocation:UnPackCommandParams(InCommandInfo) end
