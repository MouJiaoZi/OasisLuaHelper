---@meta

---@class FBulletExtraSphereCollisioConfig
---@field CollisionCompTag string
---@field SweepAdjustBackwardsDis number
---@field bSkipExtraSweepOnMainImpact boolean
FBulletExtraSphereCollisioConfig = {}


---@class FOnBulletPhysicsVolumeChangedDelegate : ULuaMulticastDelegate
FOnBulletPhysicsVolumeChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, OldVolume: APhysicsVolume, NewVolume: APhysicsVolume) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnBulletPhysicsVolumeChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param OldVolume APhysicsVolume
---@param NewVolume APhysicsVolume
function FOnBulletPhysicsVolumeChangedDelegate:Broadcast(OldVolume, NewVolume) end


---子弹运动组件
---@class UBulletMovementComponent: UProjectileMovementComponent
---@field MaxBounces number
---@field bEnableExtraSphereCollision boolean
---@field ExtraSphereCollisioConfig FBulletExtraSphereCollisioConfig
---@field NumBounces_PRIVATE number
---@field bResumeMoveAfterImpactWithNoLostFlag boolean
---@field bHasTickDelayedOneFrame boolean
---@field bIgnoreBounceReflectOnce boolean
---@field bLaunchWithConsistentPathFlyMode boolean
---@field InitLaunchSpeed FVector
---@field InitLaunchPosition FVector
---@field GravityScaleSpecific number
---@field CurTotalMoveTime number
---@field CurTotalMoveDis number
---@field NoGravityDistance number
---@field bCheckBodyInstance boolean
---@field bEnableTickDelayForOneFrame boolean
---@field bNeedStopWhenImpact boolean
---@field LastVelocityBeforeStop FVector
---@field mf_MovedTime number
---@field OnBulletPhysicsVolumeChangedDelegate FOnBulletPhysicsVolumeChangedDelegate
local UBulletMovementComponent = {}

---@param InVelocity FVector
---@param DeltaTime number
function UBulletMovementComponent:PreComputeMoveDeltaInternal(InVelocity, DeltaTime) end

---@param InVelocity FVector
---@param DeltaTime number
function UBulletMovementComponent:PostComputeMoveDeltaInternal(InVelocity, DeltaTime) end

---@param InVelocity FVector
---@param DeltaTime number
---@return FVector
function UBulletMovementComponent:ComputeMoveDeltaInternal(InVelocity, DeltaTime) end

---@return boolean
function UBulletMovementComponent:CheckEnableConsistentPathFlyMode() end

---@param InShootWeapon ASTExtraShootWeapon
---@param InInitLaunchSpeed FVector
---@param InInitLaunchPosition FVector
---@param InGravityScaleSpecific number
---@param InNoGravityDistance number
function UBulletMovementComponent:PrepareConsistentFly(InShootWeapon, InInitLaunchSpeed, InInitLaunchPosition, InGravityScaleSpecific, InNoGravityDistance) end

---@param InFlyTime number
---@param InLaunchSpeed FVector
---@param InLaunchPosition FVector
---@param InNoGravityDistance number
---@param InGravityZ number
---@return FVector
function UBulletMovementComponent:CalculateConsistentPathPositionCommon(InFlyTime, InLaunchSpeed, InLaunchPosition, InNoGravityDistance, InGravityZ) end

---@param Hit FHitResult
---@param TimeTick number
---@param MoveDelta FVector
---@param SubTickTimeRemaining number
---@return number
function UBulletMovementComponent:HandleBlockingHitInternal(Hit, TimeTick, MoveDelta, SubTickTimeRemaining) end

---@param TimeTick number
---@param MoveDelta FVector
function UBulletMovementComponent:HandleNoneBlockingMoveInternal(TimeTick, MoveDelta) end

---@param FlyTime number
---@return FVector
function UBulletMovementComponent:CalculateConsistentPathPosition(FlyTime) end

function UBulletMovementComponent:ForceStop() end

function UBulletMovementComponent:ResumeMoveAfterImpactWithNoLost() end
