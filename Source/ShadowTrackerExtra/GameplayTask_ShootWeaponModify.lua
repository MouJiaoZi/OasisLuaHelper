---@meta

---@class FGameplayTask_ShootWeaponModify_Data
---@field AvailableShootNum number
---@field BulletEffectConfig FWeaponVisualBulletClientModeConfig
---@field bShowSimulateDelayOBBulletTrack boolean
---@field bShowSimulateLocalSimOBBulletTrack boolean
---@field bShowSimulateOBBulletTrailEffect boolean
---@field bBulletIgnoreTeammate boolean
---@field GameplayTagList ULuaArrayHelper<FGameplayTag>
---@field bModifyMuzzleEffect boolean
---@field MuzzleEffectConfig FShootWeaponMuzzleEffectConfig
---@field bModifyBulletHitEffect boolean
FGameplayTask_ShootWeaponModify_Data = {}


---@class UGameplayTask_ShootWeaponModify: UUAEGameplayTask
---@field ShootBulletDelegate FShootWeaponModifyTaskDelegate
---@field BulletHitDelegate FShootWeaponModifyTaskDelegate
---@field ServerHandleBulletHit FShootWeaponModifyTaskDelegate
---@field ServerHandleBulletHitPostDamage FShootWeaponModifyTaskDelegate
---@field ModifyData FGameplayTask_ShootWeaponModify_Data
---@field CacheOldBulletEffectConfig FWeaponVisualBulletClientModeConfig
---@field bCacheOldBulletIgnoreTeammate boolean
---@field bCacheOldForceEnableLocalControllOBBulletTrack boolean
---@field bCacheOldForceEnableSimulateDelayOBBulletTrack boolean
---@field bCacheOldForceEnableLocalSimulateOBBulletTrack boolean
---@field bCacheOldEnableSimulateBulletTrail boolean
---@field bCacheOldbDisableGlobalBulletTrackEffect boolean
---@field CacheOldMuzzleEffectConfig FShootWeaponMuzzleEffectConfig
local UGameplayTask_ShootWeaponModify = {}

---@param Bullet ASTExtraShootWeaponBulletBase
function UGameplayTask_ShootWeaponModify:HandleLaunchBullet(Bullet) end

---@param Bullet ASTExtraShootWeaponBulletBase
---@param HitData FBulletHitInfoUploadData
---@param ShootHitData FLocalShootHitData
function UGameplayTask_ShootWeaponModify:HandleBulletHit(Bullet, HitData, ShootHitData) end

---@param HitData FBulletHitInfoUploadData
---@param InShootWeapon ASTExtraShootWeapon
function UGameplayTask_ShootWeaponModify:HandleServerReceiveBulletHitData(HitData, InShootWeapon) end

---@param HitData FBulletHitInfoUploadData
---@param InShootWeapon ASTExtraShootWeapon
function UGameplayTask_ShootWeaponModify:HandleServerReceiveBulletHitDataPostDamage(HitData, InShootWeapon) end

function UGameplayTask_ShootWeaponModify:HandleFireShot() end
