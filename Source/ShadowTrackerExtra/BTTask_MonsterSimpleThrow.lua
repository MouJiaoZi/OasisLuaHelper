---@meta

---怪物投掷Task的节点内存
---@class FBTMonsterThrowMemory
FBTMonsterThrowMemory = {}


---怪物投掷行为树Task 创建并管理ThrowComponent，执行投掷流程
---@class UBTTask_MonsterSimpleThrow: UBTTaskNode
---@field ThrowItemType EMonsterThrowItemType @投掷物类型
---@field TaskDuration number @Task持续时间（秒）
---@field TargetActorKey FBlackboardKeySelector @目标Actor黑板键
local UBTTask_MonsterSimpleThrow = {}
