---@meta

---@class FMmc_FallingMon
---@field bIsOpen boolean @是否开启
---@field CheckInterval number @执行检查的时间间隔
---@field MinFallDist number @最小允许的高度下降值 h = 0.5 * g * t^2 时间是CheckInterval 注意移动不是完全物理模拟的，会自动根据重力进行缩放 默认重力980 这个配置的单位是厘米
---@field ZThreshold number @高度的允许误差
---@field BadFallingTime number @浮空时间可能不正常的阈值 当浮空时间超过这个时间后使用更严格的判定
---@field StartCheckFallingTime number @开始进行浮空检查的时间，避免一些短时间的不一致导致的误判
---@field PunishTime number @处罚时间
---@field LogTokenInit number @单个玩家只输出有限次日志
---@field CheckStuckRadius number @执行是否卡住的Trace的半径 --story=875504721 【CG020】浮空不合理增加筛选条件-人物浮空后无物理渗透 http://tapd.woa.com/r/t?id=875504721&type=story
---@field MoveDistanceThres number @浮空后移动的阈值 --story=875504621 【CG020】浮空不合理增加筛选条件-人物浮空后移动大于3米 http://tapd.woa.com/r/t?id=875504621&type=story
FMmc_FallingMon = {}
