---@meta

---@class FSTQuadrupedCharacterVaultRotationConfig
---@field AngleRangeMin number
---@field AngleRangeMax number
---@field CurveName string
FSTQuadrupedCharacterVaultRotationConfig = {}


---四足动物攀爬组件
---@class USTQuadrupedCharacterVaultComp: UPlayerVaultComponent
---@field bSetStartRotationWithCurveRootMotion boolean
---@field RotationCurveRootMotionAngleLimit FVector2D
---@field RotationConfigs ULuaArrayHelper<FSTQuadrupedCharacterVaultRotationConfig>
---@field bCalcVelocity boolean
---@field bEnableSlideAlongSurface boolean
---@field bNeedConstraintOnNavMesh boolean
---@field CurveRootMotionKeyName string
---@field bPauseFollowWhenStartVault boolean
---@field bResetMeshRelativeRotationWhenStartVault boolean
---@field EndValutSpeedMap ULuaMapHelper<string, number>
---@field bInRotationCurveRootMotion boolean
local USTQuadrupedCharacterVaultComp = {}

---@param dis number
---@param height number
---@param length number
---@param VaultKey string
---@param startPos FVector
---@param endPos FVector
---@param vaultRot FRotator
---@param checkActor AActor
---@param crossblockMaxFall number
---@param crossblockMaxDis number
---@param hitpoint FVector
---@param movedir FRotator
---@param bCheckDynamicBlock boolean
function USTQuadrupedCharacterVaultComp:RealStartVault(dis, height, length, VaultKey, startPos, endPos, vaultRot, checkActor, crossblockMaxFall, crossblockMaxDis, hitpoint, movedir, bCheckDynamicBlock) end

function USTQuadrupedCharacterVaultComp:OnVaultEnd() end

---@param Character ACharacter
---@param PrevMovementMode EMovementMode
---@param PreviousCustomMode number
function USTQuadrupedCharacterVaultComp:OnMovementModeChange(Character, PrevMovementMode, PreviousCustomMode) end
