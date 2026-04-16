---@meta

---@class UMechaDamageOptimizeHandler: UObject
---@field ActorTag_BossMonster string
---@field ActorTag_EliteMonster string
---@field ActorTag_NormalMonster string
---@field UpdateEnergyInterval number
---@field AttributeContainer_ChargeScale_BossKill FGameAttributeContainer
---@field AttributeContainer_ChargeScale_CauseDamage FGameAttributeContainer
---@field AttributeContainer_ChargeScale_KillEliteMonster FGameAttributeContainer
---@field AttributeContainer_ChargeScale_KillNormalMonster FGameAttributeContainer
---@field CausePercentageDamagedEnergyAdded number
---@field CauseDamagedEnergyAdded number
---@field KillEliteMonsterEnergyAdded number
---@field KillNormalMonsterEnergyAdded number
---@field UpdateEnergyTimerHandle FTimerHandle
local UMechaDamageOptimizeHandler = {}

---@param PlayerController ASTExtraPlayerController
---@param bIsListenEvent boolean
function UMechaDamageOptimizeHandler:SetupInstigateDamageEvent(PlayerController, bIsListenEvent) end

---@param EnergyAdded number
function UMechaDamageOptimizeHandler:OnEnergyAdded(EnergyAdded) end

function UMechaDamageOptimizeHandler:UpdateEnergy() end

---@param Damage number
---@param DamageType UDamageType
---@param EventInstigator AController
---@param DamagedActor AActor
---@param DamageCauser AActor
---@param DamageFlags EDamageEventFlags
function UMechaDamageOptimizeHandler:OnInstigateDamageEvent(Damage, DamageType, EventInstigator, DamagedActor, DamageCauser, DamageFlags) end
