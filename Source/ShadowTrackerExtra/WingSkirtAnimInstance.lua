---@meta

---@class UWingSkirtAnimInstance: USkirtAnimInstanceBase
---@field bOnGround_C boolean @触地状态
---@field Phase_OnGround number @OnGround 状态 阶段 (当前需求分成前后两个阶段)
---@field InitialPhaseTime_OnGround number @进入状态计时(当前需求分成前后两个阶段)
---@field InitialTime_OnGround number @OnGround 进入时间
---@field bOnGround_Idle_C boolean @地面不起跳保持一段时间后进入地面Idle状态
---@field Phase_OnGround_Idle number @OnGround_Idle 状态 阶段 (当前需求分成前后两个阶段)
---@field InitialPhaseTime_OnGround_Idle number @进入状态计时(当前需求分成前后两个阶段)
---@field InitialTime_OnGround_Idle number @OnGround_Idle 进入时间
---@field bJumping_C boolean @起跳状态
---@field Phase_Jumping number @Jumping 状态 阶段 (当前需求分成前后两个阶段)
---@field InitialPhaseTime_Jumping number @进入状态计时(当前需求分成前后两个阶段)
---@field InitialTime_Jumping number @Jumping 进入时间
---@field bFalling_C boolean @坠落状态
---@field Phase_Falling number @Falling 状态 阶段 (当前需求分成前后两个阶段)
---@field InitialPhaseTime_Falling number @进入状态计时(当前需求分成前后两个阶段)
---@field InitialTime_Falling number @Falling 进入时间
---@field bMove_C boolean @移动状态
---@field Phase_Move number @Move 状态 阶段 (当前需求分成前后两个阶段)
---@field InitialPhaseTime_Move number @进入状态计时(当前需求分成前后两个阶段)
---@field InitialTime_Move number @Move 进入时间
---@field bSprint_C boolean @疾跑状态
---@field Phase_Sprint number @Sprint 状态 阶段 (当前需求分成前后两个阶段)
---@field InitialPhaseTime_Sprint number @进入状态计时(当前需求分成前后两个阶段)
---@field InitialTime_Sprint number @Sprint 进入时间
---@field bCrouch_C boolean @蹲状态
---@field Phase_Crouch number @Crouch 状态 阶段 (当前需求分成前后两个阶段)
---@field bEnableState_Crouch boolean
---@field InitialPhaseTime_Crouch number @进入状态计时(当前需求分成前后两个阶段)
---@field InitialTime_Crouch number @Crouch 进入时间
---@field bProne_C boolean @趴状态
---@field Phase_Prone number @Prone 状态 阶段 (当前需求分成前后两个阶段)
---@field bEnableState_Prone boolean
---@field InitialPhaseTime_Prone number @进入状态计时(当前需求分成前后两个阶段)
---@field InitialTime_Prone number @Prone 进入时间
---@field GroundToIdleThresholdTime number @地面状态到地面Idle的时限
---@field JumpToFallingThresholdTime number @起跳到坠落状态的时限
---@field PlaneToJumpDelayThresholdTime number @离开飞机后进入起跳状态的延迟
---@field JumpStartTime number @起跳时间
---@field OnGroundStartTime number @触地时间
---@field bCountLeavePlaneDelay boolean
---@field TriggerWingStateList ULuaArrayHelper<EPawnState>
---@field bTriggerWhenHoldWeapon_Autonomous boolean
---@field bTriggerWhenHoldWeapon_Simluate boolean
local UWingSkirtAnimInstance = {}

---@param InTestState EPawnState
---@return boolean
function UWingSkirtAnimInstance:IsStateTriggerWing(InTestState) end

---@return boolean
function UWingSkirtAnimInstance:HasTriggerWingState() end

---@param InTestState EPawnState
---@return boolean
function UWingSkirtAnimInstance:IsTriggerSprintState(InTestState) end

---@param InTestState EPawnState
---@return boolean
function UWingSkirtAnimInstance:IsTriggerMoveState(InTestState) end

---@param InTargetState EPawnState
---@param InInterruptState EPawnState
---@param InIsInterrupted boolean
function UWingSkirtAnimInstance:RefreshWingState(InTargetState, InInterruptState, InIsInterrupted) end

---@param InDeltaTime number
function UWingSkirtAnimInstance:UpdateWingAnim(InDeltaTime) end

---@param PreState EParachuteState
---@param CurState EParachuteState
function UWingSkirtAnimInstance:OnParachuteStateChanged(PreState, CurState) end
