---@meta

---@class FAnimatedMaterialParameter_Scalar
---@field MaterialParameterName string
FAnimatedMaterialParameter_Scalar = {}


---@class FAnimatedMaterialParameter_Vector
---@field MaterialParameterName string
FAnimatedMaterialParameter_Vector = {}


---@class FSTBuffAction_PlaySCAppearance_Data
FSTBuffAction_PlaySCAppearance_Data = {}


---@class USTBuffAction_PlaySCAppearance: USTExtraBuffAction
---@field bNeedCheckViewSelf boolean
---@field bNeedCheckDeviceQuality boolean
---@field NotAllowDeviceQualityLevel ULuaArrayHelper<number>
---@field AppearanceKeyString string
---@field AppearanceMaterial UMaterialInterface
---@field LifeSpan number
---@field MaterialParameters_Scalar ULuaArrayHelper<FAnimatedMaterialParameter_Scalar>
---@field MaterialParameters_Vector ULuaArrayHelper<FAnimatedMaterialParameter_Vector>
---@field InitialPlayedDurationFloatKeySelector FUAEBlackboardKeySelector
local USTBuffAction_PlaySCAppearance = {}
