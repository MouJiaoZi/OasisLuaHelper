---@meta

---@class FVehicleAccelerateEffectTag
---@field EffectValueTag number
---@field AccelerateType EVehicleAcclerateType
---@field AccelerateEffecTime number
---@field bState boolean
FVehicleAccelerateEffectTag = {}


---@class FVehicleAcceleratePostPhysxTick
FVehicleAcceleratePostPhysxTick = {}


---@class FVehicleAccelerateEffectTagDelegate : ULuaSingleDelegate
FVehicleAccelerateEffectTagDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleAccelerateEffectTagDelegate:Bind(Callback, Obj) end

---执行委托
function FVehicleAccelerateEffectTagDelegate:Execute() end


---@class UVehicleAccelerateComponent: UVehicleComponent
---@field VehicleAccelerateCameraEffectName string
---@field AccelerateEffectElapseTime number
---@field MaxAccelerateEffecTime number
---@field DefaultMaxAccelerateEffecTime number
---@field ExtraEngineBoostFactor number
---@field MaxAccelerateSpeed number
---@field MinAccelerateSpeed number
---@field MinDecelerateSpeed number
---@field AccelerateEffectTag FVehicleAccelerateEffectTag
---@field AccelerateEffectTagDelegate FVehicleAccelerateEffectTagDelegate
---@field WheelDamageFallOff number
---@field AccelerateTips number
---@field CanNotPassDoorAccelerateTips number
---@field UsePassDoorAccelerateThreshold number
---@field UsePassDoorAccelerateThrottleThreshold number
---@field OpenVehicleDrift boolean
---@field CurSlipAngel number
---@field SlipAngelShowTrailMark number
---@field DriftForceLocations ULuaArrayHelper<FVector>
---@field MergeVelocityToForwardSpeed number
---@field InputFalloffTime number
---@field CurDeltaTime number
---@field LastDriftSteerInput number
---@field CanShowSmallAccelerate boolean
---@field ShowSmallAccelerateMaxTime number
---@field SmallAcceleratePercent number
---@field SmallAccelerateTime number
---@field LastAcceleratePercent number
---@field LastAcceleratedSpeed number
---@field CurDriftInput number
---@field DriftBtnState boolean
---@field CurDriftState EVehicleDriftState
---@field ServerDriftState EVehicleDriftState
---@field RepDriftInputState FDriftInput
---@field CurrentDriftInputState FDriftInput
---@field MinDriftSpeedPercent number
---@field MinSpeedOnDrift number
---@field DriftWithDirInputFalloff number
---@field OppositeInputVelocityMergeMaxTime number
---@field CurOppositeInputMergeTime number
---@field DriftTime number
---@field DriftScore number
---@field SingleBoostNeedScore number
---@field CurTargetSlipAngel number
---@field PressDriftBtnAndInputTime number
---@field ProcessTargetSlipAngelAtTick boolean
---@field TargetDriftAngel number
---@field LastDeltaAngel number
---@field CurDeltaAngel number
---@field DriftForceDamping number
---@field DrawDebugDrift boolean
---@field DrawDriftLateralForce boolean
---@field StopDriftSlipAngel number
---@field bGMOpen boolean
---@field CurFrameTargetRot FRotator
---@field CurFrameTargetVector FVector
---@field EnableClampVelocityDir boolean
---@field PostPhysxComponentTick any
---@field AccelerateTime number
---@field bEnableModifyVelocity boolean
---@field bEnableAddLateralForce boolean
---@field bPostProcessLinearVelocity boolean
---@field bPostProcessSetAngularVelocity boolean
---@field bPostProcessLinearVelocityByRotation boolean
---@field MaxSlipAngelAtDrift number
---@field MaxSlipAngelAtDragDrift number
---@field DriftToNormalInterpFactor number
---@field DriftSlipAngelSpeed number
---@field DragDriftSlipAngelSpeed number
---@field SlipAngleOnVehicleSimulateFinish number
---@field RotOnOnVehicleSimulateFinish FRotator
---@field StartVehicleAccelerationValueRiseRate number
---@field StartVehicleAccelerationValueDownRate number
---@field StartVehicleAccelerationValue number
---@field bEnableRaceVehicleBurnTire boolean
---@field bPressStartVehicleBtn boolean
---@field MaxStartVehicleAccelerateSpeed number
---@field LowStartVehicleAcceleratePercentBar number
---@field HighStartVehicleAcceleratePercentBar number
---@field bNeedChangeMatWhenCrossWithVehicle boolean
---@field bForceEnableChangeMatWhenCrossWithVehicle boolean
---@field bUseSameMatWhenCrossWithVehicle boolean
---@field ChangeMatIndex number
---@field OldMatInstanceMap ULuaMapHelper<number, UMaterialInterface>
---@field NewMatWhenOverlap UMaterialInterface
---@field bLoadedNewMatWhenOverlapAsset boolean
---@field TranslucentCheckDistance number
---@field bCheckBoundsBox boolean
---@field bOpenWakeEffect boolean
---@field MinVehicleVelocityEnableWakeEffect number
---@field SelfMinVehicleVelocityEnableWakeEffect number
---@field VehicleWakeEffectBoxConfig FVector
---@field VehicleWakeEffectOffset FVector
---@field VehicleWakeEffectValidTime number
---@field VehicleWakeEffectAcceleratePercent number
---@field VehicleWakeEffectAccelerateCameraTime number
---@field VehicleWakeEffectContinueTime number
---@field bOutsideRoads boolean @是否在赛道外
---@field bUsePhysXMaterialCheckOutsideRoads boolean
---@field ValidRoadSurfaceType number
---@field OutsideRoadsDampingVelocityFactor number
---@field MinOutsideRoadDampingVelocity number
---@field CurWakeEffectVehicleUID number
---@field TranslucentVehicleList ULuaArrayHelper<ASTExtraVehicleBase>
local UVehicleAccelerateComponent = {}

---@param percent number
---@param time number
---@param factor number
function UVehicleAccelerateComponent:TestStartVehicleAccelerate(percent, time, factor) end

function UVehicleAccelerateComponent:TestStopVehicleAccelerate() end

---@param percent number
---@param time number
---@param factor number
function UVehicleAccelerateComponent:ReqVehicleAccelerate(percent, time, factor) end

---@param Acctype EVehicleAcclerateType
function UVehicleAccelerateComponent:ReqVehicleAccelerateByType(Acctype) end

---@param bSuccess boolean
---@param AccType EVehicleAcclerateType
function UVehicleAccelerateComponent:RspVehicleAccelerateByType(bSuccess, AccType) end

---@param bSuccess boolean
---@param AccType EVehicleAcclerateType
function UVehicleAccelerateComponent:DoRspVehicleAccelerateByType(bSuccess, AccType) end

---@param AcceleratePercent number
---@param ThisAccelerateTime number
---@param EngineBoostFactor number
---@param AccelerateType EVehicleAcclerateType
---@return boolean
function UVehicleAccelerateComponent:StartVehicleAccelerate(AcceleratePercent, ThisAccelerateTime, EngineBoostFactor, AccelerateType) end

---@param AcceleratePercent number
---@param ThisAccelerateTime number
---@param AccelerateType EVehicleAcclerateType
function UVehicleAccelerateComponent:NotifyVehicleAccelerate(AcceleratePercent, ThisAccelerateTime, AccelerateType) end

function UVehicleAccelerateComponent:StopVehicleAccelerate() end

function UVehicleAccelerateComponent:NotifyStopVehicleAccelerate() end

---@param AcceleratePercent number
---@param AccelerateEffecTime number
function UVehicleAccelerateComponent:OnEnableVehicleAccelerateEffect(AcceleratePercent, AccelerateEffecTime) end

function UVehicleAccelerateComponent:OnDisableVehicleAccelerateEffect() end

---@param Enable boolean
---@param BC ASTExtraBaseCharacter
function UVehicleAccelerateComponent:ProcessCameraEffect(Enable, BC) end

---@param Vehicle ASTExtraVehicleBase
---@param Enable boolean
---@param BC ASTExtraBaseCharacter
---@param CameraEffectName string
function UVehicleAccelerateComponent:PlayAccelerateCameraEffect(Vehicle, Enable, BC, CameraEffectName) end

function UVehicleAccelerateComponent:OnRep_ExtraEngineBoostFactor() end

function UVehicleAccelerateComponent:OnRep_VehicleAccelerateEffectTags() end

---@param AcceleratePercent number
---@param MaxSpeed number
---@param MinSpeed number
---@param AccelerateType EVehicleAcclerateType
function UVehicleAccelerateComponent:DoAccelerateFunc(AcceleratePercent, MaxSpeed, MinSpeed, AccelerateType) end

---@param UpSpeed number
function UVehicleAccelerateComponent:Jump(UpSpeed) end

---@param InputRate number
function UVehicleAccelerateComponent:StartVehicleDrift(InputRate) end

function UVehicleAccelerateComponent:StopVehicleDrift() end

function UVehicleAccelerateComponent:OnRep_ServerDriftState() end

function UVehicleAccelerateComponent:OnRep_DriftBtnState() end

function UVehicleAccelerateComponent:OnDriftEffect() end

---@param DeltaTime number
function UVehicleAccelerateComponent:CalculateDriftScore(DeltaTime) end

---@param DeltaTime number
function UVehicleAccelerateComponent:ProcessTargetSlipAngel(DeltaTime) end

---@param bDrift boolean
---@param InputDriftRate number
---@param ClientDriftState EVehicleDriftState
---@param ClientSpeed number
function UVehicleAccelerateComponent:SendDriftInputToServer(bDrift, InputDriftRate, ClientDriftState, ClientSpeed) end

---@param ClientState FDriftInput
function UVehicleAccelerateComponent:SendDriftStateToServer(ClientState) end

---@return boolean
function UVehicleAccelerateComponent:VehicleCanDrift() end

---@param Speed number
function UVehicleAccelerateComponent:AddLateralForceAtWheel(Speed) end

---@param Vehicle ASTExtraWheeledVehicle
---@return FVector
function UVehicleAccelerateComponent:GetLateralForceDir(Vehicle) end

---@param Speed number
function UVehicleAccelerateComponent:AddForceAtDrift(Speed) end

---@param Speed number
function UVehicleAccelerateComponent:ProcessMinSpeed(Speed) end

---@param Vehicle ASTExtraVehicleBase
---@return number
function UVehicleAccelerateComponent:GetDeltaAngel(Vehicle) end

function UVehicleAccelerateComponent:OnDriftStopEvent() end

function UVehicleAccelerateComponent:OnDriftStartEvent() end

---@return boolean
function UVehicleAccelerateComponent:InDriftState() end

function UVehicleAccelerateComponent:ProcessStopDrift() end

---@param AcceleratedPercent number
function UVehicleAccelerateComponent:GMMulticastCalcAcc(AcceleratedPercent) end

---@param DeltaTime number
function UVehicleAccelerateComponent:OnVehicleUpdateFinish(DeltaTime) end

---@param Wheel UVehicleWheel
---@param tireFriction number
---@param longSlip number
---@param latSlip number
---@param camber number
---@param wheelOmega number
---@param wheelRadius number
---@param recipWheelRadius number
---@param restTireLoad number
---@param normalisedTireLoad number
---@param tireLoad number
---@param gravity number
---@param recipGravity number
---@param wheelTorque number
---@param tireLongForceMag number
---@param tireLatForceMag number
---@param tireAlignMoment number
function UVehicleAccelerateComponent:CustomComputeTireForce(Wheel, tireFriction, longSlip, latSlip, camber, wheelOmega, wheelRadius, recipWheelRadius, restTireLoad, normalisedTireLoad, tireLoad, gravity, recipGravity, wheelTorque, tireLongForceMag, tireLatForceMag, tireAlignMoment) end

---@param NewValue boolean
function UVehicleAccelerateComponent:SetRaceVehicleBurnTire(NewValue) end

function UVehicleAccelerateComponent:LoadRaceOverLapMat() end

function UVehicleAccelerateComponent:OnRep_StartVehicleAccelerationValue() end

function UVehicleAccelerateComponent:OnRep_EnableRaceVehicleBurnTire() end

---@param StartValue number
function UVehicleAccelerateComponent:ReqPressStartVehicleBtn(StartValue) end

---@param CurValue number
function UVehicleAccelerateComponent:SyncPressStartVehicleBtn(CurValue) end

---@param EndValue number
function UVehicleAccelerateComponent:ReleasePressStartVehicleBtn(EndValue) end

---@param DeltaTime number
function UVehicleAccelerateComponent:TickRaceVehicleBurnTire(DeltaTime) end

---@param DeltaTime number
function UVehicleAccelerateComponent:TickVehicleWakeEffect(DeltaTime) end

---@return boolean
function UVehicleAccelerateComponent:CheckVehicleOutSide() end

---@param DeltaTime number
function UVehicleAccelerateComponent:TickOutsideRoadDampingVelocity(DeltaTime) end

function UVehicleAccelerateComponent:SwitchTranslucentMat() end

function UVehicleAccelerateComponent:ResetTranslucentMatToNormal() end

---@param DeltaTime number
function UVehicleAccelerateComponent:TickRaceVehicleTranslucent(DeltaTime) end
