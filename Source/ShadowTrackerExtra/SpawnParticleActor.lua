---@meta

---在场景里生成大量的Particle 并使用对象池对其生成开销进行优化
---@class ASpawnParticleActor: AActor
---@field bDrawDebugLine boolean
---@field SpawnInterval number
---@field ParticleLifeTime number
---@field TraceDepth number
---@field ForceStatic boolean
---@field ParticleList ULuaArrayHelper<UParticleSystemComponent>
local ASpawnParticleActor = {}

---@param AboveGroundLoc FVector
function ASpawnParticleActor:SpawnEmitterAround(AboveGroundLoc) end

function ASpawnParticleActor:SelectRandomPointAndSpawnEmitter() end
