---@meta

---@class FSimpleCollisionCapsule
---@field Start FVector
---@field End FVector
---@field Radius number
FSimpleCollisionCapsule = {}


---@class FSimpleCollisionSphere
---@field Origin FVector
---@field Radius number
FSimpleCollisionSphere = {}


---@class FSimpleCollisionHull
---@field Origin FVector
FSimpleCollisionHull = {}


---@class FSimpleCollisionLine
---@field Start FVector
---@field End FVector
---@field HitLocation FVector
---@field ImpactLocation FVector
---@field HitNormal FVector
FSimpleCollisionLine = {}


---@class FSimpleCapsuleCheck
FSimpleCapsuleCheck = {}


---@class FSimpleCapsulePersistentChecker
FSimpleCapsulePersistentChecker = {}


---@class FSimpleSpherePersistentChecker
---@field Sphere FSimpleCollisionSphere
---@field PassedTime number
FSimpleSpherePersistentChecker = {}


---@class FBoundingSpherePersistentChecker
FBoundingSpherePersistentChecker = {}


---@class FSimpleCollisionEvent
FSimpleCollisionEvent = {}


---@class FScmHitbox
FScmHitbox = {}


---@class ATslSimpleCollisionManager: AActor
---@field PersistentExplosiveItemFields ULuaArrayHelper<FSimpleSpherePersistentChecker>
---@field DamageFieldUpdatePeriod number
---@field DamageFieldPassedTime number
local ATslSimpleCollisionManager = {}

---@param Collision FSimpleCollisionCapsule
---@param OwnerTracer UTslSimpleCollisionReceiver
---@param ID number
function ATslSimpleCollisionManager:RegisterPersistentReceiver(Collision, OwnerTracer, ID) end

---@param Origin FVector
---@param Radius number
---@param OwnerTracer UTslSimpleCollisionReceiver
function ATslSimpleCollisionManager:RegisterBoundingSphere(Origin, Radius, OwnerTracer) end

---@param Collision FSimpleCollisionCapsule
---@param OwnerTracer UTslSimpleCollisionReceiver
---@param Receiver UTslSimpleCollisionReceiver
---@param RebuildSphere boolean
---@return number
function ATslSimpleCollisionManager:AddCheckerToBoundingSphere(Collision, OwnerTracer, Receiver, RebuildSphere) end

---@param num number
---@param RngRadius number
function ATslSimpleCollisionManager:AddRandomPersistentCapsules(num, RngRadius) end
