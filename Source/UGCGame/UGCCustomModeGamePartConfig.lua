---@meta

---@class UUGCCustomModeGamePartConfig: UUGCGamePartConfig
---@field PitchConfigMap ULuaMapHelper<EExtraWeaponUIType, FPitchConfig>
---@field DefaultConfig FPitchConfig
---@field HighThrowTPPOffset FVector
---@field IgnoreDist number
---@field bEnableDebugDraw boolean
---@field CustomRot FRotator
---@field CustomDist number
---@field CustomFOV number
---@field MuzzleLocType EMuzzleLocType
---@field MuzzleRotType EMuzzleRotType
---@field HitMode EHitModeType
---@field ShootTargetLength number
---@field SubSightLinePath UUGCCustomModeSightLine
---@field bIsAllowADS boolean
---@field bOverrideTouchInterface boolean
---@field CrossHairDist number
---@field bDisplayAtTargetLocation boolean
local UUGCCustomModeGamePartConfig = {}

---@return string
function UUGCCustomModeGamePartConfig:GetSubSightLinePath() end
