---@meta

---@class USTExtraPhysicsActorCheckComponent: UActorComponent
---@field bOpenPushupToCar boolean
---@field PushupToCarPenetrationDepth number
---@field CapsuleHalfHeight number
---@field CapsuleRadius number @半径，如果没有，就用包围盒的半径
---@field bOpenPushMe boolean
---@field PushMePenetrationDepth number
---@field PushMeImpulse number
---@field PushMeMinInterval number
---@field MoveStatusCheckTickInterval number
---@field MoveStatusCheckTickTime number
---@field MoveStatusCheckStopLinearVelocityTolerance number
---@field MoveStatusCheckStopAngularVelocityTolerance number
---@field bOpenDragOnGround boolean
---@field DragOnGroundCheckEndOffsetDown number
---@field DragOnGroundCheckMaxVelocityZ number
---@field HorizontalSquaredLimit number
---@field HeightLimit number
---@field DragOnGroundTimerHandle FTimerHandle
---@field bBirthDragOnGroundCheck boolean
---@field bBirthDragOnGroundIsStop boolean
---@field BirthLocation FVector
---@field BirthDragOnGroundCheckTimeInterval number
---@field BirthDragOnGroundCheckTime number
---@field BirthDragOnGroundCheckMaxCount number
---@field BirthDragOnGroundCheckCount number
---@field BirthDragOnGroundCheckTimerHandle FTimerHandle
---@field ClientReceiveReplicatedMovementMinTimeout number
---@field ClientReceiveReplicatedMovementTimeout number
---@field ClientReceiveReplicatedMovementTimeoutSetLoctionInterval number
---@field ClientReceiveReplicatedMovementTimeoutMaxDisSquared number
---@field bEnableDSTick boolean
local USTExtraPhysicsActorCheckComponent = {}

---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function USTExtraPhysicsActorCheckComponent:OnActorHit(SelfActor, OtherActor, NormalImpulse, Hit) end

function USTExtraPhysicsActorCheckComponent:OnDragOnGround() end

---@param DeltaTime number
function USTExtraPhysicsActorCheckComponent:BirthDragOnGroundCheck(DeltaTime) end

---@param DeltaTime number
function USTExtraPhysicsActorCheckComponent:AuthorityTick(DeltaTime) end

---@param DeltaTime number
function USTExtraPhysicsActorCheckComponent:MoveStatusCheck(DeltaTime) end

---@param DeltaTime number
function USTExtraPhysicsActorCheckComponent:SimulateTick(DeltaTime) end

---@param DeltaTime number
function USTExtraPhysicsActorCheckComponent:ClientReceiveReplicatedMovementCheck(DeltaTime) end

function USTExtraPhysicsActorCheckComponent:SimulateSetToReplicatedMovement() end

---@param NewState FRigidBodyState
function USTExtraPhysicsActorCheckComponent:ApplyRigidBodyState(NewState) end

---@param DamagedActor AActor
---@param Damage number
---@param DamageType UDamageType
---@param InstigatedBy AController
---@param DamageCauser AActor
function USTExtraPhysicsActorCheckComponent:OnTakeAnyDamage(DamagedActor, Damage, DamageType, InstigatedBy, DamageCauser) end
