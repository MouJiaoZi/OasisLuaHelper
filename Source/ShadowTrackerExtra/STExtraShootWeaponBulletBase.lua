---@meta

---@class ASTExtraShootWeaponBulletBase: AActor
---@field bLaunchWithGravity boolean
---@field MaxNoGravityRange number
---@field LaunchGravityScale number
---@field PunctureTimes number
---@field ImpactActorTemplate ASTEShootWeaponBulletImpactEffect
---@field bShowNormalTailFXImpactInfo boolean
---@field bDrawImpactNormal boolean
---@field RootScale FVector
---@field bHasFlyPastEarSound boolean
---@field ShootDir FVector
---@field bIgnoreCahracterRootCompImpact boolean
---@field ShowBulletEffectMinDistance number
---@field OutRangeDefaultImpactLength number
---@field bApplyCurVehicleSpeed boolean
---@field bAutoDestroySimulateBullet boolean
---@field DamageCameraShakeConfig USTDamageCameraShake
---@field bAddHitCountOnce boolean
---@field bAddHitCountIgnoreInstigator boolean
---@field DelayDestroyBulletTime number
---@field bDestroyOnImpactNoCache number
---@field SameTargetMaxImpactNum number
---@field DelayDestroyBulletTimeForBulletTrailEffect number
---@field FunctionModuleTemplateList ULuaArrayHelper<UBulletFunctionModuleBase>
---@field FunctionModuleList ULuaArrayHelper<UBulletFunctionModuleBase>
---@field bHasInitFunctionModule boolean
---@field BulletHitEffectList ULuaArrayHelper<FBulletHitEffectWrapper>
---@field OnRecycleBullet FOnRecycleBulletDelegate
---@field ShootMomentMuzzlePos FVector
---@field MaxShootDistance number
---@field BulletIsActive boolean
---@field BulletFlyTime number
---@field AmmoID number
---@field bHasAddHitCount boolean
---@field CurCustomBulletBreakthroughDataMap ULuaMapHelper<string, FCustomBulletBreakthroughConfig>
---@field ImpactDataCacheMap ULuaMapHelper<AActor, number>
---@field OnResetBullet FResetBulletDelegate
---@field OnBulletImpact FOnImpactDelegate
---@field OnLaunchBullet FLaunchBulletDelegate
---@field CurPunctureTimes number
---@field BeamTailFXCompOriginDisLoc FVector
---@field CurImpactDamage number
---@field LaunchSpeed number
---@field ClientShootHitTime number
---@field BulletDownDistance number
---@field BulletBornPos FVector
---@field CacheWeaponFireShotMultiCostBulletsNum number
---@field ClientShootStartTimeReal number @<世界的实际时间，不会受到真机app切换等操作的影响
---@field OriginLoc FVector
---@field NeedUploadData boolean
---@field ShootingRecoil FVector_NetQuantize
---@field bCacheFireShotNotCostBullet boolean
---@field MuzzleFloorHeight number
---@field bShootPlayerIsAI boolean
---@field ClientShootStartTime number
---@field CameraLocation FVector @相机位置
---@field CameraRotate FRotator @相机旋转
---@field PawnRotate FRotator @角色朝向，这个目前不传，不需要验证
---@field BackTrace FVector2D @逆向投影的结果
---@field DeviationRandomSeed number
---@field ShootDeviation number
---@field ShootTracePoint FVector
---@field CameraShootTracePoint FVector
---@field bIsFireShotHandFold boolean
---@field bIsFireShotPitch boolean
---@field bEnableWheelCollisionBlock boolean
---@field DamageRate number
---@field bIsFirstImpact boolean
---@field bHasBreakthroughWater boolean
---@field mfv_LastPosition FVector @上一帧的位置
---@field mf_BulletMoved number @子弹的统计移动距离
---@field bHasTriggerShowBulletEffect boolean
---@field DelayDestroyBulletHandle FTimerHandle
---@field bHasDelayDestroyBullet boolean
---@field LastLoc FVector
---@field IngoreSameGroupBulletCollision boolean
---@field OnPostFillBulletHitUploadDataDelegate FOnPostFillBulletHitUploadData
---@field bNeedUploadHitData boolean
---@field GameplayTagList ULuaArrayHelper<FGameplayTag>
local ASTExtraShootWeaponBulletBase = {}

---@param speed number
---@param InTrans FTransform
---@param InOwningWeapon AActor
---@param InInstigator AActor
---@param OutTrans FTransform
function ASTExtraShootWeaponBulletBase:LaunchBP(speed, InTrans, InOwningWeapon, InInstigator, OutTrans) end

---@param speed number
---@param InTrans FTransform
---@param InOwningWeapon AActor
---@param InInstigator AActor
function ASTExtraShootWeaponBulletBase:PostLaunchBP(speed, InTrans, InOwningWeapon, InInstigator) end

---@param ShootWeapon ASTExtraShootWeapon
---@param ShootID number
---@return number
function ASTExtraShootWeaponBulletBase:GetLaunchGravityScale(ShootWeapon, ShootID) end

---@param InShootWeapon ASTExtraShootWeapon
---@param InShootID number
---@return number
function ASTExtraShootWeaponBulletBase:GetFinalGravityScale(InShootWeapon, InShootID) end

---@return number
function ASTExtraShootWeaponBulletBase:GetMaxBulletFlySpeed() end

---@return number
function ASTExtraShootWeaponBulletBase:GetCurBulletFlySpeed() end

function ASTExtraShootWeaponBulletBase:GetOwnerRole() end

function ASTExtraShootWeaponBulletBase:ReceiveLaunchBullet() end

---@param ShootWeapon ASTExtraShootWeapon
---@param ShootID number
---@return number
function ASTExtraShootWeaponBulletBase:GetMaxNoGravityRange(ShootWeapon, ShootID) end

function ASTExtraShootWeaponBulletBase:OnDestoryBullet() end

---@param _ImpactResult FHitResult
function ASTExtraShootWeaponBulletBase:OnImpact(_ImpactResult) end

---@param _ImpactResult FHitResult
function ASTExtraShootWeaponBulletBase:OnImpactEnd(_ImpactResult) end

---@param bLinetraceCheckPro boolean
---@param HitRes FHitResult
---@param TraceStart FVector
---@param TraceEnd FVector
---@return boolean
function ASTExtraShootWeaponBulletBase:BPModifyClientBulletLinetraceCheckResult(bLinetraceCheckPro, HitRes, TraceStart, TraceEnd) end

function ASTExtraShootWeaponBulletBase:BPPostClientBulletLinetraceCheck() end

function ASTExtraShootWeaponBulletBase:BPOnDelayDestoryBullet() end

function ASTExtraShootWeaponBulletBase:DelayDestoryBulletFinished() end

---@param Data FBulletHitInfoUploadData
function ASTExtraShootWeaponBulletBase:PostFillBulletHitUploadData(Data) end

function ASTExtraShootWeaponBulletBase:OnShowBulletEffect() end
