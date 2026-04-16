---@meta

---@class USTExtraParachuteAnimInstance: UAnimInstanceBase
---@field SubAnimMapReplacer_Parachute FSTExtraAnimFM_SubAnimMapReplacer_Parachute
---@field MoveDirLerpSpeed number
---@field Anim_MoveDir FVector
---@field Anim_OwnerRotation FRotator
---@field Anim_ControlRotation FRotator
---@field Anim_DeltaViewOffset FRotator
---@field Anim_ParachuteState EParachuteState
---@field Anim_ParachuteState_EQ_FreeFall boolean
---@field Anim_ParachuteState_NEQ_FreeFall boolean
---@field Anim_ParachuteState_EQ_Landing boolean
---@field Anim_LandingPerformace_Start boolean
---@field Anim_LandingPerformace_IsRoll boolean
---@field Anim_IsSpecialFreeFalling boolean
---@field Anim_IsSimulateUpDown boolean
---@field Anim_CurrentZOffset number
---@field Anim_DeltaZOffset number
---@field Anim_DeltaZOffsetMax number
---@field Anim_DeltaZOffsetRestore number
---@field bIsCachedAircraftAnimList boolean
---@field FollowState EFollowState
---@field bEnableHandleFollowStateChange boolean
---@field PendingFreeFallingStartAnim boolean
---@field PendingFreeFallingStartTime number
---@field bHasSyncFreeFallMontage boolean
local USTExtraParachuteAnimInstance = {}

---@param PreState EParachuteState
---@param CurState EParachuteState
function USTExtraParachuteAnimInstance:OnParachuteStateChanged(PreState, CurState) end

function USTExtraParachuteAnimInstance:RefreshParachuteAnim() end

function USTExtraParachuteAnimInstance:CacheParachuteAnimVars() end

function USTExtraParachuteAnimInstance:HandleFollowStateChanged() end

function USTExtraParachuteAnimInstance:SyncFreeFallMontagePlayPosition() end

---@param SeatAttachSocketName string
---@return EParachuteQuadAnimSeatType
function USTExtraParachuteAnimInstance:GetQuadSeatTypeByAttachSocket(SeatAttachSocketName) end
