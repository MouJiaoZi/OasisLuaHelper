---@meta

---@class EVehicleDriftStopReason
---@field NormalStop number
---@field HitStop number
---@field InAirStop number
---@field ReverseStop number
---@field NegativeAngular number
---@field SpeedLimit number
---@field SlipAngelLimit number
---@field PitchLimit number
---@field ReverseVelocity number
---@field ReverseForwardInput number
---@field HPError number
---@field ServerAuthorized number
---@field DamageWheel number
---@field Success number
---@field None number
EVehicleDriftStopReason = {}


---标识哪些字段需要序列化
---@class EDriftInputSerializeFlag
---@field None number
---@field Steer number
---@field Brake number
---@field DriftState number
---@field MinSpeed number
---@field SlipAngel number
---@field Max number
EDriftInputSerializeFlag = {}


---@class FVehicleDriftPostPhysxTick
FVehicleDriftPostPhysxTick = {}


---@class FSyncDriftNIO
---@field SyncID number
---@field TimeStamp number
---@field Value number
FSyncDriftNIO = {}


---@class FDriftInput
---@field SteerInput number
---@field BrakeInput number
---@field CurrentDriftState EVehicleDriftState
---@field MinSpeedOnDrift number
---@field CurSlipAngel number
---@field CurDriftDir number
FDriftInput = {}


---@class FVehicleUpgradeFactorConfig
---@field UpgradeType EVehicleUpgradeDataType
---@field UpgradeMapValue ULuaMapHelper<number, number>
FVehicleUpgradeFactorConfig = {}


---@class FVehicleUpgradeSync
---@field upgradeType number
---@field upgradeLevel number
FVehicleUpgradeSync = {}


---@class FVehicleNIOSyncData
---@field NIOState boolean
---@field AccType EVehicleAcclerateType
---@field NIOTime number
---@field Percent number
---@field CDTime number
FVehicleNIOSyncData = {}


---@class FVehicleDriftStateChange : ULuaMulticastDelegate
FVehicleDriftStateChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, NewState: EVehicleDriftState, OldState: EVehicleDriftState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleDriftStateChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param NewState EVehicleDriftState
---@param OldState EVehicleDriftState
function FVehicleDriftStateChange:Broadcast(NewState, OldState) end


---@class UVehicleDriftComponent: UVehicleSkillBaseComponent
---@field bForceEnableSimulate boolean
---@field MinDriftSpeedPercent number
---@field RawCosSlipAngel number
---@field CurSlipAngel number
---@field LastDriftSteerInput number
---@field CurDriftInput number
---@field DriftBtnState boolean
---@field CurDriftState EVehicleDriftState
---@field LastDriftState EVehicleDriftState
---@field RepDriftInputState FDriftInput
---@field CurrentDriftInputState FDriftInput
---@field SimulateClientInputState FDriftInput
---@field MinSpeedOnDrift number
---@field PostPhysxComponentTick any
---@field bPostProcessLinearVelocity boolean
---@field bPostProcessSetAngularVelocity boolean
---@field bPostProcessLinearVelocityByRotation boolean
---@field StopResetBtnState boolean
---@field DriftStateFailReasonTips number
---@field MaxPitchCanDrift number
---@field MaxDamageWheelCanDrift number
---@field bCanDriftOnServerAuthorized boolean
---@field MiniForwardSpeedCanDrift number
---@field MiniYawAngularVel number
---@field StopDriftSlipAngel number
---@field MaxInAirTime number
---@field CurAirTime number
---@field NIOAccelerateCDTime number
---@field NegativeSlipDecreaseFactor number
---@field MaxNegativeAngularTime number
---@field CurTotalNegativeAngularTime number
---@field SteerInput_FrameUpdate number
---@field BtnState_FrameUpdate boolean
---@field SlipAngleOnVehicleSimulateFinish number
---@field AngularVelocityOnVehicleSimulateFinish number
---@field RotOnOnVehicleSimulateFinish FRotator
---@field bEnablePostTick boolean
---@field bUseNewDriftUpdate boolean
---@field bUseNewDriftDynamic boolean
---@field bUseLastSlipAngel boolean
---@field bUseLastAngular boolean
---@field bEnableReverseVelocityCheck boolean
---@field bEnablePhysXWriteLoc boolean
---@field bEnableReverseForwardInputCheck boolean
---@field ReverseForwardInputCheckThreshold number
---@field IntoDriftMinSlipAngle number
---@field IntoDriftMinAngularVelocity number
---@field DriftAngularVelocityIncreaseFromSameDir boolean
---@field ReverseInputValidTime number
---@field MinDriftTime number
---@field SlipAngleDecreaseFactor number
---@field AngularLerpFactor number
---@field MaxReverseAngular number
---@field DriftReverseInputTime number
---@field MaxSlipDeg number
---@field MinSlipDeg number
---@field MaxAngularVel number
---@field MinAngularVel number
---@field DriftUsePhysxVehicleForceFactor number
---@field DriftToNormalContinueTime number
---@field DriftOrDragDriftContinueTime number
---@field NormalDriftContinueTime number
---@field DragDriftContinueTime number
---@field CurTotalDriftTime number
---@field FoworadVelToAngularVelLerpFactor number
---@field FirstIntoDriftDampVel number
---@field DriftDampingVelocityFactor number
---@field DriftDampingVelocityFactor_Original number
---@field NegativeForwardInputDampingVelocityFactor number
---@field MaxVehicleSpeed number
---@field SyncDriftNIO FSyncDriftNIO
---@field DriftScore number
---@field LastSyncDriftScore number
---@field MaxDriftNIO number
---@field StartVehicleAcclerateFactor number
---@field StartVehicleAcclerateFactor_Original number
---@field NIOCalcFactor number
---@field NIOCalcFactor_Original number
---@field SingleNIOAccelerationNeedScore number
---@field DriftFinishAccelerationPercent number
---@field NIOAccelerationPercent number
---@field NIOAccelerationEffectTime number
---@field NIOAccelerationPercent_Original number
---@field NIOPercentToAccelerateImpluse FVector2D
---@field MinNIOPercentCanUseAccelerate number
---@field bCalcNIOAtNormalState boolean
---@field MinCalculateNIOSpeed number
---@field MinCalculateNIOSlipAngel number
---@field DriftEffectName string
---@field VehicleUpgradeConfigs ULuaArrayHelper<FVehicleUpgradeFactorConfig>
---@field IDToUpgradeDataType ULuaMapHelper<number, EVehicleUpgradeDataType>
---@field CurrentUpgradeFactorMap ULuaMapHelper<EVehicleUpgradeDataType, number>
---@field CurUpgradeData FVehicleUpgradeData
---@field VehicleUpgradeSyncList ULuaArrayHelper<FVehicleUpgradeSync>
---@field NIOAccSyncData FVehicleNIOSyncData
---@field bEnableNIOAccAutoForward boolean
---@field NIOAccelerateEffectName string
---@field NIOCameraEffectNameEffectName string
---@field NIOCameraEffectNameInDriftStateEffectName string
---@field bEnableSimulateClientDoNIOAccelerate boolean
---@field bUseImpluseAcc boolean
---@field OnDriftStateChangeEvent FVehicleDriftStateChange
---@field bEnableCalcPhysxDefaultForce boolean
---@field bNeedUseDeepAirCheck boolean
---@field AKID_AngularVelocity number
---@field bInitDriftLoop boolean
---@field DriftSfxLoop FSTExtraVehicleSfxLoop
---@field PreSimulRotationDampFactor number
---@field LastReceiveReplicatedMovementTime number
---@field LerpReplicatedTime number
---@field LastReplicatedMovement FRepMovement
---@field bEnableDriftAtSimulateClient boolean
---@field SlipAngelIncreaseFactor_SimulateClient number
---@field AngularIncreaseFactor_SimulateClient number
---@field SlipAngelDecreaseFactor_SimulateClient number
---@field AngularDecreaseFactor_SimulateClient number
---@field VelocityDampingFactor_NormalDrift_SimulateClient number
---@field VelocityDampingFactor_DragDrift_SimulateClient number
---@field VelocityDampingFactor_NothingDrift_SimulateClient number
---@field CodeOptimizeBlueprintTickCG34 boolean
local UVehicleDriftComponent = {}

function UVehicleDriftComponent:PressBrakeBtn() end

function UVehicleDriftComponent:ReleaseBrakeBtn() end

---@param RecordDriftInput FDriftInput
function UVehicleDriftComponent:ApplyVehicleRecord(RecordDriftInput) end

---@param ClientSyncData FVehicleClientSyncData
---@param ServerDriftState FDriftInput
function UVehicleDriftComponent:RspCorrectClientDriftState(ClientSyncData, ServerDriftState) end

---@param ClientSyncData FVehicleClientSyncData
---@param ServerDriftState FDriftInput
function UVehicleDriftComponent:DoCorrectClientDriftState(ClientSyncData, ServerDriftState) end

function UVehicleDriftComponent:OnRep_RepDriftInputState() end

---@param DeltaTime number
function UVehicleDriftComponent:CalculateDriftScore(DeltaTime) end

---@param bDrift boolean
---@param InputDriftRate number
---@param ClientDriftState EVehicleDriftState
---@param ClientSpeed number
function UVehicleDriftComponent:SendDriftInputToServer(bDrift, InputDriftRate, ClientDriftState, ClientSpeed) end

---@param ClientState FDriftInput
---@param SyncData FVehicleClientSyncData
function UVehicleDriftComponent:SendDriftStateToServer(ClientState, SyncData) end

---@return boolean
function UVehicleDriftComponent:CanUseDrift() end

---@param DeltaTime number
---@return EVehicleDriftStopReason
function UVehicleDriftComponent:VehicleCanDrift(DeltaTime) end

---@param Speed number
function UVehicleDriftComponent:ProcessMinSpeed(Speed) end

function UVehicleDriftComponent:OnDriftStopEvent() end

function UVehicleDriftComponent:OnDriftStartEvent() end

---@return boolean
function UVehicleDriftComponent:InDriftState() end

---@param StopReason EVehicleDriftStopReason
---@param AdjustVel boolean
function UVehicleDriftComponent:ProcessStopDrift(StopReason, AdjustVel) end

---@param FailReason EVehicleDriftStopReason
function UVehicleDriftComponent:EnterDriftStateFail(FailReason) end

---@param DeltaTime number
function UVehicleDriftComponent:OnVehicleUpdateFinish(DeltaTime) end

function UVehicleDriftComponent:ResetDriftTimeStat() end

function UVehicleDriftComponent:ResetState() end

---@param DeltaTime number
function UVehicleDriftComponent:UpdateDriftState(DeltaTime) end

---@param DeltaTime number
function UVehicleDriftComponent:DriftDynamic(DeltaTime) end

---@param DeltaTime number
function UVehicleDriftComponent:TickSimulateClientDriftDynamic(DeltaTime) end

---@param NewSlip number
---@param NewAngular number
---@return number
function UVehicleDriftComponent:CalcDampingVelocity(NewSlip, NewAngular) end

function UVehicleDriftComponent:OnRep_DriftDampingVelocityFactor() end

---@param NewValue FSyncDriftNIO
function UVehicleDriftComponent:UpdateSyncDriftNIO(NewValue) end

function UVehicleDriftComponent:OnRep_SyncDriftNIO() end

---@param CurValue FSyncDriftNIO
function UVehicleDriftComponent:SendDriftNIOToServer(CurValue) end

---@param ClientValue number
---@param AddValue number
function UVehicleDriftComponent:AddDriftNIOToServer(ClientValue, AddValue) end

function UVehicleDriftComponent:OnRep_StartVehicleAcclerateFactor() end

function UVehicleDriftComponent:OnRep_NIOCalcFactor() end

function UVehicleDriftComponent:OnRep_NIOAccelerationPercent() end

function UVehicleDriftComponent:OnRep_VehicleUpgradeSyncList() end

---@param UpgradeType FVehicleUpgradeData
function UVehicleDriftComponent:InitVehicleUpgradeFactor(UpgradeType) end

function UVehicleDriftComponent:DoRepNIOSyncData() end

function UVehicleDriftComponent:OnRep_NIOSyncData() end

---@param LinearVel FVector
---@param DeltaTime number
---@return FVector
function UVehicleDriftComponent:ProcessNIOAccelerate(LinearVel, DeltaTime) end

---@param AccType EVehicleAcclerateType
function UVehicleDriftComponent:ReqUseDriftAcceleration(AccType) end

---@param bSuccess boolean
---@param AccType EVehicleAcclerateType
---@param RspValue FSyncDriftNIO
function UVehicleDriftComponent:RspUseDriftAcceleration(bSuccess, AccType, RspValue) end

---@param bSuccess boolean
---@param AccType EVehicleAcclerateType
---@param RspValue FSyncDriftNIO
function UVehicleDriftComponent:DoRspUseDriftAcceleration(bSuccess, AccType, RspValue) end

---@param DeltaTime number
function UVehicleDriftComponent:TickNIODriftEffect(DeltaTime) end

---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function UVehicleDriftComponent:OnActorHit(SelfActor, OtherActor, NormalImpulse, Hit) end

function UVehicleDriftComponent:VehicleDriftStateChange() end

function UVehicleDriftComponent:GoToDriftOrDragDriftState() end

---@param InState EAvatarVehicleState
---@param IsAdd boolean
---@param Value number
function UVehicleDriftComponent:OnAvatarVehicleStateChanged(InState, IsAdd, Value) end

function UVehicleDriftComponent:OnAfterOverrideVehiclePhyX() end

---@param Slip number
---@param Angular number
function UVehicleDriftComponent:UpdateSlipAndAngular(Slip, Angular) end

function UVehicleDriftComponent:InitVehicleAudio() end

---@param DeltaTime number
function UVehicleDriftComponent:TickVehicleAudio(DeltaTime) end

function UVehicleDriftComponent:SyncVehiclePhysicsStateToServer() end

---@param DeltaTime number
function UVehicleDriftComponent:TickDriftEffect(DeltaTime) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param SeatIdx number
function UVehicleDriftComponent:HandleOnSeatDetached(Character, SeatType, SeatIdx) end

---@param Character ASTExtraPlayerCharacter
---@param LastSeatType ESTExtraVehicleSeatType
---@param LastSeatIdx number
---@param NewSeatType ESTExtraVehicleSeatType
---@param NewSeatIdx number
function UVehicleDriftComponent:HandleOnSeatChanged(Character, LastSeatType, LastSeatIdx, NewSeatType, NewSeatIdx) end

---@param Character ASTExtraPlayerCharacter
---@param LastSeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function UVehicleDriftComponent:ClientHandleOnExitVehicle(Character, LastSeatType, IsSucc) end

function UVehicleDriftComponent:ProcessLeaveDriverSeat() end

function UVehicleDriftComponent:ProcessPostNetReceivePhysicsState() end

function UVehicleDriftComponent:VehicleDriftBoost() end

function UVehicleDriftComponent:StartVehicleDriftBrake() end

function UVehicleDriftComponent:StopVehicleDriftBrake() end

function UVehicleDriftComponent:SaveTireContactOffset() end
