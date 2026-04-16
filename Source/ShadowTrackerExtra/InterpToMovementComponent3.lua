---@meta

---@class EInterp3Method
---@field PositionFirst number
---@field RoationFirst number
---@field PositionForced number
---@field RoationForced number
EInterp3Method = {}


---@class FInterp3ControlPoint
---@field RotationControlPoint FRotator
---@field RotationRadius number
---@field Interp3Method EInterp3Method
FInterp3ControlPoint = {}


---@class UInterpToMovementComponent3: UInterpToMovementComponent2
---@field Interp3ControlPoints ULuaArrayHelper<FInterp3ControlPoint>
local UInterpToMovementComponent3 = {}

function UInterpToMovementComponent3:FinaliseInterp3ControlPoints() end
