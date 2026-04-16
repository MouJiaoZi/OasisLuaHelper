---@meta

---@class EAvatarIdleState
---@field EOnGroundIdle number
---@field EJumping number
---@field EMove number
---@field ESprint number
---@field EFalling number
---@field ECrouch number
---@field EProne number
EAvatarIdleState = {}


---@class FHoldWeaponBoneAdaption
---@field bDefaultConfig boolean
---@field AdaptionDescription string
---@field MultiPawnStateMask number
---@field Priority number
---@field Scale_Arm FVector
---@field Scale_Weapon FVector
---@field Translation_ik_hand_gun FVector
---@field bSpecialStateJudgment boolean
---@field SpecialStateTag string
---@field SpecialStateTranslation_ik_hand_gun FVector
---@field LerpDuration number
FHoldWeaponBoneAdaption = {}


---@class FHoldWeaponAdaptionRuntimeRecorder
---@field MatchedAdaption FHoldWeaponBoneAdaption
---@field LastRecordPawnStateMask number
---@field LastRecordWeaponID number
---@field LastRecordMatchSpecialState boolean
---@field LerpStartTime number
---@field bLerpValid boolean
---@field LerpScale_Arm FVector
---@field LerpScale_Weapon FVector
---@field LerpScale_ik_hand_l FVector
---@field LerpTranslation_ik_hand_gun FVector
FHoldWeaponAdaptionRuntimeRecorder = {}


---@class FHoldWeaponAdaptionConfig
---@field DefaultAdaptionConfig FHoldWeaponBoneAdaption
---@field PawnStateAdaptionConfig ULuaArrayHelper<FHoldWeaponBoneAdaption>
FHoldWeaponAdaptionConfig = {}


---@class UAvatarBreatheAnimInstance: USkirtAnimInstanceBase
---@field bOnGroundIdle boolean
---@field bJumping boolean
---@field bFalling boolean
---@field bMove boolean
---@field bSprint boolean
---@field bCrouch boolean
---@field bProne boolean
---@field bFlattenMesh boolean
---@field JumpToFallingThresholdTime number
---@field EPawnStateWeight ULuaMapHelper<EPawnState, number>
---@field CommonHoldWeaponAdaption FHoldWeaponAdaptionConfig
---@field HoldWeaponAdaptionMap ULuaMapHelper<number, FHoldWeaponAdaptionConfig>
---@field HoldWeaponAdaptionRecorder FHoldWeaponAdaptionRuntimeRecorder
local UAvatarBreatheAnimInstance = {}

---@param InSpecialStateTag string
---@return boolean
function UAvatarBreatheAnimInstance:ShouldHoldWeaponAdaptionMatchSpecialState(InSpecialStateTag) end

---@param InCurrentStates number
---@param InPrevStates number
function UAvatarBreatheAnimInstance:OnSimulateCharStateChangedBP(InCurrentStates, InPrevStates) end

---@param InTargetState EPawnState
---@param InInterruptState EPawnState
---@param InIsInterrupted boolean
function UAvatarBreatheAnimInstance:RefreshState(InTargetState, InInterruptState, InIsInterrupted) end

---@param InTestState EPawnState
---@return boolean
function UAvatarBreatheAnimInstance:IsTriggerIdleState(InTestState) end

---@param InTestState EPawnState
---@return boolean
function UAvatarBreatheAnimInstance:IsTriggerMoveState(InTestState) end

---@param InTestState EPawnState
---@return boolean
function UAvatarBreatheAnimInstance:IsTriggerJumpState(InTestState) end

---@param InTestState EPawnState
---@return boolean
function UAvatarBreatheAnimInstance:IsTriggerSprintState(InTestState) end

---@param InTestState EPawnState
---@return boolean
function UAvatarBreatheAnimInstance:IsTriggerCrouchState(InTestState) end

---@param InTestState EPawnState
---@return boolean
function UAvatarBreatheAnimInstance:IsTriggerProneState(InTestState) end

---@param InState EAvatarIdleState
function UAvatarBreatheAnimInstance:SwitchState(InState) end

---@param InDeltaTime number
function UAvatarBreatheAnimInstance:UpdateAnim(InDeltaTime) end
