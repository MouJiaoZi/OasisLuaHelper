---@meta

---@class FAnimNode_TwoWayBlend
---@field A FPoseLink
---@field B FPoseLink
---@field Alpha number
---@field AlphaScaleBias FInputScaleBias
---@field InternalBlendAlpha number
---@field bAIsRelevant boolean
---@field bBIsRelevant boolean
---@field bResetChildOnActivation boolean @This reinitializes child pose when re-activated. For example, when active child changes
---@field AlwaysUpdateInputPose boolean
---@field AlwaysEvaluateInputPose boolean
FAnimNode_TwoWayBlend = {}
