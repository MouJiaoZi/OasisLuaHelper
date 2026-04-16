---@meta

---@class FPESkillEventTemplate
---@field OnEventActivateDelegate FPESkillEventSimpleMultiDelegate
FPESkillEventTemplate = {}


---@class FPESkillEventSimpleMultiDelegate : ULuaMulticastDelegate
FPESkillEventSimpleMultiDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Event: UPESkillEventBase) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPESkillEventSimpleMultiDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Event UPESkillEventBase
function FPESkillEventSimpleMultiDelegate:Broadcast(Event) end


---@class FPESkillEventContainerStructDelegate : ULuaMulticastDelegate
FPESkillEventContainerStructDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: UPESkillEventBase) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPESkillEventContainerStructDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 UPESkillEventBase
function FPESkillEventContainerStructDelegate:Broadcast(Param1) end


---这里设计还可以精简，但考虑到用户的理解，就先这样分开。
---@class UPESkillEventBase: UPESkillTemplateBase
---@field OnEventActivateDelegate FPESkillEventSimpleMultiDelegate
---@field bIsActivation number
local UPESkillEventBase = {}

---@return boolean
function UPESkillEventBase:IsActivated() end

function UPESkillEventBase:ActiveEvent() end

function UPESkillEventBase:InitializeInternal_BP() end

function UPESkillEventBase:OnPostInitializeInternal_BP() end

function UPESkillEventBase:UnInitializeInternal_BP() end
