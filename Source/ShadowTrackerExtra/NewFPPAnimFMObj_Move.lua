---@meta

---@class UNewFPPAnimFMObj_Move: USTExtraAnimFMObj_Move
---@field CharCurrentPoseType ECharacterPoseType
---@field bIgnoreHandAnimAddtive boolean
---@field IgnoreHandAnimAddtiveTime number
---@field IgnoreHandAnimAddtiveDefaultTime number
---@field InterruptMovePoseAlpha number
---@field InterruptMoveLoopPoseAlpha number
---@field InterruptPoseChangeAlpha number
---@field MoveHandIKNoAdditiveAlpha number
---@field MoveSequenceBlendOutWeight number
---@field MoveLoopPoseAdditiveWeight number
---@field MoveLoopPoseAdditiveWeightInterpSpeed number
---@field MaxMoveLoopPoseAdditiveWeight number
---@field MaxMoveLoopPoseAdditiveWeight_IdleToBackpack FRuntimeFloatCurve
---@field MaxMoveLoopPoseAdditiveWeight_BackpackToIdle FRuntimeFloatCurve
---@field EnableLimitMaxMoveLoopPoseAdditiveWeight_TransAnim boolean
---@field MaxMoveLoopPoseAdditiveWeight_TransAnim number
---@field LimitMaxMoveLoopPoseAdditiveWeight_TransAnim number
---@field bUseTPPBasePose boolean
local UNewFPPAnimFMObj_Move = {}

---@param EventMsg string
function UNewFPPAnimFMObj_Move:HandleOwnerAnimEvent(EventMsg) end
