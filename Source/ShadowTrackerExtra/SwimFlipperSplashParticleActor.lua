---@meta

---@class ASwimFlipperSplashParticleActor: AActor
---@field ShowSplashParticleMaxDepth number
---@field bMustNoneZSpeed boolean
local ASwimFlipperSplashParticleActor = {}

---@return boolean
function ASwimFlipperSplashParticleActor:IsNeedShowSplashParticle() end

function ASwimFlipperSplashParticleActor:UpdateSplashParticleVisibility() end
