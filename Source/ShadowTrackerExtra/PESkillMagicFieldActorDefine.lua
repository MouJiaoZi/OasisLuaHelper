---@meta

---@class EMagicFieldEventType
---@field OnEnter number @进入事件
---@field OnExit number @退出事件
---@field OnInterval number @持续事件
---@field OnStart number @开始事件
---@field OnEnd number @结束事件
EMagicFieldEventType = {}


---@class EMagicFieldSpawnType
---@field SpawnWithSkill number @由技能创建
---@field SpawnWithSelf number @由自身创建
EMagicFieldSpawnType = {}


---@class FMagicFieldTargetFilter
---@field bFilterEnemy boolean
---@field bFilterFriendly boolean
---@field bFilterNeutral boolean
---@field AllowedActorClasses ULuaArrayHelper<AActor>
---@field IgnoredActorClasses ULuaArrayHelper<AActor>
---@field bRequireLineOfSight boolean
FMagicFieldTargetFilter = {}


---@class FMagicFieldEventAction
---@field EventType EMagicFieldEventType
---@field Actions ULuaArrayHelper<UPESkillMagicFieldActionBase>
FMagicFieldEventAction = {}


---@class FMagicFieldConfig
---@field Interval number
---@field Duration number
---@field FilterContainer FProjectileFilterContainer
---@field EventActions ULuaArrayHelper<FMagicFieldEventAction>
---@field bActivateWithoutTargets boolean
---@field SpawnType EMagicFieldSpawnType
---@field DefaultCampID number
FMagicFieldConfig = {}
