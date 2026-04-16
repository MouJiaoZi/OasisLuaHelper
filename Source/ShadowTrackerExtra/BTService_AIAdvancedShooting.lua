---@meta

---@class FAIDifficultyShootingConfig
---@field WeaponShotType EAIWeaponShootType
---@field DeviationScale number
---@field RandomShootFreqRange FVector2D
FAIDifficultyShootingConfig = {}


---假人和僵尸都可以使用，有命中率规则
---@class UBTService_AIAdvancedShooting: UBTService
---@field WeaponShotType EAIWeaponShootType
---@field DeviationScale number
---@field ShootGunDeviationAngle number
---@field RandomShootFreqRange FVector2D
---@field ReloadBlackBoardKey FBlackboardKeySelector
---@field bSetCanSeeTargetFlag boolean
---@field bUseDifficultyLevel boolean
---@field DifficultyShootingCfg ULuaMapHelper<number, FAIDifficultyShootingConfig>
---@field bCheckShootingAngle boolean
---@field TolerateShootingAngle number
---@field bUseTargetEnemyCfg boolean
---@field ShootUpDownRange FVector2D
---@field TargetWidth number
---@field ShootLeftRightRange FVector2D
---@field ShootLeftRightRangeDistance FVector2D
---@field ShootTargetSpeedRange FVector2D
---@field ShootTargetDistanceRangeDueToSpeed FVector2D
---@field HitRateLerpSpeed number
---@field bUseLerpHitRate boolean
---@field bMissOnPurpose boolean
---@field ScaleForHitPart number
---@field bStopShootingWhenCannotSee boolean
---@field bEnableShootProbabilityCompensate boolean
---@field bEnableRandomRangeShootTargetLoc boolean
---@field InRandomRangeTowardsOwnerOffset number
---@field InMinRandomShootTargetLocRadius number
---@field InMaxRandomShootTargetLocRadius number
---@field InMaxRandomShootTargetLocIterTimes number
---@field InRandomShootTargetLocFindFloorQueryMobilityType EOverrideQueryMobilityType
---@field InRandomShootTargetLocFindFloorChannel ECollisionChannel
---@field InRandomShootTargetLocFloorHeightOffset number
---@field InValidRandomShootTargetLocZOffset number
---@field InRandomShootTargetTraceDownZ number
---@field bShowDebugLine boolean
---@field LineLifeTime number
---@field bDrawDebugShootingArea boolean
---@field DebugShootingAreaLineWidth number
---@field DebugShootingTargetSphereRadius number
local UBTService_AIAdvancedShooting = {}

---@param Weapon ASTExtraWeapon
function UBTService_AIAdvancedShooting:UpdateShootTargetLocOnCharacterShoot(Weapon) end
