---@meta

---@class UUAESkillAction: UUTSkillAction
local UUAESkillAction = {}

---@param InstanceNodeContainer UObject
---@return boolean
function UUAESkillAction:RealDoAction(InstanceNodeContainer) end

---@param InstanceNodeContainer UObject
function UUAESkillAction:UndoAction(InstanceNodeContainer) end

---@param Getter FUTFloatPropertyGetter
---@param OutValue number
---@return boolean
function UUAESkillAction:GetFloatValueByGetter(Getter, OutValue) end
