---@meta

---@class UWeaponCompanionRule_31: UWeaponsCompanionVoiceRule
---@field TickInterval number
---@field TickTime number
---@field MaxDistance number
---@field NeedDotValue number
---@field NeedKeepTime number
---@field KeepTime number
local UWeaponCompanionRule_31 = {}

function UWeaponCompanionRule_31:OnInitCpp() end

function UWeaponCompanionRule_31:OnRemoveCpp() end

---@param eventType EWeaponsCompanionVoiceEvent
---@param eventParam UObject
function UWeaponCompanionRule_31:OnTringgerEventCpp(eventType, eventParam) end

---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
function UWeaponCompanionRule_31:OnTakeDamage(Damage, DamageEvent, EventInstigator, DamageCauser) end
