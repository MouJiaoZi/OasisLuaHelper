---@meta

---@class FLootProjectileRepMovement
---@field LinearVelocity FVector
---@field Location FVector
---@field Rotation FRotator
---@field MeshLinearVelocity FVector
---@field MeshAngularVelocity FVector
---@field MeshLocation FVector
---@field MeshRotation FRotator
FLootProjectileRepMovement = {}


---@class ASTLootProjectile: AActor
---@field ProjectileReplicatedMovement FLootProjectileRepMovement
---@field IgnoreImpactActorClasses ULuaArrayHelper<AActor> @Don't process impacts when hitting actors of these class types.
---@field bNetUseDistanceRelevancy number
---@field ProjectileLife number
---@field DestroyAtExplosion number
---@field PostExplodeLifetime number
---@field MeshInitialRotationRate FVector
---@field bGenerateStartingVelocity boolean @Should this projectile generate a velocity internally on begin play?
---@field MinStartingVelocity FVector
---@field MaxStartingVelocity FVector
---@field MinImpactVelocityForSound number
---@field TimeBetweenImpactSound number
local ASTLootProjectile = {}

---@param bInReplicateMovement boolean
function ASTLootProjectile:SetReplicateMovement(bInReplicateMovement) end

function ASTLootProjectile:OnRep_ProjectileReplicatedMovement() end

---handle hit
---@param ImpactResult FHitResult
---@param ImpactVelocity FVector
function ASTLootProjectile:OnImpact(ImpactResult, ImpactVelocity) end

---@param ImpactResult FHitResult
function ASTLootProjectile:OnProjectileStopSim(ImpactResult) end

---@param InStopLocation FTransform
---@param InStopLocationMesh FTransform
---@param InLinearVelocity FVector
---@param InAngularVelocity FVector
function ASTLootProjectile:Multi_StopSimulation(InStopLocation, InStopLocationMesh, InLinearVelocity, InAngularVelocity) end

function ASTLootProjectile:Multi_ReactivateSimulation() end

---@return boolean
function ASTLootProjectile:SpawnLootBox() end

---@return boolean
function ASTLootProjectile:IsInWater() end

---@return boolean
function ASTLootProjectile:IsFoor() end
