---@meta

---@class FSubInstanceBlendData
---@field CacheInstance UAnimInstance
---@field BlendOutTime number
---@field BlendOutTimeCounter number
---@field BlendOutWeight number
FSubInstanceBlendData = {}


---@class FMultiSubInstanceData
---@field InstanceClass_Multi UAnimInstance
---@field RunPriority number
FMultiSubInstanceData = {}


---@class FAnimNode_SubInstance
---@field InPose FPoseLink @Input pose for the node, intentionally not accessible because if there's no input Node in the target class we don't want to show this as a pin
---@field InPoses ULuaArrayHelper<FPoseLink> @Each layer's blended pose
---@field SubInstanceSlotName string
---@field InstanceClass UAnimInstance
---@field bNeedCacheSubInstance boolean
---@field MaxCacheSubInstanceCount number
---@field bResetToAdditivePose boolean
---@field MultiInstancesToRunDatas ULuaArrayHelper<FMultiSubInstanceData>
---@field BlendOutInstanceDatas ULuaArrayHelper<FSubInstanceBlendData>
---@field InstanceProperties ULuaArrayHelper<UProperty> @List of properties on the calling instance to push from
---@field SubInstanceProperties ULuaArrayHelper<UProperty> @List of properties on the sub instance to push to, built from name list when initialised
---@field SourcePropertyNames ULuaArrayHelper<string> @List of source properties to use, 1-1 with Dest names below, built by the compiler
---@field DestPropertyNames ULuaArrayHelper<string> @List of destination properties to use, 1-1 with Source names above, built by the compiler
---@field PosInertialization FAnimNode_SubAnimInertialization
---@field bBlendSubAnim boolean
---@field NewAnimBlendTime number
---@field bKeepUpdateOldSubInstanes boolean
---@field bUpdateWhenNotRelevant boolean
---@field NotRelevantUpdateConditions ULuaArrayHelper<UAnimInstanceUpdateCondition>
---@field bAlwaysUpdateInputNode boolean
---@field bResetInertializationWhenReactive boolean
---@field bUpdateAllInputNodeWhenNoInstanceRun boolean
---@field bResetPendingBlendDurationWhenReactive boolean
FAnimNode_SubInstance = {}
