---@meta

---@class FSTFlyingMoveState
---@field bIsReady boolean
---@field ThrottleInput number
---@field SteerInput number
---@field ControlRotation FRotator
---@field Location FVector_NetQuantize100
---@field Rotation FRotator
---@field Velocity FVector_NetQuantize100
FSTFlyingMoveState = {}


---@class FSTReplicatedFlyingMoveState
---@field Location FVector_NetQuantize100
---@field Rotation FRotator
---@field Velocity FVector_NetQuantize100
FSTReplicatedFlyingMoveState = {}


---@class FOnFlyingMoveEnd2 : ULuaMulticastDelegate
FOnFlyingMoveEnd2 = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bFinish: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnFlyingMoveEnd2:Add(Callback, Obj) end

---触发 Lua 广播
---@param bFinish boolean
function FOnFlyingMoveEnd2:Broadcast(bFinish) end


---@class UCharacterFlyingComponent: UActorComponent, IObjectPoolInterface
---@field AddForceWeaken number
---@field bFlyingSimulateUpdown boolean
---@field UpdownDeltaZOffset number
---@field UpdownDeltaZOffsetMax number
---@field EnterNotAllowedStateList ULuaArrayHelper<EPawnState>
---@field FlyingNotAllowedStateList ULuaArrayHelper<EPawnState>
---@field bFlyingStart boolean
---@field bFlyingMove boolean
---@field FlyingMoveVelocity FVector_NetQuantize100
---@field bIgnoreMoveWhenConflictInput boolean
---@field bAddforceUpOrDown number
---@field HorizontalSpeedModifier number
---@field VerticalSpeedModifier number
---@field OnFlyingMoveEnd FOnFlyingMoveEnd2
---@field bSimulateCheckWall boolean
---@field bSimulateMoveSmooth boolean
---@field bAllowSmoothCorrection boolean
---@field bAllowSmoothInterp boolean
---@field SmoothNetUpdateTime number
---@field SmoothNetUpdateRotationTime number
---@field MaxAllowPositionDistanceSqAtAutonomousClient number
---@field MaxAllowPositionToleranceAtSimulateClient number
---@field MaxAllowRotationToleranceAtSimulateClient number
---@field FreeFall_InputTriggerThreshold number
---@field FreeFall_AcceForward number
---@field FreeFall_MaxForwardSpeed number
---@field FreeFall_MaxForwardExtraFallSpeed number
---@field FreeFall_AcceRight number
---@field FreeFall_MaxRightSpeed number
---@field FreeFall_MaxRightExtraFallSpeed number
---@field FreeFall_MaxPitchForwardAngle number
---@field FreeFall_MaxPitchBackAngle number
---@field FreeFall_RotationYawInterpSpeed number
---@field FreeFall_RotationPitchInterpSpeed number
---@field DifferencePitchBetweenCharcterAndCamera number
---@field bOpenSimulateTick boolean
---@field STReplicateFlyingMoveState FSTFlyingMoveState
local UCharacterFlyingComponent = {}

---@param FlyingJoystickSensitivity number
function UCharacterFlyingComponent:UpdateFlyingJoystickSensitivity(FlyingJoystickSensitivity) end

---@param bEnter boolean
---@param FlyingJoystickSensitivity number
function UCharacterFlyingComponent:NotifyPlayerEnterFlying(bEnter, FlyingJoystickSensitivity) end

---@param bMove boolean
---@param Velocity FVector
---@param bIgnoreWhenConflictInput boolean
function UCharacterFlyingComponent:NotifyPlayerFlyingMove(bMove, Velocity, bIgnoreWhenConflictInput) end

---@param bUpdown boolean
---@param DeltaZOffset number
---@param DeltaZOffsetMax number
function UCharacterFlyingComponent:NotifyPlayerSimulateUpdown(bUpdown, DeltaZOffset, DeltaZOffsetMax) end

---@param Impulse FVector
---@param bVelocityChange boolean
function UCharacterFlyingComponent:PlayerAddImpulse(Impulse, bVelocityChange) end

---@param bAdd boolean
---@param Force FVector
function UCharacterFlyingComponent:PlayerAddForce(bAdd, Force) end

---@param bMergeOrRemove boolean
---@param PawnStateList ULuaArrayHelper<EPawnState>
function UCharacterFlyingComponent:ModifyFlyingDisabledState(bMergeOrRemove, PawnStateList) end

---@param bUpOrDown number
function UCharacterFlyingComponent:NotifyServerAddforceUpOrDown(bUpOrDown) end

function UCharacterFlyingComponent:OnRep_bFlyingStart() end

---@param DeltaTime number
---@param ThrottleInput number
---@param SteerInput number
---@param ControlRotation FRotator
function UCharacterFlyingComponent:UpdateFlyingMoveState(DeltaTime, ThrottleInput, SteerInput, ControlRotation) end

---@param DeltaTime number
---@param ThrottleInput number
---@param SteerInput number
---@param ControlRotation FRotator
function UCharacterFlyingComponent:UpdateRotation(DeltaTime, ThrottleInput, SteerInput, ControlRotation) end

---@return number
function UCharacterFlyingComponent:GetReplicatedForwardInput() end

---@return number
function UCharacterFlyingComponent:GetReplicatedRightInput() end

function UCharacterFlyingComponent:PostNetReceiveNewState() end

---@param bEnter boolean
---@param bSetParachuteAnim boolean
function UCharacterFlyingComponent:ServerEnterFlyingState(bEnter, bSetParachuteAnim) end

---@param Character ASTExtraPlayerCharacter
function UCharacterFlyingComponent:OnPlayerExitParachute(Character) end

---@param FallingTime number
---@param DestPosition FVector
---@return boolean
function UCharacterFlyingComponent:ServerStartFlying(FallingTime, DestPosition) end

---@return boolean
function UCharacterFlyingComponent:ServerPauseFlying() end

---@param DeltaTime number
function UCharacterFlyingComponent:UpdateFlyingAccurateMoveComponent(DeltaTime) end

function UCharacterFlyingComponent:OnPreReconnectOnServer() end

---@param bEnter boolean
function UCharacterFlyingComponent:ClientEnterFlyingState(bEnter) end

---@param FallingTime number
---@param StartPosition FVector
---@param DestPosition FVector
function UCharacterFlyingComponent:ClientStartFlying(FallingTime, StartPosition, DestPosition) end

function UCharacterFlyingComponent:ClientPauseFlying() end

---@param Timestamp number
---@param InThrottleInput number
---@param InSteeringInput number
---@param ClientLoc FVector
---@param ControlRotation FRotator
function UCharacterFlyingComponent:ServerUpdateState(Timestamp, InThrottleInput, InSteeringInput, ClientLoc, ControlRotation) end

---@param ServerLoc FVector
---@param ServerRotation FRotator
function UCharacterFlyingComponent:ClientAjustPosition(ServerLoc, ServerRotation) end

---@param FallingTime number
---@param DestPosition FVector
function UCharacterFlyingComponent:GMServerStartFlying(FallingTime, DestPosition) end

function UCharacterFlyingComponent:OnRep_ReplicatedFlyingMoveState() end
