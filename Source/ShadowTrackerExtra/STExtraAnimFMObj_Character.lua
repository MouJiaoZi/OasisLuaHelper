---@meta

---@class USTExtraAnimFMObj_Character: UAnimFunctionModule_ObjInstance
---@field PLAYER_TURN_RESET_TIME number
---@field ViewRotationInterSpeed number
---@field ViewRotationInterSpeed_Simulate number
---@field b_IsFPPMode boolean
---@field r_ViewRotation FRotator
---@field r_OwnerRotation FRotator
---@field r_ControlRotation FRotator
---@field e_LastPoseType ECharacterPoseType
---@field e_PoseType ECharacterPoseType
---@field f_PoseChangeCD number
---@field b_IsCrouching boolean
---@field b_IsOnVehicle boolean
---@field f_VehicleSeatAnimBlendInTime number
---@field f_VehicleSeatAnimBlendOutTime number
---@field f_CharacterYawRotateRate number
---@field last_SprintControlRotate number
---@field last_CurLocalVelocity FVector
---@field FastRotationState number
---@field f_CharacterYawRotateRate_Reverse number
---@field b_IsTurning boolean
---@field b_IsTurning_PlayAnim boolean
---@field b_IsLeftHandBlendAimOffset boolean
---@field IsRescueing boolean
---@field b_IsOnControlled boolean
---@field b_IsDoingReaload boolean
---@field b_IsHealing boolean
---@field b_WaistFollowingController boolean
---@field r_DeltaRotationYawBetweenControlAndOwner FRotator
---@field r_OwnerAimRotation_SUB_C_OwnerRotation_Yaw FRotator
---@field b_Move_OR_C_IsOnVehicle boolean
local USTExtraAnimFMObj_Character = {}

---@param LastPose ESTEPoseState
---@param NewPose ESTEPoseState
function USTExtraAnimFMObj_Character:OnPoseStateChange(LastPose, NewPose) end

---@param state EPawnState
function USTExtraAnimFMObj_Character:OnPawnStateEnter(state) end

---@param state EPawnState
function USTExtraAnimFMObj_Character:OnPawnStateLeave(state) end
