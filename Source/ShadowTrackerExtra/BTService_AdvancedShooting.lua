---@meta

---@class FDifficultyShootingConfig
---@field WeaponShotType EAIWeaponShootType
---@field DeviationScale number
---@field RandomShootFreqRange FVector2D
FDifficultyShootingConfig = {}


---@class UBTService_AdvancedShooting: UBTService
---@field bIsEnableUpdateShootTargetLoc boolean
---@field WeaponShotType EAIWeaponShootType
---@field DeviationScale number
---@field RandomShootFreqRange FVector2D
---@field ReloadBlackBoardKey FBlackboardKeySelector
---@field bSetCanSeeTargetFlag boolean
---@field bUseDifficultyLevel boolean
---@field DifficultyShootingCfg ULuaMapHelper<number, FDifficultyShootingConfig>
---@field bCheckShootingAngle boolean
---@field TolerateShootingAngle number
---@field bDrawDebugShootingArea boolean
---@field DebugShootingAreaLineWidth number
---@field DebugShootingTargetSphereRadius number
---@field bUseBBTarget boolean
---@field ShootTarget FBlackboardKeySelector
---@field AIShootingCenterOffset FVector
local UBTService_AdvancedShooting = {}

---@param Weapon ASTExtraWeapon
function UBTService_AdvancedShooting:UpdateShootTargetLocOnCharacterShoot(Weapon) end
