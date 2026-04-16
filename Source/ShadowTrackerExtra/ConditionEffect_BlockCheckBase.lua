---@meta

---阻挡检测基类
---@class UConditionEffect_BlockCheckBase: UConditionEffect
---@field TraceStart FVector
---@field TraceEnd FVector
---@field IgnoreActorList ULuaArrayHelper<AActor>
---@field BlockHit FHitResult
local UConditionEffect_BlockCheckBase = {}

---@param InTraceStart FVector
---@param InTraceEnd FVector
---@param InIgnoreActorList ULuaArrayHelper<AActor>
function UConditionEffect_BlockCheckBase:InitTraceInfo(InTraceStart, InTraceEnd, InIgnoreActorList) end
