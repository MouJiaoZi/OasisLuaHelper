---@meta

---流浪地球机械狗倒地保护选择位置
---@class UBTTask_SelectProtectLocation: UBTTaskNode
---@field ProtectTargetKey FBlackboardKeySelector
---@field ProtectLocationKey FBlackboardKeySelector
---@field KeepDistance number
---@field TraceChannel ECollisionChannel
---@field bCheckVisible boolean
---@field StepAngle number
---@field NavmeshRange FVector2D @X-目标点和原点最小距离(太近了可能会重叠在一起)；Y-在Navmesh上寻找点的范围，比X大
---@field NavmeshTryFrame number
---@field NavmeshTryMaxNum number
---@field bLog boolean
---@field DebugLifetime number
---@field DebugPointRadius number
---@field DebugRadius number
local UBTTask_SelectProtectLocation = {}
