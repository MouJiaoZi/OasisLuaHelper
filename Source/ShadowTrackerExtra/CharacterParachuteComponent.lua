---@meta

---@class FSTParachuteState
---@field ThrottleInput number
---@field SteerInput number
---@field State number
---@field ControlRotation FRotator
FSTParachuteState = {}


---@class FSTReplicatedMoveState
---@field Location FVector_NetQuantize
---@field Rotation FRotator
---@field Velocity FVector_NetQuantize
FSTReplicatedMoveState = {}


---@class FSTReplicatedMoveState_New
---@field Location FVector
---@field Rotation FRotator
---@field Velocity FVector
FSTReplicatedMoveState_New = {}


---@class FSTParachuteCloudData
---@field WeatherType EWeatherStatusType
FSTParachuteCloudData = {}


---@class FParachuteCorrectionData
---@field CorrectionDist number
---@field ClientLoc FVector
---@field ClientVel FVector
---@field ClientTimestamp number
---@field ServerLoc FVector
---@field ServerVel FVector
---@field ServerTimestamp number
FParachuteCorrectionData = {}


---TODO: 之后改为用charactermoent的custom mode做同步
---@class UCharacterParachuteComponent: UActorComponent, IObjectPoolInterface
---@field CurrentDiveRate number
---@field HorizontalSpeedModifier number
---@field VerticalSpeedModifier number
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
---@field CurrentFallSpeed number
---@field AllowMaxDiatanceAtServer number
---@field AllowVelocityZErrorTolerance number
---@field AllowVelocityXYErrorTolerance number
---@field CorrectClientInterval number
---@field MaxCorrectionTimes number
---@field LastCorrectionTime number
---@field CorrectionTimes number
---@field MaxErrorCheckTimes number
---@field OnceCheckTime number
---@field CachedErrorCheckTimes number
---@field CachedStartCheckTime number
---@field CachedLastLoc FVector
---@field CachedStartCheckLoc FVector
---@field ParachuteCorrectionData FParachuteCorrectionData
---@field bIsPauseTick boolean
---@field bParaglidingMode boolean
---@field CheatingPunishTime number
---@field bUseCompressedInputRpc boolean @是否使用压缩的输入上报 如果要关闭的话，需要同时关闭cv.parachute.refuseuc 否则非压缩的输入会被屏蔽
---@field DisabledAutoParachutePawnState ULuaArrayHelper<EPawnState>
---@field DisabledAutoParachuteDynamicState FGameplayTagContainer
---@field DisabledManualParachutePawnState ULuaArrayHelper<EPawnState>
---@field FollowerDist number
---@field ReletiveStaticNearbyDistanceSquare number
---@field bEnableAutoParachute boolean
---@field AutoParachuteFallingTime number
---@field AutoParachuteHeight number
---@field CachedAutoParachuteFallingTime number
---@field CachedAutoParachuteCondition boolean
---@field ManualParachuteHeight number
---@field ManualParachuteCheckInterval number
---@field ManualParachuteUIName string
---@field bShowManualParachuteBtn boolean
---@field CachedManualParachuteCheckInterval number
---@field LaunchVelocity FVector
---@field ParachuteStuckCheckInterval number
---@field ParachuteStuckDisThreshold number
---@field ParachuteStuckHeightThreshold number
---@field ParachuteCutFallingMaxDamage number
---@field ParachuteStuckCheckDeltaTime number
---@field ParachuteStuckCheckLoc FVector
---@field bRollLandingPerformance boolean
---@field bStartLandPerformance boolean
---@field bFinishLandPerformance boolean
---@field LandingPerformanceTime number
---@field LandingRollBaseSpeed number
---@field LandingRollZSpeed number
---@field LandingWalkBaseSpeed number
---@field LandingWalkZSpeed number
---@field RollLandingPerformanceTime number
---@field WalkLandingPerformanceTime number
---@field TimerHandler_Landing FTimerHandle
---@field InterruptLandingPawnStates ULuaArrayHelper<EPawnState>
---@field TickParachuteStateIntervalBigWorld number
---@field LowHeightThreshold number
---@field HighHeightThreshold number
---@field LowTickTime number
---@field HighTickTime number
---@field ForwardDiffHeightThreshold number
---@field DelayClearParachuteTime number
local UCharacterParachuteComponent = {}

function UCharacterParachuteComponent:ResetVelocity() end

function UCharacterParachuteComponent:ResetParachuteVelocity() end

---@param Current number
---@param Target number
---@param DeltaTime number
---@param Speed number
---@return number
function UCharacterParachuteComponent:AngleInterpTo(Current, Target, DeltaTime, Speed) end

---@param InputForward number
---@param InputRight number
---@param DeltaTime number
---@return FVector
function UCharacterParachuteComponent:CalFreeFallVelocity(InputForward, InputRight, DeltaTime) end

---@param CameraWorldRotation FRotator
---@param InputForward number
---@param InputRight number
---@param DeltaTime number
function UCharacterParachuteComponent:UpdateFreeFallRotation(CameraWorldRotation, InputForward, InputRight, DeltaTime) end

---@param InputForward number
---@param InputRight number
---@param DeltaTime number
---@return FVector
function UCharacterParachuteComponent:CalParachuteOpenedVelocity(InputForward, InputRight, DeltaTime) end

---@param InputForward number
---@param InputRight number
---@param DeltaTime number
function UCharacterParachuteComponent:UpdateParachuteOpenedRotation(InputForward, InputRight, DeltaTime) end

function UCharacterParachuteComponent:OnPreReconnectOnServer() end

---@param DeltaTime number
---@param ThrottleInput number
---@param SteerInput number
---@param State EParachuteState
---@param ControlRotation FRotator
function UCharacterParachuteComponent:UpdateParachuteState(DeltaTime, ThrottleInput, SteerInput, State, ControlRotation) end

---@param DeltaTime number
---@param ThrottleInput number
---@param SteerInput number
---@param State EParachuteState
---@param ControlRotation FRotator
function UCharacterParachuteComponent:UpdateRotation(DeltaTime, ThrottleInput, SteerInput, State, ControlRotation) end

---@return number
function UCharacterParachuteComponent:GetReplicatedForwardInput() end

---@return number
function UCharacterParachuteComponent:GetReplicatedRightInput() end

---@param TimeStamp number
---@return boolean
function UCharacterParachuteComponent:VerifyClientTimeStamp(TimeStamp) end

function UCharacterParachuteComponent:PostNetReceiveNewState() end

function UCharacterParachuteComponent:BPPostNetReceiveNewState() end

function UCharacterParachuteComponent:StartParachute() end

function UCharacterParachuteComponent:StopParachute() end

function UCharacterParachuteComponent:AdjustFollowerLocation() end

function UCharacterParachuteComponent:InvalidateAdjustFollowerLocation() end

---@param DeltaTime number
---@param ThrottleInput number
---@param SteeringInput number
---@param ControlRotation FRotator
function UCharacterParachuteComponent:TickParachuteComponent(DeltaTime, ThrottleInput, SteeringInput, ControlRotation) end

---@return boolean
function UCharacterParachuteComponent:IsStartLandPerformance() end

---@return boolean
function UCharacterParachuteComponent:IsLandingPerformance() end

---@param InStartLandPerformance boolean
function UCharacterParachuteComponent:SetStartLandPerformance(InStartLandPerformance) end

---@param DeltaTime number
function UCharacterParachuteComponent:UpdateLandingState(DeltaTime) end

function UCharacterParachuteComponent:InheritLandingVelocity() end

---@return boolean
function UCharacterParachuteComponent:IsFinishLandPerformance() end

---@param InFinishLandPerformance boolean
function UCharacterParachuteComponent:SetFinishLandPerformance(InFinishLandPerformance) end

---@return FVector
function UCharacterParachuteComponent:CalParachuteLandingVelocity() end

---@return FVector
function UCharacterParachuteComponent:GetParachuteLandingVelocity() end

---@param CameraWorldRotation FRotator
function UCharacterParachuteComponent:UpdateLandingRotation(CameraWorldRotation) end

function UCharacterParachuteComponent:OnStatePCFightEnter() end

function UCharacterParachuteComponent:StatePCParachuteOpenEnter() end

function UCharacterParachuteComponent:StatePCParachuteOpenExecute() end

function UCharacterParachuteComponent:StatePCParachuteOpenExit() end

function UCharacterParachuteComponent:StartLandingTimer() end

function UCharacterParachuteComponent:ClearLandingTimer() end

function UCharacterParachuteComponent:StopLandingState() end

function UCharacterParachuteComponent:RegistOwnerEnterPawnStateDelegate() end

function UCharacterParachuteComponent:UnRegistOwnerEnterPawnStateDelegate() end

---@param NewState EPawnState
function UCharacterParachuteComponent:OnOwnerEnterPawnState(NewState) end

---Setter:是否完全由服务器主导移动 Note: 这个标签会在离开开伞状态后调用这个函数设置为False 需要留意设置之后跳过了UStatePC_ParachuteOpen::Exit的情况导致下一次跳伞依然由服务器主导
---@param InUseServerAuthor boolean
function UCharacterParachuteComponent:Set_UseServerAuthorize(InUseServerAuthor) end

---@param InUseGmMovedCharacter boolean
function UCharacterParachuteComponent:Set_UseGmMovedCharacter(InUseGmMovedCharacter) end

function UCharacterParachuteComponent:OnGmMovedCharacter() end

function UCharacterParachuteComponent:OnClientSwitchToNewServerDelegate() end

---@param PlayerKey number
---@param MovementActive boolean
---@param MovementMode number
---@param MovementVelocity FVector
function UCharacterParachuteComponent:SendClientLogToServer(PlayerKey, MovementActive, MovementMode, MovementVelocity) end
