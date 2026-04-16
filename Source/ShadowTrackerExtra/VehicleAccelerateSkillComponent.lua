---@meta

---@class EVehicleAccelerateSkillState
---@field CanUse number
---@field Accelerateing number
---@field CD number
EVehicleAccelerateSkillState = {}


---@class FOnClientDoAcc : ULuaSingleDelegate
FOnClientDoAcc = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnClientDoAcc:Bind(Callback, Obj) end

---执行委托
function FOnClientDoAcc:Execute() end


---@class UVehicleAccelerateSkillComponent: UVehicleSkillBaseComponent
---@field OnClientAcc FOnClientDoAcc
---@field SkillState EVehicleAccelerateSkillState
---@field fMaxSpeed number
---@field fAccSize number
---@field fAccTime number
---@field AccEffectName string
---@field cdTime number
---@field AllowAccForwardInput number
---@field NormalCameraLength number
---@field AccCameraLength number
---@field CameraSwitchTime number
local UVehicleAccelerateSkillComponent = {}

function UVehicleAccelerateSkillComponent:ReqStartVehicleSkill() end

function UVehicleAccelerateSkillComponent:OnRep_AccSkillStateChange() end

---@param fDeltaTime number
function UVehicleAccelerateSkillComponent:DoAccelerate(fDeltaTime) end

---@param fDeltaTime number
function UVehicleAccelerateSkillComponent:UpdateCameraSpringArm(fDeltaTime) end
