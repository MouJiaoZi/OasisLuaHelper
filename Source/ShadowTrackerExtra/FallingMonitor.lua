---@meta

---监控玩家的浮空状态 主要针对非高跳目的的，利用其他东西到达高度后不下降的行为 配置方式： CharaFallMonitor=(LogTokenInit=10,CheckStuckRadius=100.11000,MoveDistanceThres=333.299988)
---@class FFallingMonitor
---@field bIsOpen boolean @是否开启
---@field CheckInterval number @执行检查的时间间隔
---@field MinFallDist number @最小允许的高度下降值 h = 0.5 * g * t^2 时间是CheckInterval 注意移动不是完全物理模拟的，会自动根据重力进行缩放 默认重力980 这个配置的单位是厘米
---@field LogTokenInit number @单个玩家只输出有限次日志
---@field CheckStuckRadius number @执行是否卡住的Trace的半径 --story=875504721 【CG020】浮空不合理增加筛选条件-人物浮空后无物理渗透 http://tapd.woa.com/r/t?id=875504721&type=story
---@field MoveDistanceThres number @浮空后移动的阈值 --story=875504621 【CG020】浮空不合理增加筛选条件-人物浮空后移动大于3米 http://tapd.woa.com/r/t?id=875504621&type=story
FFallingMonitor = {}
