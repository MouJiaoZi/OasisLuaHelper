---@meta

---@class FVehicleRecoverSkillRunSuccessDelegate : ULuaMulticastDelegate
FVehicleRecoverSkillRunSuccessDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Vehicle: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleRecoverSkillRunSuccessDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Vehicle AActor
function FVehicleRecoverSkillRunSuccessDelegate:Broadcast(Vehicle) end


---@class FVehicleRecoverSkillCDTimerUpdate : ULuaSingleDelegate
FVehicleRecoverSkillCDTimerUpdate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleRecoverSkillCDTimerUpdate:Bind(Callback, Obj) end

---执行委托
function FVehicleRecoverSkillCDTimerUpdate:Execute() end


---@class UVehicleRecoverSkillComponent: UVehicleSkillBaseComponent
---@field bIsHealByRatio boolean
---@field HealHPRate number
---@field HealHP number
---@field HealDuration number
---@field HealInterval number
---@field SkillCD number
---@field ShowCDTolerance number
---@field ReportHealSuccessTaskID number
---@field ValidHealTimes number
---@field HealTimer number
---@field bCanHeal boolean
---@field bIsHealing boolean
---@field RunSkillCount number
---@field RealRecoverHP number
---@field SkillCDTimer number
---@field OnRecoverSkillRunSuccess FVehicleRecoverSkillRunSuccessDelegate
---@field OnVehicleRecoverSkillCDTimerUpdate FVehicleRecoverSkillCDTimerUpdate
local UVehicleRecoverSkillComponent = {}

---使用恢复载具血量的技能
---@return boolean
function UVehicleRecoverSkillComponent:TryHealVehicle() end

---ServerRPC, 在服务端调用恢复载具血量技能
function UVehicleRecoverSkillComponent:ReqHealVehicle() end

---NetMulticast，在服务端完成加血操作后反馈给客户端
---@param Code EVehicleSkillErrorCode
function UVehicleRecoverSkillComponent:RspHealVehicle(Code) end

---客户端执行的具体操作
---@param Code EVehicleSkillErrorCode
function UVehicleRecoverSkillComponent:DoRspHealVehicle(Code) end

function UVehicleRecoverSkillComponent:OnRep_SkillCDTimer() end

function UVehicleRecoverSkillComponent:OnRep_CanHeal() end

---每秒调用的加血函数
---@param InHealHP number
function UVehicleRecoverSkillComponent:HealVehicle(InHealHP) end

---载具状态变化代理
---@param InVehicleHealthState ESTExtraVehicleHealthState
function UVehicleRecoverSkillComponent:HandleOnVehicleHealthStateChanged(InVehicleHealthState) end
