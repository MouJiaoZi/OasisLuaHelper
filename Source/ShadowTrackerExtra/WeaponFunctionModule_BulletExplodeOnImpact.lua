---@meta

---子弹命中爆炸功能模块
---@class UWeaponFunctionModule_BulletExplodeOnImpact: UWeaponFunctionModuleBase
---@field ExplosionConfig FExplosionFinderWrapper
---@field ExtraSimulateCount number
---@field DebugImpactPoint FVector
---@field DebugShootMomentMuzzlePos FVector
---@field DebugShootDir FRotator
---@field DebugFlyTime number
---@field bEnableDebugParam boolean
local UWeaponFunctionModule_BulletExplodeOnImpact = {}

---@param HitData FBulletHitInfoUploadData
---@param ShootWeapon ASTExtraShootWeapon
function UWeaponFunctionModule_BulletExplodeOnImpact:HandleBulletOnImpactToServer(HitData, ShootWeapon) end

---@param HitData FBulletHitInfoUploadData
---@param ShootWeapon ASTExtraShootWeapon
function UWeaponFunctionModule_BulletExplodeOnImpact:HandleBulletOnImpactToServerCommon(HitData, ShootWeapon) end

---@param HitData FBulletHitInfoUploadData
---@param ShootWeapon ASTExtraShootWeapon
function UWeaponFunctionModule_BulletExplodeOnImpact:HandleBulletOnImpactToServerPostApplyDamage(HitData, ShootWeapon) end

---@param HitData FBulletHitInfoUploadData
---@param SurfaceType number
---@param ShootWeapon ASTExtraShootWeapon
---@param ImpactVelocity FVector
function UWeaponFunctionModule_BulletExplodeOnImpact:BPHandleBulletOnImpactToServer(HitData, SurfaceType, ShootWeapon, ImpactVelocity) end

---@param CheatManager UPlayerAntiCheatManager
---@param VerifyRet EHuntBowVerifyResult
function UWeaponFunctionModule_BulletExplodeOnImpact:RecordVerifyFailed(CheatManager, VerifyRet) end
