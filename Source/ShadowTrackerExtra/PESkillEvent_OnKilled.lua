---@meta

---@class UPESkillEvent_OnKilled: UPESkillEventBase
---@field eRestrictedDamage ERestrictedDamageType
---@field MatchTags ULuaArrayHelper<FGameplayTag>
---@field DamagePosition EPSkillEventWeaponHitPartType
---@field TargetCamp ESkillEventTargetCampType
---@field TargetActor FActorSetter
---@field TargetHitPart FFloatSetter
local UPESkillEvent_OnKilled = {}

---@param DamageContext FGameMagnitudeContext
---@param DamageFlags EDamageEventFlags
---@param DamageEvent FDamageEvent
function UPESkillEvent_OnKilled:OnInstigatedDamage_Optimize(DamageContext, DamageFlags, DamageEvent) end
