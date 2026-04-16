---@meta

---基础移动加速校验
---@class UBasicSpeedUpMonitor: UBasicMonitorBase
---@field CheckInterval number @检测周期
---@field MaxAllowVelocityDiff number @最大信任双端速度差
---@field MaxAllowLocationDiff number @最大信任双端位置差
---@field MinCheckTimeThreshold number @检测时最短DS移动时长
---@field MinMoveDistThreshold number @检测时最短实际移动距离
---@field MaxScaleThreshold number @检测时距离放大倍率
local UBasicSpeedUpMonitor = {}
