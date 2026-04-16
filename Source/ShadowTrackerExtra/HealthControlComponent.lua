---@meta

---@class FHealthControlRecoverSetting
---@field RecoverDelayWhenLeaveFightState number
---@field HealthRecoverBuffName string
FHealthControlRecoverSetting = {}


---@class UHealthControlComponent: UActorComponent
---@field RecoverDelayWhenLeaveFightState number
---@field SeriousWoundThreshold number
---@field HealthRecoverBuffName string
---@field SeriousWoundApperanceBuffName string
---@field PlayerTakeDamageBuffName string
---@field FightState ULuaArrayHelper<EPawnState>
---@field HealthControlRecoverSettings ULuaMapHelper<ASTExtraBaseCharacter, FHealthControlRecoverSetting>
---@field LeaveFightStateDelay number
local UHealthControlComponent = {}

---@return boolean
function UHealthControlComponent:IsOwnerPawnInFight() end

---@param NewState EPawnState
function UHealthControlComponent:HandlePlayerStateChanged(NewState) end

---@param Character ASTExtraBaseCharacter
---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
function UHealthControlComponent:HandleCharacterTakeDamage(Character, Damage, DamageEvent, EventInstigator, DamageCauser) end

function UHealthControlComponent:PlayerTakeDamage() end

---@param bNewLowHealth boolean
function UHealthControlComponent:PlayerLowHealth(bNewLowHealth) end

---@param Comp UActorComponent
---@param bReset boolean
function UHealthControlComponent:HandleComponentActivated(Comp, bReset) end

---@param Comp UActorComponent
function UHealthControlComponent:HandleComponentDeactivated(Comp) end

---@param PossessedPawn APawn
function UHealthControlComponent:HandlePlayerControllerPossessedPawn(PossessedPawn) end
