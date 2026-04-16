---@meta

---@class UAnimClassData: UObject, IAnimClassInterface
---@field BakedStateMachines ULuaArrayHelper<FBakedAnimationStateMachine>
---@field AnimNotifies ULuaArrayHelper<FAnimNotifyEvent> @A list of anim notifies that state machines (or anything else) may reference
---@field RootAnimNodeIndex number
---@field OrderedSavedPoseIndices ULuaArrayHelper<number>
---@field AnimNodeProperties ULuaArrayHelper<UStructProperty>
---@field SyncGroupNames ULuaArrayHelper<string>
local UAnimClassData = {}
