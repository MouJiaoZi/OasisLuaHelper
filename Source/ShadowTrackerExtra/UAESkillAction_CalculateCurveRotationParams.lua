---@meta

---@class UUAESkillAction_CalculateCurveRotationParams: UUAESkillAction
---@field bDoCalculateOnlyOnServer boolean
---@field bUseDataAssetRotationConfig boolean
---@field CurveRotationAdaptDataAssetClass UCurveRotationAdaptDataAsset
---@field bOpenCurveRootMotionMinAngleOverride boolean
---@field CurveRootMotionMinAngleOverrideValue number
---@field RotationAssetConfig ULuaArrayHelper<FCurveRotationAdaptConfig>
---@field CurveRootMotionMinAngle number
---@field InRotateTargetLocationKey FUAEBlackboardKeySelector
---@field InRotateTargetLocationKeyType EUAEBlackboardType
---@field OutNeedRotateKey FUAEBlackboardKeySelector
---@field OutRotationCurveNameKey FUAEBlackboardKeySelector
---@field OutRotationAngleKey FUAEBlackboardKeySelector
local UUAESkillAction_CalculateCurveRotationParams = {}
