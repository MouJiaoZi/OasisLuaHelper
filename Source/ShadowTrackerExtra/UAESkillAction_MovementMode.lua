---@meta

---@class UUAESkillAction_MovementMode: UUAESkillAction
---@field TargetMovementMode EMovementMode
---@field bResetMovemenetModeUndo boolean
local UUAESkillAction_MovementMode = {}

function UUAESkillAction_MovementMode:UndoAction_Internal() end

---@return boolean
function UUAESkillAction_MovementMode:RealDoAction_Internal() end
