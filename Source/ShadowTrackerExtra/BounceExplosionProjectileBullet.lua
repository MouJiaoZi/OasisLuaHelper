---@meta

---@class IBounceExplosionProjectileDamageInterface
IBounceExplosionProjectileDamageInterface = {}

---@return boolean
function IBounceExplosionProjectileDamageInterface:CheckHitAndExplodeDirectly() end


---榴弹
---@class ABounceExplosionProjectileBullet: AExplosionProjectileBullet
---@field ExplosionTimeAfterFirstBounce number
---@field EnableExplosionAfterLastBounce boolean
---@field ExplosionTimeAfterLasttBounce number
---@field ExplosionTimeAfterEnetrWater number
---@field bExplosionImmediately boolean
---@field bHasEnterWater boolean
---@field bHasBounced boolean
---@field bHasImpacted boolean
local ABounceExplosionProjectileBullet = {}

---@param ImpactResult FHitResult
---@param ImpactVelocity FVector
function ABounceExplosionProjectileBullet:OnBounce(ImpactResult, ImpactVelocity) end

---@param ImpactResult FHitResult
---@param ImpactVelocity FVector
function ABounceExplosionProjectileBullet:BPOnBounce(ImpactResult, ImpactVelocity) end

---@param speed number
---@param Trans FTransform
---@param InOwningWeapon AActor
---@param InInstigator AActor
---@param _ShootID number
function ABounceExplosionProjectileBullet:RPC_Multicast_StartLaunch(speed, Trans, InOwningWeapon, InInstigator, _ShootID) end

---@param _ImpactResult FHitResult
function ABounceExplosionProjectileBullet:OnImpact(_ImpactResult) end

---@param _ImpactResult FHitResult
function ABounceExplosionProjectileBullet:OnImpactEnd(_ImpactResult) end

---@param UploadData FBulletHitInfoUploadData
---@param Hit FHitResult
function ABounceExplosionProjectileBullet:MakeBulletHitInfoUploadData(UploadData, Hit) end
