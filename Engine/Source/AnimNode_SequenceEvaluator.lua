---@meta

---@class ESequenceEvalReinit
---@field NoReset number @Do not reset InternalTimeAccumulator
---@field StartPosition number @Reset InternalTimeAccumulator to StartPosition
---@field ExplicitTime number @Reset InternalTimeAccumulator to TargetTime
ESequenceEvalReinit = {}


---@class ESequenceEvalTimeType
---@field ExplicitTime number @绝对时间
---@field RelativeTime number @比例时间
ESequenceEvalTimeType = {}


---@class FAnimNode_SequenceEvaluator
---@field ExplicitTime number
---@field ExplicitTimeType ESequenceEvalTimeType @输入时间类型：
---@field bShouldLoop boolean @This only works if bTeleportToTargetTime is false OR this node is set to use SyncGroup
---@field bTeleportToExplicitTime boolean @If true, teleport to explicit time, does NOT advance time (does not trigger notifies, does not extract Root Motion, etc.) If false, will advance time (will trigger notifies, extract root motion if applicable, etc.) Note: using a sync group forces advancing time regardless of what this option is set to.
---@field StartPosition number
---@field ReinitializationBehavior ESequenceEvalReinit @What to do when SequenceEvaluator is reinitialized
---@field bReinitialized boolean
---@field CheckReTickFrameCounterSubValue number
---@field bEnableTriggerNotify boolean
FAnimNode_SequenceEvaluator = {}
