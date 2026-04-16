---@meta

---@class EPESkillLaunchProjectileDir
---@field E_PESKILL_LaunchProjectileDir_SelfForward number @//*UGC* 抛体正前方
---@field E_PESKILL_LaunchProjectileDir_SelectDirection number @//*UGC* 朝选中的方向
---@field E_PESKILL_LaunchProjectileDir_SelectTargets number @//*UGC* 朝选中目标
---@field E_PESKILL_LaunchProjectileDir_SelectTransform number @//*UGC* 朝选中位置
---@field E_PESKILL_LaunchProjectileDir_ClientWeaponAimTarget number @//*UGC* 客户端枪械瞄准目标朝向
---@field E_PESKILL_LaunchProjectileDir_ClientWeaponDirection number @//*UGC* 客户端枪械朝向
EPESkillLaunchProjectileDir = {}


---@class FPESkillLaunchParams
---@field bOverrideSpeedConfig boolean
---@field Speed FFloatGetter
---@field GravityScale FFloatGetter
---@field bOverrideDamageConfig boolean
---@field DamageValueWrapper FGameMagnitudeWrapper
---@field DamageTypeData FRestrictedDamageTypeData
FPESkillLaunchParams = {}


---@class FPESkillCacheMuzzleLaunchParam
---@field MuzzlePos FVector
---@field TargetAimPos FVector
FPESkillCacheMuzzleLaunchParam = {}


---@class UPESkillTask_LaunchProjectile: UPESkillTaskPeriod
---@field ProjectileClass AUniversalProjectileCore
---@field Dir EPESkillLaunchProjectileDir
---@field AttachPos FMeshSocketSelector
---@field LaunchStartPos FPESkillTransformOffset
---@field LaunchParams FPESkillLaunchParams
---@field RotatorMin FRotator
---@field RotatorMax FRotator
---@field MoveDirectionRandomAngleLimit number
---@field SpawnLocationRandomRange FVector
---@field ProjectileCount FIntGetter
---@field CacheClientMuzzlePos FVector
---@field CacheClientShootDir FVector
---@field ClientDataVerifyConfig FPersistEffectSkillClientDataVerifyConfig
---@field ProjectileList FArraySetter
---@field SavedSocketName string
---@field SocketAnimCurveProxy FMontageSocketAnimCurveGeneralProxy_PETaskComm
---@field SplineIndicator FPESkillIndicator_Spline
---@field CacheMuzzleLaunchParamList ULuaArrayHelper<FPESkillCacheMuzzleLaunchParam>
---@field ProjectileActors ULuaArrayHelper<AActor>
local UPESkillTask_LaunchProjectile = {}

---@param MuzzlePos FVector
---@param TargetAimPos FVector
function UPESkillTask_LaunchProjectile:RPC_Server_NotifyClientShootWeaponMuzzlePosAndTargetAimPos(MuzzlePos, TargetAimPos) end
