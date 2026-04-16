---@meta

---@class FUActorStateChange : ULuaMulticastDelegate
FUActorStateChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, StateType: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUActorStateChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param StateType number
function FUActorStateChange:Broadcast(StateType) end


---@class FUActorStateTransfer : ULuaMulticastDelegate
FUActorStateTransfer = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, LeaveStateType: number, EnterStateType: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUActorStateTransfer:Add(Callback, Obj) end

---触发 Lua 广播
---@param LeaveStateType number
---@param EnterStateType number
function FUActorStateTransfer:Broadcast(LeaveStateType, EnterStateType) end


---@class UActorStateBase: UObject
---@field StateOwnerActor AActor
local UActorStateBase = {}


---@class UActorStateMgr: UObject
---@field UActorStateEnter FUActorStateChange
---@field UActorStateLeave FUActorStateChange
---@field UActorStateTransfer FUActorStateTransfer
---@field StateMap ULuaMapHelper<number, UActorStateBase>
---@field StateOwner AActor
local UActorStateMgr = {}
