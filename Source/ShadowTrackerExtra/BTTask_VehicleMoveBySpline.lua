---@meta

---@class EAIVehicleMoveGiveWayType
---@field None number @无
---@field LowThrottle number @松油门
---@field RandomSteering number @随机打方向
---@field NoSteeringBrake number @过弯不减速
EAIVehicleMoveGiveWayType = {}


---@class FAIVehicleMoveGiveWayItem
---@field GiveWayType EAIVehicleMoveGiveWayType
---@field Weight number
FAIVehicleMoveGiveWayItem = {}


---@class FAIVehicleMoveGiveWayLevelItem
---@field GiveWayLevelItemList ULuaArrayHelper<FAIVehicleMoveGiveWayItem>
FAIVehicleMoveGiveWayLevelItem = {}


---Vehicle Move By Spline
---@class UBTTask_VehicleMoveBySpline: UBTTaskNode
---@field SplineBBKey any
---@field MinRequiredSteeringChange number
---@field MinRequiredThrottleChange number
---@field SteeringRotationMapRangeLimit number
---@field DefaultThrottleInput number
---@field bBrakeWhenSteering boolean
---@field BrakeWhenSteeringSpeedThreshold number
---@field BrakeWhenSteeringAbsThreshold number
---@field bBrakeThrottleInputUseInverseFunc boolean
---@field BrakeWhenSteeringThrottleMin number
---@field BrakeWhenSteeringProbability_Level ULuaArrayHelper<number>
---@field BrakeWhenSteeringProbability_Default number
---@field BrakeWhenSteeringCheckProbabilityInterval number
---@field bBoostingWhenNoSteering boolean
---@field BoostingWhenNoSteeringAbsThreshold number
---@field BoostingWhenNoSteeringProbability number
---@field BoostingWhenNoSteeringCheckProbabilityInterval number
---@field bDriftWhenSteering boolean
---@field DriftWhenSteeringAngleThreshold number
---@field DriftWhenSteeringSpeedThreshold number
---@field DriftWhenSteeringCondMeetTime number
---@field DriftWhenSteeringUseTimeLimit number
---@field HeadLookDistanceMin number
---@field HeadLookDistanceMax number
---@field HeadLookTime number
---@field bSteeringInputUsePIDControl boolean
---@field bThrottleInputUsePIDControl boolean
---@field PIDControlDt number
---@field PIDControlResetInterval number
---@field PIDControlMin number
---@field PIDControlMax number
---@field PIDControlKp number
---@field PIDControlKd number
---@field PIDControlKi number
---@field bUseRandomPathBasedSpline boolean
---@field ResetOffsetLengthInterval number
---@field ResetOffsetLengthRandomDeviation number
---@field OffsetLengthRandomTryTimes number
---@field OffsetLengthRangeBasedSpline_Level ULuaArrayHelper<number>
---@field OffsetLengthRangeBasedSpline_Default number
---@field OffsetLengthChangeRange_Level ULuaArrayHelper<number>
---@field OffsetLengthChangeRange_Default number
---@field bDoBlockCheck boolean
---@field BlockDetectionDistance number @detect blocked movement when distance between center of location samples and furthest one (centroid radius) is below threshold
---@field BlockDetectionInterval number @interval for collecting location samples
---@field BlockDetectionSampleCount number @number of samples required for block detection
---@field OutBlockBBKey any
---@field bDoGiveWay boolean
---@field ShouldGiveWayBBKey any
---@field GiveWayThrottleInputScaleLower_Level ULuaArrayHelper<number>
---@field GiveWayThrottleInputScaleLower_Default number
---@field GiveWayThrottleInputScaleUpper_Level ULuaArrayHelper<number>
---@field GiveWayThrottleInputScaleUpper_Default number
---@field GiveWayRandomThrottleInputScaleInterval number
---@field GiveWayMinThrottleInput number
---@field GiveWayRandomSteeringAbsThreshold number
---@field GiveWayRandomSteeringTime number
---@field GiveWayTypeConfig_Level ULuaArrayHelper<FAIVehicleMoveGiveWayLevelItem>
local UBTTask_VehicleMoveBySpline = {}
