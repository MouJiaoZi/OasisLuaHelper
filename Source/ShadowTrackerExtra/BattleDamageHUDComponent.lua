---@meta

---@class UBattleDamageHUDComponent: UActorComponent
---@field ActorHealthAttrName string
local UBattleDamageHUDComponent = {}

---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@return number
function UBattleDamageHUDComponent:ProcessCharacterTakeDamageHUD(Damage, DamageEvent, EventInstigator, DamageCauser) end

---@param Damage number
---@param DamageFlags number
---@param DamageType number
---@param InstigatorController AController
function UBattleDamageHUDComponent:HandleShowDamageNumber(Damage, DamageFlags, DamageType, InstigatorController) end
