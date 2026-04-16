---@meta

---@class ADamageableActor: AUAERegionActor, IDamageableInterface, IManagedActorInterface
local ADamageableActor = {}

function ADamageableActor:GetTargetDamageRateMap() end

---@param InTargetDamageRateMap ULuaMapHelper<EDamageableGameObjectType, number>
function ADamageableActor:SetTargetDamageRateMap(InTargetDamageRateMap) end

---@param DamageEvent FDamageEvent
---@param Attacker AActor
---@return number
function ADamageableActor:CPP_CalcFinalDamageRate(DamageEvent, Attacker) end

---@param DamageEvent FDamageEvent
---@param Attacker AActor
---@return number
function ADamageableActor:BP_CalcFinalDamageRate(DamageEvent, Attacker) end

---@param DamageEvent FDamageEvent
---@return number
function ADamageableActor:CPP_GetDamageRateFromDamageEvent(DamageEvent) end

---@param DamageEvent FDamageEvent
---@return number
function ADamageableActor:BP_GetDamageRateFromDamageEvent(DamageEvent) end

---@param DamageEvent FDamageEvent
---@return number
function ADamageableActor:CPP_GetAdditionaAbsoluteDamageFromDamageEvent(DamageEvent) end

---@param DamageEvent FDamageEvent
---@return number
function ADamageableActor:BP_GetAdditionaAbsoluteDamageFromDamageEvent(DamageEvent) end

---@param Target AActor
---@return number
function ADamageableActor:CPP_GetDamageRateByTarget(Target) end

---@param Target AActor
---@return number
function ADamageableActor:BP_GetDamageRateByTarget(Target) end

function ADamageableActor:CPP_GetDamageableGameObjectType() end

function ADamageableActor:BP_GetDamageableGameObjectType() end

---@param DamageAmount number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@return number
function ADamageableActor:CPP_PreTakeDamage(DamageAmount, DamageEvent, EventInstigator, DamageCauser) end

---@param DamageAmount number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@return number
function ADamageableActor:BP_PreTakeDamage(DamageAmount, DamageEvent, EventInstigator, DamageCauser) end

---@param FinalDamage number
---@param Hit FHitResult
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@param DamageEventFlags EDamageEventFlags
function ADamageableActor:PostTakeDamage(FinalDamage, Hit, DamageEvent, EventInstigator, DamageCauser, DamageEventFlags) end

---@return boolean
function ADamageableActor:CPP_GetCanBePicked() end

---@return boolean
function ADamageableActor:BP_GetCanBePicked() end

---@param Center FVector
---@param Extent FVector
---@param Rotation FRotator
---@param distance number
---@return boolean
function ADamageableActor:CPP_GetPickingBoundingBox(Center, Extent, Rotation, distance) end

---@param Center FVector
---@param Extent FVector
---@param Rotation FRotator
---@param distance number
---@return boolean
function ADamageableActor:BP_GetPickingBoundingBox(Center, Extent, Rotation, distance) end

---@return string
function ADamageableActor:CPP_GetBulletBlockComponentTag() end

---@return string
function ADamageableActor:BP_GetBulletBlockComponentTag() end

---@return number
function ADamageableActor:BP_GetCurrentHP() end

---@return number
function ADamageableActor:BP_GetMaxHP() end

---@param Comp UPrimitiveComponent
---@return boolean
function ADamageableActor:CPP_JudgeComponentBlockBullet(Comp) end

---@param Comp UPrimitiveComponent
---@return boolean
function ADamageableActor:BP_JudgeComponentBlockBullet(Comp) end

---@param DamageTypeClass UDamageType
---@param BaseMomentun number
---@return number
function ADamageableActor:CPP_CalcFinalMomentum(DamageTypeClass, BaseMomentun) end

---@param DamageTypeClass UDamageType
---@param BaseMomentun number
---@return number
function ADamageableActor:BP_CalcFinalMomentum(DamageTypeClass, BaseMomentun) end

---@return number
function ADamageableActor:GetVehicleDamagedSpeed() end

---@return number
function ADamageableActor:GetVehicleDamagedCoefficient() end

---@return number
function ADamageableActor:GetDamageItemID() end
