---@meta

---@class UBTService_MobaHero_AdvancedShooting: UBTService
---@field bUseDefaultConfig boolean
---@field bUseDifficultyLevel boolean
---@field ShootTarget FBlackboardKeySelector
---@field ReloadBlackBoardKey FBlackboardKeySelector
---@field bEnableHpHitRateFixed boolean
---@field bEnableDistHitRateFixed boolean
---@field WeaponShotType EAIWeaponShootType
---@field DeviationScale number
---@field RandomShootFreqRange FVector2D
---@field bCheckShootingAngle boolean
---@field TolerateShootingAngle number
---@field ShootUpDownRange FVector2D
---@field ShootLeftRightRange FVector2D
---@field ShootLeftRightRangeDistance FVector2D
---@field ShootTargetSpeedRange FVector2D
---@field ShootTargetDistanceRangeDueToSpeed FVector2D
---@field HitRateLerpSpeed number
---@field bUseLerpHitRate boolean
---@field bStopShootingWhenCannotSee boolean
---@field bEnableShootProbabilityCompensate boolean
---@field bShowDebugLine boolean
---@field LineLifeTime number
---@field bDrawDebugShootingArea boolean
---@field DebugShootingAreaLineWidth number
---@field DebugShootingTargetSphereRadius number
local UBTService_MobaHero_AdvancedShooting = {}

---@param Weapon ASTExtraWeapon
function UBTService_MobaHero_AdvancedShooting:UpdateShootTargetLocOnCharacterShoot(Weapon) end
