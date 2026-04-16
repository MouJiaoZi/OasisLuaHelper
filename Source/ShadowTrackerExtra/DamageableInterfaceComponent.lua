---@meta

---@class UDamageableInterfaceComponent: UActorComponent, IObjectPoolInterface, IDamageableInterface
local UDamageableInterfaceComponent = {}

---@param DamageAmount number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@return number
function UDamageableInterfaceComponent:PreTakeDamage_BP(DamageAmount, DamageEvent, EventInstigator, DamageCauser) end

---@param FinalDamage number
---@param Hit FHitResult
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@param DamageEventFlags EDamageEventFlags
function UDamageableInterfaceComponent:PostTakeDamage_BP(FinalDamage, Hit, DamageEvent, EventInstigator, DamageCauser, DamageEventFlags) end

---@param DamageEvent FDamageEvent
---@param Attacker AActor
---@return number
function UDamageableInterfaceComponent:CalcFinalDamageRate_BP(DamageEvent, Attacker) end

---@param DamageEvent FDamageEvent
---@return number
function UDamageableInterfaceComponent:GetDamageRateFromDamageEvent_BP(DamageEvent) end

---@param DamageEvent FDamageEvent
---@return number
function UDamageableInterfaceComponent:GetAdditionaAbsoluteDamageFromDamageEvent_BP(DamageEvent) end

---@param Target AActor
---@return number
function UDamageableInterfaceComponent:GetDamageRateByTarget_BP(Target) end

function UDamageableInterfaceComponent:GetDamageableGameObjectType_BP() end

---@param DamageTypeClass UDamageType
---@param BaseMomentun number
---@return number
function UDamageableInterfaceComponent:CalcFinalMomentum_BP(DamageTypeClass, BaseMomentun) end

---@return number
function UDamageableInterfaceComponent:GetBeVehicleDamageSpeed_BP() end

---@return number
function UDamageableInterfaceComponent:GetBeVehicleDamagedCoefficient_BP() end

---@param Origin FVector
---@param Radius number
---@param Strength number
---@param DamageTypeClass UDamageType
---@param Falloff ERadialImpulseFalloff
---@param bVelChange boolean
function UDamageableInterfaceComponent:AddRadialImpulse_BP(Origin, Radius, Strength, DamageTypeClass, Falloff, bVelChange) end
