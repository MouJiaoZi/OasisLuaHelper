---@meta

---@class UAvatarBehaviorFeature_FlyBoard: UAvatarBehaviorFeature
---@field ParticlesMapBehavior FFlyBoardBehaviorParam
local UAvatarBehaviorFeature_FlyBoard = {}

function UAvatarBehaviorFeature_FlyBoard:TickBehavior() end

---@return boolean
function UAvatarBehaviorFeature_FlyBoard:IsNeedTick() end

function UAvatarBehaviorFeature_FlyBoard:TryReplaceParticle() end
