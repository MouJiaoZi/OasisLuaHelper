---@meta

---Run Environment Query System Query task node. Runs the specified environment query when executed.
---@class UBTTask_RunEQSQuery: UBTTask_BlackboardBase
---@field QueryParams ULuaArrayHelper<FEnvNamedValue> @optional parameters for query
---@field QueryConfig ULuaArrayHelper<FAIDynamicParam>
---@field RunMode EEnvQueryRunMode @determines which item will be stored (All = only first matching)
---@field EQSQueryBlackboardKey any @blackboard key storing an EQS query template
---@field bUseBBKey boolean
---@field EQSRequest FEQSParametrizedQueryExecutionRequest
local UBTTask_RunEQSQuery = {}
