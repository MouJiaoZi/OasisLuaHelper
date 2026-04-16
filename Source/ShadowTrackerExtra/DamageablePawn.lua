---@meta

---@class ADamageablePawn: APawn, IDamageableInterface
local ADamageablePawn = {}

function ADamageablePawn:GetTargetDamageRateMap() end

---@param InTargetDamageRateMap ULuaMapHelper<EDamageableGameObjectType, number>
function ADamageablePawn:SetTargetDamageRateMap(InTargetDamageRateMap) end

---@param DamageEvent FDamageEvent
---@param Attacker AActor
---@return number
function ADamageablePawn:CPP_CalcFinalDamageRate(DamageEvent, Attacker) end

---@param DamageEvent FDamageEvent
---@param Attacker AActor
---@return number
function ADamageablePawn:BP_CalcFinalDamageRate(DamageEvent, Attacker) end

---@param DamageEvent FDamageEvent
---@return number
function ADamageablePawn:CPP_GetDamageRateFromDamageEvent(DamageEvent) end

---@param DamageEvent FDamageEvent
---@return number
function ADamageablePawn:BP_GetDamageRateFromDamageEvent(DamageEvent) end

---@param DamageEvent FDamageEvent
---@return number
function ADamageablePawn:CPP_GetAdditionaAbsoluteDamageFromDamageEvent(DamageEvent) end

---@param DamageEvent FDamageEvent
---@return number
function ADamageablePawn:BP_GetAdditionaAbsoluteDamageFromDamageEvent(DamageEvent) end

---@param Target AActor
---@return number
function ADamageablePawn:CPP_GetDamageRateByTarget(Target) end

---@param Target AActor
---@return number
function ADamageablePawn:BP_GetDamageRateByTarget(Target) end

function ADamageablePawn:CPP_GetDamageableGameObjectType() end

function ADamageablePawn:BP_GetDamageableGameObjectType() end

---@param DamageAmount number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@return number
function ADamageablePawn:CPP_PreTakeDamage(DamageAmount, DamageEvent, EventInstigator, DamageCauser) end

---@param DamageAmount number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@return number
function ADamageablePawn:BP_PreTakeDamage(DamageAmount, DamageEvent, EventInstigator, DamageCauser) end

---@return boolean
function ADamageablePawn:CPP_GetCanBePicked() end

---@return boolean
function ADamageablePawn:BP_GetCanBePicked() end

---@param Center FVector
---@param Extent FVector
---@param Rotation FRotator
---@param distance number
---@return boolean
function ADamageablePawn:CPP_GetPickingBoundingBox(Center, Extent, Rotation, distance) end

---@param Center FVector
---@param Extent FVector
---@param Rotation FRotator
---@param distance number
---@return boolean
function ADamageablePawn:BP_GetPickingBoundingBox(Center, Extent, Rotation, distance) end

---@return string
function ADamageablePawn:CPP_GetBulletBlockComponentTag() end

---@return string
function ADamageablePawn:BP_GetBulletBlockComponentTag() end

---@param Comp UPrimitiveComponent
---@return boolean
function ADamageablePawn:CPP_JudgeComponentBlockBullet(Comp) end

---@param Comp UPrimitiveComponent
---@return boolean
function ADamageablePawn:BP_JudgeComponentBlockBullet(Comp) end

---@param DamageTypeClass UDamageType
---@param BaseMomentun number
---@return number
function ADamageablePawn:CPP_CalcFinalMomentum(DamageTypeClass, BaseMomentun) end

---@param DamageTypeClass UDamageType
---@param BaseMomentun number
---@return number
function ADamageablePawn:BP_CalcFinalMomentum(DamageTypeClass, BaseMomentun) end
