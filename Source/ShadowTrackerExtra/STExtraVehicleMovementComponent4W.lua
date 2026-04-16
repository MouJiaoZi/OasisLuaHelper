---@meta

---@class FWheelHubSetup
---@field WheelClass UVehicleWheel
---@field TireBoneName string
FWheelHubSetup = {}


---@class FCachedWheelData
---@field WheelsInAir boolean
---@field WheelSuspensionOffset number
---@field LatSlip number
---@field LongSlip number
FCachedWheelData = {}


---@class FOnIsInAirChange : ULuaSingleDelegate
FOnIsInAirChange = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnIsInAirChange:Bind(Callback, Obj) end

---执行委托
function FOnIsInAirChange:Execute() end


---@class USTExtraVehicleMovementComponent4W: USTExtraBaseWheeledMovementComponent
---@field WheelHubSetups ULuaArrayHelper<FWheelHubSetup>
---@field ExtraOptBoneNames ULuaArrayHelper<string>
---@field bHideWheelPhyBodyOnServer boolean
---@field NormalStopThreshold number
---@field SlidingStopThreshold number
---@field STUpdateState_Interval number @STUpdateState降频
---@field ShouldLocalControllUpdateInput boolean
---@field bEnableBrakeUntilAcceptInput boolean
---@field bHasAcceptInputSinceSpawned boolean
---@field bIgnoreBoostIfVehicleNotOpenBoost boolean
---@field WheelHubs ULuaArrayHelper<UVehicleWheel>
---@field InDriftToIngnoreTireForce boolean
---@field ServerInitForceSleepPhysicsDelay number @Server初始物理休眠延迟 都改默认延迟6s， 安全保障地图加载完毕
---@field ClientInitForceSleepPhysicsDelay number @Client初始物理休眠延迟
---@field UseSetPhysActiveTimer boolean
---@field CacheWheelsNotInAir number
---@field mapCachedWheelData ULuaMapHelper<number, FCachedWheelData>
---@field bEnableCacheTireHit boolean
---@field TireHitCompList ULuaArrayHelper<UPrimitiveComponent>
---@field IsInAir_bServerCheck boolean
---@field IsInAir_bClientCheck boolean
---@field IsInAir_ShapeIndexToQuery number
---@field IsInAir_QueryInterval number
---@field IsInAir_QueryLength number
---@field OnIsInAirChange FOnIsInAirChange
---@field IsInAir boolean
---@field DynamicChangeDragCoefficient boolean
---@field DragCoefficientInAir number
---@field MovablePlatform4WVehAdapterTemplate UMovablePlatformVehBaseAdapter
---@field bServerUpdateState boolean
---@field bClear4WSimulateTorque boolean
---@field BeforeSimulateTorque FVector
local USTExtraVehicleMovementComponent4W = {}

---@param WheelIdx number
function USTExtraVehicleMovementComponent4W:DestroyWheel(WheelIdx) end

---@param WheelIdx number
function USTExtraVehicleMovementComponent4W:RestoreWheel(WheelIdx) end

---@param WheelIdx number
function USTExtraVehicleMovementComponent4W:RestoreWheelData(WheelIdx) end

function USTExtraVehicleMovementComponent4W:RecreateWheel() end

---@param WheelIdx number
---@param bEnable boolean
function USTExtraVehicleMovementComponent4W:EnableBulletWheelHubShape(WheelIdx, bEnable) end

---@param WheelIdx number
---@param bEnable boolean
function USTExtraVehicleMovementComponent4W:EnableBulletWheelShape(WheelIdx, bEnable) end

---@return number
function USTExtraVehicleMovementComponent4W:GetBrokenWheelNum() end

---@return boolean
function USTExtraVehicleMovementComponent4W:IsBraking() end

---@return boolean
function USTExtraVehicleMovementComponent4W:IsSleeping() end

---@param rate number
function USTExtraVehicleMovementComponent4W:SetBoosting(rate) end

---@param ReverseAsBrake boolean
function USTExtraVehicleMovementComponent4W:SetReverseAsBrake(ReverseAsBrake) end

---@param NewStopThreshold number
function USTExtraVehicleMovementComponent4W:SetStopThreshold(NewStopThreshold) end

---@return number
function USTExtraVehicleMovementComponent4W:GetVehicleScale() end

---@return number
function USTExtraVehicleMovementComponent4W:GetVehicleSpringStrengthScale() end

---@param OldScale number
---@param NewScale number
function USTExtraVehicleMovementComponent4W:OnVehicleScaleChanged(OldScale, NewScale) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param SeatIdx number
function USTExtraVehicleMovementComponent4W:HandleOnSeatAttached(Character, SeatType, SeatIdx) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param SeatIdx number
function USTExtraVehicleMovementComponent4W:HandleOnSeatDetached(Character, SeatType, SeatIdx) end

---@param Character ASTExtraPlayerCharacter
---@param LastSeatType ESTExtraVehicleSeatType
---@param LastSeatIdx number
---@param NewSeatType ESTExtraVehicleSeatType
---@param NewSeatIdx number
function USTExtraVehicleMovementComponent4W:HandleOnSeatChanged(Character, LastSeatType, LastSeatIdx, NewSeatType, NewSeatIdx) end

---@param Height number
function USTExtraVehicleMovementComponent4W:MoveWheelShapeHeight(Height) end

---@param WheelIndex number
---@param Radius number
function USTExtraVehicleMovementComponent4W:SetWheelRadius(WheelIndex, Radius) end

---@param WheelIndex number
---@param Offset FVector
function USTExtraVehicleMovementComponent4W:SetWheelCentreOffset(WheelIndex, Offset) end

---@param WheelIndex number
---@param Angle number
function USTExtraVehicleMovementComponent4W:SetWheelToeAngle(WheelIndex, Angle) end

function USTExtraVehicleMovementComponent4W:SetDriftSimulateTireShader() end

function USTExtraVehicleMovementComponent4W:SetPhysActiveTimerFunc() end

---@param index number
---@param RotationSpeed number
function USTExtraVehicleMovementComponent4W:SetWheelsRotationSpeed(index, RotationSpeed) end

function USTExtraVehicleMovementComponent4W:ResetSuspensionOffset() end

---@param Index number
---@return number
function USTExtraVehicleMovementComponent4W:GetWheelLatSlipByIndex(Index) end

---@param Index number
---@return number
function USTExtraVehicleMovementComponent4W:GetWheelLongSlipByIndex(Index) end

---@return number
function USTExtraVehicleMovementComponent4W:GetNumWheelsNotInAir() end

---强制设定所有轮子,旋转绝对值小于RotationSpeed，设置为RotationSpeed
---@param RotationSpeed number
function USTExtraVehicleMovementComponent4W:ForceWheelsRotate(RotationSpeed) end

---<在被炸飞后停止轮子的旋转
function USTExtraVehicleMovementComponent4W:OnExpoldeStopWheel() end

function USTExtraVehicleMovementComponent4W:ClearDestroyedWheel() end

---@return number
function USTExtraVehicleMovementComponent4W:CalcRelativeForwardSpeed() end

---@param index number
---@return boolean
function USTExtraVehicleMovementComponent4W:CheckWheelInAir(index) end

---@param index number
---@return number
function USTExtraVehicleMovementComponent4W:GetWheelSuspensionOffset(index) end

function USTExtraVehicleMovementComponent4W:PrintVehicleSimulateLog() end

---@return boolean
function USTExtraVehicleMovementComponent4W:CheckNeedTickMovePlatform() end

---@param InTorqueScaler number
function USTExtraVehicleMovementComponent4W:SetTorqueScaler(InTorqueScaler) end

function USTExtraVehicleMovementComponent4W:ChangeDragCoefficientInInAir() end

function USTExtraVehicleMovementComponent4W:OnRep_VehicleSlipConfigWrapper() end

---@param DeltaTime number
function USTExtraVehicleMovementComponent4W:OnVehicleUpdateFinish(DeltaTime) end
