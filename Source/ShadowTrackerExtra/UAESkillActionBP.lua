---@meta

---@class UUAESkillActionBP: UUAESkillAction
local UUAESkillActionBP = {}

---@param SkillManagerComponent UUTSkillManagerComponent
---@param CurOwnerSkill AUTSkill
function UUAESkillActionBP:PostInitSkill(SkillManagerComponent, CurOwnerSkill) end

---@param SkillManagerComponent UUTSkillManagerComponent
---@param CurOwnerSkill AUTSkill
function UUAESkillActionBP:PostActiveSkill(SkillManagerComponent, CurOwnerSkill) end

---@param SkillManagerComponent UUTSkillManagerComponent
---@param CurOwnerSkill AUTSkill
function UUAESkillActionBP:PreCloseSkill(SkillManagerComponent, CurOwnerSkill) end

---@return boolean
function UUAESkillActionBP:RealDoAction_Internal() end

function UUAESkillActionBP:UndoAction_Internal() end

---@param DeltaSeconds number
function UUAESkillActionBP:UpdateAction_Internal(DeltaSeconds) end

function UUAESkillActionBP:Reset_Internal() end

---@return number
function UUAESkillActionBP:GetSkillIndex() end

---@return number
function UUAESkillActionBP:GetSkillUID() end
