---@meta

---@class FVehicleSkillCastDelegate : ULuaMulticastDelegate
FVehicleSkillCastDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Code: EVehicleSkillErrorCode) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleSkillCastDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Code EVehicleSkillErrorCode
function FVehicleSkillCastDelegate:Broadcast(Code) end


---@class FVehicleSkillCDTimerUpdateDelegate : ULuaSingleDelegate
FVehicleSkillCDTimerUpdateDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleSkillCDTimerUpdateDelegate:Bind(Callback, Obj) end

---执行委托
function FVehicleSkillCDTimerUpdateDelegate:Execute() end


---@class FVehicleSkillEndDelegate : ULuaSingleDelegate
FVehicleSkillEndDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleSkillEndDelegate:Bind(Callback, Obj) end

---执行委托
function FVehicleSkillEndDelegate:Execute() end


---@class UVehicleSimpleSkillComponent: UVehicleSkillBaseComponent
---@field SkillCD number
---@field SkillLast number
---@field SkillCDUpdateUIInterval number
---@field SetActiveInRspFunction boolean
---@field OnCastVehicleSkill FVehicleSkillCastDelegate
---@field OnVehicleSkillEnd FVehicleSkillEndDelegate
---@field OnVehicleClientSkillCDTimerUpdate FVehicleSkillCDTimerUpdateDelegate
---@field SkillCDTimer number
---@field SkillLastTimer number
---@field IsSkillActive boolean
local UVehicleSimpleSkillComponent = {}

---@return boolean
function UVehicleSimpleSkillComponent:TryCastVehicleSkill() end

function UVehicleSimpleSkillComponent:ReqCastVehicleSkill() end

---@param Code EVehicleSkillErrorCode
function UVehicleSimpleSkillComponent:RspCastVehicleSkill(Code) end

---@param Code EVehicleSkillErrorCode
function UVehicleSimpleSkillComponent:DoCastVehicleSkill(Code) end

function UVehicleSimpleSkillComponent:OnRep_SkillCDTimer() end

function UVehicleSimpleSkillComponent:OnRep_IsSkillActive() end
