---@meta

---@class FCurveRotationAdaptConfig
---@field AngleRangeMin number
---@field AngleRangeMax number
---@field CurveName string
FCurveRotationAdaptConfig = {}


---@class UCurveRotationAdaptDataAsset: UDataAsset
---@field RotationAssetConfig ULuaArrayHelper<FCurveRotationAdaptConfig>
---@field CurveRootMotionMinAngle number
local UCurveRotationAdaptDataAsset = {}
