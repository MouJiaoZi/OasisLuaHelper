---@meta

---@class FObserverHostEventCDInfo
---@field EventName string
---@field CD number
---@field CurCD number
---@field EndTime number
---@field CurTime number
---@field TriggerTimes number
---@field MaxTriggerTimes number
---@field TriggerTimesGroup number
---@field IsMultiple boolean
FObserverHostEventCDInfo = {}


---@class FObserverHostDynamicEventCfg
---@field EventType number
---@field StartTime number
---@field LastTime number
---@field BExcuteImmediately boolean
---@field BIgnorSelectedEvent boolean
FObserverHostDynamicEventCfg = {}


---@class FObserverHostDynamicEventCDInfo
---@field WaveIndex number
---@field EventType number
---@field CD number
---@field CurSelect string
FObserverHostDynamicEventCDInfo = {}


---@class FObserverHostAdditionalData
---@field Name string
---@field FloatData number
---@field StringData string
---@field IntData number
FObserverHostAdditionalData = {}


---@class UObserverHostComponent: UTimerRegistComponent
---@field EventCDChangeDelegate FOnEventCDChangeDelegate
---@field OnRepAdditionalDataDelegate FOnRepAdditionalDataDelegate
---@field OnUpdateDynamicEventCDDelegate FOnEventCDChangeDelegate
---@field DynamicEventCfg ULuaArrayHelper<FObserverHostDynamicEventCfg>
---@field MultipleTriggerEventIDList ULuaArrayHelper<number>
---@field CurDynamicEvents ULuaArrayHelper<FObserverHostDynamicEventCDInfo>
---@field EventCDInfo ULuaArrayHelper<FObserverHostEventCDInfo>
---@field AdditionalData ULuaArrayHelper<FObserverHostAdditionalData>
---@field EventCDServerInfo ULuaArrayHelper<FObserverHostEventCDInfo>
local UObserverHostComponent = {}

---@param EventName string
function UObserverHostComponent:ServerTriggerEvent(EventName) end

---@param EventName string
---@param PlayerKey string
function UObserverHostComponent:ServerTriggerEventWithPlayerKey(EventName, PlayerKey) end

---@param WaveIndex number
---@param EventName string
function UObserverHostComponent:ServerSelectDynamicEvent(WaveIndex, EventName) end

---@param CirclePos FVector
function UObserverHostComponent:ServerSetNextCircle(CirclePos) end

---@param InCmd string
function UObserverHostComponent:ServerGameState(InCmd) end

function UObserverHostComponent:OnRep_DynamicEventCDInfo() end

function UObserverHostComponent:OnRep_EventCDInfo() end

function UObserverHostComponent:OnRep_AdditionalData() end

---@param EventName string
---@return FObserverHostEventCDInfo
function UObserverHostComponent:GetEventCDInfo(EventName) end

---@param Data FObserverHostAdditionalData
function UObserverHostComponent:SetAdditionalData(Data) end

---@param Name string
---@return FObserverHostAdditionalData
function UObserverHostComponent:GetAdditionalData(Name) end

---@param index number
function UObserverHostComponent:OnMakeCircle(index) end
