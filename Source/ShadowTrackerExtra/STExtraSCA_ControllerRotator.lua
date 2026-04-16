---@meta

---@class USTExtraSCA_ControllerRotator: USightActionNode
---@field bNotHitIgnoreSet boolean
---@field bActiveRotator boolean
---@field bDisableRotator boolean
---@field bIsFirstViewScope boolean
---@field bCacheIsTPPToFirstScope boolean
---@field DoRotationFrameCount number
---@field fUpdateSpringArmDeltaTime number
---@field bIsTemplateScope boolean
---@field bDebugDrawLine boolean
---@field NeedWaitCacheFlagCount number
---@field CurrentWaitCacheFlagCount number
---@field fMoveVelocitySizeCheck number
---@field fMinRotationDistance number
---@field fSetRotationDistance number
---@field fSetRotationNotTraceDistance number
---@field fTPPSpringArmOffsetStand number
---@field fTPPSpringArmOffsetCrouch number
---@field fTPPSpringArmOffsetProne number
---@field fFirstViewSpringArmHighStand number
---@field fFirstViewSpringArmHighCrouch number
---@field fFirstViewSpringArmHighProne number
---@field TppLeftRightPeekOffset FVector2D
---@field FirstLeftPeekOffset FVector
---@field FirstRightPeekOffset FVector
---@field OffsetMaxValue FRotator
---@field TraceRotatioChannel ECollisionChannel
---@field LocationOffsetWeaponAttachName string
---@field LocationAutoAimCenterFlagName string
---@field RotatorOffsetBaseBoneName string
---@field RotatorOffsetBaseBoneFlagName string
---@field RotatorOffsetBaseBoneFlagPreName string
---@field RotatorOffsetBaseBoneFlagPostName string
---@field DisableRotatorOffsetName string
---@field bFallingDisable boolean
---@field DisableStates ULuaArrayHelper<EPawnState>
local USTExtraSCA_ControllerRotator = {}

function USTExtraSCA_ControllerRotator:HandleCompleteParallelAnimationEvaluationEnd() end

function USTExtraSCA_ControllerRotator:SetPawnViewRotation() end

---@param NodeOwner USTextraSightScopeMgr
---@param OutDestinHitPoint FVector
---@param OutDiatance number
---@return boolean
function USTExtraSCA_ControllerRotator:CalculateDestinPoint(NodeOwner, OutDestinHitPoint, OutDiatance) end

---@param NodeOwner USTextraSightScopeMgr
---@param InNeedUpdateSpringArm boolean
---@param InDestinHitPoint FVector
---@param InDistance number
---@return boolean
function USTExtraSCA_ControllerRotator:SetControllerRotator(NodeOwner, InNeedUpdateSpringArm, InDestinHitPoint, InDistance) end

---@param NodeOwner USTextraSightScopeMgr
---@return FVector
function USTExtraSCA_ControllerRotator:GetDestinCameraOffset(NodeOwner) end

---@param NodeOwner USTextraSightScopeMgr
---@return FVector
function USTExtraSCA_ControllerRotator:GetSourceCameraOffset(NodeOwner) end
