---@meta

---@class UPESkillTask_SpawnMonster: UPESkillTaskPeriod
---@field ActorClass AActor
---@field SpawnTarget EPESkillSpawnTargetType
---@field Offset FTransform
---@field DestroyOnTaskEnd boolean
---@field bIsSetEnemyTarget boolean
---@field SpawnedActors ULuaArrayHelper<AActor>
local UPESkillTask_SpawnMonster = {}
