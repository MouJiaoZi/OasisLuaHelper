---@meta

---寻找钩爪目标位置
---@class UBTService_PxgFindAlculaLocation: UBTService
---@field MaxTraceDistance number @最大检测距离
---@field MinDistanceLimit number @最大限制距离
---@field TraceChannel ECollisionChannel @检测通道
---@field TraceCapsuleArgs FVector @检测胶囊体参数，XY为半径，Z为半高
---@field AngleAroundYaw number @左右旋转角度范围
---@field AngleAroundPitchUp number @向上旋转角度范围
---@field AngleAroundPitchDown number @向下旋转角度范围
---@field OutputAlculaLocation any @目标位置输出
---@field bDrawDebugLine boolean
---@field DrawDebugLineWidth number
---@field DrawTargetSphereRadius number
local UBTService_PxgFindAlculaLocation = {}
