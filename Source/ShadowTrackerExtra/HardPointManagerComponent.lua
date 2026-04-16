---@meta

---@class EHardPointManagerState
---@field None number
---@field WaitActivate number
---@field HardPointActivating number
EHardPointManagerState = {}


---@class FHardPointSwitchConfig
---@field WaitTime number
---@field HardPointID number
---@field ActivateTime number
---@field WinScore number
FHardPointSwitchConfig = {}


---@class FHardPointSwitchConfigData
---@field SwitchConfigList ULuaArrayHelper<FHardPointSwitchConfig>
FHardPointSwitchConfigData = {}


---@class FActivateNewHardPointEvent : ULuaSingleDelegate
FActivateNewHardPointEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: AHardPointActor) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FActivateNewHardPointEvent:Bind(Callback, Obj) end

---执行委托
---@param Param1 AHardPointActor
function FActivateNewHardPointEvent:Execute(Param1) end


---@class FActivatedHardPointEndEvent : ULuaSingleDelegate
FActivatedHardPointEndEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: AHardPointActor) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FActivatedHardPointEndEvent:Bind(Callback, Obj) end

---执行委托
---@param Param1 AHardPointActor
function FActivatedHardPointEndEvent:Execute(Param1) end


---@class FWaitActivateHardPointEvent : ULuaSingleDelegate
FWaitActivateHardPointEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FWaitActivateHardPointEvent:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
function FWaitActivateHardPointEvent:Execute(Param1) end


---@class FHardPointSwitchConfigEndEvent : ULuaSingleDelegate
FHardPointSwitchConfigEndEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FHardPointSwitchConfigEndEvent:Bind(Callback, Obj) end

---执行委托
function FHardPointSwitchConfigEndEvent:Execute() end


---@class UHardPointManagerComponent: UActorComponent
---@field HardPointSwitchConfigDataList ULuaArrayHelper<FHardPointSwitchConfigData>
---@field HardPointMap ULuaMapHelper<number, AHardPointActor>
local UHardPointManagerComponent = {}

function UHardPointManagerComponent:StartHardPointManager() end

function UHardPointManagerComponent:StopHardPointManager() end

---@param HardPointActor AHardPointActor
---@param IsActivate boolean
function UHardPointManagerComponent:OnHardPointActivateStateChange(HardPointActor, IsActivate) end

function UHardPointManagerComponent:GetHardPointList() end

---@param Object UObject
---@param FunctionName string
function UHardPointManagerComponent:BindWaitActivateHardPointEvent(Object, FunctionName) end

---@param Object UObject
---@param FunctionName string
function UHardPointManagerComponent:BindActivateNewHardPointEvent(Object, FunctionName) end

---@param Object UObject
---@param FunctionName string
function UHardPointManagerComponent:BindActivatedHardPointEndEvent(Object, FunctionName) end

---@param Object UObject
---@param FunctionName string
function UHardPointManagerComponent:BindHardPointSwitchConfigEndEvent(Object, FunctionName) end
