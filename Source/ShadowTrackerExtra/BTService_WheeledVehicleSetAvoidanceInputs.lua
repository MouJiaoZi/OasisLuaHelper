---@meta

---@class FAvoidanceBoxTraceSettings
---@field TraceForwardOffset number
---@field TraceLength number
---@field TraceHalfSize FVector
---@field TraceOrientation FRotator
---@field TopSpeedTraceSizeMultiplier number
---@field TopSpeed number
FAvoidanceBoxTraceSettings = {}


---@class FObjectTypeAvoidanceWeights
---@field DefaultAvoidanceResponseWeight number
---@field ActorFilterResponseMap ULuaMapHelper<AActor, number>
---@field IgnoreActorFilterList ULuaArrayHelper<AActor>
FObjectTypeAvoidanceWeights = {}


---BT service that casts for objects to avoid and calculates a steering value based on weighted avoidance responses.
---@class UBTService_WheeledVehicleSetAvoidanceInputs: UBTService_BlackboardBase
---@field bOnlyRunWhenVehiclesInRange boolean
---@field MaxVehicleRangeSquared number
---@field MaxAvoidanceSteering number
---@field MinAvoidanceSteering number
---@field AvoidanceTraceSettings FAvoidanceBoxTraceSettings
---@field ObjectTypesAvoidanceMap ULuaMapHelper<EObjectTypeQuery, FObjectTypeAvoidanceWeights>
---@field AvoidanceSteeringInputKey FBlackboardKeySelector
local UBTService_WheeledVehicleSetAvoidanceInputs = {}
