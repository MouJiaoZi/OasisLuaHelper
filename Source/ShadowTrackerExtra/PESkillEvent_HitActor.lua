---@meta

---@class UPESkillEvent_HitActor: UPESkillEventBase
---@field FilterContainer FProjectileFilterContainer
---@field bNavMeshCheck boolean
---@field Extent FVector
---@field TargetActor FActorSetter
local UPESkillEvent_HitActor = {}

---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function UPESkillEvent_HitActor:HandleOnActorHit(SelfActor, OtherActor, NormalImpulse, Hit) end
