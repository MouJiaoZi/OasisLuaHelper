---@meta

---@class FAreaPersistEffectInfo
---@field RequiredTags FGameplayTagContainer
---@field PersistSkill UPersistEffectBase
---@field BisApplyOnce boolean
FAreaPersistEffectInfo = {}


---@class AAreaControllerActorWithEffect: ACustomAreaControllerActor
---@field bEnablePersistSkill boolean
---@field PersistSkillInfos ULuaArrayHelper<FAreaPersistEffectInfo>
---@field EffectDuration number
---@field bMaintainEffectsOutsideArea boolean
local AAreaControllerActorWithEffect = {}
