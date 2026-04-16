---@meta

---@class UCharacterAvatarActionEffects: UAvatarActionEffectsBase
local UCharacterAvatarActionEffects = {}

---@param bSound boolean
---@param bParticle boolean
---@param InSocket string
function UCharacterAvatarActionEffects:DoAction(bSound, bParticle, InSocket) end

---@param bSound boolean
---@param bParticle boolean
---@param bEffecting boolean
function UCharacterAvatarActionEffects:ReDoAction(bSound, bParticle, bEffecting) end

---@return boolean
function UCharacterAvatarActionEffects:CanDoAction() end

---@param InSocket string
function UCharacterAvatarActionEffects:PlayEffect(InSocket) end

function UCharacterAvatarActionEffects:PlaySound() end
