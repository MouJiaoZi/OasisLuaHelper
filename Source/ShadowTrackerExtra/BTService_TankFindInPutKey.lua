---@meta

---BT service that casts for objects to avoid and calculates a steering value based on weighted avoidance responses.
---@class UBTService_TankFindInPutKey: UBTService_BlackboardBase
---@field bOnlyRunWhenVehiclesInRange boolean
---@field MaxVehicleRangeSquared number
---@field MaxAvoidanceSteering number
---@field MinAvoidanceSteering number
---@field AvoidanceTraceSettings FAvoidanceBoxTraceSettings
---@field ObjectTypesAvoidanceMap ULuaMapHelper<EObjectTypeQuery, FObjectTypeAvoidanceWeights>
---@field AvoidanceSteeringInputKey FBlackboardKeySelector
local UBTService_TankFindInPutKey = {}
