---@meta

---@class USTStrategyTiming_Event: USTStrategyTiming
---@field EventID number
---@field EventName string
local USTStrategyTiming_Event = {}

---@param Owner ASTSpawnerBase
function USTStrategyTiming_Event:ActivateStrategy(Owner) end

---@param DeltaTime number
function USTStrategyTiming_Event:TickStrategy(DeltaTime) end

---@param SpawnerID number
function USTStrategyTiming_Event:OnSpawnEventBroadcast(SpawnerID) end
