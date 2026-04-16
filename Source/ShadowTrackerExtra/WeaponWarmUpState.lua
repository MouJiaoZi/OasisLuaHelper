---@meta

---@class FWarmUpFinishAndStartFireDelegate : ULuaSingleDelegate
FWarmUpFinishAndStartFireDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FWarmUpFinishAndStartFireDelegate:Bind(Callback, Obj) end

---执行委托
function FWarmUpFinishAndStartFireDelegate:Execute() end


---@class UWeaponWarmUpState: UWeaponStateBase
---@field BarrelRotateAccSpeed number
---@field BarrelRotateDesSpeed number
---@field BarrelRotateMaxSpeed number
---@field CurBarrelRotateSpeed number
---@field CurBarrelRotateVal number
---@field OnWarmUpFinishAndStartFire FWarmUpFinishAndStartFireDelegate
---@field CurWarmUpTime number
---@field bIsWarming boolean
---@field bWarmUpFinished boolean
local UWeaponWarmUpState = {}

function UWeaponWarmUpState:HandleWarnUpEnd() end

function UWeaponWarmUpState:HandlePreWarmUp() end

function UWeaponWarmUpState:OnWarmUpEnd() end
