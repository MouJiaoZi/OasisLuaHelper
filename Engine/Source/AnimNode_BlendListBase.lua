---@meta

---@class EBlendListTransitionType
---@field StandardBlend number
---@field Inertialization number
EBlendListTransitionType = {}


---@class FAnimNode_BlendListBase
---@field BlendPose ULuaArrayHelper<FPoseLink>
---@field BlendTime ULuaArrayHelper<number>
---@field TransitionType EBlendListTransitionType
---@field BlendType EAlphaBlendOption
---@field ResetFrameCountSubValue number
---@field LastFrameCount number
---@field Blends ULuaArrayHelper<FAlphaBlend>
---@field BlendWeights ULuaArrayHelper<number>
---@field RemainingBlendTimes ULuaArrayHelper<number>
---@field LastActiveChildIndex number
---@field PerBoneSampleData ULuaArrayHelper<FBlendSampleData>
---@field bResetChildOnActivation boolean @This reinitializes child pose when re-activated. For example, when active child changes
---@field bResetChildOnBlendListChange boolean
FAnimNode_BlendListBase = {}
