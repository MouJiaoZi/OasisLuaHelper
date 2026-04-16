---@meta

---@class FMinimalMoveAc
---@field MoveLimitor FMmc_SrvLimitor @服务端速度监控
---@field FallingMon FMmc_FallingMon @跳跃状态监控
---@field JumpMon FMmc_JumpMon
---@field TimeResetThreshold number @允许移动时间戳回转时服务器记录的时间差与回转间隔之间的误差 回转间隔默认为[4*60=240]s 详细可参考属性MinTimeBetweenTimeStampResets的说明
FMinimalMoveAc = {}
