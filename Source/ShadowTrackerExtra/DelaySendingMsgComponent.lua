---@meta

---@class FCoolDownType
---@field OtherStateType string
---@field PStateType EPawnState
---@field CDTime number
FCoolDownType = {}


---@class FEventCD
---@field UIMsg string
---@field StateList ULuaArrayHelper<FCoolDownType>
FEventCD = {}


---@class FDelaySendingMsgDelegate : ULuaMulticastDelegate
FDelaySendingMsgDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Name: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FDelaySendingMsgDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Name string
function FDelaySendingMsgDelegate:Broadcast(Name) end


---@class UDelaySendingMsgComponent: UActorComponent
---@field DelayEvent ULuaMapHelper<string, FEventCD>
---@field CheckSendingAllowedDelta number
---@field CoolDownCD FEventCD
---@field DelaySendingMsgDelegate FDelaySendingMsgDelegate
---@field bOpenDelayComponent boolean
local UDelaySendingMsgComponent = {}

---@param EventName string
---@return boolean
function UDelaySendingMsgComponent:CanEventExecuteImmediately(EventName) end

---@param EventName string
---@param UIMsg string
function UDelaySendingMsgComponent:SetUIMsgByDelayEventName(EventName, UIMsg) end
