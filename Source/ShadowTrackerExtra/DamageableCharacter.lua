---@meta

---@class ADamageableCharacter: ACharacter, IDamageableInterface
local ADamageableCharacter = {}

function ADamageableCharacter:GetTargetDamageRateMap() end

---@param InTargetDamageRateMap ULuaMapHelper<EDamageableGameObjectType, number>
function ADamageableCharacter:SetTargetDamageRateMap(InTargetDamageRateMap) end

---@param DamageEvent FDamageEvent
---@param Attacker AActor
---@return number
function ADamageableCharacter:CPP_CalcFinalDamageRate(DamageEvent, Attacker) end

---@param DamageEvent FDamageEvent
---@param Attacker AActor
---@return number
function ADamageableCharacter:BP_CalcFinalDamageRate(DamageEvent, Attacker) end

---@param DamageEvent FDamageEvent
---@return number
function ADamageableCharacter:CPP_GetDamageRateFromDamageEvent(DamageEvent) end

---@param DamageEvent FDamageEvent
---@return number
function ADamageableCharacter:BP_GetDamageRateFromDamageEvent(DamageEvent) end

---@param DamageEvent FDamageEvent
---@return number
function ADamageableCharacter:CPP_GetAdditionaAbsoluteDamageFromDamageEvent(DamageEvent) end

---@param DamageEvent FDamageEvent
---@return number
function ADamageableCharacter:BP_GetAdditionaAbsoluteDamageFromDamageEvent(DamageEvent) end

---@param Target AActor
---@return number
function ADamageableCharacter:CPP_GetDamageRateByTarget(Target) end

---@param Target AActor
---@return number
function ADamageableCharacter:BP_GetDamageRateByTarget(Target) end

function ADamageableCharacter:CPP_GetDamageableGameObjectType() end

function ADamageableCharacter:BP_GetDamageableGameObjectType() end

---@param DamageAmount number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@return number
function ADamageableCharacter:CPP_PreTakeDamage(DamageAmount, DamageEvent, EventInstigator, DamageCauser) end

---@param DamageAmount number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@return number
function ADamageableCharacter:BP_PreTakeDamage(DamageAmount, DamageEvent, EventInstigator, DamageCauser) end

---@return boolean
function ADamageableCharacter:CPP_GetCanBePicked() end

---@return boolean
function ADamageableCharacter:BP_GetCanBePicked() end

---@param Center FVector
---@param Extent FVector
---@param Rotation FRotator
---@param distance number
---@return boolean
function ADamageableCharacter:CPP_GetPickingBoundingBox(Center, Extent, Rotation, distance) end

---@param Center FVector
---@param Extent FVector
---@param Rotation FRotator
---@param distance number
---@return boolean
function ADamageableCharacter:BP_GetPickingBoundingBox(Center, Extent, Rotation, distance) end

---@return string
function ADamageableCharacter:CPP_GetBulletBlockComponentTag() end

---@return string
function ADamageableCharacter:BP_GetBulletBlockComponentTag() end

---@param Comp UPrimitiveComponent
---@return boolean
function ADamageableCharacter:CPP_JudgeComponentBlockBullet(Comp) end

---@param Comp UPrimitiveComponent
---@return boolean
function ADamageableCharacter:BP_JudgeComponentBlockBullet(Comp) end

---@param DamageTypeClass UDamageType
---@param BaseMomentun number
---@return number
function ADamageableCharacter:CPP_CalcFinalMomentum(DamageTypeClass, BaseMomentun) end

---@param DamageTypeClass UDamageType
---@param BaseMomentun number
---@return number
function ADamageableCharacter:BP_CalcFinalMomentum(DamageTypeClass, BaseMomentun) end
