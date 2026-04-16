---@meta

---@class UTrailerGroundMoveState: UVehicleMultiMoveStateBase
local UTrailerGroundMoveState = {}

---@param LastStateType EVehicleMoveCompType
---@return boolean
function UTrailerGroundMoveState:BeginState(LastStateType) end

---@param DeltaTime number
function UTrailerGroundMoveState:OnVehicleTick(DeltaTime) end
