---@meta

---Specifies which shader generated offsets should included in the world position (displacement/WPO etc.)
---@class EWorldPositionIncludedOffsets
---@field WPT_Default number @Absolute world position with all material shader offsets applied
---@field WPT_ExcludeAllShaderOffsets number @Absolute world position with no material shader offsets applied
---@field WPT_CameraRelative number @Camera relative world position with all material shader offsets applied
---@field WPT_CameraRelativeNoOffsets number @Camera relative world position with no material shader offsets applied
---@field WPT_MAX number
EWorldPositionIncludedOffsets = {}


---@class UMaterialExpressionWorldPosition: UMaterialExpression
---@field WorldPositionShaderOffset EWorldPositionIncludedOffsets
local UMaterialExpressionWorldPosition = {}
