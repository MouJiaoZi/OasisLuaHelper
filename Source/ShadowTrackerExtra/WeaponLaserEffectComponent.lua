---@meta

---武器激光射线组件，区别于激光瞄准镜配件，轻量级，简单方便耦合低
---@class UWeaponLaserEffectComponent: UWeaponLogicBaseComponent
---@field LaserLineParticleTemplate UParticleSystem
---@field LaserImpactParticleTemplate UParticleSystem
---@field bLaserAttachToWeaponMesh boolean
---@field LaserAttachCompTag string
---@field LaserAttachSocket string
---@field LineTraceInterval number
---@field LaserLength number
---@field LaserColor FLinearColor
---@field LaserLengthParamName string
---@field LaserColorParamName string
---@field bUseSpecifyEndTarget boolean
---@field bUseDefaultDirWhenSpecifyEndTargetDirRotTooFar boolean
---@field ThresholdAngleCheckForDefaultDirAndSpecifyEndTargetDir number
---@field CurSpecifyEndTarget FVector
---@field bInitLaserFinished boolean
---@field bIsInitingLaser boolean
local UWeaponLaserEffectComponent = {}

function UWeaponLaserEffectComponent:StartLoadAssetAsyncFinished() end

---@param LastState EFreshWeaponStateType
---@param NewState EFreshWeaponStateType
function UWeaponLaserEffectComponent:OnOwnerWeaponChangeState(LastState, NewState) end
