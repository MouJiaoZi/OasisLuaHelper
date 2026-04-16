---@meta

---@class ESTExtraWheeledMovementType
---@field WMT_4W number
---@field WMT_NW number
---@field WMT_Tank number
ESTExtraWheeledMovementType = {}


---@class FVehicleSpecialCollisionData
---@field BoneName string
---@field CollisionChannelList ULuaArrayHelper<ECollisionChannel>
---@field ShapeIndexList ULuaArrayHelper<number>
FVehicleSpecialCollisionData = {}


---@class FWheelSlipConfig
---@field ShouldSlip boolean
---@field LongStiffScaleInSlipState number
---@field LatStiffScaleInSlipState number
FWheelSlipConfig = {}


---@class FVehicleSlipConfig
---@field OutOfControlLocalAngularImpulse FVector
---@field WheelsSlipConfig ULuaArrayHelper<FWheelSlipConfig>
FVehicleSlipConfig = {}


---@class FVehicleSlipConfigWrapper
---@field InSlipState boolean
---@field VehicleSlipConfig FVehicleSlipConfig
FVehicleSlipConfigWrapper = {}


---从4W继承，但是适配所有轮式载具(4W, NW, Tank)，给轮式通用功能一个Extra模块基类 -lyonarzhang
---@class USTExtraBaseWheeledMovementComponent: UWheeledVehicleMovementComponent4W
---@field WheeledMovementType ESTExtraWheeledMovementType
---@field bAllowCollisionWeld boolean
---@field bFixShapeOnUpdatePhysicsFilterData boolean
---@field SpecialModifyCollisionList ULuaArrayHelper<ECollisionChannel>
---@field SpecialModifyShapeIndexList ULuaArrayHelper<number>
---@field RootBodyName string
---@field ExtraSpecialCollisionDataList ULuaArrayHelper<FVehicleSpecialCollisionData>
---@field CanInSlipState boolean
---@field VehicleSlipConfigWrapper FVehicleSlipConfigWrapper
---@field SlipTimer number
local USTExtraBaseWheeledMovementComponent = {}

---@return number
function USTExtraBaseWheeledMovementComponent:GetFinalSteeringInput() end

---@return number
function USTExtraBaseWheeledMovementComponent:GetRawSteeringInput() end

---@return number
function USTExtraBaseWheeledMovementComponent:GetRawThrottleInput() end

---@return number
function USTExtraBaseWheeledMovementComponent:GetFinalThrottleInput() end

---@return number
function USTExtraBaseWheeledMovementComponent:GetBrakeInput() end

---@return number
function USTExtraBaseWheeledMovementComponent:GetHandBrakeInput() end

---@param OutThrottleInputRate FVehicleInputRate
function USTExtraBaseWheeledMovementComponent:GetThrottleInputRate(OutThrottleInputRate) end

---@param InThrottleInputRate FVehicleInputRate
function USTExtraBaseWheeledMovementComponent:SetThrottleInputRate(InThrottleInputRate) end

---@param OutBrakeInputRate FVehicleInputRate
function USTExtraBaseWheeledMovementComponent:GetBrakeInputRate(OutBrakeInputRate) end

---@param InBrakeInputRate FVehicleInputRate
function USTExtraBaseWheeledMovementComponent:SetBrakeInputRate(InBrakeInputRate) end

---@param OutHandbrakeInputRate FVehicleInputRate
function USTExtraBaseWheeledMovementComponent:GetHandbrakeInputRate(OutHandbrakeInputRate) end

---@param InHandbrakeInputRate FVehicleInputRate
function USTExtraBaseWheeledMovementComponent:SetHandbrakeInputRate(InHandbrakeInputRate) end

---@param OutSteeringInputRate FVehicleInputRate
function USTExtraBaseWheeledMovementComponent:GetSteeringInputRate(OutSteeringInputRate) end

---@param InSteeringInputRate FVehicleInputRate
function USTExtraBaseWheeledMovementComponent:SetSteeringInputRate(InSteeringInputRate) end

function USTExtraBaseWheeledMovementComponent:EnableHandBrakeAtBegin() end

---@param index number
---@return number
function USTExtraBaseWheeledMovementComponent:GetWheelRPM(index) end

---@param NewCOM FVector
function USTExtraBaseWheeledMovementComponent:SetOverrideCOM(NewCOM) end

function USTExtraBaseWheeledMovementComponent:ClearOverrideCOM() end

---@param WheelIndex number
---@param bEnable boolean
function USTExtraBaseWheeledMovementComponent:EnableWheelStateOuter(WheelIndex, bEnable) end

function USTExtraBaseWheeledMovementComponent:BPFixShapeFilterAndFlag() end

function USTExtraBaseWheeledMovementComponent:DisableWheelSimulation() end

function USTExtraBaseWheeledMovementComponent:BPModifySpecialShapePhysMaterial() end

function USTExtraBaseWheeledMovementComponent:OnRep_VehicleSlipConfigWrapper() end

---@return boolean
function USTExtraBaseWheeledMovementComponent:GetSlipState() end

---@param InVehicleSlipConfigWrapper FVehicleSlipConfigWrapper
---@param Time number
function USTExtraBaseWheeledMovementComponent:SetSlip(InVehicleSlipConfigWrapper, Time) end

---@param InSlipState boolean
---@param InSlipAngularImpulse FVector
---@param InWheelsSlipConfig ULuaArrayHelper<FWheelSlipConfig>
---@param Time number
function USTExtraBaseWheeledMovementComponent:SetSlipWithAllParams(InSlipState, InSlipAngularImpulse, InWheelsSlipConfig, Time) end

---@param AngularImpulseInDegreesMin number
---@param AngularImpulseInDegreesMax number
---@param OutOfControlOriginAngularZSpeedInDegreeThreshold number
---@param OutOfControlSpeedThreshold number
---@return FVector
function USTExtraBaseWheeledMovementComponent:GetSlipOutOfControlAngularImpulse(AngularImpulseInDegreesMin, AngularImpulseInDegreesMax, OutOfControlOriginAngularZSpeedInDegreeThreshold, OutOfControlSpeedThreshold) end

---@param DeltaTime number
function USTExtraBaseWheeledMovementComponent:TickCheckSlipTime(DeltaTime) end

---@param OutSteeringCurve FRuntimeFloatCurve
function USTExtraBaseWheeledMovementComponent:GetSteeringCurve(OutSteeringCurve) end

---@param InSteeringCurve FRuntimeFloatCurve
function USTExtraBaseWheeledMovementComponent:SetSteeringCurve(InSteeringCurve) end
