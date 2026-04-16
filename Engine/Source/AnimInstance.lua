---@meta

---@class EAnimCurveType
---@field AttributeCurve number
---@field MaterialCurve number
---@field MorphTargetCurve number
---@field MaxAnimCurveType number
EAnimCurveType = {}


---@class EMontagePlayReturnType
---@field MontageLength number
---@field Duration number
EMontagePlayReturnType = {}


---@class FA2Pose
---@field Bones ULuaArrayHelper<FTransform>
FA2Pose = {}


---Component space poses.
---@class FA2CSPose
---@field ComponentSpaceFlags ULuaArrayHelper<number> @Once evaluated to be mesh space, this flag will be set.
FA2CSPose = {}


---Helper struct for Slot node pose evaluation.
---@class FSlotEvaluationPose
---@field AdditiveType EAdditiveAnimationType @Type of additive for pose
---@field Weight number @Weight of pose
FSlotEvaluationPose = {}


---@class FCachedBoneTransformContainer
---@field SaveFrameCounte number
---@field SaveIndex number
---@field BoneTransform FTransform
FCachedBoneTransformContainer = {}


---@class FCachedBoneTransformInfo
---@field BoneTransformMap ULuaMapHelper<string, FCachedBoneTransformContainer>
FCachedBoneTransformInfo = {}


---@class FOnMontageStarted : ULuaSingleDelegate
FOnMontageStarted = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: UAnimMontage) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMontageStarted:Bind(Callback, Obj) end

---执行委托
---@param Param1 UAnimMontage
function FOnMontageStarted:Execute(Param1) end


---Delegate for when Montage is started
---@class FOnMontageStartedMCDelegate : ULuaMulticastDelegate
FOnMontageStartedMCDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Montage: UAnimMontage) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMontageStartedMCDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Montage UAnimMontage
function FOnMontageStartedMCDelegate:Broadcast(Montage) end


---Delegate for when Montage is completed, whether interrupted or finished Weight of this montage is 0.f, so it stops contributing to output pose bInterrupted = true if it was not property finished
---@class FOnMontageEndedMCDelegate : ULuaMulticastDelegate
FOnMontageEndedMCDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Montage: UAnimMontage, bInterrupted: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMontageEndedMCDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Montage UAnimMontage
---@param bInterrupted boolean
function FOnMontageEndedMCDelegate:Broadcast(Montage, bInterrupted) end


---Delegate for when all montage instances have ended.
---@class FOnAllMontageInstancesEndedMCDelegate : ULuaSingleDelegate
FOnAllMontageInstancesEndedMCDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAllMontageInstancesEndedMCDelegate:Bind(Callback, Obj) end

---执行委托
function FOnAllMontageInstancesEndedMCDelegate:Execute() end


---Delegate for when Montage started to blend out, whether interrupted or finished DesiredWeight of this montage becomes 0.f, but this still contributes to the output pose bInterrupted = true if it was not property finished
---@class FOnMontageBlendingOutStartedMCDelegate : ULuaMulticastDelegate
FOnMontageBlendingOutStartedMCDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Montage: UAnimMontage, bInterrupted: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMontageBlendingOutStartedMCDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Montage UAnimMontage
---@param bInterrupted boolean
function FOnMontageBlendingOutStartedMCDelegate:Broadcast(Montage, bInterrupted) end


---Delegate that native code can hook to to provide additional transition logic
---@class FCanTakeTransition : ULuaSingleDelegate
FCanTakeTransition = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCanTakeTransition:Bind(Callback, Obj) end

---执行委托
function FCanTakeTransition:Execute() end


---Delegate that native code can hook into to handle state entry/exit
---@class FOnGraphStateChanged : ULuaSingleDelegate
FOnGraphStateChanged = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FAnimNode_StateMachine, Param2: number, Param3: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnGraphStateChanged:Bind(Callback, Obj) end

---执行委托
---@param Param1 FAnimNode_StateMachine
---@param Param2 number
---@param Param3 number
function FOnGraphStateChanged:Execute(Param1, Param2, Param3) end


---Delegate that allows users to insert custom animation curve values - for now, it's only single, not sure how to make this to multi delegate and retrieve value sequentially, so
---@class FOnAddCustomAnimationCurves : ULuaSingleDelegate
FOnAddCustomAnimationCurves = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: UAnimInstance) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAddCustomAnimationCurves:Bind(Callback, Obj) end

---执行委托
---@param Param1 UAnimInstance
function FOnAddCustomAnimationCurves:Execute(Param1) end


---Delegate called by 'PlayMontageNotify' and 'PlayMontageNotifyWindow' *
---@class FPlayMontageAnimNotifyDelegate : ULuaMulticastDelegate
FPlayMontageAnimNotifyDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, NotifyName: string, BranchingPointPayload: FBranchingPointNotifyPayload) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayMontageAnimNotifyDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param NotifyName string
---@param BranchingPointPayload FBranchingPointNotifyPayload
function FPlayMontageAnimNotifyDelegate:Broadcast(NotifyName, BranchingPointPayload) end


---@class UAnimInstance: UObject, IObjectPoolInterface
---@field DeltaTime_DEPRECATED number @DeltaTime *
---@field RootMotionMode ERootMotionMode
---@field bRunUpdatesInWorkerThreads_DEPRECATED boolean @DEPRECATED: No longer used. Allows this anim instance to update its native update, blend tree, montages and asset players on a worker thread. this requires certain conditions to be met: - All access of variables in the blend tree should be a direct access of a member variable - No BlueprintUpdateAnimation event should be used (i.e. the event graph should be empty). Only native update is permitted.
---@field bCanUseParallelUpdateAnimation_DEPRECATED boolean @DEPRECATED: No longer used. Whether we can use parallel updates for our animations. Conditions affecting this include: - Use of BlueprintUpdateAnimation - Use of non 'fast-path' EvaluateGraphExposedInputs in the node graph
---@field bUseMultiThreadedAnimationUpdate boolean @Allows this anim instance to update its native update, blend tree, montages and asset players on a worker thread. This flag is propagated from the UAnimBlueprint to this instance by the compiler. The compiler will attempt to pick up any issues that may occur with threaded update. For updates to run in multiple threads both this flag and the project setting "Allow Multi Threaded Animation Update" should be set.
---@field bWarnAboutBlueprintUsage_DEPRECATED boolean @Selecting this option will cause the compiler to emit warnings whenever a call into Blueprint is made from the animation graph. This can help track down optimizations that need to be made.
---@field bBlueprintSkipUpdate boolean
---@field bUseBlueprintUpdateAnimation number
---@field bUseBlueprintPostEvaluateAnimation number
---@field OnMontageBlendingOut FOnMontageBlendingOutStartedMCDelegate @Called when a montage starts blending out, whether interrupted or finished
---@field OnMontageStarted FOnMontageStartedMCDelegate @Called when a montage has started
---@field OnMontageEnded FOnMontageEndedMCDelegate @Called when a montage has ended, whether interrupted or finished
---@field OnMontageRealEnded FOnMontageEndedMCDelegate @Called when a montage real ended, whether interrupted or finished
---@field OnAllMontageInstancesEnded FOnAllMontageInstancesEndedMCDelegate @Called when all Montage instances have ended.
---@field AnimAssets_NoGCRef ULuaMapHelper<number, UAnimationAsset>
---@field bQueueMontageEvents boolean @True when Montages are being ticked, and Montage Events should be queued. When Montage are being ticked, we queue AnimNotifies and Events. We trigger notifies first, then Montage events.
---@field ForbiddenPlayMontageSlot ULuaArrayHelper<string>
---@field ActiveAnimNotifyState ULuaArrayHelper<FAnimNotifyEvent> @Currently Active AnimNotifyState, stored as a copy of the event as we need to call NotifyEnd on the event after a deletion in the editor. After this the event is removed correctly.
---@field bNeedUpdateNotAttributeCurve boolean @此动画蓝图是否需要更新非Attribute的Curve数据
---@field RefCachedSubAnimInstances ULuaArrayHelper<UAnimInstance>
---@field bIsOnlyMasterTriggerNotify boolean
---@field bIsMaster boolean
---@field bDynamicDisableBoneRetarget boolean
---@field BoneRetargetSource string
---@field bUseBoneStateDirtyFeature boolean
---@field bBoneStateDirty boolean
---@field C_InverseRetargetIgnoreBoneList ULuaArrayHelper<number>
---@field FollowerAnimInstances ULuaArrayHelper<UAnimInstance>
---@field ParentAnimInstance UAnimInstance
---@field SubAnimInstances ULuaArrayHelper<UAnimInstance>
---@field SubAnimInstancesTempRef ULuaArrayHelper<UAnimInstance>
---@field CachedSwitchNotifySequence ULuaArrayHelper<UAnimSequenceBase>
---@field CachedBoneTransformInfoIndex number
---@field CachedBoneTransformMapAsync ULuaMapHelper<string, FCachedBoneTransformInfo>
---@field CachedBoneTransformMapInGame ULuaMapHelper<string, FCachedBoneTransformInfo>
---@field bIsInPoseUpdate boolean
---@field bEnableBoneCacheInGameThread boolean
---@field bEnableFastPathExposedNodeTree boolean
---@field UpdateConditions ULuaArrayHelper<UAnimInstanceUpdateCondition>
---@field bCheckUpdateConditionResult boolean
---@field bEnableAnimBlueprintSkeletonDifferFromMeshSkeleton boolean
---@field bEnableFilterForceTriggerNotifyWhenMontageJumpTick boolean
---@field MultiSubInstanceTransferDefaultPoseIndex number
---@field bEnableTriggerAnimNotify boolean
---@field InitNodeSourcePropertyLookupTable ULuaMapHelper<string, UProperty>
---@field bParentPoseOverride boolean
---@field bAutoCopyPose boolean
---@field bHasAvatarSlotEvent boolean
---@field bRestoreSlotVar boolean
---@field bSkipSlotRelevanceCheckForNotifies boolean
---@field bEnableAsyncAnimInstance boolean
---@field bCanCopyRequiredBones boolean
local UAnimInstance = {}

---Takes a snapshot of the current skeletal mesh component pose & saves it internally. This snapshot can then be retrieved by name in the animation blueprint for blending. The snapshot is taken at the current LOD, so if for example you took the snapshot at LOD1 and then used it at LOD0 any bones not in LOD1 will use the reference pose
---@param SnapshotName string
function UAnimInstance:SavePoseSnapshot(SnapshotName) end

---Takes a snapshot of the current skeletal mesh component pose and saves it to the specified snapshot. The snapshot is taken at the current LOD, so if for example you took the snapshot at LOD1 and then used it at LOD0 any bones not in LOD1 will use the reference pose
---@param Snapshot FPoseSnapshot
function UAnimInstance:SnapshotPose(Snapshot) end

---Executed before the Animation is updated, Check custom condition, whether to skip update
---@param DeltaTimeX number
---@return boolean
function UAnimInstance:BlueprintShouldSkipUpdateAnimation(DeltaTimeX) end

---Executed when the Animation is initialized
function UAnimInstance:BlueprintInitializeAnimation() end

function UAnimInstance:BlueprintUnInitializeAnimation() end

---Executed when the Animation is updated
---@param DeltaTimeX number
function UAnimInstance:BlueprintUpdateAnimation(DeltaTimeX) end

---Executed after the Animation is evaluated
function UAnimInstance:BlueprintPostEvaluateAnimation() end

---Executed when begin play is called on the owning component
function UAnimInstance:BlueprintBeginPlay() end

---Play normal animation asset on the slot node. You can only play one asset (whether montage or animsequence) at a time.
---@param Asset UAnimSequenceBase
---@param SlotNodeName string
---@param BlendInTime number
---@param BlendOutTime number
---@param InPlayRate number
---@param LoopCount number
---@return number
function UAnimInstance:PlaySlotAnimation(Asset, SlotNodeName, BlendInTime, BlendOutTime, InPlayRate, LoopCount) end

---@param TargetMontage UAnimMontage
---@param InPosition number
---@param Extra FCustomMontageAnimInfo
---@param Weight number
function UAnimInstance:SetMatineeAnimPosition(TargetMontage, InPosition, Extra, Weight) end

---Stops currently playing slot animation slot or all
---@param InBlendOutTime number
---@param SlotNodeName string
function UAnimInstance:StopSlotAnimation(InBlendOutTime, SlotNodeName) end

---Return true if it's playing the slot animation
---@param Asset UAnimSequenceBase
---@param SlotNodeName string
---@param bcheckTransientPackage boolean
---@return boolean
function UAnimInstance:IsPlayingSlotAnimation(Asset, SlotNodeName, bcheckTransientPackage) end

function UAnimInstance:ForceTriggerAnimEndedEvent() end

---@param Montage UAnimMontage
---@param InPlayInfo ULuaArrayHelper<FMontageSectionsPlayInfo>
function UAnimInstance:SetMontageCustomSectionsPlayInfo(Montage, InPlayInfo) end

---@param Montage UAnimMontage
function UAnimInstance:ClearMontageCustomSectionsPlayInfo(Montage) end

---Plays an animation montage. Returns the length of the animation montage in seconds. Returns 0.f if failed to play.
---@param MontageToPlay UAnimMontage
---@param InPlayRate number
---@param ReturnValueType EMontagePlayReturnType
---@param InTimeToStartMontageAt number
---@return number
function UAnimInstance:Montage_Play(MontageToPlay, InPlayRate, ReturnValueType, InTimeToStartMontageAt) end

---@param MontageToPlay UAnimMontage
---@param Extra FCustomMontageAnimInfo
---@param InPlayRate number
---@param ReturnValueType EMontagePlayReturnType
---@param InTimeToStartMontageAt number
---@return number
function UAnimInstance:Montage_CustomPlay(MontageToPlay, Extra, InPlayRate, ReturnValueType, InTimeToStartMontageAt) end

---Stops the animation montage. If reference is NULL, it will stop ALL active montages.
---@param InBlendOutTime number
---@param Montage UAnimMontage
function UAnimInstance:Montage_Stop(InBlendOutTime, Montage) end

---@param InBlendOutTime number
---@param SlotName string
function UAnimInstance:Montage_StopBySlot(InBlendOutTime, SlotName) end

---@param InBlendOutTime number
---@param Extra FCustomMontageAnimInfo
---@param Montage UAnimMontage
function UAnimInstance:Montage_CustomStop(InBlendOutTime, Extra, Montage) end

---Pauses the animation montage. If reference is NULL, it will pause ALL active montages.
---@param Montage UAnimMontage
function UAnimInstance:Montage_Pause(Montage) end

---Resumes a paused animation montage. If reference is NULL, it will resume ALL active montages.
---@param Montage UAnimMontage
function UAnimInstance:Montage_Resume(Montage) end

---Makes a montage jump to a named section. If Montage reference is NULL, it will do that to all active montages.
---@param SectionName string
---@param Montage UAnimMontage
function UAnimInstance:Montage_JumpToSection(SectionName, Montage) end

---Makes a montage jump to the end of a named section. If Montage reference is NULL, it will do that to all active montages.
---@param SectionName string
---@param Montage UAnimMontage
function UAnimInstance:Montage_JumpToSectionsEnd(SectionName, Montage) end

---Relink new next section AFTER SectionNameToChange in run-time You can link section order the way you like in editor, but in run-time if you'd like to change it dynamically, use this function to relink the next section For example, you can have Start->Loop->Loop->Loop.... but when you want it to end, you can relink next section of Loop to be End to finish the montage, in which case, it stops looping by Loop->End.
---@param SectionNameToChange string
---@param NextSection string
---@param Montage UAnimMontage
function UAnimInstance:Montage_SetNextSection(SectionNameToChange, NextSection, Montage) end

---Change AnimMontage play rate. NewPlayRate = 1.0 is the default playback rate.
---@param Montage UAnimMontage
---@param NewPlayRate number
function UAnimInstance:Montage_SetPlayRate(Montage, NewPlayRate) end

---@param SlotName string
---@param AbsPlayRate number
function UAnimInstance:Montage_ReversePlayByAbsRateAndSlot(SlotName, AbsPlayRate) end

---@param Montage UAnimMontage
---@param DelayFrame number
function UAnimInstance:Montage_SetDelayFrame(Montage, DelayFrame) end

---Returns true if the animation montage is active. If the Montage reference is NULL, it will return true if any Montage is active.
---@param Montage UAnimMontage
---@return boolean
function UAnimInstance:Montage_IsActive(Montage) end

---Returns true if the animation montage is currently active and playing. If reference is NULL, it will return true is ANY montage is currently active and playing.
---@param Montage UAnimMontage
---@return boolean
function UAnimInstance:Montage_IsPlaying(Montage) end

---@param Montage UAnimMontage
---@return boolean
function UAnimInstance:Montage_IsExisting(Montage) end

---判断有无某个组下的蒙太奇正在播放
---@param GroupName string
---@return boolean
function UAnimInstance:MontageGroup_IsPlaying(GroupName) end

---Returns the name of the current animation montage section.
---@param Montage UAnimMontage
---@return string
function UAnimInstance:Montage_GetCurrentSection(Montage) end

---Get Current Montage Position
---@param Montage UAnimMontage
---@return number
function UAnimInstance:Montage_GetPosition(Montage) end

---Set position.
---@param Montage UAnimMontage
---@param NewPosition number
function UAnimInstance:Montage_SetPosition(Montage, NewPosition) end

---return true if Montage is not currently active. (not valid or blending out)
---@param Montage UAnimMontage
---@return boolean
function UAnimInstance:Montage_GetIsStopped(Montage) end

---Get the current blend time of the Montage. If Montage reference is NULL, it will return the current blend time on the first active Montage found.
---@param Montage UAnimMontage
---@return number
function UAnimInstance:Montage_GetBlendTime(Montage) end

---Get PlayRate for Montage. If Montage reference is NULL, PlayRate for any Active Montage will be returned. If Montage is not playing, 0 is returned.
---@param Montage UAnimMontage
---@return number
function UAnimInstance:Montage_GetPlayRate(Montage) end

---Returns true if any montage is playing currently. Doesn't mean it's active though, it could be blending out.
---@return boolean
function UAnimInstance:IsAnyMontagePlaying() end

function UAnimInstance:GetCurrentActiveMontages() end

---@param Montage UAnimMontage
---@param SectionName string
---@return string
function UAnimInstance:Montage_GetNextSection(Montage, SectionName) end

---添加动画资源到非GC引用列表，返回全局唯一ID
---@param InAnimAsset UAnimationAsset
---@return number
function UAnimInstance:AddAnimAssetNoGCRef(InAnimAsset) end

---从非GC引用列表移除动画资源（通过ID）
---@param InAnimAssetNoGCID number
function UAnimInstance:RemoveAnimAssetNoGCRef(InAnimAssetNoGCID) end

---从非GC引用列表移除所有动画资源（通过资源指针）
---@param InAnimAsset UAnimationAsset
function UAnimInstance:RemoveAllAnimAssetNoGCRef(InAnimAsset) end

---清空非GC引用列表
function UAnimInstance:ClearAnimAssetsNoGCReferences() end

---Stop all montages that are active *
---@param BlendOut number
function UAnimInstance:StopAllMontages(BlendOut) end

---Stop all montages that are active *
---@param BlendOut number
function UAnimInstance:ClearAllMontages(BlendOut) end

---@param bClearSubAnim boolean
function UAnimInstance:ClearStoppedMontageInstances(bClearSubAnim) end

---@param bIsAdd boolean
---@param SlotName string
function UAnimInstance:SetForbiddenPlayMontageSlot(bIsAdd, SlotName) end

---Set RootMotionMode
---@param Value ERootMotionMode
function UAnimInstance:SetRootMotionMode(Value) end

---Gets the length in seconds of the asset referenced in an asset player node
---@param AssetPlayerIndex number
---@return number
function UAnimInstance:GetInstanceAssetPlayerLength(AssetPlayerIndex) end

---Get the current accumulated time in seconds for an asset player node
---@param AssetPlayerIndex number
---@return number
function UAnimInstance:GetInstanceAssetPlayerTime(AssetPlayerIndex) end

---@param AssetPlayerIndex number
---@param time number
function UAnimInstance:SetInstanceAssetPlayerTime(AssetPlayerIndex, time) end

---@param NodeTag string
---@return number
function UAnimInstance:GetNodeIndexWithTag(NodeTag) end

---Get the current accumulated time in seconds for an asset player node
---@param AssetPlayerIndex number
---@return number
function UAnimInstance:GetInstanceAssetPlayerTime_BP(AssetPlayerIndex) end

---@param AssetPlayerIndex number
---@param time number
function UAnimInstance:SetInstanceAssetPlayerTime_BP(AssetPlayerIndex, time) end

---Get the current accumulated time as a fraction for an asset player node
---@param AssetPlayerIndex number
---@return number
function UAnimInstance:GetInstanceAssetPlayerTimeFraction(AssetPlayerIndex) end

---Get the time in seconds from the end of an animation in an asset player node
---@param AssetPlayerIndex number
---@return number
function UAnimInstance:GetInstanceAssetPlayerTimeFromEnd(AssetPlayerIndex) end

---Get the time as a fraction of the asset length of an animation in an asset player node
---@param AssetPlayerIndex number
---@return number
function UAnimInstance:GetInstanceAssetPlayerTimeFromEndFraction(AssetPlayerIndex) end

---Get the blend weight of a specified state machine
---@param MachineIndex number
---@return number
function UAnimInstance:GetInstanceMachineWeight(MachineIndex) end

---Get the blend weight of a specified state
---@param MachineIndex number
---@param StateIndex number
---@return number
function UAnimInstance:GetInstanceStateWeight(MachineIndex, StateIndex) end

---Get the current elapsed time of a state within the specified state machine
---@param MachineIndex number
---@return number
function UAnimInstance:GetInstanceCurrentStateElapsedTime(MachineIndex) end

---Get the crossfade duration of a specified transition
---@param MachineIndex number
---@param TransitionIndex number
---@return number
function UAnimInstance:GetInstanceTransitionCrossfadeDuration(MachineIndex, TransitionIndex) end

---Get the elapsed time in seconds of a specified transition
---@param MachineIndex number
---@param TransitionIndex number
---@return number
function UAnimInstance:GetInstanceTransitionTimeElapsed(MachineIndex, TransitionIndex) end

---Get the elapsed time as a fraction of the crossfade duration of a specified transition
---@param MachineIndex number
---@param TransitionIndex number
---@return number
function UAnimInstance:GetInstanceTransitionTimeElapsedFraction(MachineIndex, TransitionIndex) end

---Get the time remaining in seconds for the most relevant animation in the source state
---@param MachineIndex number
---@param StateIndex number
---@param NullAnimDefaultValue number
---@return number
function UAnimInstance:GetRelevantAnimTimeRemaining(MachineIndex, StateIndex, NullAnimDefaultValue) end

---Get the time remaining as a fraction of the duration for the most relevant animation in the source state
---@param MachineIndex number
---@param StateIndex number
---@param NullAnimDefaultValue number
---@return number
function UAnimInstance:GetRelevantAnimTimeRemainingFraction(MachineIndex, StateIndex, NullAnimDefaultValue) end

---Get the length in seconds of the most relevant animation in the source state
---@param MachineIndex number
---@param StateIndex number
---@param NullAnimDefaultValue number
---@return number
function UAnimInstance:GetRelevantAnimLength(MachineIndex, StateIndex, NullAnimDefaultValue) end

---Get the current accumulated time in seconds for the most relevant animation in the source state
---@param MachineIndex number
---@param StateIndex number
---@param NullAnimDefaultValue number
---@return number
function UAnimInstance:GetRelevantAnimTime(MachineIndex, StateIndex, NullAnimDefaultValue) end

---Get the current accumulated time as a fraction of the length of the most relevant animation in the source state
---@param MachineIndex number
---@param StateIndex number
---@param NullAnimDefaultValue number
---@return number
function UAnimInstance:GetRelevantAnimTimeFraction(MachineIndex, StateIndex, NullAnimDefaultValue) end

---Returns the value of a named curve.
---@param CurveName string
---@param Immediately boolean
---@return number
function UAnimInstance:GetCurveValue(CurveName, Immediately) end

---Returns the name of a currently active state in a state machine.
---@param MachineIndex number
---@return string
function UAnimInstance:GetCurrentStateName(MachineIndex) end

---Sets a morph target to a certain weight.
---@param MorphTargetName string
---@param Value number
function UAnimInstance:SetMorphTarget(MorphTargetName, Value) end

---Clears the current morph targets.
function UAnimInstance:ClearMorphTargets() end

---Returns degree of the angle betwee velocity and Rotation forward vector The range of return will be from [-180, 180], and this can be used to feed blendspace directional value
---@param Velocity FVector
---@param BaseRotation FRotator
---@return number
function UAnimInstance:CalculateDirection(Velocity, BaseRotation) end

---locks indicated AI resources of animated pawn DEPRECATED. Use LockAIResourcesWithAnimation instead
---@param bLockMovement boolean
---@param LockAILogic boolean
function UAnimInstance:LockAIResources(bLockMovement, LockAILogic) end

---unlocks indicated AI resources of animated pawn. Will unlock only animation-locked resources. DEPRECATED. Use UnlockAIResourcesWithAnimation instead
---@param bUnlockMovement boolean
---@param UnlockAILogic boolean
function UAnimInstance:UnlockAIResources(bUnlockMovement, UnlockAILogic) end

---@param SyncGroup string
---@param MarkerName string
---@param OutMarkerTime number
---@return boolean
function UAnimInstance:GetTimeToClosestMarker(SyncGroup, MarkerName, OutMarkerTime) end

---@param SyncGroup string
---@param MarkerName string
---@return boolean
function UAnimInstance:HasMarkerBeenHitThisFrame(SyncGroup, MarkerName) end

---@param InSyncGroupName string
---@param PreviousMarker string
---@param NextMarker string
---@param bRespectMarkerOrder boolean
---@return boolean
function UAnimInstance:IsSyncGroupBetweenMarkers(InSyncGroupName, PreviousMarker, NextMarker, bRespectMarkerOrder) end

---@param InSyncGroupName string
---@return FMarkerSyncAnimPosition
function UAnimInstance:GetSyncGroupPosition(InSyncGroupName) end

---Trigger AnimNotifies *
function UAnimInstance:TriggerAllSequenceSwitchNotify() end

---@param InAnimNotifyEvent FAnimNotifyEvent
---@param InNotify UAnimNotify
---@return boolean
function UAnimInstance:CheckCanTriggerNotify_AnimIsolation_Outer(InAnimNotifyEvent, InNotify) end

---@param InAnimNotifyEvent FAnimNotifyEvent
---@param InNotifyState UAnimNotifyState
---@return boolean
function UAnimInstance:CheckCanTriggerNotifyState_AnimIsolation_Outer(InAnimNotifyEvent, InNotifyState) end

---@param InAnimNotifyEvent FAnimNotifyEvent
---@return boolean
function UAnimInstance:CheckCanTriggerAnimNotifyFunction_AnimIsolation_Outer(InAnimNotifyEvent) end

---@param SubInstanceSlotName string
---@param FilterAnimClass UAnimInstance
---@param BlendTime number
---@param bEnableNoWaitParallelEvalTask boolean
function UAnimInstance:ResetSubAnimNodeAnimClass(SubInstanceSlotName, FilterAnimClass, BlendTime, bEnableNoWaitParallelEvalTask) end

---@param SubInstanceSlotName string
---@param FilterAnimClass UAnimInstance
---@param BlendTime number
function UAnimInstance:ResetSubAnimNodeAnimClass_EmptyClassDefaut(SubInstanceSlotName, FilterAnimClass, BlendTime) end

function UAnimInstance:ResetAllSubAnimNode() end

function UAnimInstance:ClearAllSubAnimBlendTime() end

function UAnimInstance:ResetAllSubAnimNodePosInertialization() end

---@param SubInstanceSlotName string
---@return boolean
function UAnimInstance:IsUseSubAnimInstanceBySlot(SubInstanceSlotName) end

---@param SubInstanceSlotName string
---@param bEnable boolean
---@param NewSubAnimBlendTime number
function UAnimInstance:SetSubAnimNodeEnableBlend(SubInstanceSlotName, bEnable, NewSubAnimBlendTime) end

---@param SubInstanceSlotName string
---@param FilterClass UAnimInstance
---@param BlendTime number
function UAnimInstance:RemoveSubAnimNodeAnimClass(SubInstanceSlotName, FilterClass, BlendTime) end

---@param SubInstanceSlotName string
function UAnimInstance:ResetSubAnimNode_MultiInstanceClass(SubInstanceSlotName) end

function UAnimInstance:ResetAllSubAnimNode_MultiInstance() end

---@param Instance UAnimInstance
function UAnimInstance:AddStopTickSubAnimInstance(Instance) end

---@param Instance UAnimInstance
function UAnimInstance:RemoveCachedStopTickSubAnimInstance(Instance) end

function UAnimInstance:ClearAllStopTickSubAnimInstance() end

---@param bToPersistentPool boolean
function UAnimInstance:OnRecycleCachedSubAnimInstances(bToPersistentPool) end

---@param InIsDirty boolean
function UAnimInstance:MarkBoneStateDirty(InIsDirty) end

---@return boolean
function UAnimInstance:IsBoneStateDirty() end

---@param InSlotName string
---@return boolean
function UAnimInstance:HasSlotNode(InSlotName) end

---@param InMontage UAnimMontage
---@param InSlotNameRetargetInfo ULuaMapHelper<string, string>
function UAnimInstance:UpdateAnimSlotRetargetInfo(InMontage, InSlotNameRetargetInfo) end

---@param InputFollowedInstance UAnimInstance
function UAnimInstance:SetFollowedAnimInstance(InputFollowedInstance) end

function UAnimInstance:ResetFollowedAnimInstance() end

---@param IsDelay boolean
---@param InputDelayFrames number
function UAnimInstance:SetDelayPlay(IsDelay, InputDelayFrames) end

function UAnimInstance:SwapCachedBoneTransformMap() end

---@param InBoneName string
---@param OutTransform FTransform
---@param forceSync boolean
---@return boolean
function UAnimInstance:GetCachedBoneTransform(InBoneName, OutTransform, forceSync) end

---@param InBoneName string
---@param InCacheFlag string
---@param OutTransform FTransform
---@param NeedLastFrameCount number
---@param forceSync boolean
---@return boolean
function UAnimInstance:GetCachedBoneTransformByFlag(InBoneName, InCacheFlag, OutTransform, NeedLastFrameCount, forceSync) end

---@param InBoneName0 string
---@param InCacheFlag0 string
---@param InBoneName1 string
---@param InCacheFlag1 string
---@return number
function UAnimInstance:CompareCachedBoneTransformByFlag(InBoneName0, InCacheFlag0, InBoneName1, InCacheFlag1) end

---@param InMontage UAnimMontage
---@param bPlayingBackwards boolean
---@param CurrentTrackPos number
---@param CurrentDeltaSeconds number
---@param InAnimNotifies ULuaArrayHelper<FAnimNotifyEvent>
---@param OutForceTriggerAnimNotifies ULuaArrayHelper<FAnimNotifyEvent>
function UAnimInstance:FilterForceTriggerNotifyWhenMontageJumpTick(InMontage, bPlayingBackwards, CurrentTrackPos, CurrentDeltaSeconds, InAnimNotifies, OutForceTriggerAnimNotifies) end

function UAnimInstance:GetLobbySeqIgnoreNotifyList() end

function UAnimInstance:ResetNotifyQueue() end
