---@meta

---@class FOnMoveHitActor : ULuaMulticastDelegate
FOnMoveHitActor = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, HitActor: AActor, HitSpeed: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMoveHitActor:Add(Callback, Obj) end

---触发 Lua 广播
---@param HitActor AActor
---@param HitSpeed number
function FOnMoveHitActor:Broadcast(HitActor, HitSpeed) end


---@class USTExtraPathVehicleMovementComponent: UPawnMovementComponent
---@field PathMoveMaxSpeedConfig number
---@field PathMoveMinSpeedConfig number
---@field TargetPathMoveMaxSpeed number
---@field PathMoveMaxSpeedDampingRate number
---@field PathMoveMaxSpeed number
---@field PathMoveAccel number
---@field PathMoveBrackAccel number
---@field bBrakeCantMove number
---@field PathMoveInputThreshold number
---@field PathMoveFriction number
---@field bPathMoveInverseMode boolean
---@field bUseSprint boolean
---@field RotInterpSpeed number
---@field LowRotInterpSpeed number
---@field LowRotInterpSpeedThreshold number
---@field bUseConstantInterp boolean
---@field StopMoveThresholdNoInput number
---@field StopMoveThreshold number
---@field bZeroSpeedNotCalc boolean
---@field StopMoveRotThreshold number
---@field bAutonomousMove boolean
---@field PathMoveCurrentAccel number
---@field bIsPathMoveBreking boolean
---@field PathMoveCurrentSpeed number
---@field CurrentForwardInput number
---@field RepForwardInput number
---@field OnMoveHitActor FOnMoveHitActor
---@field bConsiderReversePitch boolean
---@field UseSpecifiedSpeed boolean
---@field CurMoveState number
---@field PathMoveMinSpeed number
---@field BrakeAccel number
---@field MinUpSpeed number
---@field MaxDownSpeed number
---@field bUseGravity boolean
---@field UpGravityAccelrate number
---@field DownGravityAccelrate number
---@field CurrentRightInput number
---@field CurrentRightSpeed number
---@field CachedPawnLocInLine FVector
---@field CachedBias number
---@field PathMoveRightAccel number
---@field MaxRightSpeed number
---@field MaxRightBias number
---@field OpenEditMode boolean
---@field LastSpecifiedVelocity number
---@field DistancePassed number
---@field LuaFilePath string
---@field NeedInterpLocThreshold number
---@field bEnableServerAuth boolean
---@field ForceCorrectDistanceDiff number
---@field DistanceError number
---@field InterpLocSpeedFactor number
---@field BodyCollisonOffset FVector
---@field CheckTimeDilation number
---@field bEnableConfirmSplinePos boolean
---@field bCheckOverlapTrackVehicle boolean
---@field OverLapTestChannel ECollisionChannel
---@field bNeedCorrectVehicle boolean
---@field LastValidTransform FTransform
---@field MaxCorrectLocThreshold number
local USTExtraPathVehicleMovementComponent = {}

---@param DeltaTime number
function USTExtraPathVehicleMovementComponent:UpdatePathMovement(DeltaTime) end

---@param InForwardInput number
function USTExtraPathVehicleMovementComponent:RPCServerInput(InForwardInput) end

---@param InSpeed number
function USTExtraPathVehicleMovementComponent:AddMaxSpeed(InSpeed) end

---@param ScaleValue number
function USTExtraPathVehicleMovementComponent:ScaleMaxSpeed(ScaleValue) end

---@param DeltaTime number
function USTExtraPathVehicleMovementComponent:UpdateMaxSpeed(DeltaTime) end

---@param DeltaTime number
---@param OutAcc number
---@return boolean
function USTExtraPathVehicleMovementComponent:CalcAcceleration(DeltaTime, OutAcc) end

---@param NewValue number
function USTExtraPathVehicleMovementComponent:SetPathMoveMaxSpeedConfig(NewValue) end

function USTExtraPathVehicleMovementComponent:OnRep_PathMoveMaxSpeedConfig() end

function USTExtraPathVehicleMovementComponent:OnRep_PathMoveMaxSpeed() end

function USTExtraPathVehicleMovementComponent:OnRep_PathMoveInverseMode() end

---@param NewValue boolean
function USTExtraPathVehicleMovementComponent:SetPathMoveInverseMode(NewValue) end

function USTExtraPathVehicleMovementComponent:OnRep_PathMoveCurrentSpeed() end

---@param NewValue number
function USTExtraPathVehicleMovementComponent:UpdatePathMoveCurrentSpeed(NewValue) end

---@param NewValue number
function USTExtraPathVehicleMovementComponent:SetRepForwardInput(NewValue) end

function USTExtraPathVehicleMovementComponent:OnRep_RepForwardInput() end

---@param NewActor AActor
function USTExtraPathVehicleMovementComponent:SetRailActor(NewActor) end

function USTExtraPathVehicleMovementComponent:OnRep_RailActor() end

---@param bNewValue boolean
function USTExtraPathVehicleMovementComponent:SetConsiderReversePitch(bNewValue) end

function USTExtraPathVehicleMovementComponent:OnRep_ConsiderReversePitch() end

---@param TempVelocity number
---@return number
function USTExtraPathVehicleMovementComponent:AdjustVelocity(TempVelocity) end

---@param DeltaTime number
---@param RightDirection FVector
---@return FVector
function USTExtraPathVehicleMovementComponent:GetRightBias(DeltaTime, RightDirection) end
