---@meta

---@class FSignalGunPointConfig
---@field Points ULuaArrayHelper<FVector>
FSignalGunPointConfig = {}


---@class USignalGunGameComponent: UTimerRegistComponent
---@field bTestSkipFilter boolean
---@field StartDelayTime number
---@field SmokeTime number
---@field TipsTimes ULuaArrayHelper<number>
---@field SupplyBoxTime number
---@field SmokeContinueTime number
---@field PointsArray ULuaArrayHelper<FSignalGunPointConfig>
---@field SmokeClass AActor
---@field SignalGunBoxClass AActor
---@field DelayHideBoxUITimeSecond number
---@field BoxIconID number
local USignalGunGameComponent = {}
