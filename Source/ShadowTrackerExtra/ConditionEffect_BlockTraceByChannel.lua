---@meta

---通道阻挡检测
---@class UConditionEffect_BlockTraceByChannel: UConditionEffect_BlockCheckBase
---@field TraceChannel ECollisionChannel
---@field IgnoreTemplateList ULuaArrayHelper<AActor>
---@field TraceMaxLoopTime number
local UConditionEffect_BlockTraceByChannel = {}
