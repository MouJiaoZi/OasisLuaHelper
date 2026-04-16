---@meta

---@class FNewFPPPoseChange
FNewFPPPoseChange = {}


---@class UNewFPPAnimFMObj_PoseChange: USTExtraAnimFMObj_MoveState
---@field ChangeState FNewFPPPoseChange
---@field ChangeState_Scope FNewFPPPoseChange
---@field StandOffset FTransform
---@field CrouchOffset FTransform
---@field ProneOffset FTransform
---@field Spine_StandOffset FTransform
---@field Spine_CrouchOffset FTransform
---@field Spine_ProneOffset FTransform
---@field bIsInForceNewFPPMode boolean
---@field OldStandOffset FTransform
---@field OldCrouchOffset FTransform
---@field OldProneOffset FTransform
---@field b_SwitchingPoseTransform boolean
---@field InterpOffsetSpeed_Switching number
---@field InterpOffsetSpeed_Immidiately number
---@field SwitchingPoseLocationFactor number
---@field FinalOffset_Location FVector
---@field FinalOffset_Rotator FRotator
---@field SpineOffset_Location FVector
---@field SpineOffset_Rotator FRotator
---@field TPPMesh_FinalOffset_Location FVector
---@field SpineOffset_Alpha number
---@field SwitchOffsetTimeCounter number
---@field SwitchOffsetStartPoseType ECharacterPoseType
---@field SwitchOffsetEndPoseType ECharacterPoseType
local UNewFPPAnimFMObj_PoseChange = {}

---@param isFPP boolean
function UNewFPPAnimFMObj_PoseChange:OnPerspectiveChangeEvent(isFPP) end

---@param bIsTickEnable boolean
function UNewFPPAnimFMObj_PoseChange:OnNewFPPMeshTickStateChange(bIsTickEnable) end
