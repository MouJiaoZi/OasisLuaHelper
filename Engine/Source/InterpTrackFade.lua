---@meta

---@class UInterpTrackFade: UInterpTrackFloatBase
---@field bPersistFade number @InterpTrackFade Special float property track that controls camera fading over time. Should live in a Director group.
---@field bFadeAudio number @True to set master audio volume along with the visual fade.
---@field FadeColor FLinearColor @Color to fade to.
local UInterpTrackFade = {}
