---@meta

---@class UParticleModuleSubUVMovie: UParticleModuleSubUV
---@field bUseEmitterTime number @If true, use the emitter time to look up the frame rate. If false (default), use the particle relative time.
---@field FrameRate any @The frame rate the SubUV images should be 'flipped' thru at.
---@field StartingFrame number @The starting image index for the SubUV (1 = the first frame). Assumes order of Left->Right, Top->Bottom If greater than the last frame, it will clamp to the last one. If 0, then randomly selects a starting frame.
---@field bUseSmallImageIndex number @If true, ImageIndex will be limited in 0~NumFrames. If false (default), ImageIndex will increase all the time.
local UParticleModuleSubUVMovie = {}
