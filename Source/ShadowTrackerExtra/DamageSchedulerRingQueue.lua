---@meta

---伤害请求
---@class FDamageRequest
---@field BaseDamage number
---@field DamageTypeClass UDamageType
FDamageRequest = {}


---环形队列实现 - 高性能伤害请求队列 特点： - O(1) 入队和出队复杂度 - 预分配内存，避免动态扩容 - 自动扩容支持
---@class FDamageSchedulerRingQueue
---@field Buffer ULuaArrayHelper<FDamageRequest> @环形缓冲区
FDamageSchedulerRingQueue = {}
