---@meta

---@class FDeadWeaponProjectileMeshData
---@field CacheWeapon ASTExtraWeapon
FDeadWeaponProjectileMeshData = {}


---角色死亡等时，头盔和武器的飞落表现
---@class UFC_EquipmentPeformWhenDead: UFeatureCustomModule
---@field DisableDeadPerformModeType ULuaArrayHelper<EGameModeType>
---@field HelmetProjectileClassSoftPath AEliteProjectile
---@field HelmetProjectileLaunchVelocity number
---@field HelmetLaunchDirOffset FVector
---@field HelmetLaunchPosOffset FVector
---@field WeaponProjectileClassSoftPath AEliteProjectile
---@field WeaponLaunchDirOffset FVector
---@field WeaponProjectileLaunchRandomDirAngle number
---@field WeaponProjectileLaunchRandomRollRotateRate FVector2D
---@field WeaponProjectileLifeSpan number
---@field WeaponLaunchPosOffset FVector
---@field WeaponProjectileLaunchVelocity number
---@field CacheHelmetMeshStr string
---@field CacheHelmetLaunchDir FVector
---@field CacheHelmetLaunchTransform FTransform
---@field WeaponSlotToCacheMeshData ULuaMapHelper<ESurviveWeaponPropSlot, FDeadWeaponProjectileMeshData>
local UFC_EquipmentPeformWhenDead = {}

---@param DestoryBrokenPosition EAvatarDamagePosition
---@param DamageCauser AActor
function UFC_EquipmentPeformWhenDead:HandleOnHelmetDestroy(DestoryBrokenPosition, DamageCauser) end

---@param SlotType number
---@param AvatarPath string
function UFC_EquipmentPeformWhenDead:OnAvatarEquippedWithPath(SlotType, AvatarPath) end

---@param LoadedObject UObject
function UFC_EquipmentPeformWhenDead:OnLoadedHelmetMesh(LoadedObject) end

---@param DeadCharacter ASTExtraCharacter
---@param Killer AController
---@param DamageCauser AActor
---@param KillingHitInfo FHitResult
---@param KillingHitImpulseDir FVector
---@param DamageType number
---@param DamageTypeClass USTExtraDamageType
---@param IsHeadShotDamage boolean
---@param Context FGameMagnitudeContext
function UFC_EquipmentPeformWhenDead:OnPawnDeath(DeadCharacter, Killer, DamageCauser, KillingHitInfo, KillingHitImpulseDir, DamageType, DamageTypeClass, IsHeadShotDamage, Context) end

---@param Slot ESurviveWeaponPropSlot
function UFC_EquipmentPeformWhenDead:HandleChangeInventoryWeapon(Slot) end

---@param AsyncLoadID number
---@param LoadEventFrom UAvatarComponent
function UFC_EquipmentPeformWhenDead:OnWeaponAsyncLoadingFinished(AsyncLoadID, LoadEventFrom) end
