---@meta

---@class UParticleModuleSubUV: UParticleModuleSubUVBase
---@field SubImageIndex any @The index of the sub-image that should be used for the particle. The value is retrieved using the RelativeTime of the particles.
---@field bUseRealTime number @If true, use *real* time when updating the image index. The movie will update regardless of the slomo settings of the game.
local UParticleModuleSubUV = {}
