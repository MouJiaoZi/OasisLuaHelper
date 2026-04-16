---@meta

---基于ServerMove的移动状态的策略
---@class FMovePackageStrategy
---@field bOpen boolean @是否开启策略
---@field MaxAllowCheatMoveTimes number @允许的触发阈值
---@field MaxVerificationTimeInSeconds number @检查间隔，单位为秒
---@field MinCheckTimeIntervalWhenExceedMaxTimes number @最短的检查间隔，应用到处罚次数较多的玩家上
---@field MaxMoveDistanceScaleFactor number @距离的阈值放大
---@field MaxClientSideTimeLagInSeconds number @允许时间戳转换后超过服务器时间的最大阈值
---@field MaxClientAndServerSpeedMaxDiff number @允许服务器最大速度与客户端最大速度的最大偏差
---@field MaxClientAndServerLocationDiff number @允许服务器位置与客户端位置的最大偏差
---@field MaxMoveExceedDistance number @允许移动距离大于最大距离的控制范围
---@field MinMoveExceedTime number @检测时间被篡改时使用的最小时间
FMovePackageStrategy = {}
