---@meta

---@class EVehicleMultiMoveStateChangeFailReason
---@field VehicleMultiMoveStateFailReason_None number
EVehicleMultiMoveStateChangeFailReason = {}


---@class EVehicleMultiMoveStateChangeReason
---@field VehicleMultiMoveStateReason_None number
---@field VehicleMultiMoveStateReason_PassiveDetection number
---@field VehicleMultiMoveStateReason_ActiveChange number
EVehicleMultiMoveStateChangeReason = {}


---@class FVehicleMovementStateInfo
---@field bIsActive boolean
FVehicleMovementStateInfo = {}


---@class FVehicleMovementStateInitConfigs
---@field bIsMainState boolean
---@field StateSubClass UVehicleMultiMoveStateBase
---@field StateMoveSubClass UPawnMovementComponent
FVehicleMovementStateInitConfigs = {}


---@class USTExtraMultiMovementManagerComponent: UVehicleComponent
---@field VehicleMoveStateInitConfigs ULuaMapHelper<EVehicleMoveCompType, FVehicleMovementStateInitConfigs>
---@field VehicleMoveStates ULuaMapHelper<EVehicleMoveCompType, FVehicleMovementStateInfo>
local USTExtraMultiMovementManagerComponent = {}

function USTExtraMultiMovementManagerComponent:InitAllMoveState() end

function USTExtraMultiMovementManagerComponent:RemoveAllMoveState() end

---@param InVehicleMoveCompType EVehicleMoveCompType
---@param OutVehicleMovementStateInfo FVehicleMovementStateInfo
function USTExtraMultiMovementManagerComponent:GetMovementStateInfoByType(InVehicleMoveCompType, OutVehicleMovementStateInfo) end

---@param InState UVehicleMultiMoveStateBase
function USTExtraMultiMovementManagerComponent:SetCurrentState(InState) end

---@param InVehicleMoveCompType EVehicleMoveCompType
---@param MovementState UVehicleMultiMoveStateBase
function USTExtraMultiMovementManagerComponent:AddMovementState(InVehicleMoveCompType, MovementState) end

---@param NewStateType EVehicleMoveCompType
---@return boolean
function USTExtraMultiMovementManagerComponent:ChangeToState(NewStateType) end

---@param NewStateType EVehicleMoveCompType
---@return boolean
function USTExtraMultiMovementManagerComponent:CanChangeToState(NewStateType) end

---@param NewVehicleMoveCompType EVehicleMoveCompType
---@param ChangeReason EVehicleMultiMoveStateChangeReason
function USTExtraMultiMovementManagerComponent:ReqChangeToNewState(NewVehicleMoveCompType, ChangeReason) end

---@param NewVehicleMoveCompType EVehicleMoveCompType
---@param ChangeReason EVehicleMultiMoveStateChangeReason
function USTExtraMultiMovementManagerComponent:RspChangeToNewState(NewVehicleMoveCompType, ChangeReason) end

---@param NewVehicleMoveCompType EVehicleMoveCompType
---@param ChangeReason EVehicleMultiMoveStateChangeReason
function USTExtraMultiMovementManagerComponent:MulticastChangeToNewState(NewVehicleMoveCompType, ChangeReason) end

---@param NewState UVehicleMultiMoveStateBase
---@return boolean
function USTExtraMultiMovementManagerComponent:ChangeState(NewState) end

---@param FailedType EVehicleMoveCompType
function USTExtraMultiMovementManagerComponent:HandleChangeStateFailed(FailedType) end

---@param NewState UVehicleMultiMoveStateBase
function USTExtraMultiMovementManagerComponent:ChangeStateInternal(NewState) end

function USTExtraMultiMovementManagerComponent:Onrep_CurrentState() end
