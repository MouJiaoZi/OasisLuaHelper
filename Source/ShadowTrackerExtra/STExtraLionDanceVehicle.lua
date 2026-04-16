---@meta

---@class EWalkSTATE
---@field None number
---@field Normal number
---@field BreakOut number
EWalkSTATE = {}


---@class FLionDanceEnergyChangedDelegate : ULuaMulticastDelegate
FLionDanceEnergyChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Energy: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLionDanceEnergyChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Energy number
function FLionDanceEnergyChangedDelegate:Broadcast(Energy) end


---@class FLionDanceBreakOut : ULuaSingleDelegate
FLionDanceBreakOut = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLionDanceBreakOut:Bind(Callback, Obj) end

---执行委托
function FLionDanceBreakOut:Execute() end


---@class ASTExtraLionDanceVehicle: ASTExtraMyriapodVehicle
---@field STCurWalkState EWalkSTATE
---@field VehicleHPChangedDelegate FVehicleHPChangedDelegate
---@field fhitDamageByVehicleRate number
---@field CurEnergyValue number
---@field consume number
---@field recover number
---@field EnergyTickInterval number
---@field fJumpHeightRate number
---@field fMaxSpeedRate number
---@field fAccRate number
---@field fHPRate number
---@field BreakOutEvent FLionDanceBreakOut
---@field LionDanceEnergyChangedDelegate FLionDanceEnergyChangedDelegate
---@field NormalCameraLength number
---@field BreakOutCameraLength number
---@field CameraSwitchTime number
---@field BreakOutName string
---@field RecycleName string
---@field LionDanceEngineLoop FSTExtraVehicleSfxLoop
---@field LionDanceBreakOutLoop FSTExtraVehicleSfxLoop
local ASTExtraLionDanceVehicle = {}

function ASTExtraLionDanceVehicle:OnJumped() end

---@param bEnable boolean
function ASTExtraLionDanceVehicle:BreakOut(bEnable) end

---@param bEnable boolean
function ASTExtraLionDanceVehicle:ServerBreakOut(bEnable) end

function ASTExtraLionDanceVehicle:ServerRecycleVehicle() end

function ASTExtraLionDanceVehicle:ClientRecycleVehicle() end

function ASTExtraLionDanceVehicle:RspClientBreakOut() end

---@param Energy number
function ASTExtraLionDanceVehicle:SetEnergy(Energy) end

function ASTExtraLionDanceVehicle:OnRep_Energy() end
