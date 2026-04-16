---@meta

---@class FDamageReductionRule
---@field DamageTypeEnums ULuaArrayHelper<EDamageType>
---@field DamageTypeClasses ULuaArrayHelper<UDamageType>
---@field DamageCauserClasses ULuaArrayHelper<UClass>
---@field DamageReductionValue number
---@field bIsMultiplication boolean
---@field bBasedOnBasicValues boolean
FDamageReductionRule = {}


---@class UDamageReductionComponent: UActorComponent
---@field DamageReductionMap ULuaMapHelper<number, FDamageReductionRule>
---@field DamageReductionKey number
local UDamageReductionComponent = {}

---@param Rule FDamageReductionRule
---@param Key number
---@return number
function UDamageReductionComponent:AddDamageReductionData(Rule, Key) end

---@param Key number
function UDamageReductionComponent:RemoveDamageReductionData(Key) end

---@param UntreatedDamage number
---@param DamageEvent FDamageEvent
---@param DamageCauser AActor
---@return number
function UDamageReductionComponent:DamageReductionByAction(UntreatedDamage, DamageEvent, DamageCauser) end
