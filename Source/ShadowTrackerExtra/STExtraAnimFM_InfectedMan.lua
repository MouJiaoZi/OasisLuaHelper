---@meta

---@class FSTExtraAnimFM_InfectedMan_Movement
---@field f_SprintSpeedToTriggerStop number
---@field f_SprintStopAnimTime_BlendOut number
---@field b_UseInputInterruptSprintStop boolean
---@field b_AnimListChangeInterruptSprintStop boolean
---@field b_UseMontageInterruptSprintStop boolean
---@field b_UseSprintStopMontageWhiteList boolean
---@field SprintStopMontageWhiteList ULuaArrayHelper<string>
---@field b_UseSprintStopInterruptCD boolean
---@field f_SprintStopInterruptCD number
---@field v_MoveVelocityInWorldSpace FVector
---@field v_LastMoveVelocityInWorldSpace FVector
---@field b_IsSprintStop_PlayAnim boolean
---@field b_IsSprintStop_PlayAnimDelay boolean
---@field f_SprintStop_PlayTime number
---@field b_MovingOnGround boolean
---@field b_MovingOnGroundAndMovable boolean
---@field b_IsSprinting boolean
---@field b_IsLastSprint boolean
---@field b_IsLeftFoot boolean
---@field b_IsLeftFootStop boolean
---@field f_SprintStopAnimTime_Left number
---@field f_SprintStopAnimTime_Right number
FSTExtraAnimFM_InfectedMan_Movement = {}


---@class FSTExtraAnimFM_InfectedMan_SprintLean
---@field b_UseSprintLean boolean
---@field f_SprintSpeedToTriggerLean number
---@field f_SprintLeanMax number
---@field f_SprintLeanScale number
---@field f_SprintLeanInterpSpeed number
---@field b_UseConstInputSpeed boolean
---@field InputSpeedToggleArea FVector2D
---@field b_UseSpeedMap boolean
---@field InputSpeedRange FVector2D
---@field InterpSpeedRange FVector2D
---@field v_MoveVelocity FVector
---@field r_ViewRotation FRotator
---@field r_LastViewRotation FRotator
---@field f_AccelerationDeltaYaw number
---@field f_MoveVelocityY number
---@field f_MoveVelocityTargetY number
---@field b_ConstInputToggle boolean
---@field f_InterpSpeedAdjust number
FSTExtraAnimFM_InfectedMan_SprintLean = {}


---@class FSTExtraAnimFM_InfectedManJump
---@field b_UseJumpStartFlip boolean
---@field b_IsJumping boolean
---@field b_JumpStartFlip boolean
---@field b_WalkToRifleJumpStationStart boolean
---@field bLastWalkToRifleJumpStationStart boolean
---@field e_JumpType ECharacterJumpType
---@field e_JumpTypeFlip ECharacterJumpType
---@field JumpStartJumpTypeCache ECharacterJumpType
---@field b_HardLanding boolean
---@field b_NormalLanding boolean
FSTExtraAnimFM_InfectedManJump = {}


---@class FSTExtraAnimFM_InfectedManPeek
---@field f_ViewRotationInterpSpeed number
---@field f_MoveableLandHardTimeConfig number
---@field f_ViewRotation_IN_Scoping number
---@field f_DeltaYawBetweenViewAndActor number
---@field f_LastViewRotationPitch number
---@field f_LastViewRotationYaw number
---@field LastFrameShouldNoViewRotation boolean
FSTExtraAnimFM_InfectedManPeek = {}
