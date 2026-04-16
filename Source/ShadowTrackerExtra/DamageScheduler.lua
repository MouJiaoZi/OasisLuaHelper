---@meta

---智能伤害调度器 用于解决AOE范围伤害导致的性能问题 性能特性： - 使用环形队列实现O(1)入队和出队 - 自动扩容和缩容，优化内存使用 - 分帧处理，平滑性能消耗
---@class FDamageScheduler
---@field MaxDamagePerFrame number
---@field QueueThreshold_SyncHandle number
---@field QueueThreshold_Expansion number
---@field MaxDamagePerFrame_Expanded number
---@field MaxQueueCapacity number
---@field DamageQueue FDamageSchedulerRingQueue
FDamageScheduler = {}
