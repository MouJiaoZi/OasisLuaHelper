---@meta

---@class FFightingTimeEventData
---@field EventID number
---@field TriggerTime number
---@field Name string
---@field Params string
---@field bDone boolean
FFightingTimeEventData = {}


---@class FOnFightingTimeEventDispatch : ULuaMulticastDelegate
FOnFightingTimeEventDispatch = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, EventName: string, Params: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnFightingTimeEventDispatch:Add(Callback, Obj) end

---触发 Lua 广播
---@param EventName string
---@param Params string
function FOnFightingTimeEventDispatch:Broadcast(EventName, Params) end


---@class UFightingTimeEventComponent: UActorComponent
---@field OnFightingTimeEventDispatch FOnFightingTimeEventDispatch
local UFightingTimeEventComponent = {}

---@param InTime number
---@param InEventName string
---@param InParams string
---@return number
function UFightingTimeEventComponent:RegisterFightingEvent(InTime, InEventName, InParams) end

---@param InEventID number
function UFightingTimeEventComponent:UnRegisterFightingEvent(InEventID) end
