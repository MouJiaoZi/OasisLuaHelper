---@meta

---@class AMechaRewardWall: AActivityBaseActor
---@field bCanDamagePicked boolean
---@field bIsBroken boolean
local AMechaRewardWall = {}

---@param DamageAmount number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@return number
function AMechaRewardWall:BP_PreTakeDamage(DamageAmount, DamageEvent, EventInstigator, DamageCauser) end

---@param DamageAmount number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@return number
function AMechaRewardWall:BP_TakeDamage(DamageAmount, DamageEvent, EventInstigator, DamageCauser) end

---@return boolean
function AMechaRewardWall:IsBroken() end
