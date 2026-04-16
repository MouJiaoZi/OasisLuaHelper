---@meta

---@class UPESkillTask_SpawnParticle: UPESkillTaskPeriod
---@field SoftTemplate UParticleSystem
---@field bIsHardReference boolean
---@field SpawnTarget EPESkillSpawnTargetType
---@field Offset FTransform
---@field AttachPos FMeshSocketSelector
---@field ScaleType EPEAttachScaleRule
---@field DestroyOnTaskEnd boolean
---@field SetterActors FArraySetter
---@field SpawnedActors ULuaArrayHelper<AEmitter>
local UPESkillTask_SpawnParticle = {}
