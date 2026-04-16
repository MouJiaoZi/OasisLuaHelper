---@meta

---@class FOnAddActorFieldSystemDelegate : ULuaMulticastDelegate
FOnAddActorFieldSystemDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, FieldApply: UFieldApplyBaseComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAddActorFieldSystemDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param FieldApply UFieldApplyBaseComponent
function FOnAddActorFieldSystemDelegate:Broadcast(FieldApply) end


---@class FOnRemoveActorFieldSystemDelegate : ULuaMulticastDelegate
FOnRemoveActorFieldSystemDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, FieldApply: UFieldApplyBaseComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRemoveActorFieldSystemDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param FieldApply UFieldApplyBaseComponent
function FOnRemoveActorFieldSystemDelegate:Broadcast(FieldApply) end


---@class UFieldApplyBaseComponent: UActorComponent, IObjectPoolInterface
---@field OnAddActorFieldSystemDelegate FOnAddActorFieldSystemDelegate
---@field OnRemoveActorFieldSystemDelegate FOnRemoveActorFieldSystemDelegate
---@field ActorFieldSystems ULuaArrayHelper<UActorFieldSystemComponent>
local UFieldApplyBaseComponent = {}

function UFieldApplyBaseComponent:OnClientLostOnServer() end

function UFieldApplyBaseComponent:OnPreReconnectOnServer() end

---@return string
function UFieldApplyBaseComponent:GetToString() end

---@param ActorFieldSystem UActorFieldSystemComponent
function UFieldApplyBaseComponent:AddActorFieldSystem(ActorFieldSystem) end

---@param ActorFieldSystem UActorFieldSystemComponent
function UFieldApplyBaseComponent:RemoveActorFieldSystem(ActorFieldSystem) end

---@param Target EFieldLogicApplyType
---@return boolean
function UFieldApplyBaseComponent:HasFieldLogicNode(Target) end

---@param Target EFieldLogicApplyType
---@param InContext FFieldLogicOneContext
---@param Result FVector
function UFieldApplyBaseComponent:EvaluateVector(Target, InContext, Result) end
