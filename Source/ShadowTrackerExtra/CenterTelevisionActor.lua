---@meta

---@class FCenterTelevisionBoxRepMovement
---@field LinearVelocity FVector
---@field Location FVector
---@field Rotation FRotator
---@field MeshLinearVelocity FVector
---@field MeshAngularVelocity FVector
---@field MeshLocation FVector
---@field MeshRotation FRotator
FCenterTelevisionBoxRepMovement = {}


---@class ACenterTelevisionActor: AActivityBaseActor, IDropActorCurveInterface
---@field ProjectileReplicatedMovement FCenterTelevisionBoxRepMovement
---@field bIsSimulateStop boolean
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
---@field bUseDropActorCurveInterface boolean
---@field bUseDropCurve boolean
---@field DropGroupID number
---@field DropStartLocation FVector
---@field bUseDamageableInterface boolean
local ACenterTelevisionActor = {}

---@param bInReplicateMovement boolean
function ACenterTelevisionActor:SetReplicateMovement(bInReplicateMovement) end

function ACenterTelevisionActor:OnRep_ProjectileReplicatedMovement() end

---handle hit
---@param ImpactResult FHitResult
---@param ImpactVelocity FVector
function ACenterTelevisionActor:OnImpact(ImpactResult, ImpactVelocity) end

---@param ImpactResult FHitResult
function ACenterTelevisionActor:OnProjectileStopSim(ImpactResult) end

---@return boolean
function ACenterTelevisionActor:SpawnLootBox() end

---@return boolean
function ACenterTelevisionActor:IsInWater() end

---@return boolean
function ACenterTelevisionActor:IsFoor() end

---@param bUseCurve boolean
---@param GroupID number
---@param StartLoc FVector
---@param EndLoc FVector
function ACenterTelevisionActor:SetDropLocation(bUseCurve, GroupID, StartLoc, EndLoc) end

function ACenterTelevisionActor:RegisterToCurveAnimComponent() end

---@param DamageEvent FDamageEvent
---@param Attacker AActor
---@return number
function ACenterTelevisionActor:BP_CalcFinalDamageRate(DamageEvent, Attacker) end

---@return boolean
function ACenterTelevisionActor:BP_GetCanBePicked() end
