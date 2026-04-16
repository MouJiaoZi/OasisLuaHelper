---@meta

---@class ESTExtraTankMovementMode
---@field TMM_PIVOTCIRCLE number @自转
---@field TMM_LOCKTRACK number @锁履带转弯
---@field TMM_NOINPUTTRACK number @不锁履带转弯
ESTExtraTankMovementMode = {}


---@class ESTExtraTankControlMode
---@field TCM_JOYSTICK number @轮盘操作模式
---@field TCM_LOCK_BOOST number @刹车_两倍动力
ESTExtraTankControlMode = {}


---@class FTankEngineData
---@field TorqueCurve FRuntimeFloatCurve @Torque (Nm) at a given RPM
---@field MaxRPM number @Maximum revolutions per minute of the engine
---@field MOI number @Moment of inertia of the engine around the axis of rotation (Kgm^2).
---@field DampingRateFullThrottle number @Damping rate of engine when full throttle is applied (Kgm^2/s)
---@field DampingRateZeroThrottleClutchEngaged number @Damping rate of engine in at zero throttle when the clutch is engaged (Kgm^2/s)
---@field DampingRateZeroThrottleClutchDisengaged number @Damping rate of engine in at zero throttle when the clutch is disengaged (in neutral gear) (Kgm^2/s)
FTankEngineData = {}


---@class FTankGearData
---@field Ratio number @Determines the amount of torque multiplication
---@field DownRatio number @Value of engineRevs/maxEngineRevs that is low enough to gear down
---@field UpRatio number @Value of engineRevs/maxEngineRevs that is high enough to gear up
FTankGearData = {}


---@class FTankTransmissionData
---@field bUseGearAutoBox boolean @Whether to use automatic transmission
---@field GearSwitchTime number @Time it takes to switch gears (seconds)
---@field GearAutoBoxLatency number @Minimum time it takes the automatic transmission to initiate a gear change (seconds)
---@field FinalRatio number @The final gear ratio multiplies the transmission gear ratios.
---@field ForwardGears ULuaArrayHelper<FTankGearData> @Forward gear ratios (up to 30)
---@field BackwardGears ULuaArrayHelper<FTankGearData>
---@field ReverseGearRatio number @Reverse gear ratio
---@field NeutralGearUpRatio number @Value of engineRevs/maxEngineRevs that is high enough to increment gear
---@field NeutralGearDownRatio number @Value of engineRevs/maxEngineRevs that is high enough to increment gear
---@field ClutchStrength number @Strength of clutch (Kgm^2/s)
FTankTransmissionData = {}


---Component to handle the physx part of the tank. Should not be used directly.
---@class USTExtraBaseTankMovementComponent: USTExtraBaseWheeledMovementComponent
---@field TankEngineSetup FTankEngineData
---@field TankTransmissionSetup FTankTransmissionData
---@field bEnableBrakeUntilAcceptInput boolean
---@field bHasAcceptInputSinceSpawned boolean
---@field bUseCurveControlTorqueScale boolean
---@field PivotCircle_Speed_MaxThreshold number
---@field PivotCircle_Brake_MaxThreshold number
---@field PivotCircle_Throttle_Tolerance number
---@field PivotCircleTorqueScale number
---@field PivotCircleTorqueScale_Reverse number
---@field PivotCircle_MaxAngularVelocity number
---@field PivotCircleSlowerAngularVelocity number
---@field ControlMode ESTExtraTankControlMode
---@field LockBoost_Brake_TorqueScale number
---@field LockBoost_Brake_MaxBrakeInput number
---@field LockBoost_Brake_InnerTrakeInput number
---@field LockBoost_NoBrake_TorqueScale number
---@field LockBoost_NoBrake_InnerTrakeInput number
---@field LeftTrackSpeed number
---@field RightTrackSpeed number
---@field WheelSpeeds ULuaArrayHelper<number>
---@field WheelAngles ULuaArrayHelper<number>
local USTExtraBaseTankMovementComponent = {}
