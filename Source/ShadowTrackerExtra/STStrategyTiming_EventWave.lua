---@meta

---@class USTStrategyTiming_EventWave: USTStrategyTiming
---@field EventID number
---@field EventName string
---@field bFirstDelay number
---@field FirstDelayDuration number
---@field bLoop number
---@field PeriodDuration number
local USTStrategyTiming_EventWave = {}

---@param Owner ASTSpawnerBase
function USTStrategyTiming_EventWave:ActivateStrategy(Owner) end

---@param DeltaTime number
function USTStrategyTiming_EventWave:TickStrategy(DeltaTime) end

---@param SpawnerID number
function USTStrategyTiming_EventWave:OnSpawnEventBroadcast(SpawnerID) end

---@param NewPeriodDuration number
function USTStrategyTiming_EventWave:ChangePeriodDuration(NewPeriodDuration) end

function USTStrategyTiming_EventWave:OnFirstDelay() end

function USTStrategyTiming_EventWave:OnReachTimer() end
