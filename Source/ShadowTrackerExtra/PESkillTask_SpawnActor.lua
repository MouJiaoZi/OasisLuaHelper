---@meta

---@class IPETaskSpawnActorInterface
IPETaskSpawnActorInterface = {}

---@param Skill UPersistEffectSkill
function IPETaskSpawnActorInterface:SetInstigatorSkill(Skill) end


---@class UPESkillTask_SpawnActor: UPESkillTaskPeriod
---@field ActorClass AActor
---@field SpawnTarget EPESkillSpawnTargetType
---@field Offset FTransform
---@field DestroyOnTaskEnd boolean
---@field ActorList FArraySetter
---@field SpawnedActors ULuaArrayHelper<AActor>
local UPESkillTask_SpawnActor = {}
