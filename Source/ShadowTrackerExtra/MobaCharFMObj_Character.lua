---@meta

---@class UMobaCharFMObj_Character: UAnimFunctionModule_ObjInstance
---@field e_PoseType ECharacterPoseType @Pose *
---@field b_IsPoseCrouch boolean
---@field b_PoseChange boolean
---@field ViewRotationInterSpeed number @Rotation *
---@field SprintRootYawRotateMaxAngle number
---@field FullSprintRootYawRotatieLeanSprintValue number
---@field r_OwnerRotation FRotator
---@field r_ViewRotation FRotator
---@field r_ControlRotation FRotator
---@field f_CharacterSprintRootYawRotateValue number
---@field f_LeanSprintScaleValue number @倾斜跑 *
---@field f_LeanClampMaxValue number
---@field f_LeanSprintInterpValue number
---@field f_LeanSprintValue number
---@field b_IsTurning_PlayAnim boolean @Turn *
---@field f_TurnLeft number
---@field EnableContinueTurnLockAnimNotifyName string
---@field TurnResetTime number
---@field TurnAnimPlayTimeAccumulator number
---@field RelaxIdleAnim_Interval number @RelaxIdle *
---@field b_IsRelaxIdleAnim boolean
local UMobaCharFMObj_Character = {}


---@class UMobaCharFMObj_Move: UAnimFunctionModule_ObjInstance
---@field MoveSubAnimSlotName string @Move *
---@field MoveStateMachineName string
---@field SprintStateName string
---@field RunStateName string
---@field e_MovementMode EMovementMode
---@field e_LastMovementMode EMovementMode
---@field e_CustomMovementMode number
---@field e_LastCustomMovementMode number
---@field v_MoveVelocity FVector
---@field v_MoveDir FVector
---@field b_Move boolean
---@field b_IsSprint boolean
---@field b_MoveInWalkState boolean
---@field b_MoveInRunState boolean
---@field b_MoveInSprintState boolean
---@field b_ForceNoSprintAnimPose boolean
---@field b_MoveInSprintStateAndEnableSprintAnimPose boolean
---@field b_EnableRunSprintTranstionPose boolean
---@field b_ForceLeaveSprintImmediately boolean
---@field b_EnableMoveUpBodyOverride boolean
---@field MovingOnGroundSpeedSquaredThreshold number
---@field b_MovingOnGround boolean
---@field b_MovingOnGroundAndMovbale boolean
---@field DisableSuperRunTag FGameplayTagContainer
---@field b_IsSuperRun boolean
---@field b_DisableSuperRun boolean
---@field b_SuperRunCanEnterOrLeaveTransition boolean
---@field TriggerSprintStopTimeThreshold number
---@field b_NotRunStopToIdle boolean
---@field b_TriggerStopRun boolean
---@field b_TriggerStopSrint boolean
---@field v_RunStopVelocityDir FVector
---@field b_IsJumping boolean @Jump *
---@field b_WalkToJumpStation boolean
---@field b_DoubleJumpStation boolean
---@field bTriggerDoubleJumpStation boolean
---@field b_WalkToFalling boolean
---@field b_MovementMode_NEQ_Falling boolean
---@field b_ForceFallingAnimPose boolean
---@field MobaJumpCount number
---@field bTriggerThirdJumpStation boolean
---@field b_ForceUseBasePoseClavicle boolean
---@field f_BlendPelvisWeight number
---@field f_BlendAdditivePelvisWeight number
local UMobaCharFMObj_Move = {}


---@class UMobaCharFMObj_Hurt: UAnimFunctionModule_ObjInstance
---@field DefaultHurtResetTime number
---@field b_Hurting boolean
---@field f_HurtingProgress number
---@field HurtResetTime number
---@field v_HurtDir FVector
---@field HurtWeight_DamageValue number
---@field HurtDamageType EDamageType
local UMobaCharFMObj_Hurt = {}

---@param InitDamageValue number
---@param InitHurtDir FVector
---@param InitHurtBodyType EAvatarDamagePosition
---@param InitHurtDamageType EDamageType
---@param HurtDamageDistance number
function UMobaCharFMObj_Hurt:HandleInitHurtDetails(InitDamageValue, InitHurtDir, InitHurtBodyType, InitHurtDamageType, HurtDamageDistance) end


---@class UMobaCharFMObj_Shoveling: UAnimFunctionModule_ObjInstance
local UMobaCharFMObj_Shoveling = {}
