---@meta

---@class FSTStrategyTiming_EventAndWave_DeadLock_SpawnTimeChange : ULuaMulticastDelegate
FSTStrategyTiming_EventAndWave_DeadLock_SpawnTimeChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, NextSpawnTime: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSTStrategyTiming_EventAndWave_DeadLock_SpawnTimeChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param NextSpawnTime number
function FSTStrategyTiming_EventAndWave_DeadLock_SpawnTimeChange:Broadcast(NextSpawnTime) end


---@class USTStrategyTiming_EventAndWave_DeadLock: USTStrategyTiming
---@field EventID number
---@field EventName string
---@field bFirstDelay number
---@field FirstDelayDuration number
---@field PeriodDuration number
---@field MaxLoopTimes number
---@field bTickAfterAllMobDie boolean
---@field SpawnTimeChangeDelegate FSTStrategyTiming_EventAndWave_DeadLock_SpawnTimeChange
local USTStrategyTiming_EventAndWave_DeadLock = {}

---@param Owner ASTSpawnerBase
function USTStrategyTiming_EventAndWave_DeadLock:ActivateStrategy(Owner) end

---@param DeltaTime number
function USTStrategyTiming_EventAndWave_DeadLock:TickStrategy(DeltaTime) end

---@param SpawnerID number
function USTStrategyTiming_EventAndWave_DeadLock:OnSpawnEventBroadcast(SpawnerID) end

---@param NewPeriodDuration number
function USTStrategyTiming_EventAndWave_DeadLock:ChangePeriodDuration(NewPeriodDuration) end

---@return boolean
function USTStrategyTiming_EventAndWave_DeadLock:IsAllMobDie() end
