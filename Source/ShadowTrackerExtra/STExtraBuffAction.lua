---@meta

---对于SkillAction的一个封装
---@class USTExtraBuffAction: UUAESkillActionBP
local USTExtraBuffAction = {}

---@param OutOwnerBuffInstance FBuffInstancedItem
---@return boolean
function USTExtraBuffAction:GetOwnerBuffInstance(OutOwnerBuffInstance) end

---@param Context FSTBaseBuffEventContext
function USTExtraBuffAction:FireEvent(Context) end
