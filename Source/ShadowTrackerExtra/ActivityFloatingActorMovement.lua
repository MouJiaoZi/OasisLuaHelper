---@meta

---@class FMoveReplicatedData
---@field WorldTime number
---@field bHasControl boolean
---@field Velocity FVector
---@field LastReplicatedLocation FTransform
---@field TeleportCount number
FMoveReplicatedData = {}


---FloatingPawnMovement is a movement component that provides simple movement for any Pawn class. Limits on speed and acceleration are provided, while gravity is not implemented. Normally the root component of the owning actor is moved, however another component may be selected (see SetUpdatedComponent()). During swept (non-teleporting) movement only collision of UpdatedComponent is considered, attached components will teleport to the end location ignoring collision.
---@class FOnActivityFloatingActorLerp : ULuaMulticastDelegate
FOnActivityFloatingActorLerp = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Time: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnActivityFloatingActorLerp:Add(Callback, Obj) end

---触发 Lua 广播
---@param Time number
function FOnActivityFloatingActorLerp:Broadcast(Time) end


---@class UActivityFloatingActorMovement: UMovementComponent
---@field MaxSpeed number @Maximum velocity magnitude allowed for the controlled Pawn.
---@field Acceleration number @Acceleration applied by input (rate of change of velocity)
---@field Deceleration number @Deceleration applied when there is no input (rate of change of velocity)
---@field TurningBoost number @Setting affecting extra force applied when changing direction, making turns have less drift and become more responsive. Velocity magnitude is not allowed to increase, that only happens due to normal acceleration. It may decrease with large direction changes. Larger values apply extra force to reach the target direction more quickly, while a zero value disables any extra turn force.
---@field FloatingMoveSpeedScale number @Maximum velocity magnitude allowed for the controlled Pawn.
---@field RotatorSpeed number @Engine Modify End
---@field MovementSmoothAlpha number
---@field MovementSmoothEps number
---@field bAllowSlide boolean
---@field InputMin FVector
---@field InputMax FVector
---@field RotateMin FRotator
---@field RotateMax FRotator
---@field MaxPredictTime number
---@field PredictScale number
---@field LocationInterpolationCoefficient number
---@field InterpolationAccScale number
---@field TeleportThreshold number
---@field RotationInterpolationCoefficient number
---@field bDSTickOptimization boolean
---@field LastReplicatedData FMoveReplicatedData @Set to true when a position correction is applied. Used to avoid recalculating velocity when this occurs.
---@field CachedSpeed number
---@field OnLerp FOnActivityFloatingActorLerp
---@field BeforeTick FOnActivityFloatingActorLerp
---@field bPositionCorrected number
---@field bUseForceTransform boolean
---@field bHaveFixedTransform boolean
---@field TempTeleportCount number
---@field LastActiveTime number
local UActivityFloatingActorMovement = {}

---@param WorldVector FVector
---@param bForce boolean
function UActivityFloatingActorMovement:AddInputVector(WorldVector, bForce) end

---@param WorldRotator FRotator
---@param bForce boolean
function UActivityFloatingActorMovement:AddRotateVector(WorldRotator, bForce) end

---@param WorldTranform FTransform
---@param KeepVelocity boolean
function UActivityFloatingActorMovement:ForceSetTransform(WorldTranform, KeepVelocity) end

---@param WorldTranform FTransform
---@param KeepVelocity boolean
---@param DeltaTime number
function UActivityFloatingActorMovement:MoveBySetTransform(WorldTranform, KeepVelocity, DeltaTime) end

---@param DeltaTime number
---@return number
function UActivityFloatingActorMovement:CalcSpeed(DeltaTime) end

---@param PreData FMoveReplicatedData
function UActivityFloatingActorMovement:OnRep_MovementRep(PreData) end

---@param Delta number
function UActivityFloatingActorMovement:LerpMovement(Delta) end
