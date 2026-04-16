---@meta

---@class UBTTask_CalculateCurveRotationParams: UBTTaskNode
---@field InWarpingTargetBlackboardKey any
---@field InRotateToTargetBlackboardKey any
---@field bUseDataAssetRotationConfig boolean
---@field InCurveRotationAdaptDataAssetClass UCurveRotationAdaptDataAsset
---@field InRotationAssetConfig ULuaArrayHelper<FCurveRotationAdaptConfig>
---@field InCurveRootMotionMinAngle number
---@field OutRotationCurveNameBlackboardKey any
---@field OutRotationAngleBlackboardKey any
local UBTTask_CalculateCurveRotationParams = {}
