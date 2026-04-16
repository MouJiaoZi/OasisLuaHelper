---@meta

---@class ATriggerItem_TriggerClock: ATriggerBase
---@field ClockTag string
---@field IsStartOnBegin boolean
---@field TriggerSecondsArray ULuaArrayHelper<number>
---@field TimerHandle_Trigger FTimerHandle
---@field CurSecondsArrayIndex number
local ATriggerItem_TriggerClock = {}

function ATriggerItem_TriggerClock:Start() end

function ATriggerItem_TriggerClock:Stop() end

function ATriggerItem_TriggerClock:OnTime() end
