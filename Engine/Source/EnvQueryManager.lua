---@meta

---wrapper for easy query execution
---@class FEnvQueryRequest
FEnvQueryRequest = {}


---cache of instances with sorted tests
---@class FEnvQueryInstanceCache
FEnvQueryInstanceCache = {}


---@class UEnvQueryManager: UObject, FTickableGameObject, FSelfRegisteringExec
---@field InstanceCache ULuaArrayHelper<FEnvQueryInstanceCache> @cache of instances
---@field LocalContexts ULuaArrayHelper<UEnvQueryContext> @local cache of context objects for managing BP based objects
---@field GCShieldedWrappers ULuaArrayHelper<UEnvQueryInstanceBlueprintWrapper>
---@field MaxAllowedTestingTime number @how long are we allowed to test per update, in seconds.
---@field bTestQueriesUsingBreadth boolean @whether we update EQS queries based on: running a test on one query and move to the next (breadth) - default behavior, or test an entire query before moving to the next one (depth).
---@field QueryCountWarningThreshold number @if greater than zero, we will warn once when the number of queries is greater than or equal to this number, and log the queries out
---@field QueryCountWarningInterval number @how often (in seconds) we will warn about the number of queries (allows us to catch multiple occurrences in a session)
local UEnvQueryManager = {}
