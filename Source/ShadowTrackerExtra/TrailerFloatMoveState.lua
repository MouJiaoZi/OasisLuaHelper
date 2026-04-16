---@meta

---@class UTrailerFloatMoveState: UVehicleMultiMoveStateBase
local UTrailerFloatMoveState = {}

---@param LastStateType EVehicleMoveCompType
---@return boolean
function UTrailerFloatMoveState:BeginState(LastStateType) end

---@param DeltaTime number
function UTrailerFloatMoveState:OnVehicleTick(DeltaTime) end
