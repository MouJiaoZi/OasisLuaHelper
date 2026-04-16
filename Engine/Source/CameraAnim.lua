---@meta

---A predefined animation to be played on a camera
---@class UCameraAnim: UObject
---@field AnimLength number @Length, in seconds.
---@field BoundingBox FBox @AABB in local space.
---@field bRelativeToInitialTransform number @If true, assume all transform keys are intended be offsets from the start of the animation. This allows the animation to be authored at any world location and be applied as a delta to the camera. If false, assume all transform keys are authored relative to the world origin. Positions will be directly applied as deltas to the camera.
---@field bRelativeToInitialFOV number @If true, assume all FOV keys are intended be offsets from the start of the animation. If false, assume all FOV keys are authored relative to the current FOV of the camera at the start of the animation.
---@field BaseFOV number @The base FOV that all FOV keys are relative to.
---@field BasePostProcessSettings FPostProcessSettings @Default PP settings to put on the animated camera. For modifying PP without keyframes.
---@field BasePostProcessBlendWeight number @Default PP blend weight to put on the animated camera. For modifying PP without keyframes.
local UCameraAnim = {}
