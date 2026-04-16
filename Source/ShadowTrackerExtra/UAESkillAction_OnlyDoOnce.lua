---@meta

---@class FSAOnlyDoOnceInstanceStruct
FSAOnlyDoOnceInstanceStruct = {}


---@class UUAESkillAction_OnlyDoOnce: UUAESkillAction
local UUAESkillAction_OnlyDoOnce = {}

---@param SkillManagerComponent UUTSkillManagerComponent
---@param CurOwnerSkill AUTSkill
function UUAESkillAction_OnlyDoOnce:PostInitSkill(SkillManagerComponent, CurOwnerSkill) end

---@param SkillManagerComponent UUTSkillManagerComponent
---@param CurOwnerSkill AUTSkill
function UUAESkillAction_OnlyDoOnce:PostActiveSkill(SkillManagerComponent, CurOwnerSkill) end
