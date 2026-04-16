---@meta

---@class UEnvQueryTest_Trace: UEnvQueryTest
---@field TraceData FEnvTraceData @trace data
---@field TraceFromContext FAIDataProviderBoolValue @trace direction
---@field ItemHeightOffset FAIDataProviderFloatValue @Z offset from item
---@field ContextHeightOffset FAIDataProviderFloatValue @Z offset from querier
---@field Context UEnvQueryContext @context: other end of trace test
local UEnvQueryTest_Trace = {}
