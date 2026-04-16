---@meta

---查找生成器上到目标的路点
---@class UBTTask_FindWayPointOnSpawnerToTarget: UBTTaskNode
---@field InSpawnerActor any
---@field InTargetActor any
---@field InProjectPointFilterClass UNavigationQueryFilter
---@field InProjectPointExtend FVector
---@field InWayPointRadius number
---@field InGetTargetAttackPosBPFunctionName string
---@field InOutWayPointIndex any
---@field OutMoveTargetLoc any
local UBTTask_FindWayPointOnSpawnerToTarget = {}
