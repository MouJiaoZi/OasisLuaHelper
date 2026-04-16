---@meta

---@class FVehicleFloorChangeDelegate : ULuaSingleDelegate
FVehicleFloorChangeDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleFloorChangeDelegate:Bind(Callback, Obj) end

---执行委托
function FVehicleFloorChangeDelegate:Execute() end


---载具在移动平台上移动功能接入
---@class UMovablePlatformVehBaseAdapter: UObject, IRelativeMoveActorInterface
---@field bEnableFollowMoveFromBase boolean
---@field bEnableFollowRotationFromBase boolean
---@field MovedBaseActorTag string
---@field ComponentLocationZOffsetTrace number
---@field LandTraceMaxHeight number
---@field LandTraceInterval number
---@field TraceChannel ECollisionChannel
---@field BeginPlayTrace boolean
---@field bDynamicChangeTraceInterval boolean
---@field TraceIntervalOnDynamicBase number
---@field bAddTickDependencyOnFloor boolean
---@field bDisableAdaptHeightWhenFollowed boolean
---@field bDisableServerPreventPenetratingWhenFollowed boolean
---@field DelayDontFollowCurrentFloorTime number
---@field OwnerVehicle ASTExtraVehicleBase
---@field OwnerMovementComp UMovementComponent
---@field CurrentFloor UPrimitiveComponent
---@field CurrentFloorBoneName string
---@field LastFloor UPrimitiveComponent
---@field LastFloorShouldFollowedTag boolean
---@field FloorToDelaySet UPrimitiveComponent
---@field CurrentFloorHasFollowedTag boolean
---@field OnVehicleFloorChange FVehicleFloorChangeDelegate
---@field LastFrameBaseTransform FTransform
---@field DelayDontFollowCurrentFloorTimer number
---@field NowLandSurfaceType EPhysicalSurface
---@field NowDistToLand number
---@field NowFloorNormal FVector
---@field OriginLandTraceInterval number
---@field LandTraceTimer number
---@field EnableCharacterFix boolean
---@field VehicleOriginCanBeBaseForChar boolean
---@field VehicleOriginCanCharacterStepUpOn ECanBeCharacterBase
local UMovablePlatformVehBaseAdapter = {}

---@param DeltaTime number
function UMovablePlatformVehBaseAdapter:Update(DeltaTime) end

---@param InOwnerVehicle ASTExtraVehicleBase
---@param InOwnerMovment UMovementComponent
function UMovablePlatformVehBaseAdapter:Init(InOwnerVehicle, InOwnerMovment) end

---@param DeltaTime number
---@return boolean
function UMovablePlatformVehBaseAdapter:UpdateBasedMovement(DeltaTime) end

function UMovablePlatformVehBaseAdapter:OnVehicleFloorChangeFunction() end

function UMovablePlatformVehBaseAdapter:OnVehicleFloorChangeFunctionBP() end

---@param Floor UPrimitiveComponent
---@return boolean
function UMovablePlatformVehBaseAdapter:CheckFloorShouldFollow(Floor) end

function UMovablePlatformVehBaseAdapter:OnDelayOutCurrentFloor() end

---@return boolean
function UMovablePlatformVehBaseAdapter:ShouldDelayOutCurrentFloor() end

---@param DeltaTime number
function UMovablePlatformVehBaseAdapter:TickTraceFloor(DeltaTime) end

---@param DeltaTime number
function UMovablePlatformVehBaseAdapter:TickDelayOutCurrentFloor(DeltaTime) end

function UMovablePlatformVehBaseAdapter:AfterCurrentFloorChange() end

function UMovablePlatformVehBaseAdapter:TraceFloor() end

---@param HitResult FHitResult
function UMovablePlatformVehBaseAdapter:TraceFloorWithResult(HitResult) end

---@return number
function UMovablePlatformVehBaseAdapter:GetLandTraceInterval() end

---@param InInterval number
function UMovablePlatformVehBaseAdapter:SetLandTraceInterval(InInterval) end
