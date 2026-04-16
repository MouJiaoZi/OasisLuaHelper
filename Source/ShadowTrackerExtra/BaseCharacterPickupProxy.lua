---@meta

---@class FGetDropLocationOverrideDelegate : ULuaSingleDelegate
FGetDropLocationOverrideDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, TargetProxyOwner: AActor) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGetDropLocationOverrideDelegate:Bind(Callback, Obj) end

---执行委托
---@param TargetProxyOwner AActor
function FGetDropLocationOverrideDelegate:Execute(TargetProxyOwner) end


---@class FGetPutDownZValueOverrideDelegate : ULuaSingleDelegate
FGetPutDownZValueOverrideDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGetPutDownZValueOverrideDelegate:Bind(Callback, Obj) end

---执行委托
function FGetPutDownZValueOverrideDelegate:Execute() end


---@class UBaseCharacterPickupProxy: UPickupProxy
---@field GetDropLocationOverride FGetDropLocationOverrideDelegate
---@field GetPutDownZValueOverrideDelegate FGetPutDownZValueOverrideDelegate
local UBaseCharacterPickupProxy = {}

---@return boolean
function UBaseCharacterPickupProxy:UnBindDropLocationOverrideDelegate() end

---@return boolean
function UBaseCharacterPickupProxy:UnBindPutDownZValueOverrideDelegate() end
