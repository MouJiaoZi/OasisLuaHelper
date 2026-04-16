---@meta

---@class ESkillEventDamageListenTimer
---@field ESkillEventDamageListenTimer_Before number @监听伤害前
---@field ESkillEventDamageListenTimer_After number @监听伤害后
ESkillEventDamageListenTimer = {}


---@class ESkillEventDamageOptimizeMethod
---@field ESkillEventDamageOptimizeMethod_None number @无优化
---@field ESkillEventDamageOptimizeMethod_PerFrame number @每帧数据合并触发事件
ESkillEventDamageOptimizeMethod = {}


---@class UPESkillEvent_DamageBase: UPESkillEventBase
---@field OptimizeMethod ESkillEventDamageOptimizeMethod
---@field eListenTimer ESkillEventDamageListenTimer
---@field eRestrictedDamage ERestrictedDamageType
---@field TagsMatchType EPEPassiveSkillTagsMatchType
---@field MatchTags ULuaArrayHelper<FGameplayTag>
---@field DamagePosition EPSkillEventWeaponHitPartType
---@field TargetCamp ESkillEventTargetCampType
---@field DamageValue FFloatSetter
---@field TargetActor FActorSetter
---@field TargetCauser FActorSetter
---@field TargetVictim FActorSetter
local UPESkillEvent_DamageBase = {}


---@class UPESkillEvent_VictimDamage: UPESkillEvent_DamageBase
local UPESkillEvent_VictimDamage = {}


---@class UPESkillEvent_CauserDamage: UPESkillEvent_DamageBase
local UPESkillEvent_CauserDamage = {}

---@param DamageContext FGameMagnitudeContext
---@param DamageFlags EDamageEventFlags
---@param DamageEvent FDamageEvent
function UPESkillEvent_CauserDamage:OnInstigatedDamage_Optimize(DamageContext, DamageFlags, DamageEvent) end

---@param DamageContext FDamageDataOneFrame
function UPESkillEvent_CauserDamage:OnInstigatedDamage_OncePerFrame(DamageContext) end
