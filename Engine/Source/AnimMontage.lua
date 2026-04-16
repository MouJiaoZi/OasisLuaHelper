---@meta

---@class EAnimNotifyEventType
---@field Begin number
---@field End number
EAnimNotifyEventType = {}


---@class EMontageSubStepResult
---@field Moved number
---@field NotMoved number
---@field InvalidSection number
---@field InvalidMontage number
EMontageSubStepResult = {}


---Section data for each track. Reference of data will be stored in the child class for the way they want AnimComposite vs AnimMontage have different requirement for the actual data reference This only contains composite section information. (vertical sequences)
---@class FCompositeSection
---@field SectionName string @Section Name
---@field StartTime_DEPRECATED number @Start Time *
---@field NextSectionName string @Should this animation loop.
---@field MetaData ULuaArrayHelper<UAnimMetaData> @Meta data that can be saved with the asset You can query by GetMetaData function
FCompositeSection = {}


---Each slot data referenced by Animation Slot contains slot name, and animation data
---@class FSlotAnimationTrack
---@field SlotName string
---@field AnimTrack FAnimTrack
FSlotAnimationTrack = {}


---Remove FBranchingPoint when VER_UE4_MONTAGE_BRANCHING_POINT_REMOVAL is removed.
---@class FBranchingPoint
---@field EventName string
---@field DisplayTime_DEPRECATED number
---@field TriggerTimeOffset number @An offset from the DisplayTime to the actual time we will trigger the notify, as we cannot always trigger it exactly at the time the user wants
FBranchingPoint = {}


---AnimNotifies marked as BranchingPoints will create these markers on their Begin/End times. They create stopping points when the Montage is being ticked to dispatch events.
---@class FBranchingPointMarker
---@field NotifyIndex number
---@field TriggerTime number
---@field NotifyEventType EAnimNotifyEventType
FBranchingPointMarker = {}


---@class FCustomMontageAnimInfo
---@field ApplyAvatarSlot ULuaArrayHelper<number>
---@field bApplyToSubAnim number
---@field DisableBoneResolve ULuaArrayHelper<number>
---@field bForceUseTPP number
---@field bAutoUseSwitch number
FCustomMontageAnimInfo = {}


---@class FMontageSectionsPlayInfo
---@field LoopCount number
FMontageSectionsPlayInfo = {}


---@class FAnimMontageInstance
---@field MontageNoGCID number
---@field bPlaying boolean
---@field DefaultBlendTimeMultiplier number
---@field IgnoreNotifyType ULuaArrayHelper<string>
---@field CustomSectionsPlayInfo ULuaArrayHelper<FMontageSectionsPlayInfo>
---@field NextSections ULuaArrayHelper<number>
---@field PrevSections ULuaArrayHelper<number>
---@field ActiveStateBranchingPoints ULuaArrayHelper<FAnimNotifyEvent> @Currently Active AnimNotifyState, stored as a copy of the event as we need to call NotifyEnd on the event after a deletion in the editor. After this the event is removed correctly.
---@field Position number
---@field PlayRate number
---@field Blend FAlphaBlend
---@field DisableRootMotionCount number
---@field RandomJumpTimes number
FAnimMontageInstance = {}


---Delegate for when Montage is completed, whether interrupted or finished Weight of this montage is 0.f, so it stops contributing to output pose bInterrupted = true if it was not property finished
---@class FOnMontageEnded : ULuaSingleDelegate
FOnMontageEnded = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: UAnimMontage, Param2: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMontageEnded:Bind(Callback, Obj) end

---执行委托
---@param Param1 UAnimMontage
---@param Param2 boolean
function FOnMontageEnded:Execute(Param1, Param2) end


---Delegate for when Montage started to blend out, whether interrupted or finished DesiredWeight of this montage becomes 0.f, but this still contributes to the output pose bInterrupted = true if it was not property finished
---@class FOnMontageBlendingOutStarted : ULuaSingleDelegate
FOnMontageBlendingOutStarted = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: UAnimMontage, Param2: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMontageBlendingOutStarted:Bind(Callback, Obj) end

---执行委托
---@param Param1 UAnimMontage
---@param Param2 boolean
function FOnMontageBlendingOutStarted:Execute(Param1, Param2) end


---@class UAnimMontage: UAnimCompositeBase
---@field BlendIn FAlphaBlend @Blend in option.
---@field BlendInTime_DEPRECATED number
---@field BlendOut FAlphaBlend @Blend out option. This is only used when it blends out itself. If it's interrupted by other montages, it will use new montage's BlendIn option to blend out.
---@field BlendOutTime_DEPRECATED number
---@field BlendOutTriggerTime number @Time from Sequence End to trigger blend out. <0 means using BlendOutTime, so BlendOut finishes as Montage ends. >=0 means using 'SequenceEnd - BlendOutTriggerTime' to trigger blend out.
---@field FilteredBones FInputBlendPose
---@field bAccumulateCurveSlotWeight boolean
---@field bCheckSlotNodeRelevant boolean
---@field SyncGroup string @If you're using marker based sync for this montage, make sure to add sync group name. For now we only support one group
---@field SyncSlotIndex number @wip: until we have UI working
---@field MarkerData any
---@field CompositeSections ULuaArrayHelper<FCompositeSection>
---@field SlotAnimTracks ULuaArrayHelper<FSlotAnimationTrack>
---@field BranchingPoints_DEPRECATED ULuaArrayHelper<FBranchingPoint>
---@field bEnableRootMotionTranslation boolean @If this is on, it will allow extracting root motion translation. DEPRECATED in 4.5 root motion is controlled by anim sequences *
---@field bEnableRootMotionRotation boolean @If this is on, it will allow extracting root motion rotation. DEPRECATED in 4.5 root motion is controlled by anim sequences *
---@field bIsFarFromRoot boolean
---@field RootMotionRootLock ERootMotionRootLock @Root Bone will be locked to that position when extracting root motion. DEPRECATED in 4.5 root motion is controlled by anim sequences *
---@field bEnableMontageRandomSectionJump boolean
---@field bRandomLoopJump boolean
---@field RandomSectionNum number
---@field RandomJumpTimes number
---@field RetargetSource string
---@field BranchingPointMarkers ULuaArrayHelper<FBranchingPointMarker> @Cached list of Branching Point markers
---@field BranchingPointStateNotifyIndices ULuaArrayHelper<number> @Keep track of which AnimNotify_State are marked as BranchingPoints, so we can update their state when the Montage is ticked
---@field IgnoreNotifyType ULuaArrayHelper<string> @Names of notifies should be ignore in Montage.
---@field TimeStretchCurve FTimeStretchCurve
---@field TimeStretchCurveName string @Name of optional TimeStretchCurveName to look for in Montage.
local UAnimMontage = {}
