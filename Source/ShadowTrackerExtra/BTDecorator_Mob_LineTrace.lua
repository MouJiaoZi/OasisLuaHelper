---@meta

---射线阻挡检测
---@class UBTDecorator_Mob_LineTrace: UBTDecorator_BlackboardBase
---@field bTraceByObjectType boolean
---@field traceObjectTypes ULuaArrayHelper<ECollisionChannel>
---@field CollisionChannel ECollisionChannel
---@field bUseHeightOffsetTrace boolean @添加一个高度偏移可以避免只是被阻挡一点就判定失败
---@field StartHeightOffset number
---@field TargetHeightOffset number
local UBTDecorator_Mob_LineTrace = {}
