---@meta

---LT玩法技能附属UI基类
---@class ULostTombSkillSubBaseWidget: UUAEUserWidget
---@field PESkillSlot FGameplayTag
local ULostTombSkillSubBaseWidget = {}

---@param Skill UPersistEffectSkill
function ULostTombSkillSubBaseWidget:SetCurrentSkill(Skill) end

---@param Comp UPersistBaseComponent
---@param SlotName FGameplayTag
function ULostTombSkillSubBaseWidget:BindToSlot(Comp, SlotName) end

---@param InOwnerSkill UPersistEffectSkill
function ULostTombSkillSubBaseWidget:OnSkillBound_BP(InOwnerSkill) end
