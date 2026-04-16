---@meta

---死轨夜间怪寻敌逻辑 如果火车头靠近n米内，则锁敌一段时间 当锁定最大时间时后，加入CD，尝试寻找玩家
---@class UBTService_DT_CheckTrainLoc: UBTService
---@field InIsOutOfRangeBlackboardKey FBlackboardKeySelector
---@field MaxCheckTime number
---@field MinForceTime number
---@field ForceAttackTrainTimeBlackboardKey FBlackboardKeySelector
local UBTService_DT_CheckTrainLoc = {}
