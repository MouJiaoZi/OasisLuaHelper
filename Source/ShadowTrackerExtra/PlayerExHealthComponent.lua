---@meta

---@class UPlayerExHealthComponent: UActorComponent, IObjectPoolInterface
---@field ExHealth number
---@field MaxExHealth number
---@field bRecoverHealth boolean
---@field WaitRecoverTime number
---@field RecoverValue number
local UPlayerExHealthComponent = {}

---@param PossessedPawn APawn
function UPlayerExHealthComponent:OnPossessPawn(PossessedPawn) end

---@param PossessedPawn APawn
function UPlayerExHealthComponent:OnUnPossessPawn(PossessedPawn) end

---@param FinalDamage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@param ExFinalDamage number
---@return number
function UPlayerExHealthComponent:OnTakeDamageModify(FinalDamage, DamageEvent, EventInstigator, DamageCauser, ExFinalDamage) end

---@param FinalDamage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@param ExFinalDamage number
---@return number
function UPlayerExHealthComponent:OnExHealthEmpty(FinalDamage, DamageEvent, EventInstigator, DamageCauser, ExFinalDamage) end
