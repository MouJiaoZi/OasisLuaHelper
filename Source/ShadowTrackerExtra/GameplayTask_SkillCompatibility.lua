---@meta

---@class UGameplayTask_SkillCompatibility: UUAEGameplayTask
---@field CachedNotStoppedMonopolizeSkillClass ULuaArrayHelper<AUTSkill>
---@field bShouldStopWhenSkillStopAll boolean
local UGameplayTask_SkillCompatibility = {}

---@param SkillUID number
function UGameplayTask_SkillCompatibility:OnSkillStart(SkillUID) end

function UGameplayTask_SkillCompatibility:OnSkillStopAll() end
