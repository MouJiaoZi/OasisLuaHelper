---@meta

---@class FReplicatedParachuteState
---@field ThrottleInput number
---@field SteerInput number
---@field State number
---@field ControlRotation FRotator
FReplicatedParachuteState = {}


---@class FReplicatedParachuteMove
---@field Location FVector_NetQuantize
---@field Rotation FRotator
---@field Velocity FVector_NetQuantize
FReplicatedParachuteMove = {}


---@class FReplicatedParachuteMove_New
---@field Location FVector
---@field Rotation FRotator
---@field Velocity FVector
FReplicatedParachuteMove_New = {}


---@class UBaseParachuteComponent: UActorComponent
---@field CorrectionTimes number
---@field CurrentDiveRate number
---@field CachedLastLoc FVector
---@field FollowerDist number
---@field bUseCompressedInputRPC boolean
---@field bParaglidingMode boolean
---@field AllowMaxDiatanceAtServer number
---@field AllowVelocityZErrorTolerance number
---@field AllowVelocityXYErrorTolerance number
---@field CorrectClientInterval number
---@field FreeFall_InputTriggerThreshold number
---@field FreeFall_AcceFall number
---@field FreeFall_MaxFreeFallSpeed number
---@field FreeFall_MaxFallSpeedChangeAccel number
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
---@field bFreeFallRotFollowController boolean
---@field FreeFall_MinDiveAngle number
---@field FreeFall_DiveExtraAcceFall number
---@field FreeFall_MaxDiveExtraFallSpeed number
---@field bOpened_EnableInputMode8Dirs boolean
---@field Opened_AcceFall number
---@field Opened_MaxFreeFallSpeed number
---@field Opened_AcceForward number
---@field Opened_MaxForwardSpeed number
---@field Opened_MaxBackwardSpeed number
---@field Opened_MaxForwardExtraFallSpeed number
---@field Opened_MaxBackExtraFallSpeed number
---@field Opened_GlidingSpeedRemainPercent number
---@field Opened_AcceRight number
---@field Opened_MaxRightSpeed number
---@field Opened_MaxLeftRightExtraFallSpeed number
---@field Opened_MaxRollAngle number
---@field Opened_MaxPitchForwardAngle number
---@field Opened_MaxPitchBackAngle number
---@field Opened_MaxYawAngleSpeed number
---@field Opened_RotationInterpSpeed number
---@field ServerReceivedMoveStateTimeStamp number
---@field LastReceivedMoveStateTimestamp number
---@field CurVelocity FVector
---@field StartParachuteLoc FVector
---@field InputForwardTriggered number
---@field InputRightTriggered number
---@field CurrentForwardSpeed number
---@field CurrentRightSpeed number
---@field CurrentFallSpeed number
---@field CurrentFreeFallPitchAngle number
---@field CurrentGlidingSpeed number
---@field CurrentClientTimeStamp number
---@field ServerCorrectTimestamp number
---@field LastReceiveClientStateTime number
---@field LastCorrectionTime number
---@field StartParachuteTime number
---@field ParachuteTimestamp number
---@field SendClientMoveToServerTimeSeconds number
---@field LastSimSetMeshOffsetTimer number
---@field bRestServerCorrectTime boolean
---@field bResetTime boolean
---@field bUseServerAuthorize boolean
---@field bStartParachute boolean
---@field HandleAdjustFollower FTimerHandle
local UBaseParachuteComponent = {}

---@param InVelocity FVector
function UBaseParachuteComponent:SetCurVelocity(InVelocity) end

---@param NewVelocity FVector
function UBaseParachuteComponent:SetParachuteVelocity(NewVelocity) end

---@param ForwardSpeed number
---@param RightSpeed number
---@param FallingSpeed number
---@param GlidingSpeed number
function UBaseParachuteComponent:SetParachuteSpeeds(ForwardSpeed, RightSpeed, FallingSpeed, GlidingSpeed) end

---@param DeltaTime number
---@param ThrottleInput number
---@param SteeringInput number
---@param ControlRotation FRotator
function UBaseParachuteComponent:TickParachuteComponent(DeltaTime, ThrottleInput, SteeringInput, ControlRotation) end

---@param NewPosition FVector
---@param NewRotation FRotator
---@param NewVelocity FVector
---@param bCheckWall boolean
function UBaseParachuteComponent:ApplyPrachuteState(NewPosition, NewRotation, NewVelocity, bCheckWall) end

---@param Timestamp number
---@param Position FVector
---@param Rotation FRotator
---@param Velocity FVector
function UBaseParachuteComponent:SendServerMoveToClientInternal(Timestamp, Position, Rotation, Velocity) end

---@param Timestamp number
---@param Position FVector
---@param Rotation FRotator
---@param Velocity FVector
---@return boolean
function UBaseParachuteComponent:SendClientMoveToServerInternal(Timestamp, Position, Rotation, Velocity) end

function UBaseParachuteComponent:StartParachute() end

function UBaseParachuteComponent:StopParachute() end

function UBaseParachuteComponent:PostNetReceivedParachuteMove() end

---@param DeltaTime number
function UBaseParachuteComponent:TickAtAutonomousProxy(DeltaTime) end

---@param DeltaTime number
function UBaseParachuteComponent:TickAtSimulatedProxy(DeltaTime) end

---@param DeltaTime number
---@param ThrottleInput number
---@param SteerInput number
---@param State EParachuteState
---@param ControlRotation FRotator
function UBaseParachuteComponent:UpdateParachuteState(DeltaTime, ThrottleInput, SteerInput, State, ControlRotation) end

---@param DeltaTime number
---@param ThrottleInput number
---@param SteerInput number
---@param State EParachuteState
---@param ControlRotation FRotator
function UBaseParachuteComponent:UpdateRotation(DeltaTime, ThrottleInput, SteerInput, State, ControlRotation) end

---@param DeltaTime number
---@param ThrottleInput number
---@param SteerInput number
---@param State EParachuteState
---@param ControlRotation FRotator
function UBaseParachuteComponent:UpdateLocation(DeltaTime, ThrottleInput, SteerInput, State, ControlRotation) end

---@param CameraWorldRotation FRotator
---@param InputForward number
---@param InputRight number
---@param DeltaTime number
function UBaseParachuteComponent:UpdateFreeFallRotation(CameraWorldRotation, InputForward, InputRight, DeltaTime) end

---@param InputForward number
---@param InputRight number
---@param DeltaTime number
function UBaseParachuteComponent:UpdateParachuteOpenedRotation(InputForward, InputRight, DeltaTime) end

---@param InputForward number
---@param InputRight number
---@param DeltaTime number
---@return FVector
function UBaseParachuteComponent:CalFreeFallVelocity(InputForward, InputRight, DeltaTime) end

---@param InputForward number
---@param InputRight number
---@param DeltaTime number
---@return FVector
function UBaseParachuteComponent:CalParachuteOpenedVelocity(InputForward, InputRight, DeltaTime) end
