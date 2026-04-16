---@meta

---@class FOnGSListenerBaseTrigger : ULuaMulticastDelegate
FOnGSListenerBaseTrigger = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Listener: UGSListenerBase) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnGSListenerBaseTrigger:Add(Callback, Obj) end

---触发 Lua 广播
---@param Listener UGSListenerBase
function FOnGSListenerBaseTrigger:Broadcast(Listener) end


---@class UGSListenerBase: UObject
---@field OnGSListenerBaseTrigger FOnGSListenerBaseTrigger
---@field OwnerController AController
---@field OwnerActor AActor
---@field GSOwnerSkill AUTSkill
---@field OwnerSkillManager UUTSkillManagerComponent
---@field bAutoDisableWhenTrigger boolean
---@field DelayTime number
local UGSListenerBase = {}

---@return boolean
function UGSListenerBase:EnableListener() end

---@return boolean
function UGSListenerBase:DisableListener() end

---@return boolean
function UGSListenerBase:ReconnectRecover() end

---@return boolean
function UGSListenerBase:IsListenerActived() end

function UGSListenerBase:OnEventTrigger() end
