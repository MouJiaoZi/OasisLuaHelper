---@meta

---@class UUTSkillAppearance_RomoveParticle: USTExtraBuffAction
---@field ParticleCompTagName string
---@field bPhaseFinishRemove boolean
---@field bUndoRemove boolean
---@field bKeepComp boolean
local UUTSkillAppearance_RomoveParticle = {}

---@return boolean
function UUTSkillAppearance_RomoveParticle:RealDoAction_Internal() end

function UUTSkillAppearance_RomoveParticle:UndoAction_Internal() end

function UUTSkillAppearance_RomoveParticle:Reset_Internal() end
