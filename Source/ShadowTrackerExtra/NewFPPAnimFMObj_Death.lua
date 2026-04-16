---@meta

---@class UNewFPPAnimFMObj_Death: USTExtraAnimFMObj_Death
---@field NearDeathPawnState2Pose ULuaMapHelper<EPawnState, ESTEPoseState>
---@field bLastIsNearDeath boolean
---@field LastIsNearDeath_TimeStamp number
---@field LastNearDeath_MaxDeltaTime number
---@field bLeavingNearDeath boolean
---@field bPlayingLeavingNearDeathSequence boolean
---@field LeavingNearDeathStartTime number
---@field LeavingNearDeathEarlyFinishTime number
---@field LeavingNearDeathMaxDuration number
---@field NearDeathCameraOffset FTransform
local UNewFPPAnimFMObj_Death = {}

---@param EventMsg string
function UNewFPPAnimFMObj_Death:HandleOwnerAnimEvent(EventMsg) end

---@param Montage UAnimMontage
function UNewFPPAnimFMObj_Death:OnLeavingNearDeathSequenceInterrupted(Montage) end

function UNewFPPAnimFMObj_Death:UpdateLeavingNearDeathDuration() end

function UNewFPPAnimFMObj_Death:OnStartLeavingNearDeathSequence() end

---@param OutCameraOffset FTransform
function UNewFPPAnimFMObj_Death:BP_GetNearDeathCameraOffset(OutCameraOffset) end

---@param OutCameraOffset FTransform
function UNewFPPAnimFMObj_Death:GetNearDeathCameraOffset(OutCameraOffset) end
