---@meta

---A CameraActor is a camera viewpoint that can be placed in a level.
---@class ACameraActor: AActor
---@field AutoActivateForPlayer EAutoReceiveInput @Specifies which player controller, if any, should automatically use this Camera when the controller is active.
---@field bConstrainAspectRatio_DEPRECATED number
---@field AspectRatio_DEPRECATED number
---@field FOVAngle_DEPRECATED number
---@field PostProcessBlendWeight_DEPRECATED number
---@field PostProcessSettings_DEPRECATED any
local ACameraActor = {}

---Returns index of the player for whom we auto-activate, or INDEX_NONE (-1) if disabled.
---@return number
function ACameraActor:GetAutoActivatePlayerIndex() end
