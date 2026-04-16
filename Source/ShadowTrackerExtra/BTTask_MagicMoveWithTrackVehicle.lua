---@meta

---载具移动状态枚举
---@class EMagicMoveVehicleState
---@field Walking number
---@field MovingToVehicle number
---@field Riding number
---@field Braking number
EMagicMoveVehicleState = {}


---@class UBTTask_MagicMoveWithTrackVehicle: UBTTask_MagicMove
---@field VehicleIgnoreRadius number
---@field VehicleSearchRadius number
---@field VehicleNearTargetThreshold number
---@field ApproachVehicleRadius number
---@field VehicleStuckThreshold number
---@field ExitVehicleSpeedThreshold number
---@field VehicleCooldownTime number
---@field TrackVehicles ULuaArrayHelper<ASTExtraTrackVehicle>
local UBTTask_MagicMoveWithTrackVehicle = {}
