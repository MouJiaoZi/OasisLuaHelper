---@meta

---@class FDynamicAnimListData
---@field AnimListGroupName string
---@field AnimListComponentForReg ULuaArrayHelper<UUAEAnimListComponentBase>
---@field bIsRegistered boolean
FDynamicAnimListData = {}


---@class FWeaponDynamicAnimListGroupRegistered : ULuaMulticastDelegate
FWeaponDynamicAnimListGroupRegistered = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, GroupName: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FWeaponDynamicAnimListGroupRegistered:Add(Callback, Obj) end

---触发 Lua 广播
---@param GroupName string
function FWeaponDynamicAnimListGroupRegistered:Broadcast(GroupName) end


---@class FWeaponDynamicAnimListGroupRegisteredChange : ULuaSingleDelegate
FWeaponDynamicAnimListGroupRegisteredChange = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FWeaponDynamicAnimListGroupRegisteredChange:Bind(Callback, Obj) end

---执行委托
function FWeaponDynamicAnimListGroupRegisteredChange:Execute() end


---@class UWeaponDynamicAnimListManager: UWeaponLogicBaseComponent
---@field DynamicAnimListConfig ULuaArrayHelper<FDynamicAnimListData>
---@field OnWeaponDynamicAnimListGroupRegistered FWeaponDynamicAnimListGroupRegistered
---@field OnWeaponAnimListGroupRegisteredChange FWeaponDynamicAnimListGroupRegisteredChange
local UWeaponDynamicAnimListManager = {}

---@param AnimListGroup string
function UWeaponDynamicAnimListManager:RegisterAnimListComponent(AnimListGroup) end

---@param AnimListGroup string
---@return boolean
function UWeaponDynamicAnimListManager:IsAnimListGroupRegistered(AnimListGroup) end
