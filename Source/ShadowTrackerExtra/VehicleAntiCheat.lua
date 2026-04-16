---@meta

---@class UVehicleAntiCheatTask: UObject
local UVehicleAntiCheatTask = {}


---当检测到持续一段时间的作弊行为后, 才会确定为作弊
---@class UVACTContinuous: UVehicleAntiCheatTask
local UVACTContinuous = {}


---当检测到一定次数的作弊行为后, 才会确定为作弊
---@class UVACTBytimes: UVehicleAntiCheatTask
local UVACTBytimes = {}


---反外挂: 载具飞天
---@class UVACTask_FlyingVehicle: UVACTContinuous
---@field bTestBool boolean @测试
local UVACTask_FlyingVehicle = {}


---反外挂: 载具飞天---速度校验：当有轮子离地之后记录主端上报的速度值，是否存在每帧随重力加速度衰减
---@class UVACTask_FlyingVehicleVelocity: UVACTContinuous
local UVACTask_FlyingVehicleVelocity = {}


---反外挂: 载具飞天---速度校验：Z轴速度一直为正时间校验
---@class UVACTask_FlyingVehicleVelocityChange: UVACTContinuous
local UVACTask_FlyingVehicleVelocityChange = {}


---反外挂: 载具飞天--空中Z轴速度大于水平速度校验
---@class UVACTask_FlyingVehicleZ: UVACTContinuous
local UVACTask_FlyingVehicleZ = {}


---反外挂: 载具飞天--滞空时间校验
---@class UVACTask_FlyingVehicleTimeLimit: UVACTContinuous
---@field EnableRecordFlyOvertime boolean
---@field MotorVehicleFlyOvertimeThreshold1 number
---@field MotorVehicleFlyOvertimeThreshold2 number
---@field MotorVehicleVelocityMinSize number
---@field FramePositionDeltaMin number
local UVACTask_FlyingVehicleTimeLimit = {}


---反外挂: 水下开车
---@class UVACTask_DrivingUnderwater: UVACTBytimes
local UVACTask_DrivingUnderwater = {}


---@class UVACTask_DrivingUnderwaterAllDir: UVACTask_DrivingUnderwater
local UVACTask_DrivingUnderwaterAllDir = {}


---反外挂: 超过正常速度行驶
---@class UVACTask_SuperSpeed: UVACTContinuous
---@field MaxAllowedSyncSpeedDiff number
local UVACTask_SuperSpeed = {}


---@class UVACTask_SuperSpeedAllDir: UVACTask_SuperSpeed
local UVACTask_SuperSpeedAllDir = {}


---@class UVACTask_OverSpeedBW: UVehicleAntiCheatTask
---@field MaxSpeed number
local UVACTask_OverSpeedBW = {}


---@class UACTask_InAirExceptionBW: UVACTContinuous
local UACTask_InAirExceptionBW = {}
