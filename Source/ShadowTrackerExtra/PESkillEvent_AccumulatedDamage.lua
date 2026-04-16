---@meta

---@class UPESkillEvent_AccumulatedDamageBase: UPESkillEventBase
---@field ClearTime number
---@field TriggerThreshold FFloatGetter
---@field AccumulatedDamageValue FFloatSetter
local UPESkillEvent_AccumulatedDamageBase = {}

function UPESkillEvent_AccumulatedDamageBase:ClearAccumulatedDamage() end


---@class UPESkillEvent_AccumulatedReceivedDamage: UPESkillEvent_AccumulatedDamageBase
local UPESkillEvent_AccumulatedReceivedDamage = {}


---@class UPESkillEvent_AccumulatedCausedDamage: UPESkillEvent_AccumulatedDamageBase
local UPESkillEvent_AccumulatedCausedDamage = {}

---@param DamageContext FGameMagnitudeContext
---@param DamageFlags EDamageEventFlags
---@param DamageEvent FDamageEvent
function UPESkillEvent_AccumulatedCausedDamage:OnInstigatedDamage_Optimize(DamageContext, DamageFlags, DamageEvent) end
