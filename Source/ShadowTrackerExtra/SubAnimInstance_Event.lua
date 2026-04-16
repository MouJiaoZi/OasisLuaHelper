---@meta

---@class USubAnimInstance_Event: USubAnimInstanceBase
local USubAnimInstance_Event = {}

function USubAnimInstance_Event:RefreshAnimList() end

---@param EventMsg string
function USubAnimInstance_Event:HandleOwnerAnimEvent(EventMsg) end

---@param LastPose ESTEPoseState
---@param NewPose ESTEPoseState
function USubAnimInstance_Event:HandlePlayerPoseChange(LastPose, NewPose) end

---@param NewState EFreshWeaponStateType
function USubAnimInstance_Event:HandlePlayerWeaponStateChanged(NewState) end

function USubAnimInstance_Event:RefreshAnimList_BP() end

---@param EventMsg string
function USubAnimInstance_Event:HandleOwnerAnimEvent_BP(EventMsg) end

---@param LastPose ESTEPoseState
---@param NewPose ESTEPoseState
function USubAnimInstance_Event:HandlePlayerPoseChange_BP(LastPose, NewPose) end

---@param NewState EFreshWeaponStateType
function USubAnimInstance_Event:HandlePlayerWeaponStateChanged_BP(NewState) end
