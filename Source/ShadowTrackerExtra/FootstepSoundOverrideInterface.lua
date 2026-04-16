---@meta

---@class FFootstepSoundOverrideData
---@field bOverride boolean
FFootstepSoundOverrideData = {}


---@class IFootstepSoundOverrideInterface
IFootstepSoundOverrideInterface = {}

---@param FootstepSoundType EFootStepState
---@return FFootstepSoundOverrideData
function IFootstepSoundOverrideInterface:GetOverrideFootstepSound(FootstepSoundType) end

---@return FFootstepSoundOverrideData
function IFootstepSoundOverrideInterface:GetOverrideFallLandingSound() end
