---@meta

---@class ETransitionBlendMode
---@field TBM_Linear number @Linear
---@field TBM_Cubic number @Cubic
ETransitionBlendMode = {}


---@class ETransitionLogicType
---@field TLT_StandardBlend number @Standard Blend
---@field TLT_Inertialization number @Inertialization
---@field TLT_Custom number @Custom
ETransitionLogicType = {}


---@class FAnimationTransitionRule
---@field RuleToExecute string
---@field TransitionReturnVal boolean @What RuleToExecute must return to take transition (for bidirectional transitions)
---@field TransitionIndex number
FAnimationTransitionRule = {}


---@class FAnimationStateBase
---@field StateName string
FAnimationStateBase = {}


---@class FAnimationState
---@field Transitions ULuaArrayHelper<FAnimationTransitionRule>
---@field StateRootNodeIndex number
---@field StartNotify number
---@field EndNotify number
---@field FullyBlendedNotify number
FAnimationState = {}


---@class FAnimationTransitionBetweenStates
---@field PreviousState number
---@field NextState number
---@field CrossfadeDuration number
---@field StartNotify number
---@field EndNotify number
---@field InterruptNotify number
---@field BlendMode EAlphaBlendOption
---@field LogicType ETransitionLogicType
FAnimationTransitionBetweenStates = {}


---@class FBakedStateExitTransition
---@field CanTakeDelegateIndex number
---@field CustomResultNodeIndex number
---@field TransitionIndex number
---@field bDesiredTransitionReturnValue boolean
---@field bAutomaticRemainingTimeRule boolean
---@field PoseEvaluatorLinks ULuaArrayHelper<number>
FBakedStateExitTransition = {}


---@class FBakedAnimationState
---@field StateName string
---@field Transitions ULuaArrayHelper<FBakedStateExitTransition>
---@field StateRootNodeIndex number
---@field StartNotify number
---@field EndNotify number
---@field FullyBlendedNotify number
---@field bIsAConduit boolean
---@field EntryRuleNodeIndex number
---@field PlayerNodeIndices ULuaArrayHelper<number>
---@field bAlwaysResetOnEntry boolean
FBakedAnimationState = {}


---@class FBakedAnimationStateMachine
---@field MachineName string
---@field InitialState number
---@field States ULuaArrayHelper<FBakedAnimationState>
---@field Transitions ULuaArrayHelper<FAnimationTransitionBetweenStates>
FBakedAnimationStateMachine = {}


---@class UAnimStateMachineTypes: UObject
local UAnimStateMachineTypes = {}
