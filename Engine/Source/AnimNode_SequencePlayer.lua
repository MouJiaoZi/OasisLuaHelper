---@meta

---@class FBonesTransfromsWithFPP
---@field Names ULuaArrayHelper<string>
---@field Transforms ULuaArrayHelper<FTransform>
FBonesTransfromsWithFPP = {}


---@class FAnimNode_SequencePlayer
---@field bLoopAnimation boolean
---@field bCheckNeedInitializeSupFirst boolean
---@field PlayRate number
---@field StartPosition number
---@field ReversePlayRate boolean
---@field bResetPlayTimeWhenReactivate boolean
---@field bForceResetPlayTime boolean
---@field CheckReactivateFrameCounterSubValue number
---@field bShouldReinitPose boolean
---@field ReInitPose FBonesTransfromsWithFPP
---@field bResetToAdditivePose boolean
---@field EnableSequenceBlend boolean
---@field SequenceBlendOutTime number
---@field SequenceBlendBySyncGroup boolean
---@field SequenceBlendResetNewTimeAccumulator boolean
---@field SequenceBlendOutWeightScale number
---@field SequenceBlendOutWhenRelevant boolean
---@field SequenceBlendOutTime_Counter number
---@field SequenceBlendOutTime_Alpha number
---@field SequenceBlendOutWeight number
---@field BlendOutPlayers_Cache ULuaArrayHelper<UAnimSequenceBase>
FAnimNode_SequencePlayer = {}
