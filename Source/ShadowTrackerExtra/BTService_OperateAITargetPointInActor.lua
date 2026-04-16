---@meta

---操作Actor上的TargetPoint(AITargetPointComponent)
---@class UBTService_OperateAITargetPointInActor: UBTService
---@field InActorBlackboardKey any @Actor 黑板键
---@field InPointType string @点类型
---@field InOperatorBlackboardKey any @操作者 黑板键
---@field bSelectNextPoint boolean @是否选取下一个点
---@field OutPointBlackboardKey any @输出目标点
local UBTService_OperateAITargetPointInActor = {}
