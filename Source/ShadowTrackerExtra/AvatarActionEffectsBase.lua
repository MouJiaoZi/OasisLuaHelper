---@meta

---@class UAvatarActionEffectsBase: UObject
---@field CurrentState number
---@field CurrentSlotID number
---@field bIsActive boolean
---@field bWhenLeaveCurrentStateCanBeInterrupted boolean
---@field TimerHandle FTimerHandle
---@field DelaySeconds number
---@field AKAudioID number
---@field ForceCancelActionDelayTime number
---@field ForceCancelActionTimerHandle FTimerHandle
---@field CurrentSocket string
local UAvatarActionEffectsBase = {}

---@param InAvatarActionEffectsManager UAvatarActionEffectsManager
---@param InSlotID number
---@param InWhenLeaveCurrentStateCanBeInterrupted number
---@param InDelaySeconds number
function UAvatarActionEffectsBase:Init(InAvatarActionEffectsManager, InSlotID, InWhenLeaveCurrentStateCanBeInterrupted, InDelaySeconds) end

---@param InCurrentType number
function UAvatarActionEffectsBase:SetCurrentState(InCurrentType) end

---@param bSound boolean
---@param bParticle boolean
---@param InSocket string
function UAvatarActionEffectsBase:DoAction(bSound, bParticle, InSocket) end

---@param bSound boolean
---@param bParticle boolean
---@param bEffecting boolean
function UAvatarActionEffectsBase:ReDoAction(bSound, bParticle, bEffecting) end

---@param bSound boolean
---@param bParticle boolean
function UAvatarActionEffectsBase:CancelAction(bSound, bParticle) end

---@param bSound boolean
---@param bParticle boolean
function UAvatarActionEffectsBase:DirectCancelAction(bSound, bParticle) end

---@return boolean
function UAvatarActionEffectsBase:CanDoAction() end

---@return boolean
function UAvatarActionEffectsBase:CanDirectCancelAction() end

function UAvatarActionEffectsBase:ForceCancelAction() end

---@param InIsActive boolean
function UAvatarActionEffectsBase:SetIsActive(InIsActive) end

---@param InSocket string
function UAvatarActionEffectsBase:PlayEffect(InSocket) end

function UAvatarActionEffectsBase:StopEffect() end

function UAvatarActionEffectsBase:PlaySound() end

function UAvatarActionEffectsBase:StopSound() end

---@param InWhenLeaveCurrentStateCanBeInterrupted number
function UAvatarActionEffectsBase:SetWhenLeaveCurrentStateCanBeInterrupted(InWhenLeaveCurrentStateCanBeInterrupted) end
