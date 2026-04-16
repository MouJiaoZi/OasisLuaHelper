---@meta

---射击温度火热组件
---@class UBurstTemperatureComponent: UActorComponent
---@field MaxTemperature number
---@field MaxTemperatureCoolDownCD number
---@field bStopFireWhenMaxTemperature boolean
---@field bClearMaxTemperatureWhenCoolDownCDOver boolean
---@field TemperatureEffectMaterialParamRange FVector2D
---@field bEnableClientAddTemperature boolean
---@field TemperatureTRPCName string
---@field bUseTemperatureAKEvent boolean
---@field TemperatureAKEventPlayingID number
---@field OnReachMaxTemperatureDelegate FOnReachMaxTemperatureDelegate
---@field OnLeaveMaxTemperatureDelegate FOnLeaveMaxTemperatureDelegate
---@field PostUpdateTempertatureEffect FOnPostUpdateTempertatureEffect
---@field CurTemperature number
---@field CurCoolDownCD number
---@field bHasLeaveMaxTemperature boolean
---@field bHasReachMaxTemperature boolean
---@field LastTickTime number
local UBurstTemperatureComponent = {}

---@param TargetWeapon ASTExtraShootWeapon
function UBurstTemperatureComponent:Init(TargetWeapon) end

---@param OwnerActor AActor
function UBurstTemperatureComponent:HandleGetOwnerActor(OwnerActor) end

function UBurstTemperatureComponent:OnWeaponShoot() end

---@return boolean
function UBurstTemperatureComponent:CheckShootState() end

---@param OldTemperature number
function UBurstTemperatureComponent:OnRep_CurTemperature(OldTemperature) end

function UBurstTemperatureComponent:OnRep_LeaveMaxTemperature() end

---@return boolean
function UBurstTemperatureComponent:CheckShootEnviroment() end

function UBurstTemperatureComponent:OnReachTemperature() end

function UBurstTemperatureComponent:OnLeaveTemperature() end

---@param NewValue number
function UBurstTemperatureComponent:SetTemperature(NewValue) end

---@param InMaxTemperature number
function UBurstTemperatureComponent:SetMaxTemperatureServer(InMaxTemperature) end

---@param InMaxTemperatureCoolDownCD number
function UBurstTemperatureComponent:SetMaxTemperatureCoolDownCDServer(InMaxTemperatureCoolDownCD) end

---@return number
function UBurstTemperatureComponent:GetCurUpTemperatureVal() end

---@return number
function UBurstTemperatureComponent:GetCurDownTemperatureVal() end

function UBurstTemperatureComponent:OnPostTemperatureChange() end
