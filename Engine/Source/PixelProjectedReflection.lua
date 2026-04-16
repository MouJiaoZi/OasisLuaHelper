---@meta

---@class APixelProjectedReflectionHeightAdjustmentVolume: AVolume
---@field DestinationHeight number
---@field FadeTime number
local APixelProjectedReflectionHeightAdjustmentVolume = {}


---@class APixelProjectedReflectionVisibilityVolume: AVolume
---@field MaxDrawDistance number
local APixelProjectedReflectionVisibilityVolume = {}


---@class APixelProjectedReflection: ASceneCapture
---@field bShowPreviewPlane boolean
local APixelProjectedReflection = {}

---@param bEnable boolean
function APixelProjectedReflection:OnInterpToggle(bEnable) end
