---@meta

---子弹命中效果基类
---@class UBulletHitActionEffectBase: UActionEffect
---@field bUseShootVerifyOnHitPlayer boolean
local UBulletHitActionEffectBase = {}

---@param HitRet FHitResult
---@param HitActor AActor
---@param HitComp UPrimitiveComponent
---@param ShootWeapon ASTExtraShootWeapon
function UBulletHitActionEffectBase:ApplyBulletHitEffect(HitRet, HitActor, HitComp, ShootWeapon) end

---@param HitData FBulletHitInfoUploadData
---@param ShootWeapon ASTExtraShootWeapon
function UBulletHitActionEffectBase:HandleBulletOnImpactToServer(HitData, ShootWeapon) end

---@param HitData FBulletHitInfoUploadData
---@param ShootWeapon ASTExtraShootWeapon
function UBulletHitActionEffectBase:HandleBulletOnImpactToServerCommon(HitData, ShootWeapon) end

---@param HitData FBulletHitInfoUploadData
---@param ShootWeapon ASTExtraShootWeapon
function UBulletHitActionEffectBase:HandleBulletOnImpactToServerPostApplyDamage(HitData, ShootWeapon) end
