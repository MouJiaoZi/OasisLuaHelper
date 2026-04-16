---@meta

---@class UTakeDamageOverrideComponent: UActorComponent, IObjectPoolInterface, ILocalCalculationVariableSupportInterface
---@field LocalCalculationVariableOpCaches ULuaArrayHelper<FLocalCalculationVariableOpCache>
local UTakeDamageOverrideComponent = {}

---@param FinalDamage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@param ExFinalDamage number
---@param IsHeadShot boolean
---@param DamageHitPosition number
---@param TakeDamageParams FTakeDamageParams
---@return number
function UTakeDamageOverrideComponent:OnTakeDamageModify(FinalDamage, DamageEvent, EventInstigator, DamageCauser, ExFinalDamage, IsHeadShot, DamageHitPosition, TakeDamageParams) end

---@param Damage number
---@param DamageCauser AActor
---@param BulletHitInfo FBulletHitInfoUploadData
---@return number
function UTakeDamageOverrideComponent:OnBulletHitDamageModify(Damage, DamageCauser, BulletHitInfo) end

---@param AmmoBreakthrough number
---@param DamageCauser AActor
---@param BulletHitInfo FBulletHitInfoUploadData
---@return number
function UTakeDamageOverrideComponent:OnBulletHitBreakthroughModify(AmmoBreakthrough, DamageCauser, BulletHitInfo) end

---@param DamageCauser AActor
---@param InBulletHitInfo FBulletHitInfoUploadData
---@param OutBulletHitInfo FBulletHitInfoUploadData
function UTakeDamageOverrideComponent:OnBulletHitDataModify(DamageCauser, InBulletHitInfo, OutBulletHitInfo) end

---@param ReduceDurability number
---@param DamageEvent FDamageEvent
---@param DamageCauser AActor
---@param BodyDurabilityName string
---@return number
function UTakeDamageOverrideComponent:OnBodyPartDurabilityModify(ReduceDurability, DamageEvent, DamageCauser, BodyDurabilityName) end

---@param Victim AActor
---@param Damage number
---@param DamageTypeCDO UDamageType
---@param InstigatedBy AController
---@param DamageCauser AActor
---@param DamageTypeID number
---@return number
function UTakeDamageOverrideComponent:OnFinalDamageModify(Victim, Damage, DamageTypeCDO, InstigatedBy, DamageCauser, DamageTypeID) end

---@param Context FGameMagnitudeContext
---@param bConsiderAIPlayer boolean
function UTakeDamageOverrideComponent:ReloadLocalCalculationVariables(Context, bConsiderAIPlayer) end

function UTakeDamageOverrideComponent:ResetLocalCalculationVariables() end
