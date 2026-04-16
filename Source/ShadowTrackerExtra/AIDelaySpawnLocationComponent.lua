---@meta

---@class UAIDelaySpawnLocationComponent: UActorComponent
---@field bOpenAIDelaySpawnLocation boolean
---@field WorldCenter FVector2D
---@field WorldSize FVector2D
---@field GridSize number
---@field PlayerCoverGridRadius number
---@field RefreshCoverGridInterval number
---@field TryFindSpawnLocTimes number
---@field DebugDrawHeight number
---@field DebugDrawLineWidth number
---@field DebugDrawCircleSize number
---@field DebugDrawInterval number
---@field DebugCircle FVector
---@field bDebugDraw boolean
---@field SavedGameMode ABattleRoyaleGameModeBase
---@field AIActingComp UAIActingComponent
---@field CircleMgrComp UCircleMgrComponent
local UAIDelaySpawnLocationComponent = {}

---@param Circle FVector
---@param OutSuccess boolean
---@return FVector
function UAIDelaySpawnLocationComponent:GetSpawnRandomLocation(Circle, OutSuccess) end
