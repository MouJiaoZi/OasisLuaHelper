---@meta

---@class UUAESkillSubAction_SuitReplace: UUAESkillSubAction
---@field bReadyState boolean
---@field SkillCD number
local UUAESkillSubAction_SuitReplace = {}

---@param ownerPawn AActor
---@return boolean
function UUAESkillSubAction_SuitReplace:DoSubAction(ownerPawn) end

---@param ownerPawn AActor
function UUAESkillSubAction_SuitReplace:UndoSubAction(ownerPawn) end

---@param DeltaSeconds number
function UUAESkillSubAction_SuitReplace:UpdateSubAction(DeltaSeconds) end
