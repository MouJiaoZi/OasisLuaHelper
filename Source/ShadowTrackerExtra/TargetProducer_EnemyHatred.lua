---@meta

---@class UTargetProducer_EnemyHatred: UTargetProducer
---@field UpdateHatredEnemiesInterval number
---@field LineTraceSelfOffset FVector
---@field LineTraceTargetOffset FVector
---@field bContainInVisibleTarget boolean
local UTargetProducer_EnemyHatred = {}

---@param Target AActor
---@param DamageValue number
function UTargetProducer_EnemyHatred:AddHatredValueOfDamage(Target, DamageValue) end

---@param InTarget AActor
---@param InIsBVisibility boolean
---@return number
function UTargetProducer_EnemyHatred:CalculateHatredValueOfBasic(InTarget, InIsBVisibility) end

---@param InDamage number
---@param InDamageEvent FDamageEvent
---@param EventInstigator AController
---@param InDamageCauser AActor
---@return number
function UTargetProducer_EnemyHatred:CalculateHatredValueOfDamage(InDamage, InDamageEvent, EventInstigator, InDamageCauser) end

---@param InTarget AActor
---@return boolean
function UTargetProducer_EnemyHatred:CheckVisibility(InTarget) end

---@param InTarget AActor
---@return boolean
function UTargetProducer_EnemyHatred:CheckEnemyIsValid(InTarget) end

---@param InDamage number
---@param InDamageEvent FDamageEvent
---@param EventInstigator AController
---@param InDamageCauser AActor
function UTargetProducer_EnemyHatred:OnTakeDamage(InDamage, InDamageEvent, EventInstigator, InDamageCauser) end
