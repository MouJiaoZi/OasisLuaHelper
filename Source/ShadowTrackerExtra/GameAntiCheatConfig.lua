---@meta

---挂在GameMode上的反外挂配置 方便根据不同模式开关策略，防止一些玩法才需要的策略影响到所有的模式
---@class FGameAntiCheatConfig
---@field bOpenExLaunchDirectHeightControl boolean @是否开启针对ExLaunch的跳跃高度控制
---@field VictimDistanceOvrride number @覆盖被攻击者在DS上的位置与上报的命中点之间的距离容错 小于0的值都会被视为无效，不会影响校验逻辑，有效配置必须大于0 配置值为距离的平方，距离的单位为厘米
---@field VsBackwardRangeForce number @是否强制打开VsBackwardRange 任何小于等于0的值不会起作用 --story=869216083 在团竞模式，伐木场地图开启新命中校验策略
---@field bReportSidBad boolean @SidBid在模式上的开关 --story=871849361 【CG018】【ShootBlock_SidBad】修复图书馆团竞的短筒RPG偶现时序问题的bug
FGameAntiCheatConfig = {}
