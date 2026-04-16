---@meta

---@class AAmbientSound: AActor
local AAmbientSound = {}

---@param FadeInDuration number
---@param FadeVolumeLevel number
function AAmbientSound:FadeIn(FadeInDuration, FadeVolumeLevel) end

---@param FadeOutDuration number
---@param FadeVolumeLevel number
function AAmbientSound:FadeOut(FadeOutDuration, FadeVolumeLevel) end

---@param AdjustVolumeDuration number
---@param AdjustVolumeLevel number
function AAmbientSound:AdjustVolume(AdjustVolumeDuration, AdjustVolumeLevel) end

---@param StartTime number
function AAmbientSound:Play(StartTime) end

function AAmbientSound:Stop() end
