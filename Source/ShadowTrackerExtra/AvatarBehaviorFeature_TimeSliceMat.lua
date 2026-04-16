---@meta

---@class UAvatarBehaviorFeature_TimeSliceMat: UAvatarBehaviorFeature_UtilFuncLayer
---@field TimeSliceMatBehaviorParam FAvatarTimeSliceMatBehaviorParam
---@field OverrideTimeSliceMatSlotMap ULuaMapHelper<string, FAvatarTimeSliceMatSlot>
---@field bOverride_OnSkeletalCompFinalizeBoneTransform boolean
---@field bOverride_UpdateSocketInfoToMat boolean
---@field bConcernRealTimeSocket boolean
---@field bOverride_StartPlay boolean
---@field bOverride_StopPlay boolean
---@field bOverride_ResetPlay boolean
---@field bOverride_PausePlay boolean
---@field bOverride_InitTimeSliceMatPlay boolean
---@field bOverride_ResetTimeSliceMatPlay boolean
---@field bOverride_TerminateTimeSliceMatPlay boolean
---@field bOverride_PauseTimeSliceMatPlay boolean
---@field bOverride_ApplyInterruptInstruction boolean
---@field bOverride_RevertInterruptInstruction boolean
---@field bOverride_PlayIndexedTimeSliceMat boolean
---@field bOverride_TickTimeSliceMatSlotPlay boolean
---@field bOverride_ExitTimeSliceMatPlay boolean
---@field bOverride_OverrideTimeSliceMatSlotPlay boolean
---@field bOverride_RecoverTimeSliceMatSlotPlay boolean
---@field bOverride_FindTaggedMatSliceIndex boolean
---@field bOverride_IsUpdateBlockByModeFeature boolean
local UAvatarBehaviorFeature_TimeSliceMat = {}

function UAvatarBehaviorFeature_TimeSliceMat:StartPlay() end

function UAvatarBehaviorFeature_TimeSliceMat:StopPlay() end

function UAvatarBehaviorFeature_TimeSliceMat:ResetPlay() end

---@param InIsPause boolean
---@param InIsTriggerByCharEmote boolean
function UAvatarBehaviorFeature_TimeSliceMat:PausePlay(InIsPause, InIsTriggerByCharEmote) end

---@param InTimeSliceMatSlot FAvatarTimeSliceMatSlot
function UAvatarBehaviorFeature_TimeSliceMat:InitTimeSliceMatPlay(InTimeSliceMatSlot) end

---@param InTimeSliceMatSlot FAvatarTimeSliceMatSlot
function UAvatarBehaviorFeature_TimeSliceMat:ResetTimeSliceMatPlay(InTimeSliceMatSlot) end

---@param InTimeSliceMatSlot FAvatarTimeSliceMatSlot
function UAvatarBehaviorFeature_TimeSliceMat:TerminateTimeSliceMatPlay(InTimeSliceMatSlot) end

---@param InIsPause boolean
---@param InIsTriggerByCharEmote boolean
---@param InTimeSliceMatSlot FAvatarTimeSliceMatSlot
function UAvatarBehaviorFeature_TimeSliceMat:PauseTimeSliceMatPlay(InIsPause, InIsTriggerByCharEmote, InTimeSliceMatSlot) end

---@param InTimeSliceMatSlot FAvatarTimeSliceMatSlot
function UAvatarBehaviorFeature_TimeSliceMat:ApplyInterruptInstruction(InTimeSliceMatSlot) end

---@param InTimeSliceMatSlot FAvatarTimeSliceMatSlot
function UAvatarBehaviorFeature_TimeSliceMat:RevertInterruptInstruction(InTimeSliceMatSlot) end

---@param InTimeSliceIndex number
---@param InTimeSliceMatSlot FAvatarTimeSliceMatSlot
function UAvatarBehaviorFeature_TimeSliceMat:PlayIndexedTimeSliceMat(InTimeSliceIndex, InTimeSliceMatSlot) end

---@param InDeltaTime number
---@param InTimeSliceMatSlot FAvatarTimeSliceMatSlot
function UAvatarBehaviorFeature_TimeSliceMat:TickTimeSliceMatSlotPlay(InDeltaTime, InTimeSliceMatSlot) end

---@param InTimeSliceMatSlot FAvatarTimeSliceMatSlot
function UAvatarBehaviorFeature_TimeSliceMat:ExitTimeSliceMatPlay(InTimeSliceMatSlot) end

---@param InMatSlotName string
---@param InMatSlotModifier FAvatarTimeSliceMatSlotModifier
function UAvatarBehaviorFeature_TimeSliceMat:OverrideTimeSliceMatSlotPlay(InMatSlotName, InMatSlotModifier) end

---@param InMatSlotName string
function UAvatarBehaviorFeature_TimeSliceMat:RecoverTimeSliceMatSlotPlay(InMatSlotName) end

---@param InTargetTag string
---@param InTimeSliceMatSlot FAvatarTimeSliceMatSlot
---@return number
function UAvatarBehaviorFeature_TimeSliceMat:FindTaggedMatSliceIndex(InTargetTag, InTimeSliceMatSlot) end

---@return boolean
function UAvatarBehaviorFeature_TimeSliceMat:IsUpdateBlockByModeFeature() end

function UAvatarBehaviorFeature_TimeSliceMat:BP_StartPlay() end

function UAvatarBehaviorFeature_TimeSliceMat:BP_StopPlay() end

function UAvatarBehaviorFeature_TimeSliceMat:BP_ResetPlay() end

---@param InIsPause boolean
---@param InIsTriggerByCharEmote boolean
function UAvatarBehaviorFeature_TimeSliceMat:BP_PausePlay(InIsPause, InIsTriggerByCharEmote) end

---@param InTimeSliceMatSlot FAvatarTimeSliceMatSlot
function UAvatarBehaviorFeature_TimeSliceMat:BP_InitTimeSliceMatPlay(InTimeSliceMatSlot) end

---@param InTimeSliceMatSlot FAvatarTimeSliceMatSlot
function UAvatarBehaviorFeature_TimeSliceMat:BP_ResetTimeSliceMatPlay(InTimeSliceMatSlot) end

---@param InTimeSliceMatSlot FAvatarTimeSliceMatSlot
function UAvatarBehaviorFeature_TimeSliceMat:BP_TerminateTimeSliceMatPlay(InTimeSliceMatSlot) end

---@param InIsPause boolean
---@param InIsTriggerByCharEmote boolean
---@param InTimeSliceMatSlot FAvatarTimeSliceMatSlot
function UAvatarBehaviorFeature_TimeSliceMat:BP_PauseTimeSliceMatPlay(InIsPause, InIsTriggerByCharEmote, InTimeSliceMatSlot) end

---@param InTimeSliceMatSlot FAvatarTimeSliceMatSlot
function UAvatarBehaviorFeature_TimeSliceMat:BP_ApplyInterruptInstruction(InTimeSliceMatSlot) end

---@param InTimeSliceMatSlot FAvatarTimeSliceMatSlot
function UAvatarBehaviorFeature_TimeSliceMat:BP_RevertInterruptInstruction(InTimeSliceMatSlot) end

---@param InTimeSliceIndex number
---@param InTimeSliceMatSlot FAvatarTimeSliceMatSlot
function UAvatarBehaviorFeature_TimeSliceMat:BP_PlayIndexedTimeSliceMat(InTimeSliceIndex, InTimeSliceMatSlot) end

---@param InDeltaTime number
---@param InTimeSliceMatSlot FAvatarTimeSliceMatSlot
function UAvatarBehaviorFeature_TimeSliceMat:BP_TickTimeSliceMatSlotPlay(InDeltaTime, InTimeSliceMatSlot) end

---@param InTimeSliceMatSlot FAvatarTimeSliceMatSlot
function UAvatarBehaviorFeature_TimeSliceMat:BP_ExitTimeSliceMatPlay(InTimeSliceMatSlot) end

---@param InMatSlotName string
---@param InMatSlotModifier FAvatarTimeSliceMatSlotModifier
function UAvatarBehaviorFeature_TimeSliceMat:BP_OverrideTimeSliceMatSlotPlay(InMatSlotName, InMatSlotModifier) end

---@param InMatSlotName string
function UAvatarBehaviorFeature_TimeSliceMat:BP_RecoverTimeSliceMatSlotPlay(InMatSlotName) end

---@param InTargetTag string
---@param InTimeSliceMatSlot FAvatarTimeSliceMatSlot
---@return number
function UAvatarBehaviorFeature_TimeSliceMat:BP_FindTaggedMatSliceIndex(InTargetTag, InTimeSliceMatSlot) end

---@return boolean
function UAvatarBehaviorFeature_TimeSliceMat:BP_IsUpdateBlockByModeFeature() end
