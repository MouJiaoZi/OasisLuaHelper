---@meta

---@class UPESkillTask_SpawnMagicField: UPESkillTaskPeriod
---@field MagicFieldClass APESkillMagicFieldActorBase
---@field SpawnTarget EPESkillSpawnTargetType
---@field Offset FTransform
---@field DestroyOnTaskEnd boolean
---@field IntervalOverride FFloatGetter
---@field DurationOverride FFloatGetter
---@field SpawnedMagicFields ULuaArrayHelper<APESkillMagicFieldActorBase>
local UPESkillTask_SpawnMagicField = {}
