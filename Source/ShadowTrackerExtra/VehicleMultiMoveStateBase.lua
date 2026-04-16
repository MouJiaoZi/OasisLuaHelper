---@meta

---载具移动状态变化开始结束代理
---@class FVehicleMoveStateBeginDelegate : ULuaSingleDelegate
FVehicleMoveStateBeginDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleMoveStateBeginDelegate:Bind(Callback, Obj) end

---执行委托
function FVehicleMoveStateBeginDelegate:Execute() end


---@class FVehicleMoveStateEndDelegate : ULuaSingleDelegate
FVehicleMoveStateEndDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleMoveStateEndDelegate:Bind(Callback, Obj) end

---执行委托
function FVehicleMoveStateEndDelegate:Execute() end


---@class UVehicleMultiMoveStateBase: UObject
---@field bEnableTick boolean
---@field bEnableNetWork boolean
---@field VehicleMoveCompType EVehicleMoveCompType
---@field bCanEnterAnyState boolean
---@field bNeedConditionGateCheck boolean
---@field ConditionGateMap ULuaArrayHelper<EVehicleMoveCompType>
---@field SpecificTargetState EVehicleMoveCompType
---@field bSyncSpecificStateToServer boolean
---@field OnBeginStateDelegate FVehicleMoveStateBeginDelegate
---@field OnEndStateDelegate FVehicleMoveStateEndDelegate
---@field bEnableLimitTickFrequency boolean
---@field LimitTickFrequency number
---@field LimitTickTimer number
local UVehicleMultiMoveStateBase = {}

---@param InOwnerVehicle ASTExtraVehicleBase
---@param InStateMovement UPawnMovementComponent
function UVehicleMultiMoveStateBase:InitStateBase(InOwnerVehicle, InStateMovement) end

---@param InOwnerVehicle ASTExtraVehicleBase
---@param InStateMovement UPawnMovementComponent
function UVehicleMultiMoveStateBase:InitVehicleMoveState(InOwnerVehicle, InStateMovement) end

---@param EndPlayReason EEndPlayReason
function UVehicleMultiMoveStateBase:EndPlay(EndPlayReason) end

---@param DeltaTime number
function UVehicleMultiMoveStateBase:OnVehicleTick(DeltaTime) end

---@return ENetRole
function UVehicleMultiMoveStateBase:GetNetRole() end

---@return boolean
function UVehicleMultiMoveStateBase:IsServer() end

---@param LastState EVehicleMoveCompType
---@return boolean
function UVehicleMultiMoveStateBase:CheckCondition(LastState) end

---@param LastState EVehicleMoveCompType
---@return boolean
function UVehicleMultiMoveStateBase:BPCheckCondition(LastState) end

---@param LastStateType EVehicleMoveCompType
---@return boolean
function UVehicleMultiMoveStateBase:BeginState(LastStateType) end

---@param LastStateType EVehicleMoveCompType
---@return boolean
function UVehicleMultiMoveStateBase:BPBeginState(LastStateType) end

---@return boolean
function UVehicleMultiMoveStateBase:EndState() end

---@return boolean
function UVehicleMultiMoveStateBase:BPEndState() end

---@return boolean
function UVehicleMultiMoveStateBase:TryChangeToSpecificTargetState() end
