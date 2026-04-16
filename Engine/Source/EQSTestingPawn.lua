---@meta

---@class EEnvQueryHightlightMode
---@field All number
---@field Best5Pct number @Best 5%
---@field Best25Pct number @Best 25%
EEnvQueryHightlightMode = {}


---this class is abstract even though it's perfectly functional on its own. The reason is to stop it from showing as valid player pawn type when configuring project's game mode.
---@class AEQSTestingPawn: ACharacter, IEQSQueryResultSourceInterface
---@field QueryParams ULuaArrayHelper<FEnvNamedValue> @optional parameters for query
---@field QueryConfig ULuaArrayHelper<FAIDynamicParam>
---@field TimeLimitPerStep number
---@field StepToDebugDraw number
---@field HighlightMode EEnvQueryHightlightMode
---@field bDrawLabels number
---@field bDrawFailedItems number
---@field bReRunQueryOnlyOnFinishedMove number
---@field bShouldBeVisibleInGame number
---@field bTickDuringGame number
---@field QueryingMode EEnvQueryRunMode
local AEQSTestingPawn = {}
