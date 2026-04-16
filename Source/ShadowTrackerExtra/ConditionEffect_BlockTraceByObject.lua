---@meta

---通道阻挡检测
---@class UConditionEffect_BlockTraceByObject: UConditionEffect_BlockCheckBase
---@field ObjectTypeList ULuaArrayHelper<ECollisionChannel>
---@field IgnoreTemplateList ULuaArrayHelper<AActor>
---@field TraceMaxLoopTime number
---@field bBlockCompUseBlockShootVerifyCheck boolean
local UConditionEffect_BlockTraceByObject = {}
